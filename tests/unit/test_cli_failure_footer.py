"""Regression tests for the dynamic-failure footer's two false claims.

Measured on the 2026-09-24 AndroGoat run bcfc5364. AndroGoat is a KNOWN target
(SUCCESS_CHECKS has an "AndroGoat" entry), so the target-specific success check
ran and set root_bypassed AND ssl_bypassed True; correlation_skip_reason was
None and correlation_json stored matches=True, which the report rendered as
"Verdict: MATCH (static and dynamic agree)". The console footer for that same
run said:

    the dynamic bypass ran but was not confirmed, and no traffic was captured
    (correlation=not_attempted)

Both halves were claims about the record that the record refuted. The footer
derived "not confirmed" from the stage status alone and appended
"(correlation=not_attempted)" as a hardcoded string, so every run in that shape
got the same two false statements - the operator-facing line disagreeing with
the report and the stored audit of the run it describes.

Second defect on the same run: stage_results_json contained no stage named
success-check (only the capture window's variant), and no success-check line
was printed. The known-target arm appended its stage row only inside its except
arm, so the check that produced the root/ssl verdict left no trace in the
record it produced.

These tests pin the helpers carrying both fixes, plus the wiring that makes the
stage row actually reach stage_results.
"""

from pathlib import Path
from types import SimpleNamespace

from common import CorrelationResult, StageResult
from cli import (
    _failure_correlation_note,
    _failure_dynamic_note,
    _success_check_stage,
)

REPO_ROOT = Path(__file__).resolve().parents[2]


def _verification(root=None, ssl=None):
    return SimpleNamespace(root_bypassed=root, ssl_bypassed=ssl)


# --- the dynamic half of the footer ----------------------------------------


def test_confirmed_bypass_is_named_as_confirmed():
    note = _failure_dynamic_note("success", False, True, _verification(True, True))
    assert "CONFIRMED for root/ssl" in note
    assert "not confirmed" not in note
    assert note.endswith("no traffic was captured")


def test_partial_confirmation_names_only_the_confirmed_category():
    note = _failure_dynamic_note("success", False, False, _verification(None, True))
    assert "CONFIRMED for ssl" in note
    assert "root" not in note
    assert "no traffic" not in note


def test_unconfirmed_bypass_keeps_the_honest_line():
    note = _failure_dynamic_note("success", False, True, _verification(None, None))
    assert note == (
        "the dynamic bypass ran but was not confirmed, and no traffic was captured"
    )


def test_missing_verification_is_not_rendered_as_a_confirmation():
    # verification is None whenever the success check never produced one.
    assert "not confirmed" in _failure_dynamic_note("success", False, False, None)


def test_dynamic_failed_run_is_not_told_its_capture_was_empty():
    # The traffic clause was appended unconditionally, so a run that failed the
    # dynamic stage while capturing fine claimed "no traffic was captured".
    assert _failure_dynamic_note("failed", True, False, None) == (
        "the dynamic bypass ran but failed"
    )


def test_skipped_dynamic_still_reports_a_failed_capture():
    note = _failure_dynamic_note("skipped", False, True, None)
    assert note.startswith("dynamic verification was not attempted")
    assert note.endswith("no traffic was captured")


# --- the correlation half of the footer ------------------------------------


def test_correlation_evaluated_is_named_by_its_verdict():
    assert (
        _failure_correlation_note(CorrelationResult(matches=True, mismatches=[]), None)
        == "correlation=MATCH"
    )
    assert (
        _failure_correlation_note(
            CorrelationResult(matches=False, mismatches=["static said X, dynamic did not"]),
            None,
        )
        == "correlation=MISMATCH"
    )
    assert (
        _failure_correlation_note(
            CorrelationResult(
                matches=False, mismatches=[], coverage_confirmed=["filled a gap"]
            ),
            None,
        )
        == "correlation=COVERAGE-CONFIRMED"
    )
    assert (
        _failure_correlation_note(
            CorrelationResult(matches=False, mismatches=[], unverified=["could not test"]),
            None,
        )
        == "correlation=UNVERIFIED"
    )


def test_not_attempted_is_said_only_when_it_was_not_attempted():
    assert _failure_correlation_note(None, None) == "correlation=not_attempted"
    assert (
        _failure_correlation_note(None, "no target-specific success check")
        == "correlation=not_attempted"
    )
    # A stored skip reason outranks a result object that somehow survived.
    assert (
        _failure_correlation_note(
            CorrelationResult(matches=True, mismatches=[]), "correlation not attempted"
        )
        == "correlation=not_attempted"
    )


# --- the stage row the known-target success arm never wrote ----------------


def test_success_check_stage_carries_the_verdict_it_produced():
    stage = _success_check_stage("AndroGoat", _verification(True, False))
    assert isinstance(stage, StageResult)
    assert stage.stage == "success-check"
    assert stage.status == "success"
    assert stage.evidence["target"] == "AndroGoat"
    assert stage.evidence["root_bypassed"] is True
    assert stage.evidence["ssl_bypassed"] is False


def test_known_target_success_arm_records_its_stage():
    """Wiring guard: the helper must be CALLED and its row appended.

    A helper nothing calls is a unit-tested parser, not a fix - and this defect
    was exactly that this path recorded nothing, so the check producing the
    root/ssl verdict was absent from the record it produced.
    """
    text = (REPO_ROOT / "src" / "cli.py").read_text()
    i = text.index("_success_check_stage(target, verification)")
    window = text[i : i + 400]
    assert "stage_results.append(check_stage)" in window
    assert "_print_stage(check_stage)" in window


def test_footer_no_longer_hardcodes_either_claim():
    """The two literals that made the footer contradict the stored record."""
    text = (REPO_ROOT / "src" / "cli.py").read_text()
    assert (
        "the dynamic bypass ran but was not confirmed, and no traffic was captured"
        not in text
    )
    assert '"(correlation=not_attempted).[/bold red]"' not in text
