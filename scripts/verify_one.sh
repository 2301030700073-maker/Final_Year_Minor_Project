#!/bin/bash
# Deterministic full-pipeline verification for one real app (uses the universal
# root+SSL recipe - the one with the checkTrustedRecursive empty-chain fix).
# Usage: verify_one.sh <apk> <log>
set -u
cd /home/ubuntu/Testing/Final_Year_Minor_Project
export PYTHONPATH=src
APK="$1"
LOG="$2"
timeout 600 .venv/bin/python3 src/cli.py run \
  --apk "$APK" \
  --justification "ACADEMIC_TRAINING_TARGET" \
  --capture-traffic --force-dynamic --device emulator-5554 > "$LOG" 2>&1
echo "EXIT=$?" >> "$LOG"
