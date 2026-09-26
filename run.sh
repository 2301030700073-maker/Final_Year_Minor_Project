#!/bin/bash
# ─────────────────────────────────────────────────────────────
# One-command Phase 1 runner: check, fix, execute, verify.
# Usage:
#   bash run.sh                              # Phase 1 (Level 1) full run
#   bash run.sh --target uncrackable2        # Phase 2 (Level 2) full run
#   bash run.sh --target uncrackable3        # Phase 3 (Level 3) full run
#   bash run.sh --skip-pipeline              # only setup, skip the pipeline
#   bash run.sh --check-only                 # just verify environment
# ─────────────────────────────────────────────────────────────
set -euo pipefail
cd "$(dirname "$0")"

PASS="✅"; FAIL="❌"; FIX="🔧"; INFO="ℹ️"
SKIP_PIPELINE=false; CHECK_ONLY=false; TARGET="uncrackable1"
# A `for arg in "$@"` loop can't consume a following word as a flag's value -
# "--target uncrackable2" only worked before when --target happened to be
# the very first argument (it was reading the script's fixed $2, not "the
# word after whichever arg the loop is on"). A while/shift loop can.
while [[ $# -gt 0 ]]; do
  case "$1" in
    --skip-pipeline) SKIP_PIPELINE=true; shift ;;
    --check-only) CHECK_ONLY=true; shift ;;
    --target=*) TARGET="${1#*=}"; shift ;;
    --target) TARGET="${2:-uncrackable1}"; shift; [[ $# -gt 0 ]] && shift ;;
    *) shift ;;
  esac
done

# ── Host config (G21: env-overridable; defaults = the reference WSL2 box) ──
# These were hardcoded to one collaborator's Windows profile and host IP. They
# stay as documented DEFAULTS so the reference invocation is unchanged, but any
# other host overrides them via env without editing this script, e.g.:
#   FRIDA_RELAY_WIN_PATH='C:\Users\me\AppData\Local\Temp\frida_relay.py' \
#   WIN_HOST_IP=172.20.0.1 bash run.sh
FRIDA_RELAY_WIN_PATH="${FRIDA_RELAY_WIN_PATH:-C:\\Users\\Divyang\\AppData\\Local\\Temp\\frida_relay.py}"

echo ""
echo "══════════════════════════════════════════════════"
echo "  Phase 1 — Auto Runner"
echo "══════════════════════════════════════════════════"
echo ""

ALL_OK=true

# ── Step 1: Git status ──
echo "─── 1. Git status ───"
if git diff --quiet 2>/dev/null; then echo "  $PASS  Working tree clean"; else echo "  $INFO  Uncommitted changes exist (expected during development)"; fi

# ── Step 2: Emulator must be userdebug ──
echo ""
echo "─── 2. Emulator (must be userdebug) ───"
EMU=$(adb devices 2>/dev/null | grep -m1 "emulator.*device" | awk '{print $1}' || true)
if [ -z "$EMU" ]; then
    echo "  $FAIL  No emulator found. Start one:"
    echo "         PowerShell: C:\Users\Divyang\AppData\Local\Android\Sdk\emulator\emulator.exe -avd Frida_Test_API34 -no-snapshot"
    ALL_OK=false
else
    echo "  $PASS  Device: $EMU"
    BUILD_TYPE=$(adb shell getprop ro.build.type 2>/dev/null | tr -d '\r' || true)
    DEBUGGABLE=$(adb shell getprop ro.debuggable 2>/dev/null | tr -d '\r' || true)
    if [ "$BUILD_TYPE" = "userdebug" ] && [ "$DEBUGGABLE" = "1" ]; then
        echo "  $PASS  Build: $BUILD_TYPE, debuggable: $DEBUGGABLE"
    else
        echo "  $FAIL  Build: $BUILD_TYPE, debuggable: $DEBUGGABLE"
        echo "         Must be userdebug with ro.debuggable=1."
        echo "         Create: avdmanager create avd -n Frida_Test_API34"
        echo "                 -k 'system-images;android-34;google_apis;x86_64'"
        ALL_OK=false
    fi
fi

# ── Step 3: Frida version must be 16.x ──
echo ""
echo "─── 3. Frida version (must be 16.x) ───"
# The pipeline runs under the uv-locked frida client, not whatever `frida` is
# on PATH (which can be a mismatched 17.x system install). Validate the client
# the run actually uses so the version check and the server comparison line up.
FRIDA_VER=$(uv run frida --version 2>/dev/null || echo "not found")
if echo "$FRIDA_VER" | grep -q "^16\."; then
    echo "  $PASS  frida $FRIDA_VER (uv-locked client)"
else
    echo "  $FAIL  frida $FRIDA_VER (need 16.x, uv-locked client)"
    echo "         Fix: uv add 'frida<17'"
    ALL_OK=false
fi

# ── Step 4: Frida-server on emulator ──
# Both paths belong to the pipeline, not to this script: src/dynamic/device.py defines
# _FRIDA_SERVER_DEVICE (/data/local/tmp/frida-server) and _FRIDA_SERVER_LOCAL
# (tools/frida-server-16.7.19-x86_64). This step used to carry its own copies of each
# and had drifted from both. It probed the device at /data/local/tmp/frida-server-16 -
# a path nothing in the project writes - so it never saw a server verify-device had
# already provisioned; and it read the downloader's /tmp/frida-server-16.7.19-android-x86_64,
# which tools/download_frida_server.sh deletes immediately after copying the binary into
# tools/. Under `set -e` the resulting base64 failure aborted the script - but not before
# the remote `base64 -d >` had created a 0-byte /data/local/tmp/frida-server-16 on the
# device, and the `echo` at the end of that branch would have reported that empty file
# as a successful push (measured 2026-09-25 on emulator-5554/API 34: the 0-byte file was
# left behind with the real 114 MB binary sitting at the canonical path beside it).
# Push the vendored copy with `adb push` - the same binary to the same destination
# device.py uses - and gate the PASS on the push having actually succeeded.
echo ""
echo "─── 4. Frida-server on emulator ───"
FRIDA_SERVER_LOCAL="tools/frida-server-16.7.19-x86_64"
FRIDA_SERVER_DEVICE="/data/local/tmp/frida-server"
SERVER_VER=$(adb shell "$FRIDA_SERVER_DEVICE --version" 2>/dev/null | tr -d '\r' || echo "not found")
if [ "$SERVER_VER" = "$FRIDA_VER" ]; then
    echo "  $PASS  frida-server-$SERVER_VER on emulator"
else
    if [ ! -f "$FRIDA_SERVER_LOCAL" ]; then
        echo "  $FIX  frida-server binary not vendored — downloading..."
        bash tools/download_frida_server.sh
    fi
    echo "  $FIX  frida-server version mismatch or missing — pushing..."
    if adb push "$FRIDA_SERVER_LOCAL" "$FRIDA_SERVER_DEVICE" >/dev/null 2>&1 \
       && adb shell "chmod 755 $FRIDA_SERVER_DEVICE" 2>/dev/null; then
        echo "  $PASS  Pushed frida-server"
    else
        echo "  $FAIL  Push failed"
        echo "         Run: bash tools/download_frida_server.sh"
        ALL_OK=false
    fi
fi

# ── Step 5: Start frida-server ──
if $ALL_OK; then
    echo ""
    echo "─── 5. Start frida-server ───"
    adb root 2>/dev/null
    adb exec-out "$FRIDA_SERVER_DEVICE -l 0.0.0.0:27042 > /dev/null 2>&1 &" </dev/null 2>/dev/null
    sleep 2
    if adb shell "netstat -tlnp 2>/dev/null | grep -q 27042" 2>/dev/null; then
        echo "  $PASS  frida-server listening on 0.0.0.0:27042"
    else
        echo "  $FAIL  frida-server not listening"
        ALL_OK=false
    fi
fi

# ── Step 6: ADB forward + relay ──
if $ALL_OK; then
    echo ""
    echo "─── 6. ADB forward + relay ───"
    echo "  $INFO  Relay: $FRIDA_RELAY_WIN_PATH  (override via FRIDA_RELAY_WIN_PATH / WIN_HOST_IP)"
    adb forward --remove-all 2>/dev/null
    adb forward tcp:27044 tcp:27042 2>/dev/null && echo "  $PASS  ADB forward: 27044 → 27042"
    powershell.exe -Command "Get-CimInstance Win32_Process -Filter \"Name='python.exe'\" | Where-Object { \$_.CommandLine -match 'frida_relay' } | ForEach-Object { Stop-Process -Id \$_.ProcessId -Force }" 2>/dev/null || true
    powershell.exe -Command "Start-Process -WindowStyle Hidden python -ArgumentList '\"${FRIDA_RELAY_WIN_PATH}\" 27043 127.0.0.1 27044'" 2>/dev/null || true
    sleep 2
    WIN_IP="${WIN_HOST_IP:-$(ip route show default | awk '{print $3}' 2>/dev/null || echo "172.22.32.1")}"
    python3 -c "import socket; s=socket.socket(); s.settimeout(3); s.connect(('$WIN_IP', 27043)); s.close()" 2>/dev/null && echo "  $PASS  Relay OK ($WIN_IP:27043)" || {
        echo "  $FAIL  Relay not connecting"
        echo "         Check Windows Python: powershell.exe -Command \"python --version\""
        ALL_OK=false
    }
fi

# Map target to APK filename and package name
case "$TARGET" in
  uncrackable1) APK_FILE="APK_Test/UnCrackable-Level1.apk"; PKG="owasp.mstg.uncrackable1" ;;
  uncrackable2) APK_FILE="APK_Test/UnCrackable-Level2.apk"; PKG="owasp.mstg.uncrackable2" ;;
  uncrackable3) APK_FILE="APK_Test/UnCrackable-Level3.apk"; PKG="owasp.mstg.uncrackable3" ;;
  *) echo "  $FAIL Unknown target: $TARGET (use uncrackable1, uncrackable2, or uncrackable3)"; exit 1 ;;
esac
echo "  $INFO  Target: $TARGET ($APK_FILE)"

# ── Step 7: Install APK ──
if $ALL_OK && ! $CHECK_ONLY; then
    echo ""
    echo "─── 7. Install APK ───"
    adb install -r "$APK_FILE" 2>/dev/null && echo "  $PASS  APK installed" || {
        adb uninstall "$PKG" 2>/dev/null || true
        adb install -r "$APK_FILE" 2>/dev/null && echo "  $PASS  APK installed (clean)" || {
            echo "  $FAIL  APK install failed"
            ALL_OK=false
        }
    }
fi

# ── Step 8: Run pipeline ──
if $ALL_OK && ! $SKIP_PIPELINE && ! $CHECK_ONLY; then
    echo ""
    echo "─── 8. Run pipeline ───"
    uv sync 2>/dev/null
    uv run python -u scripts/collect_verification_bundle.py \
        --apk "$APK_FILE" \
        --justification ACADEMIC_TRAINING_TARGET \
        --target "$TARGET" 2>&1

    echo ""
    echo "─── 9. Verify results ───"
    LATEST=$(ls -td docs/plans/handoff/bundles/*/ 2>/dev/null | head -1)
    if [ -n "$LATEST" ]; then
        LATEST_REPORT=$(find "$LATEST/reports/" -name "*.md" -type f 2>/dev/null | sort -r | head -1)
        if [ -n "$LATEST_REPORT" ] && [ -f "$LATEST_REPORT" ]; then
            BYPASSED=$(grep -c "Root bypassed: True" "$LATEST_REPORT" 2>/dev/null || echo "0")
            MATCHES=$(grep -c "Matches: True" "$LATEST_REPORT" 2>/dev/null || echo "0")
            echo "  $( [ "$BYPASSED" != "0" ] && echo "$PASS" || echo "$FAIL" )  Root bypassed: $( [ "$BYPASSED" != "0" ] && echo 'True' || echo 'False' )"
            echo "  $( [ "$MATCHES" != "0" ] && echo "$PASS" || echo "$FAIL" )  Correlation: $( [ "$MATCHES" != "0" ] && echo 'True' || echo 'False' )"
            grep -E "hook_fired_c\.|hooks_installed" "$LATEST_REPORT" 2>/dev/null | sed 's/^/  /'
        else
            echo "  $INFO  No report file found for verification"
        fi
        echo "  $INFO  Report: $LATEST"
    fi
    echo ""
    echo "══════════════════════════════════════════════════"
    echo "  Done. Push with:"
    echo "    git add docs/plans/handoff/bundles/"
    echo "    git commit -m \"Phase 1 verification\""
    echo "    git push"
    echo "══════════════════════════════════════════════════"
elif $CHECK_ONLY; then
    echo ""
    echo "─── Check-only mode — pipeline not run ───"
fi

# ── Final status ──
echo ""
if $ALL_OK; then
    echo "  $PASS  All checks passed."
else
    echo "  $FAIL  Some checks failed. Fix issues above and re-run."
    exit 1
fi
echo ""
