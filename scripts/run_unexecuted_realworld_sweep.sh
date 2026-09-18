#!/usr/bin/env bash
# Full-option sweep over the real-world APKs on disk that have never been run.
#
# Each target gets the complete option set in one invocation: dynamic analysis
# forced on (so the universal root+SSL bypass envelope is generated even when
# the static verdict classifies NEITHER), the mitmproxy capture window, and the
# pinned emulator. Sequential by construction - there is one device, and the
# dynamic stage installs, launches and hooks the app under test.
#
# Every run writes its own log. The DB is the record; this script only drives.
#
# SWEEP-JOURNAL1: the script also writes a write-ahead journal to
# $LOG_DIR/journal.tsv, one line BEFORE each target launches and one after it
# returns. The earlier version printed the same exit status to stdout, which
# lives only as long as whoever captured it: on 2026-09-17 a sweep died partway
# through the Netflix target and left a per-target log frozen at
# "OK manifest_parse" with no exit line, no summary, and no record anywhere that
# facebook, next in the list, was never attempted. A sweep that loses targets
# silently cannot be the provenance of a ground-truth corpus, so the journal is
# on disk before the work starts: a `started` with no matching `finished` IS the
# record of a target that died mid-run, and the trailing line names it.
#
# The journal also separates the ways a target can fail, because they mean
# different things: a nonzero rc is the CLI reporting a failure, rc 124 is the
# per-target timeout, rc >128 is the process killed by that signal (137 = SIGKILL,
# which on this box means the kernel OOM killer - the reference environment runs
# 12 GB with swap=0), and rc 0 with no "Report:" line is a silent failure that
# must never be read as success.
#
# The sweep exits nonzero if any target did not end `ok`, so a caller cannot read
# a partial sweep as a clean one.
set -u

cd "$(dirname "$0")/.." || exit 1

# Per-target wall-clock bound. No timeout means a hung target blocks the sweep
# forever with nothing on disk saying so. Plain `timeout` (TERM, no --kill-after)
# is deliberate: it makes rc 124 the ONLY timeout outcome, so a 137 is
# unambiguously an external SIGKILL rather than our own escalation.
RUN_TIMEOUT=${SWEEP_RUN_TIMEOUT:-7200}
JUSTIFICATION=${SWEEP_JUSTIFICATION:-ACADEMIC_TRAINING_TARGET}
DEVICE=${SWEEP_DEVICE:-emulator-5554}
# Where the reader below looks for a run's own sidecar (ADR-0021) when the
# harness itself had to kill a target. The CLI's analysis root is the source of
# truth; this is only the reader's view of it, overridable so the timeout path
# can be exercised without writing into the real outputs/ tree.
ANALYSIS_ROOT=${SWEEP_ANALYSIS_ROOT:-outputs/analysis}
LOG_DIR=${SWEEP_LOG_DIR:-run_logs/sweep-$(date -u +%Y%m%dT%H%M%SZ)}
JOURNAL="$LOG_DIR/journal.tsv"
mkdir -p "$LOG_DIR"

# The journal is opened before the target list is read, so a sweep that fails on
# its own input still leaves a row saying so - the same write-ahead rule the
# per-target rows follow.
printf "target\tstate\trc\tsignal\telapsed_s\treport\tlog\n" > "$JOURNAL"

# The journal's own identity, so a reader can tell a sweep still in flight from
# one that died. Every target row below is written ahead of the work, so a
# `started` row with no outcome is the record of a target that did not record an
# end - and that is ALSO exactly what a sweep that is still running looks like.
# Until this row existed, the journal alone could not distinguish them: the same
# defect ADR-0021 fixed in the per-run sidecar, left in the harness that drives
# the corpus. The pid alone is not enough either (pids are recycled, so a stale
# one would answer for an unrelated process), so the kernel's start time for it is
# written beside it - field 22 of /proc/<pid>/stat, taken after the last ')' and
# therefore the 20th field of the remainder, because the comm can contain spaces.
# A reader tests liveness by re-reading field 22 for that pid and comparing.
_sweep_host=$(hostname)
_sweep_pid=$$
_sweep_pid_start=$(sed 's/^.*) //' "/proc/$$/stat" 2>/dev/null | awk '{print $20}')
printf -- "--\tsweep_started\t%s\t%s\t%s\t0\t-\n" \
  "$_sweep_host" "$_sweep_pid" "${_sweep_pid_start:--}" >> "$JOURNAL"

# Targets: a file (one APK path per line) when given, else the built-in list.
#
# A missing or empty list is a failure of the sweep's own input, and by default it
# does NOT read as one: `mapfile < missing` prints to stderr, leaves the array
# empty, every loop below skips it, and the verdict prints "0 target(s) not ok" -
# a clean-looking sweep that analysed nothing. Both cases exit non-zero instead,
# so a caller can never mistake an input failure for a clean run.
if [ -n "${SWEEP_TARGETS_FILE:-}" ]; then
  if [ ! -r "$SWEEP_TARGETS_FILE" ]; then
    printf -- "--\ttargets_unreadable\t-\t-\t0\t-\t%s\n" "$SWEEP_TARGETS_FILE" >> "$JOURNAL"
    echo "ERROR: SWEEP_TARGETS_FILE=$SWEEP_TARGETS_FILE is not readable - refusing to run a sweep that would analyse nothing" >&2
    exit 2
  fi
  mapfile -t TARGETS < "$SWEEP_TARGETS_FILE"
else
  TARGETS=(
    "APK_Test/downloads/AndroGoat.apk"
    "APK_Test/downloads/whatsapp-messenger-2-26-30-70.apk"
    "APK_Test/downloads/facebook-571-0-0-44-73.apk"
    "APK_Test/downloads/netflix-9-77-0-build-9-64489.apk"
  )
fi

# A blank line is not a target: it would launch `run --apk ""` and journal a
# failure that names nothing.
_loaded=()
for _t in ${TARGETS[@]+"${TARGETS[@]}"}; do
  [ -n "${_t// /}" ] && _loaded+=("$_t")
done
TARGETS=("${_loaded[@]}")

if [ "${#TARGETS[@]}" -eq 0 ]; then
  printf -- "--\ttargets_empty\t-\t-\t0\t-\t%s\n" "${SWEEP_TARGETS_FILE:-built-in list}" >> "$JOURNAL"
  echo "ERROR: the target list is empty - refusing to run a sweep that would analyse nothing" >&2
  exit 2
fi

# The runner. SWEEP_RUNNER replaces the whole command (used verbatim, word-split)
# so the journal/exit-status logic below can be exercised with a fake target
# without an emulator or an APK.
PY=${SWEEP_PYTHON:-.venv/bin/python3}
ENTRY=${SWEEP_ENTRY:-src/cli.py}

signal_name() {
  case "$1" in
    129) echo HUP ;; 130) echo INT ;; 131) echo QUIT ;; 134) echo ABRT ;;
    137) echo KILL ;; 139) echo SEGV ;; 143) echo TERM ;;
    *)   echo "signal-$(( $1 - 128 ))" ;;
  esac
}

current=""
child=""
incomplete=0
interrupted=0

# An interrupt must leave the same trace a kill does: the current target named,
# so the next reader knows where the sweep stopped rather than guessing.
finish() {
  printf -- "--\tsweep_%s\t-\t-\t-\t-\t%s\n" "$1" "${current:-<no target in flight>}" >> "$JOURNAL"
}
# The target runs in the background and is waited on, rather than executed in the
# foreground, because bash defers a trapped signal until the running foreground
# command returns - so a TERM to this script while a target was running would
# have gone unrecorded for as long as that target took to finish (up to
# RUN_TIMEOUT). `wait` returns as soon as the trap fires, and the trap stops the
# target in flight instead of leaving it running behind a dead sweep.
on_signal() {
  interrupted=1
  [ -n "${child:-}" ] && kill -TERM "$child" 2>/dev/null
  finish interrupted
  exit 130
}
trap on_signal INT TERM
trap '[ "$interrupted" -eq 1 ] || finish end' EXIT

# The stage a run the harness killed was inside, read from the run's OWN sidecar
# (ADR-0021). The row the harness writes for such a target names the state and the
# elapsed time and nothing else, so two hours of work die leaving no place on
# record - the same gap ADR-0021 closed for a run that killed itself, left in the
# harness that drives the corpus. The analysis directory is keyed by the APK's
# sha256, which is what ingest computes for a plain .apk; a target with nothing
# under that hash says `no sidecar` rather than leaving the field empty, because
# "not recorded" must not read as "no stage".
killed_stage() {
  local apk="$1" hash sidecar
  hash=$(sha256sum "$apk" 2>/dev/null | cut -d' ' -f1)
  [ -n "$hash" ] || { echo "hash unavailable"; return; }
  sidecar="$ANALYSIS_ROOT/$hash/run_status.json"
  [ -f "$sidecar" ] || { echo "no sidecar"; return; }
  "$PY" -c '
import json, sys
d = json.load(open(sys.argv[1]))
in_flight = d.get("in_flight_stage")
last = d.get("last_stage") or "none recorded"
status = d.get("last_stage_status") or "n/a"
if in_flight and in_flight != last:
    print("was in " + in_flight + " (last completed: " + last + " (" + status + "))")
else:
    print("last stage: " + last + " (" + status + ")")
' "$sidecar" 2>/dev/null || echo "sidecar unreadable"
}

echo "sweep starting $(date -u +%FT%TZ) -> $LOG_DIR"
for apk in "${TARGETS[@]}"; do
  [ -n "$apk" ] || continue
  name=$(basename "$apk" .apk)
  log="$LOG_DIR/$name.log"
  current="$name"

  if [ ! -f "$apk" ]; then
    printf "%s\tmissing\t-\t-\t0\t-\t%s\n" "$name" "$log" >> "$JOURNAL"
    echo "=== $name MISSING $apk ==="
    incomplete=$((incomplete + 1))
    current=""
    continue
  fi

  # Write-ahead: this line is on disk before the target starts, so a sweep that
  # dies here is recorded as having attempted $name rather than as never having
  # reached it.
  printf "%s\tstarted\t-\t-\t0\t-\t%s\n" "$name" "$log" >> "$JOURNAL"
  echo "=== $name starting $(date -u +%FT%TZ) ==="
  start=$(date +%s)

  if [ -n "${SWEEP_RUNNER:-}" ]; then
    timeout "$RUN_TIMEOUT" $SWEEP_RUNNER --apk "$apk" \
      --justification "$JUSTIFICATION" --capture-traffic --force-dynamic \
      --device "$DEVICE" >"$log" 2>&1 &
  else
    PYTHONPATH=src timeout "$RUN_TIMEOUT" "$PY" "$ENTRY" run \
      --apk "$apk" \
      --justification "$JUSTIFICATION" \
      --capture-traffic \
      --force-dynamic \
      --device "$DEVICE" >"$log" 2>&1 &
  fi
  child=$!
  wait "$child"
  rc=$?
  child=""
  elapsed=$(( $(date +%s) - start ))

  sig="-"
  if [ "$rc" -gt 128 ]; then
    sig=$(signal_name "$rc")
  fi
  has_report=no
  grep -q '^Report:' "$log" && has_report=yes

  if [ "$rc" -eq 124 ]; then
    state=timeout
  elif [ "$rc" -gt 128 ]; then
    state=signal
  elif [ "$rc" -eq 0 ] && [ "$has_report" = yes ]; then
    state=ok
  elif [ "$rc" -eq 0 ]; then
    # Exit 0 with no report rendered: the run claimed success and produced no
    # artefact. Reading this as ok is how a silent failure enters a corpus.
    state=no_report
  else
    state=failed
  fi

  printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\n" \
    "$name" "$state" "$rc" "$sig" "$elapsed" "$has_report" "$log" >> "$JOURNAL"
  echo "=== $name state=$state rc=$rc signal=$sig elapsed=${elapsed}s ==="
  # A run the harness itself killed is the one case where the outcome row has a
  # cause it cannot name: the other states carry it in rc and the log. Only the
  # two killed states need it - a run that reached its own end has its stages in
  # its report, and its sidecar is finalized to say which ending it was.
  if [ "$state" = timeout ] || [ "$state" = signal ]; then
    printf -- "--\tkilled_in\t%s\t%s\t%s\t%s\t%s\n" \
      "$name" "$state" "$(killed_stage "$apk")" "$elapsed" "$log" >> "$JOURNAL"
  fi
  [ "$state" = ok ] || incomplete=$((incomplete + 1))
  current=""
done

echo "sweep finished $(date -u +%FT%TZ): ${#TARGETS[@]} target(s) run, $incomplete not ok; journal $JOURNAL"
[ "$incomplete" -eq 0 ] || exit 1
