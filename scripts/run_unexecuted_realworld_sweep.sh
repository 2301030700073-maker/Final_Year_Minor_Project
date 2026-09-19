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

# Host-suspend bookkeeping (SWEEP-FROZEN1). The clocks that BOUND this sweep and
# the clocks that STAMP it disagree about a suspended machine, and on 2026-09-18
# that put a row on disk no reader could reconcile: `date +%s` (the elapsed column
# below) is wall clock, while `timeout`, `/proc/uptime` and a process's start time
# are tick counts that stop while the host is suspended. Facebook's 7,200 s budget
# was therefore untouched by a closed laptop lid that the memory sampler measured
# as a 2,126 s hole, while the UTC stamps beside it included every second of it.
# Subtracting one from the other at the target's own boundaries measures the
# difference. The path is a seam so the arithmetic is testable without suspending
# a machine.
UPTIME_FILE=${SWEEP_UPTIME_FILE:-/proc/uptime}
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

# The bound every elapsed column below is measured against (SWEEP-BUDGET1).
# Every outcome row carries an elapsed_s and no row carried the budget it was
# held to, so the number could only be read against the default in this script's
# header - and on 2026-09-18 the sweep ran facebook under a 7,200 s bound while
# the run it was recording legitimately needed longer than that. A reader
# comparing 11,000 s against the documented default reads an enforced bound as a
# breach of one, which is the opposite of what happened. Written before the
# target list is read, so a sweep that fails on its own input still says what it
# would have enforced.
printf -- "--\tbudget\t%s\t-\t0\t-\t-\n" "$RUN_TIMEOUT" >> "$JOURNAL"

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
# The APK path of the target in flight, kept beside `current` (the display name):
# the interrupt path needs it to find the run's sidecar, which is keyed by the
# APK's sha256, and `current` alone cannot be hashed back into that.
current_apk=""
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
  # An interrupted sweep kills its target just as surely as a timeout does, and the
  # outcome row it never reaches is the one that would have named the stage that
  # target was inside. Two measured interrupts (2026-09-18 and 2026-09-19) both left
  # a `sweep_interrupted` row naming the target and nothing about its progress -
  # while the run's own sidecar held exactly that (ADR-0021). So the interrupt
  # writes the same killed_in row the timeout path writes, from the same reader. The
  # elapsed is measured against this target's own start and floored at 0, since a
  # backwards-stepping wall clock is a different fact than a negative duration.
  if [ -n "${current_apk:-}" ]; then
    local _now _elapsed
    _now=$(date +%s)
    _elapsed=$(( _now - ${start:-$_now} ))
    [ "$_elapsed" -lt 0 ] && _elapsed=0
    printf -- "--\tkilled_in\t%s\t%s\t%s\t%s\t%s\n" \
      "$current" interrupted "$(killed_stage "$current_apk")" "$_elapsed" "$log" >> "$JOURNAL"
  fi
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
# Seconds since boot, read from a clock that stops while the host is suspended.
# Empty when the file cannot be read - the one case the caller must not read as
# "no suspend happened".
uptime_seconds() {
  local v
  v=$(cut -d. -f1 "$UPTIME_FILE" 2>/dev/null)
  echo "${v:-}"
}

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
  if [ ! -f "$apk" ]; then
    printf "%s\tmissing\t-\t-\t0\t-\t%s\n" "$name" "$log" >> "$JOURNAL"
    echo "=== $name MISSING $apk ==="
    incomplete=$((incomplete + 1))
    # Nothing was launched, so nothing is in flight: the next interrupt must not
    # name this target, nor date it from a start time it never had.
    current=""
    current_apk=""
    continue
  fi

  # Write-ahead: this line is on disk before the target starts, so a sweep that
  # dies here is recorded as having attempted $name rather than as never having
  # reached it.
  printf "%s\tstarted\t-\t-\t0\t-\t%s\n" "$name" "$log" >> "$JOURNAL"
  echo "=== $name starting $(date -u +%FT%TZ) ==="
  start=$(date +%s)
  start_up=$(uptime_seconds)
  # The in-flight marker is set HERE - once this target's own start time is on
  # record, and immediately before the launch - because the interrupt path stamps
  # its row with `now - start`. Set earlier in the loop body, as it was, those two
  # facts came apart: an interrupt landing in the gap between them named a target
  # that had not started yet and dated it from the PREVIOUS target's start, so a
  # fresh target would be recorded as having run for the whole of the one before
  # it. Adjacency is what makes "a target is in flight" and "its start time is
  # known" one fact instead of two that can disagree.
  current="$name"
  current_apk="$apk"

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
  end_up=$(uptime_seconds)

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
  # How much of that elapsed time the machine spent not running (SWEEP-FROZEN1).
  # Written for every target the probe could reach, zero included, so the number
  # above it is interpretable rather than inferable: a MISSING row means the probe
  # could not run, never that no suspend happened.
  if [[ "${start_up:-}" =~ ^[0-9]+$ ]] && [[ "${end_up:-}" =~ ^[0-9]+$ ]]; then
    up_elapsed=$(( end_up - start_up ))
    frozen=$(( elapsed - up_elapsed ))
    # A wall clock that steps backwards moves this negative - a different fact,
    # and not one this row can carry, so it is floored rather than misreported.
    [ "$frozen" -lt 0 ] && frozen=0
    printf -- "--\tfrozen\t%s\t%s\t%s\t%s\t%s\n" \
      "$name" "$frozen" "$elapsed" "$up_elapsed" "$log" >> "$JOURNAL"
  fi

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
  current_apk=""
done

echo "sweep finished $(date -u +%FT%TZ): ${#TARGETS[@]} target(s) run, $incomplete not ok; journal $JOURNAL"
[ "$incomplete" -eq 0 ] || exit 1
