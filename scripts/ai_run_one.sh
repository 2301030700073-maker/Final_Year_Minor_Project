#!/bin/bash
# Run the AI bypass loop (ai-bypass) for one real-world app.
# Usage: tmp_ai_run.sh <package> <sha256> <ACTION> <log>
set -u
cd /home/ubuntu/Testing/Final_Year_Minor_Project
export AI_BACKEND=claude-cli
export CLAUDE_BIN=/mnt/c/home/ubuntu/.local/node_modules/@anthropic-ai/claude-code-win32-x64/claude.exe
export AI_ALLOW_AUTHORIZED_TARGET=1
export PYTHONPATH=src
PKG="$1"
SHA="$2"
ACTION="${3:-SSL_ONLY}"
LOG="$4"
timeout 900 .venv/bin/python3 src/cli.py ai-bypass \
  --package "$PKG" \
  --decompile-dir "outputs/analysis/$SHA/jadx" \
  --justification "ACADEMIC_TRAINING_TARGET lab target" \
  --action "$ACTION" \
  --device emulator-5554 \
  --max-iter 3 > "$LOG" 2>&1
echo "EXIT=$?" >> "$LOG"
