"""Finding #6 regression guard: the app being STUCK (ANR / activity not resumed)
must be a verdict-level warning, not buried prose.

The user's core question - "why do some apps' UI stick/crash while our reports
say all OK?" - has an honest answer only if the report states the app's
operational state beside the bypass verdict. `ui_liveness` already carried the
real device facts, and `_summarize_ui_liveness` rendered them into the evidence
lines, but nothing promoted a frozen UI to a verdict-level warning, so a reader
saw "SSL bypassed: True" with no adjacent "the app is frozen".

`_ui_stuck_note` now reads the dynamic stage's `ui_liveness` and returns a note
ONLY for the two DIRECT device facts (anr_detected is True, activity_resumed is
False). `screen_changed is False` is deliberately excluded - the module documents
it as "NOT proof of either", so promoting it would over-claim.
"""
from pathlib import Path

from common import StageResult
from report.generator import _ui_stuck_note


def _dyn(ui):
    return [StageResult(stage="dynamic", status="success",
                        evidence={"ui_liveness": ui})]


def test_ui_stuck_note_when_anr_detected():
    note = _ui_stuck_note(_dyn({
        "anr_detected": True,
        "anr_lines": ["ANR in com.example.app: Input dispatching timed out"],
    }))
    assert note is not None
    assert "ANR" in note
    assert "Input dispatching timed out" in note


def test_ui_stuck_note_when_activity_not_resumed():
    note = _ui_stuck_note(_dyn({"activity_resumed": False, "anr_detected": False}))
    assert note is not None
    assert "did not resume" in note


def test_ui_stuck_note_none_when_only_screen_changed_false():
    # NOT proof of a stuck app - must never be promoted to a warning.
    note = _ui_stuck_note(_dyn({
        "activity_resumed": True, "anr_detected": False, "screen_changed": False,
    }))
    assert note is None


def test_ui_stuck_note_none_without_liveness():
    assert _ui_stuck_note([StageResult(stage="dynamic", status="success", evidence={})]) is None
    assert _ui_stuck_note(_dyn(None)) is None
    assert _ui_stuck_note([]) is None


def test_report_template_renders_the_ui_stuck_warning():
    src = (Path(__file__).resolve().parents[2] / "src" / "report" / "generator.py").read_text(
        encoding="utf-8")
    assert "App UI stuck (ANR/frozen) despite the bypass" in src
    assert "ui_stuck_note=_ui_stuck_note(stage_results)" in src


def test_ui_stuck_note_when_tls_blocked_and_no_progress():
    # The user-observed frozen UI: activity resumed + focused + not ANR, but the
    # startup TLS was blocked AND the screen made no progress - stuck on a loading
    # splash (propertyguru, React Native). The ANR scan misses this; the combo of
    # blocked-network + no-progress is the frozen-UI signature.
    note = _ui_stuck_note(_dyn({
        "activity_resumed": True, "anr_detected": False,
        "tls_blocked": True, "screen_changed": False,
    }))
    assert note is not None
    assert "FROZEN" in note


def test_ui_stuck_note_none_when_tls_blocked_but_progress_observed():
    note = _ui_stuck_note(_dyn({
        "activity_resumed": True, "anr_detected": False,
        "tls_blocked": True, "screen_changed": True,
    }))
    assert note is None


def test_ui_stuck_note_none_when_no_progress_but_no_tls_block():
    # screen_changed=False alone is NOT proof of stuck (a static page too) - must
    # not fire without the blocked-network corroborator.
    note = _ui_stuck_note(_dyn({
        "activity_resumed": True, "anr_detected": False,
        "tls_blocked": False, "screen_changed": False,
    }))
    assert note is None
