#!/usr/bin/env python3
"""Give the WSL2-hosted emulator both working internet AND an on-demand capture
proxy, at the same time, automated.

The emulator's direct 10.0.2.x NAT gateway is dead below the Android level on
this WSL2 setup, so the only working outbound path is adb reverse -> a process
on the Windows host. That process is normally the mitmproxy capture proxy,
which MITMs/decrypts everything and breaks cert-pinning apps. So the internet
path is a separate pass-through proxy (no MITM) on :8080, and the capture proxy
uses :8081. Captures are one-shot and self-managed by run_capture_stage, which
ensures the internet baseline first and restores it after - internet never drops.

    :8080  pass-through proxy (no MITM)  -> normal internet, pinning apps work
    :8081  mitmproxy capture proxy        -> started per capture, stopped after

Usage:
    python scripts/emulator_proxy.py up         bring up the internet baseline
    python scripts/emulator_proxy.py capture    run a one-shot capture, then restore internet
    python scripts/emulator_proxy.py internet   (re)assert the internet baseline
    python scripts/emulator_proxy.py down       teardown (reverses, proxy, both procs)

Reference-machine only: shells out to adb/powershell and must run on WSL2 where
the emulator lives on the Windows host. Fails loudly (NFR-7), never silent.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "src"))

from dynamic import mitmproxy_capture as mc
from dynamic import pass_through_proxy as ptp

SERIAL = "emulator-5554"
PASS_PORT = ptp.INTERNET_PROXY_PORT
CAPTURE_PORT = mc.DEFAULT_PROXY_PORT
_OUT = Path("outputs/analysis/captures")


def _adb() -> str:
    import shutil
    return shutil.which("adb") or "/home/ubuntu/.local/bin/adb"


def up() -> None:
    # Internet baseline only: the pass-through proxy is the device's working
    # internet on WSL2 (no direct NAT). The capture proxy is started fresh and
    # self-managed by run_capture_stage, which also restores internet after.
    ptp.ensure_internet(SERIAL, PASS_PORT)
    print(f"[ok] pass-through internet proxy up on :{PASS_PORT}, "
          f"device proxy -> 127.0.0.1:{PASS_PORT} (internet mode, no MITM)")


def capture() -> None:
    # One-shot capture: run_capture_stage ensures the internet baseline, spins
    # up its own capture mitmdump on :8081, routes the device to it, captures,
    # then restores the device to the pass-through proxy so internet keeps working.
    result = mc.run_capture_stage(SERIAL, "com.allproperty.android.consumer.my",
                                  _OUT, proxy_port=CAPTURE_PORT, capture_window=15.0)
    if result.status == "success":
        print(f"[ok] captured {result.evidence['flows_count']} decrypted flows")
        for h in result.evidence.get("hosts", []):
            print("      ", h)
    else:
        print(f"[!] capture: {result.evidence.get('reason', 'failed')}")
    print("[ok] device restored to pass-through internet proxy (internet still works)")
    return result


def internet() -> None:
    ptp.ensure_internet(SERIAL, PASS_PORT)
    print(f"[ok] device proxy -> 127.0.0.1:{PASS_PORT} (internet mode; "
          f"no MITM, pinning apps work)")


def down() -> None:
    import subprocess
    adb = _adb()
    for port in (CAPTURE_PORT, PASS_PORT):
        try:
            subprocess.run([adb, "-s", SERIAL, "reverse", "--remove", f"tcp:{port}"],
                           check=True, timeout=15)
        except Exception:
            pass
    try:
        subprocess.run([adb, "-s", SERIAL, "shell", "settings", "delete", "global",
                        "http_proxy"], check=True, timeout=15)
    except Exception:
        pass
    mc._stop_windows_mitmdump()
    ptp.stop_windows_passthrough()
    print("[ok] reverses removed, proxy cleared, both Windows proxies stopped")


def main() -> None:
    cmd = sys.argv[1] if len(sys.argv) > 1 else "up"
    if cmd == "up":
        up()
    elif cmd == "capture":
        capture()
    elif cmd == "internet":
        internet()
    elif cmd == "down":
        down()
    else:
        raise SystemExit("usage: emulator_proxy.py [up|capture|internet|down]")


if __name__ == "__main__":
    main()
