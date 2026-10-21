#!/usr/bin/env bash
# reset_emulator_network.sh - recover an emulator whose internet was stranded by a
# left-behind capture proxy / adb reverse socket.
#
# WHY THIS EXISTS
# ---------------
# The dynamic capture stage (src/dynamic/mitmproxy_capture.py) sets a global
# http_proxy on the device (127.0.0.1:<port>) and an `adb reverse` tunnel, then
# tears them down from a `finally` in _cleanup(). That finally only catches
# Python exceptions - if the run is hard-killed (SIGKILL, WSL distro restart,
# terminal killed, machine sleep), the teardown never runs and the device is left
# pointing its HTTP traffic at 127.0.0.1:<port> where nothing is listening ->
# the emulator "has no internet" while every other app on the host is fine.
#
# This script reproduces the verified-clean teardown by hand so you can recover
# in one command instead of fishing through adb settings.
#
# USAGE
# -----
#   scripts/reset_emulator_network.sh                 # default emulator-5554, just clear
#   scripts/reset_emulator_network.sh --serial emulator-5556
#   scripts/reset_emulator_network.sh --restore 8081  # WSL2-inside-emulator: point back at the pass-through
#
# DEFAULT (clear) is correct for the common setup where the emulator runs on the
# Windows host and gets real NAT internet once the stale proxy is removed (this
# was verified: after clearing, DNS resolves and TCP/:443 connects). Use
# --restore only when the emulator actually lives INSIDE WSL2 and has no direct
# NAT (then clearing would leave it with no path at all).

set -u

SERIAL="emulator-5554"
RESTORE_PORT=""

while [ $# -gt 0 ]; do
  case "$1" in
    --serial) SERIAL="$2"; shift 2 ;;
    --restore) RESTORE_PORT="$2"; shift 2 ;;
    -h|--help) sed -n '2,28p' "$0"; exit 0 ;;
    *) echo "unknown arg: $1" >&2; exit 2 ;;
  esac
done

if ! command -v adb >/dev/null 2>&1; then
  echo "adb not found on PATH - add platform-tools and retry" >&2
  exit 3
fi

echo "==> target device: $SERIAL"
if ! adb -s "$SERIAL" get-state 2>/dev/null | grep -q device; then
  echo "device $SERIAL not reachable (offline or not present) - listing:" >&2
  adb devices -l 2>&1 | sed 's/^/  /'
  exit 4
fi

echo "==> removing all stale adb reverse sockets"
adb -s "$SERIAL" reverse --remove-all 2>&1 | sed 's/^/  /'

if [ -n "$RESTORE_PORT" ]; then
  echo "==> restoring device proxy to pass-through 127.0.0.1:$RESTORE_PORT (WSL2-inside-emulator)"
  adb -s "$SERIAL" shell settings put global http_proxy "127.0.0.1:$RESTORE_PORT" 2>&1 | sed 's/^/  /'
else
  echo "==> clearing device global http_proxy (disable)"
  adb -s "$SERIAL" shell settings put global http_proxy :0 2>&1 | sed 's/^/  /'
fi

# Best-effort removal of the explicit host/port keys some Android versions keep.
adb -s "$SERIAL" shell settings delete global global_http_proxy_host >/dev/null 2>&1 || true
adb -s "$SERIAL" shell settings delete global global_http_proxy_port >/dev/null 2>&1 || true

# Force the network stack to re-read the cleared proxy (apps may cache it).
adb -s "$SERIAL" shell svc wifi disable >/dev/null 2>&1 || true
adb -s "$SERIAL" shell svc wifi enable  >/dev/null 2>&1 || true

echo "==> resulting state:"
echo "  http_proxy = $(adb -s "$SERIAL" shell 'settings get global http_proxy' 2>/dev/null | tr -d '\r')"
echo "  reverse    = [$(adb -s "$SERIAL" reverse --list 2>/dev/null | tr -d '\r')]"
echo "==> done. If apps still show no internet, restart the emulator once."
