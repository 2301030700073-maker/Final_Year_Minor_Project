#!/bin/bash
# ─────────────────────────────────────────────────────────────
# One-command Phase 1 runner: check, fix, execute, verify.
# Usage:
#   bash run.sh                    # full run with auto-fix
#   bash run.sh --skip-pipeline    # only setup, skip the pipeline
#   bash run.sh --check-only       # just verify environment
# ─────────────────────────────────────────────────────────────
set -euo pipefail
cd "$(dirname "$0")"

PASS="✅"; FAIL="❌"; FIX="🔧"; INFO="ℹ️"
SKIP_PIPELINE=false; CHECK_ONLY=false
for arg in "$@"; do [ "$arg" = "--skip-pipeline" ] && SKIP_PIPELINE=true; [ "$arg" = "--check-only" ] && CHECK_ONLY=true; done

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
    echo "         PowerShell: emulator -avd Frida_Test -no-snapshot"
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
        echo "         Create: avdmanager create avd -n Frida_Test"
        echo "                 -k 'system-images;android-30;google_apis;x86_64'"
        ALL_OK=false
    fi
fi

# ── Step 3: Frida version must be 16.x ──
echo ""
echo "─── 3. Frida version (must be 16.x) ───"
FRIDA_VER=$(frida --version 2>/dev/null || echo "not found")
if echo "$FRIDA_VER" | grep -q "^16\."; then
    echo "  $PASS  frida $FRIDA_VER"
else
    echo "  $FAIL  frida $FRIDA_VER (need 16.x)"
    echo "         Fix: uv add 'frida<17'"
    ALL_OK=false
fi

# ── Step 4: Frida-server on emulator ──
echo ""
echo "─── 4. Frida-server on emulator ───"
SERVER_VER=$(adb shell "/data/local/tmp/frida-server-16 --version" 2>/dev/null | tr -d '\r' || echo "not found")
if [ "$SERVER_VER" = "$FRIDA_VER" ]; then
    echo "  $PASS  frida-server-$SERVER_VER on emulator"
elif [ -f "/tmp/frida-server-16.7.19-android-x86_64" ]; then
    echo "  $FIX  frida-server version mismatch or missing — pushing..."
    base64 /tmp/frida-server-16.7.19-android-x86_64 | adb shell "base64 -d > /data/local/tmp/frida-server-16" 2>/dev/null
    adb shell "chmod 755 /data/local/tmp/frida-server-16" 2>/dev/null
    echo "  $PASS  Pushed frida-server-16"
elif [ -f "tools/download_frida_server.sh" ]; then
    echo "  $FIX  Downloading frida-server..."
    bash tools/download_frida_server.sh
    base64 /tmp/frida-server-16.7.19-android-x86_64 | adb shell "base64 -d > /data/local/tmp/frida-server-16" 2>/dev/null
    adb shell "chmod 755 /data/local/tmp/frida-server-16" 2>/dev/null
    echo "  $PASS  Pushed frida-server-16"
else
    echo "  $FAIL  No frida-server binary found"
    echo "         Run: bash tools/download_frida_server.sh"
    ALL_OK=false
fi

# ── Step 5: Start frida-server ──
if $ALL_OK; then
    echo ""
    echo "─── 5. Start frida-server ───"
    adb root 2>/dev/null
    adb exec-out '/data/local/tmp/frida-server-16 -l 0.0.0.0:27042 > /dev/null 2>&1 &' </dev/null 2>/dev/null
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
    adb forward --remove-all 2>/dev/null
    adb forward tcp:27044 tcp:27042 2>/dev/null && echo "  $PASS  ADB forward: 27044 → 27042"
    powershell.exe -Command "Get-CimInstance Win32_Process -Filter \"Name='python.exe'\" | Where-Object { \$_.CommandLine -match 'frida_relay' } | ForEach-Object { Stop-Process -Id \$_.ProcessId -Force }" 2>/dev/null || true
    powershell.exe -Command "Start-Process -WindowStyle Hidden python -ArgumentList '\"C:\\Users\\Divyang\\AppData\\Local\\Temp\\frida_relay.py\" 27043 127.0.0.1 27044'" 2>/dev/null || true
    sleep 2
    WIN_IP=$(ip route show default | awk '{print $3}' 2>/dev/null || echo "172.22.32.1")
    python3 -c "import socket; s=socket.socket(); s.settimeout(3); s.connect(('$WIN_IP', 27043)); s.close()" 2>/dev/null && echo "  $PASS  Relay OK ($WIN_IP:27043)" || {
        echo "  $FAIL  Relay not connecting"
        echo "         Check Windows Python: powershell.exe -Command \"python --version\""
        ALL_OK=false
    }
fi

# ── Step 7: Install APK ──
if $ALL_OK && ! $CHECK_ONLY; then
    echo ""
    echo "─── 7. Install APK ───"
    adb install -r APK_Test/UnCrackable-Level1.apk 2>/dev/null && echo "  $PASS  APK installed" || {
        adb uninstall owasp.mstg.uncrackable1 2>/dev/null || true
        adb install -r APK_Test/UnCrackable-Level1.apk 2>/dev/null && echo "  $PASS  APK installed (clean)" || {
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
    python -u scripts/collect_verification_bundle.py \
        --apk APK_Test/UnCrackable-Level1.apk \
        --justification ACADEMIC_TRAINING_TARGET 2>&1

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
