"""Regression guard for report honesty.

The pipeline's cardinal rule is that a report must NEVER claim success/OK where
the evidence says otherwise. This test asserts that every report generated
ON OR AFTER the template-fix cutoff date (`REGRESSION_CUTOFF` in
`tools/report_honesty_audit.py`) is honest under the mechanical audit there.

Historical reports predating the template fixes are excluded on purpose: they
were produced by the OLD templates and are immutable artifacts of past runs. The
generator fix is what matters, and this test pins it so it can never regress.

Skip when there is no reports corpus (e.g. a CI box without generated runs) so
the guard does not fail merely for lack of data - it guards honesty, not
presence.
"""
from __future__ import annotations

import sys
from pathlib import Path

import pytest

_PROJECT_ROOT = Path(__file__).resolve().parents[2]
_TOOLS = _PROJECT_ROOT / "tools"
_REPORTS = _PROJECT_ROOT / "outputs" / "reports"

if str(_TOOLS) not in sys.path:
    sys.path.insert(0, str(_TOOLS))

from report_honesty_audit import REGRESSION_CUTOFF, collect_findings  # noqa: E402

pytestmark = pytest.mark.skipif(
    not _REPORTS.exists(),
    reason="no reports corpus present on this host",
)


def test_no_post_fix_report_lies():
    """Every report modified on/after the template-fix cutoff must be honest."""
    offenders = collect_findings(_REPORTS, since=REGRESSION_CUTOFF)
    assert not offenders, (
        f"{len(offenders)} report(s) generated on/after {REGRESSION_CUTOFF} "
        f"carry honesty findings (the generator regressed into lying):\n"
        + "\n".join(f"  {p}: {fs}" for p, fs in offenders.items())
    )


def test_audit_runs_without_error():
    """The harness itself must run cleanly over the regression window."""
    # collect_findings returns a dict even when empty; a raised error fails the test.
    result = collect_findings(_REPORTS, since=REGRESSION_CUTOFF)
    assert isinstance(result, dict)
