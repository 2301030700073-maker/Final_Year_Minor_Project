"""Finding #15 regression guard: the failure footer must not claim "no bypass
technique to apply" for a coverage-limited NEITHER.

A coverage-limited NEITHER is "unknown, not absent" - its governing surface was
not fully analyzed, so asserting there is no bypass technique to apply is the
confident-negative promotion the Decision line forbids. The footer now qualifies
that case; a confident NEITHER keeps the bare reason.
"""
from cli import _failure_dynamic_note


def test_skipped_coverage_limited_is_qualified():
    note = _failure_dynamic_note(
        "skipped", False, False, None, coverage_limited=True,
    )
    assert "COVERAGE-LIMITED" in note
    assert "unknown, not a confirmed absence" in note
    assert "no bypass technique to apply" not in note


def test_skipped_confident_neither_keeps_bare_reason():
    note = _failure_dynamic_note(
        "skipped", False, False, None, coverage_limited=False,
    )
    assert "no bypass technique to apply" in note
