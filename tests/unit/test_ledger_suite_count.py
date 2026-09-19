"""The ledger's recorded suite count is a measurement, and nothing checked it.

`**Last full-suite measurement: N passing (date).**` is cited as the record of
what the suite ran, and it drifts the moment a test is added without a ledger
update in the same commit. That is not hypothetical: on 2026-09-19 a commit
carried a fix and its two tests while its ledger update silently failed to apply
(the writer's assertion aborted before `write_text`, and the shell went on to
commit anyway), leaving 2,046 recorded against 2,048 collected. The currency
tests in `test_audit_ledger_currency.py` guard the LOC rows and passed
throughout - a stale figure on a line nobody checked.

The count is checked against COLLECTION rather than against a run, so the figure
is bound to this commit instead of to whenever the suite was last executed, and
the guard costs seconds rather than a full suite run.
"""

from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path

_REPO = Path(__file__).resolve().parents[2]
_LEDGER = _REPO / "docs" / "plans" / "audit" / "full-project-audit-ledger.md"
_LINE = re.compile(r"\*\*Last full-suite measurement: ([\d,]+) passing")


def test_the_recorded_suite_count_matches_what_the_suite_collects():
    found = _LINE.findall(_LEDGER.read_text())
    # Exactly one: a second measurement line would let a stale figure hide behind
    # a fresh one, which is the failure this guards.
    assert len(found) == 1, f"expected one measurement line, found {len(found)}"
    recorded = int(found[0].replace(",", ""))

    proc = subprocess.run(
        [sys.executable, "-m", "pytest", "--collect-only", "-q"],
        cwd=_REPO, capture_output=True, text=True, timeout=300,
    )
    assert proc.returncode == 0, (proc.stdout[-2000:] + proc.stderr[-2000:])
    m = re.search(r"(\d+) tests? collected", proc.stdout) or re.search(
        r"collected (\d+) items", proc.stdout
    )
    assert m, proc.stdout[-2000:]
    collected = int(m.group(1))

    # The line records the count of tests that EXIST at this commit - which is why
    # the note beside it reads "+N tests" on every entry. A skip or xfail would
    # make `passed` differ from `collected`; that is a reason to re-examine the
    # line's wording, not to loosen this comparison.
    assert recorded == collected, (
        f"ledger records {recorded} tests, the suite collects {collected} - "
        "update the measurement line in the same commit that adds the tests"
    )
