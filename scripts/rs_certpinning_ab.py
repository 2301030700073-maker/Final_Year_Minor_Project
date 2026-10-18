#!/usr/bin/env python3
"""A/B proof that the pinning bypass makes a pinned app's traffic decrypt.

Runs the capture stage on RS_CertPinning twice - once WITHOUT the bypass script
(plain am-start cold start) and once WITH it (spawn under Frida with the
pinning-only universal script). In each run the capture stage drives the UI with
its own deterministic single tap (ADR-0011) so the WebView issues its HTTPS
request while mitmdump is capturing. The contrast - pinned host absent/blocked
without the script, present and decrypted with it - is the empirical proof of
the bypass.

The drive is NOT this script's: it is `run_capture_stage`'s own, so both arms
tap the same control by the same rule and the proof rests on the same
mechanism the pipeline uses. The stage's `ui_drive` record is printed per arm
so what drove the app is read, never assumed.

Reference-machine only: shells out to adb/powershell and must run on WSL2 where
the emulator lives on the Windows host. Reports results honestly (NFR-7), never
a fabricated flow list (principle 3).

Usage:
    python scripts/rs_certpinning_ab.py [--window 14]
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "src"))

from dynamic import mitmproxy_capture as mc
from dynamic import pass_through_proxy as ptp

SERIAL = "emulator-5554"
PKG = "com.redshift.rs_certpinning_bypass"
MAIN = "com.redshift.rs_certpinning_bypass/.MainActivity"
CAPTURE_PORT = mc.DEFAULT_PROXY_PORT
_OUT = Path("outputs/analysis/rs_certpinning")
BYPASS_SCRIPT = "ssl_pinning_bypass_universal.js"


def _run_arm(bypass_script, window, label):
    # Bring up the internet baseline first (the capture stage restores it after).
    ptp.ensure_internet(SERIAL, ptp.INTERNET_PROXY_PORT)
    _OUT.mkdir(parents=True, exist_ok=True)

    # The stage drives the UI itself (drive_ui defaults True), so nothing here
    # taps: a second tap from this script would be an unrecorded state change
    # and would make the arms' contrast unattributable.
    result = mc.run_capture_stage(
        SERIAL, PKG, _OUT, proxy_port=CAPTURE_PORT,
        capture_window=window, bypass_script=bypass_script)

    print(f"\n===== ARM: {label} (bypass={bypass_script!r}) =====")
    if result is None:
        print("[!] capture did not complete")
        return None
    drive = (result.evidence or {}).get("ui_drive") or {}
    print(f"  status: {result.status}   bypass_applied={result.evidence.get('bypass_applied')}")
    print(f"  ui_drive: tapped={drive.get('tapped')} target="
          f"{(drive.get('target') or {}).get('label')!r} selected_by={drive.get('selected_by')!r}"
          f" reason={drive.get('reason')!r}")
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
    if "--window" in sys.argv:
        i = sys.argv.index("--window")
        if i + 1 >= len(sys.argv):
            print("--window needs a value (seconds)", file=sys.stderr)
            return 2
        try:
            window = float(sys.argv[i + 1])
        except ValueError:
            print(f"--window must be a number, got {sys.argv[i + 1]!r}", file=sys.stderr)
            return 2
    else:
        window = 14.0
    a = _run_arm(None, window, "WITHOUT script")
    b = _run_arm(BYPASS_SCRIPT, window, "WITH script")

    print("\n===== A/B SUMMARY =====")
    if a is None or b is None:
        print("  incomplete")
        return 1
    # The contrast is attributable only when BOTH arms actually produced a flow
    # list. A failed WITHOUT arm leaves an empty host set, and `b - a` then reads
    # every host the script decrypted as decrypting ONLY with the script - the
    # bypass claim asserted from an arm that never ran, which is the one thing
    # this A/B exists to avoid (NFR-7, principle 3). A capture that fails for an
    # unrelated reason (no internet, app crash, port conflict) is exactly when
    # that happens, so it is not a rare shape.
    incomplete = [name for name, r in (("WITHOUT script", a), ("WITH script", b))
                  if r.status != "success"]
    if incomplete:
        print(f"  NOT ATTRIBUTABLE - {' and '.join(incomplete)} did not complete "
              f"(status: {a.status} / {b.status}); no bypass claim is made from this pair")
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
