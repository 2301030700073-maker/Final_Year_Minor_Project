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

One thing it cannot do, and now says so: an APK whose libraries all failed to
extract leaves the same empty `<sha>/native/` as one that ships no native code,
and that directory is the only record this script reads. A stored
`fully_analyzed` with nothing on disk to apply the gate to is therefore reported
as NOT RE-MEASURABLE, not passed over - passing over it reads as "checked and
clean", and it is the same shape (a claim licensing a confident negative,
resting on a scan that cannot be shown to have happened) this script exists to
find. Only a re-run can tell the two apart.

The `gate=` column is the body-sweep gate ALONE, not the pipeline's coverage
rules: it reads `fully_analyzed` for a library the pipeline may have held at
`partial` for a reason this gate does not model (a scan error, or a rule outside
the sweep). So `stored=partial gate=fully_analyzed` does NOT mean the stored
verdict was wrong - only the direction that licenses a confident negative, a
stored `fully_analyzed` the gate now refuses, is a finding here.

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
        # ORDER BY rowid pins "the latest of the runs sharing this second": the
        # timestamp is second-granular, so a retry inside the same second leaves two
        # rows, and [-1] over an unordered result picks between them by whatever
        # order SQLite happened to return rather than by which ran last.
        row = con.execute(
            "select coverage, package_name from runs where apk_sha256=? and timestamp=?"
            " order by rowid", (sha, ts)
        ).fetchall()[-1]
        cov = json.loads(row[0]) if row[0] else {}
        out.append((sha, ts, {"pkg": row[1], "native": cov.get("native"), "cov": cov}))
    return sorted(out, key=lambda r: r[1])


def main() -> int:
    wanted = tuple(sys.argv[1:])
    stale: list[str] = []
    unmeasurable: list[str] = []
    no_libs_other = 0
    for sha, ts, meta in latest_runs():
        if wanted and not sha.startswith(wanted):
            continue
        libs = sorted((ANALYSIS / sha / "native").rglob("*.so"))
        if not libs:
            # Nothing extracted to apply the gate to - which is not the same as a
            # sound claim. An APK whose shipped libraries all failed to extract
            # leaves the same empty directory as one that ships none, and the
            # extraction directory is all this script can see. `fully_analyzed` is
            # the claim that licenses a confident negative, so that is the one that
            # must not be passed over in silence.
            if meta["native"] == "fully_analyzed":
                unmeasurable.append(sha)
                print(f"{sha[:13]} {str(meta['pkg'])[:38]:39} {ts[:19]}  "
                      f"stored={meta['native']!s:16} gate=NOT RE-MEASURABLE   libs=   0"
                      f"  <-- nothing on disk to re-measure; re-run to earn this")
            else:
                no_libs_other += 1
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
        elif meta["native"] != "fully_analyzed" and not failures:
            # The one direction that is NOT a finding, and the only line on screen
            # that says so. This column is the body-sweep gate alone: a library can
            # be held at `partial` by a cause the sweep does not model (a scan error,
            # or a coverage rule outside it). Real output on 2026-09-20 printed 90
            # extracted .so beside stored=partial (com.allproperty.android.consumer
            # .my), which reads as the pipeline's own verdict having been wrong - the
            # docstring explained the pairing and the console did not.
            flag = "  <-- gate is the body-sweep alone; NOT a finding"
        print(f"{sha[:13]} {str(meta['pkg'])[:38]:39} {ts[:19]}  stored={meta['native']!s:16} "
              f"gate={verdict:18} libs={len(libs):4}{flag}")
        for _, why in failures[:6]:
            print(f"    - {why}")
        if len(failures) > 6:
            print(f"    ... and {len(failures) - 6} more")
    print()
    if no_libs_other:
        print(f"({no_libs_other} stored run(s) had no extracted .so and claimed no "
              f"more than that - not re-measurable, nothing claimed.)")
    # The caveat prints BEFORE the all-clear below, so a clean stale list is never
    # the last thing read.
    if unmeasurable:
        print("NOT re-measurable here (stored native=fully_analyzed, no extracted .so on disk):")
        for sha in unmeasurable:
            print(f"  {sha}")
        print("  Not confirmed good. A library that failed to extract leaves the same")
        print("  empty directory as an APK that ships none; only a re-run separates them.")
    if stale:
        print("Re-run required (stored native=fully_analyzed the current gate would refuse):")
        for sha in stale:
            print(f"  {sha}")
    else:
        # Scoped to what was actually measured: when the NOT-RE-MEASURABLE block above
        # is non-empty, an unqualified all-clear quantifies over stored claims this
        # script could not open - the exact false-absence shape it exists to catch.
        print("No stored native=fully_analyzed claim is refused by the current gate "
              "among the runs it could re-measure above.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
