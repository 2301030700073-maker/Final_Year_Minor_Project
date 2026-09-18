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
LOG_DIR=${SWEEP_LOG_DIR:-run_logs/sweep-$(date -u +%Y%m%dT%H%M%SZ)}
JOURNAL="$LOG_DIR/journal.tsv"
mkdir -p "$LOG_DIR"

# Targets: a file (one APK path per line) when given, else the built-in list.
if [ -n "${SWEEP_TARGETS_FILE:-}" ]; then
  mapfile -t TARGETS < "$SWEEP_TARGETS_FILE"
else
  TARGETS=(
    "APK_Test/downloads/AndroGoat.apk"
    "APK_Test/downloads/whatsapp-messenger-2-26-30-70.apk"
    "APK_Test/downloads/facebook-571-0-0-44-73.apk"
    "APK_Test/downloads/netflix-9-77-0-build-9-64489.apk"
  )
fi

# The runner. SWEEP_RUNNER replaces the whole command (used verbatim, word-split)
# so the journal/exit-status logic below can be exercised with a fake target
# without an emulator or an APK.
PY=${SWEEP_PYTHON:-.venv/bin/python3}
ENTRY=${SWEEP_ENTRY:-src/cli.py}

printf "target\tstate\trc\tsignal\telapsed_s\treport\tlog\n" > "$JOURNAL"

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
  [ "$state" = ok ] || incomplete=$((incomplete + 1))
  current=""
done

echo "sweep finished $(date -u +%FT%TZ): $incomplete target(s) not ok; journal $JOURNAL"
[ "$incomplete" -eq 0 ] || exit 1
