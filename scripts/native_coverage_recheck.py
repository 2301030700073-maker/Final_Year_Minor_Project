#!/usr/bin/env python3
"""Re-measure stored `native` coverage claims against the CURRENT body-sweep gate.

Why this exists: `_recover_body_calls` used to return `scanned=True` regardless of
how much of a lib it actually decoded (fixed 2026-09-04, cache version
native-analyze-v3). Every run recorded before that fix may therefore carry
`native: fully_analyzed` - which licenses a confident negative - on the strength
of a scan that never happened. A stored over-claim does not repair itself: the
report on disk keeps asserting it until the APK is re-run.

This script does not re-run anything and does not touch the DB. It reads each
APK's already-extracted .so files, applies the current gate, and prints the APKs
whose stored claim the current code would NOT make. Those are the re-run list.

Usage: PYTHONPATH=src .venv/bin/python scripts/native_coverage_recheck.py [sha_prefix ...]
"""
from __future__ import annotations

import json
import sqlite3
import sys
from pathlib import Path

from loguru import logger

logger.remove()

from static.native import _MIN_DECODE_RATIO, _recover_body_calls  # noqa: E402

DB = Path("outputs/analysis/results.db")
ANALYSIS = Path("outputs/analysis")


def latest_runs() -> list[tuple[str, str, dict]]:
    con = sqlite3.connect(DB)
    out = []
    for sha, ts in con.execute("select apk_sha256, max(timestamp) from runs group by apk_sha256"):
        row = con.execute(
            "select coverage, package_name from runs where apk_sha256=? and timestamp=?", (sha, ts)
        ).fetchall()[-1]
        cov = json.loads(row[0]) if row[0] else {}
        out.append((sha, ts, {"pkg": row[1], "native": cov.get("native"), "cov": cov}))
    return sorted(out, key=lambda r: r[1])


def main() -> int:
    wanted = tuple(sys.argv[1:])
    stale: list[str] = []
    for sha, ts, meta in latest_runs():
        if wanted and not sha.startswith(wanted):
            continue
        libs = sorted((ANALYSIS / sha / "native").rglob("*.so"))
        if not libs:
            continue
        failures = []
        for so in libs:
            try:
                scanned, calls = _recover_body_calls(str(so))
            except Exception as exc:  # a lib the recovery cannot open is itself a finding
                failures.append((so, f"error: {type(exc).__name__}: {exc}"))
                continue
            if not scanned:
                abi = so.parent.name
                failures.append((so, f"{abi}/{so.name}: gate {_MIN_DECODE_RATIO} not met, {len(calls)} calls"))
        verdict = "fully_analyzed" if not failures else "NOT fully_analyzed"
        flag = ""
        if meta["native"] == "fully_analyzed" and failures:
            flag = "  <-- STORED CLAIM IS UNEARNED, RE-RUN"
            stale.append(sha)
        print(f"{sha[:13]} {str(meta['pkg'])[:38]:39} {ts[:19]}  stored={meta['native']!s:16} "
              f"now={verdict:18} libs={len(libs):4}{flag}")
        for _, why in failures[:6]:
            print(f"    - {why}")
        if len(failures) > 6:
            print(f"    ... and {len(failures) - 6} more")
    print()
    if stale:
        print("Re-run required (stored native=fully_analyzed the current gate would refuse):")
        for sha in stale:
            print(f"  {sha}")
    else:
        print("No stored native=fully_analyzed claim is refused by the current gate.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
