#!/usr/bin/env python3
"""A/B proof that the pinning bypass makes a pinned app's traffic decrypt.

Runs the capture stage on RS_CertPinning twice - once WITHOUT the bypass script
(plain am-start cold start) and once WITH it (spawn under Frida with the
pinning-only universal script). In each run the driver taps the app's START
button mid-window so the WebView issues its HTTPS request while mitmdump is
capturing. The contrast - pinned host absent/blocked without the script, present
and decrypted with it - is the empirical proof of the bypass.

Reference-machine only: shells out to adb/powershell and must run on WSL2 where
the emulator lives on the Windows host. Reports results honestly (NFR-7), never
a fabricated flow list (principle 3).

Usage:
    python scripts/rs_certpinning_ab.py [--window 14] [--ab /path/to/apk]
"""

from __future__ import annotations

import sys
import threading
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "src"))

from dynamic import mitmproxy_capture as mc
from dynamic import pass_through_proxy as ptp

SERIAL = "emulator-5554"
PKG = "com.redshift.rs_certpinning_bypass"
MAIN = "com.redshift.rs_certpinning_bypass/.MainActivity"
CAPTURE_PORT = mc.DEFAULT_PROXY_PORT
_OUT = Path("outputs/analysis/rs_certpinning")
_START_BUTTON = (720, 2309)  # the app's START button (from uiautomator dump)
BYPASS_SCRIPT = "ssl_pinning_bypass_universal.js"


def _adb() -> str:
    import shutil
    return shutil.which("adb") or "/home/ubuntu/.local/bin/adb"


def _tap(serial: str, x: int, y: int, delay: float = 4.0) -> None:
    """Sleep `delay` (let the capture stage cold-start the app), then tap the
    app's START button so the WebView issues its HTTPS request inside the
    capture window. Runs on the calling thread (the capture runs in another)."""
    time.sleep(delay)
    import subprocess
    subprocess.run([_adb(), "-s", serial, "shell", "input", "tap", str(x), str(y)],
                   capture_output=True, text=True, timeout=20)


def _run_arm(bypass_script, window, label):
    # Bring up the internet baseline first (the capture stage restores it after).
    ptp.ensure_internet(SERIAL, ptp.INTERNET_PROXY_PORT)
    _OUT.mkdir(parents=True, exist_ok=True)

    # Run the capture in a thread so the driver can tap START mid-window.
    result_holder = {}

    def _capture():
        result_holder["r"] = mc.run_capture_stage(
            SERIAL, PKG, _OUT, proxy_port=CAPTURE_PORT,
            capture_window=window, bypass_script=bypass_script)

    t = threading.Thread(target=_capture, daemon=True)
    t.start()
    _tap(SERIAL, *_START_BUTTON, delay=min(4.0, window * 0.3))
    t.join(timeout=window + 40)
    result = result_holder.get("r")

    print(f"\n===== ARM: {label} (bypass={bypass_script!r}) =====")
    if result is None:
        print("[!] capture did not complete")
        return None
    print(f"  status: {result.status}   bypass_applied={result.evidence.get('bypass_applied')}")
    if result.status == "success":
        hosts = result.evidence["hosts"]
        print(f"  flows: {result.evidence['flows_count']}")
        for h in hosts:
            mark = " <-- PINNED-DECRYPTED" if "redshift" in h else ""
            print(f"    {h}{mark}")
    else:
        print(f"  evidence: {result.evidence}")
        print(f"  error: {result.error}")
    return result


def main() -> int:
    window = float(sys.argv[sys.argv.index("--window") + 1]) if "--window" in sys.argv else 14.0
    a = _run_arm(None, window, "WITHOUT script")
    b = _run_arm(BYPASS_SCRIPT, window, "WITH script")

    print("\n===== A/B SUMMARY =====")
    if a is None or b is None:
        print("  incomplete")
        return 1
    a_hosts = set(a.evidence.get("hosts", []))
    b_hosts = set(b.evidence.get("hosts", []))
    print(f"  without script: {len(a_hosts)} host(s) decrypted -> {sorted(a_hosts)}")
    print(f"  with script:    {len(b_hosts)} host(s) decrypted -> {sorted(b_hosts)}")
    new = b_hosts - a_hosts
    if new:
        print(f"  [bypass] {len(new)} host(s) decrypt ONLY with the script: {sorted(new)}")
    else:
        print("  [note] no extra hosts decrypted with the script")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
