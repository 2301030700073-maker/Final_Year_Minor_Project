#!/bin/bash
# Deterministic full-pipeline run WITH --debug (captures the frida [synth] console
# so we can see which hooks installed and which the app actually called).
# Usage: verify_debug.sh <apk> <log>
set -u
cd /home/ubuntu/Testing/Final_Year_Minor_Project
export PYTHONPATH=src
APK="$1"
LOG="$2"
timeout 600 .venv/bin/python3 src/cli.py run \
  --apk "$APK" \
  --justification "ACADEMIC_TRAINING_TARGET" \
  --capture-traffic --force-dynamic --device emulator-5554 --debug > "$LOG" 2>&1
echo "EXIT=$?" >> "$LOG"
