#!/usr/bin/env bash
# emulator_up.sh - ensure the WSL2-hosted Android emulator has working internet,
# automatically and idempotently. SAFE TO RUN ON EVERY SHELL OPEN / SESSION START:
# if no emulator is up (or adb/interop is unavailable) it prints one line and exits
# 0, so it can never break your startup. When the emulator IS up it (re)asserts the
# internet path and verifies it.
#
# ROOT CAUSE it fixes (see memory dual-proxy-emulator-internet, and
# scripts/emulator_proxy.py):
#   The WSL2-hosted emulator has no direct NAT - its 10.0.2.2 gateway is dead below
#   the Android level - so its ONLY outbound path is `adb reverse` to a pass-through
#   proxy on the WINDOWS host. After a fresh emulator/PC boot that Windows-host proxy
#   is not running and the device's proxy setting is gone, so the emulator has no
#   internet until something re-establishes them. This script does exactly that,
#   idempotently: it (re)starts the Windows-host pass-through proxy if it is not
#   already listening, re-adds the adb reverse, re-points the device proxy at it, and
#   then verifies the device proxy setting actually took.
#
# It deliberately does NOT boot the emulator (that needs the AVD name + GPU flags and
# is a separate, slower action) - it only fixes the INTERNET path of a running one.
#
# Usage:  bash scripts/emulator_up.sh        (or wire it to auto-run, see README)
# Env:    EMULATOR_SERIAL (default emulator-5554), EMULATOR_WAIT_SECS (default 8)

set -uo pipefail

SERIAL="${EMULATOR_SERIAL:-emulator-5554}"
WAIT_SECS="${EMULATOR_WAIT_SECS:-8}"

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_DIR" || exit 0

ADB="$(command -v adb 2>/dev/null || true)"
[ -n "$ADB" ] || ADB="$HOME/.local/bin/adb"
PYBIN="$PROJECT_DIR/.venv/bin/python"
[ -x "$PYBIN" ] || PYBIN="$(command -v python3 2>/dev/null || echo python3)"

log() { echo "[emulator-up] $*"; }

# Every adb call below is bounded. This script is wired to run at shell open and its
# header promises it "can never break your startup" - but a wedged adb server (a known
# WSL2/Windows-interop failure mode, the same class as device.py's un-timeouted calls)
# hangs `adb version` forever, and with it every new terminal. A bounded call that
# times out lands on the skip path below, which is the correct answer for a hook: no
# device to fix, nothing to do.
ADB_TIMEOUT="${EMULATOR_ADB_TIMEOUT:-10}"
adb() { timeout "$ADB_TIMEOUT" "$ADB" "$@"; }

# adb may be unavailable / WSL interop may be down (e.g. a sandboxed context) - never
# error out of a shell-startup hook because of it.
if ! adb version >/dev/null 2>&1; then
  log "adb not usable here - skipping (nothing to do)."
  exit 0
fi

# Fast path: is the emulator even CONNECTED? One quick probe, no waiting. If it is
# not online we exit IMMEDIATELY - so opening a terminal while the emulator is down
# is instant, never an 8s hang. (get-state prints "device" only when connected AND
# online; "offline"/absent => nothing to do. An offline device - e.g. the known
# post-`adb reboot` brick - is deliberately left untouched.)
state="$(adb -s "$SERIAL" get-state 2>/dev/null | tr -d '\r')"
if [ "$state" != "device" ]; then
  log "no online $SERIAL (get-state='${state:-none}') - skipping (nothing to do)."
  exit 0
fi

# Connected. Now wait (bounded) ONLY for boot to COMPLETE - this covers the fresh-boot
# window where the device is online but Android is still coming up. Any other time it
# breaks out on the first check, so there is no delay for an already-booted emulator.
have_device=0
end=$(( $(date +%s) + WAIT_SECS ))
while [ "$(date +%s)" -le "$end" ]; do
  booted="$(adb -s "$SERIAL" shell getprop sys.boot_completed 2>/dev/null | tr -d '\r ')"
  [ "$booted" = "1" ] && { have_device=1; break; }
  sleep 1
done

if [ "$have_device" -ne 1 ]; then
  log "$SERIAL connected but not booted within ${WAIT_SECS}s - skipping."
  exit 0
fi

# Idempotent internet (re)assert: starts the Windows-host pass-through proxy if it is
# not already listening, then sets adb reverse + the device proxy. Raises loudly on a
# genuine failure (e.g. no python.exe on the Windows host) - which we surface below.
if ! PYTHONPATH=src "$PYBIN" scripts/emulator_proxy.py up; then
  log "internet setup FAILED - see the error above (is a plain python.exe present on the Windows host?)." >&2
  exit 1
fi

# Verify the device proxy setting actually took - the exact thing lost on a fresh boot
# (Android's NetworkStack applies the legacy http_proxy string form, which is what
# device.set_http_proxy writes).
proxy="$(adb -s "$SERIAL" shell settings get global http_proxy 2>/dev/null | tr -d '\r ')"
if [ "$proxy" = "127.0.0.1:8080" ]; then
  # What was measured: ensure_internet raised unless the Windows-host proxy listens and
  # the adb reverse was re-added, and the device proxy setting is read right here. What
  # was NOT measured is that traffic actually flows - only a request from the device can
  # show that - so this names the three legs rather than reporting "internet is up" off
  # a setting, which is what a fresh boot loses.
  log "OK: $SERIAL proxy path restored - device proxy -> $proxy, Windows-host pass-through listening, adb reverse in place (no MITM; pinning apps work)."
  exit 0
fi

log "WARN: device proxy is '${proxy:-<unset>}' (expected 127.0.0.1:8080) - the Windows-host proxy may not have started; re-run: bash scripts/emulator_up.sh" >&2
exit 1
