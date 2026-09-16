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
set -u

cd "$(dirname "$0")/.." || exit 1
LOG_DIR=run_logs/sweep-$(date -u +%Y%m%dT%H%M%SZ)
mkdir -p "$LOG_DIR"

TARGETS=(
  "APK_Test/downloads/AndroGoat.apk"
  "APK_Test/downloads/whatsapp-messenger-2-26-30-70.apk"
  "APK_Test/downloads/facebook-571-0-0-44-73.apk"
  "APK_Test/downloads/netflix-9-77-0-build-9-64489.apk"
)

echo "sweep starting $(date -u +%FT%TZ) -> $LOG_DIR"
for apk in "${TARGETS[@]}"; do
  [ -f "$apk" ] || { echo "MISSING $apk"; continue; }
  name=$(basename "$apk" .apk)
  log="$LOG_DIR/$name.log"
  echo "=== $name starting $(date -u +%FT%TZ) ==="
  start=$(date +%s)
  PYTHONPATH=src .venv/bin/python3 src/cli.py run \
    --apk "$apk" \
    --justification "ACADEMIC_TRAINING_TARGET" \
    --capture-traffic \
    --force-dynamic \
    --device emulator-5554 >"$log" 2>&1
  rc=$?
  echo "=== $name exit=$rc elapsed=$(( $(date +%s) - start ))s $(date -u +%FT%TZ) ==="
done
echo "sweep finished $(date -u +%FT%TZ)"
