"""ADR-0024: the capture stage for an app that cannot open a socket.

Measured 2026-09-24 on three real UnCrackable runs, all three APKs declaring
`perms=[]` (pyaxmlparser):

  - UC1 run 51d0f0c0 opened the capture window anyway, captured 3 flows that its
    own attribution attributes to uids 0 and 10121 (the emulator's Google
    services), recorded `success`, and printed `OK capture-traffic (28096ms)` -
    for an app whose uid held no socket in any of 7 readable samples.
  - UC2 55c96579 and UC3 a3f3f2fa, the same app in the same state but with no
    background traffic in the window, were reclassified by the ladder to
    skipped-not-applicable.

The ladder's rule was right and its precondition was the hole: it only ran when
the capture was empty, so a foreign flow defeated it. The guard now answers the
manifest before the launch, and the record says "not attempted" - a state the
report renders with its own sentence.

Fixture-driven; no Android toolchain, no database, no device.
"""

from pathlib import Path

from common import Action, CategoryVerdict, ClassificationResult, StageResult
from static.manifest import ManifestInfo
from report.generator import generate_report

from cli import (
    _capture_not_attempted,
    _js_surface_console_note,
    _reclassify_empty_capture,
)

REPO_ROOT = Path(__file__).resolve().parents[2]

NOT_ATTEMPTED_SENTENCE = "**the capture stage was not attempted**"
RECLASSIFIED_SENTENCE = "reclassified from a bare failure to _skipped"
NO_INTERNET = "no INTERNET permission"


def _manifest(permissions=(), debuggable=False):
    return ManifestInfo(
        debuggable=debuggable,
        network_security_config=None,
        permissions=list(permissions),
    )


def _empty_capture_failure():
    return StageResult(
        stage="capture-traffic",
        status="failed",
        evidence={"reason": "no flows captured", "client_connections": 0},
        error="no flows recorded",
    )


# --- the guard -------------------------------------------------------------


def test_a_manifest_without_internet_is_not_attempted():
    stage = _capture_not_attempted(_manifest([]))
    assert isinstance(stage, StageResult)
    assert stage.stage == "capture-traffic"
    assert stage.status == "skipped"
    # NOT "no flows captured" - nothing ran, and the ladder keys on that string
    # to decide whether a stage is its to reclassify.
    assert stage.evidence["reason"] == "capture not attempted"
    assert stage.evidence["not_attempted"] is True
    assert stage.evidence["not_applicable_reason"] == NO_INTERNET
    # the observation behind the claim, in the record
    assert stage.evidence["declared_permissions"] == []
    assert not stage.error
    assert stage.duration_ms == 0


def test_a_manifest_with_internet_is_attempted():
    assert _capture_not_attempted(_manifest(["android.permission.INTERNET"])) is None


def test_other_permissions_do_not_make_it_attemptable():
    stage = _capture_not_attempted(_manifest(["android.permission.WAKE_LOCK"]))
    assert stage is not None and stage.evidence["declared_permissions"] == [
        "android.permission.WAKE_LOCK"
    ]


def test_an_unparsed_manifest_keeps_the_old_path():
    """None is "not known", never "no INTERNET" - this asserts a parsed fact."""
    assert _capture_not_attempted(None) is None


def test_the_ladder_leaves_a_not_attempted_stage_untouched():
    stage = _capture_not_attempted(_manifest([]))
    again = _reclassify_empty_capture(stage, _manifest([]), None)
    assert again is stage
    assert again.evidence["not_attempted"] is True
    assert "reclassified_from" not in again.evidence


def test_a_genuinely_empty_capture_is_still_reclassified():
    """The post-hoc ladder survives as the backstop for an unparsed manifest."""
    stage = _reclassify_empty_capture(_empty_capture_failure(), _manifest([]), None)
    assert stage.status == "skipped"
    assert stage.evidence["reclassified_from"] == "failed"
    assert stage.evidence["not_applicable_reason"] == NO_INTERNET
    assert "not_attempted" not in stage.evidence


def test_the_guard_runs_before_the_launch():
    """D2: the window is never opened, so the guard must precede the call."""
    text = (REPO_ROOT / "src" / "cli.py").read_text()
    assert (
        "_capture_not_attempted(manifest_info) or mitmproxy_capture.run_capture_stage("
        in text
    )


# --- the report renders the state it was measured in -----------------------


def _classification():
    return ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.1, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.1, detected=False, evidence=[]),
    )


def _render(tmp_path, capture_stage):
    path = generate_report(
        run_id="notattempted",
        apk_hash="na001",
        timestamp="2026-09-24T12:00:00",
        metadata={"hashes": {"sha256": "na001"}, "package": {"package_name": "com.example"}},
        classification=_classification(),
        verification=None,
        correlation=None,
        stage_results=[capture_stage],
        output_dir=tmp_path,
        manifest=_manifest([]),
    )
    return path.read_text(encoding="utf-8")


def test_the_report_says_the_capture_was_not_attempted(tmp_path):
    content = _render(tmp_path, _capture_not_attempted(_manifest([])))
    assert NOT_ATTEMPTED_SENTENCE in content
    assert NO_INTERNET in content
    # the two states are different records and get different sentences
    assert RECLASSIFIED_SENTENCE not in content


def test_the_report_keeps_the_reclassified_sentence_for_a_reclassified_stage(tmp_path):
    content = _render(
        tmp_path, _reclassify_empty_capture(_empty_capture_failure(), _manifest([]), None)
    )
    assert RECLASSIFIED_SENTENCE in content
    assert NOT_ATTEMPTED_SENTENCE not in content


def test_the_not_attempted_sentence_claims_no_evidence_it_does_not_have(tmp_path):
    """No proxy was installed and no launch issued, so the page must not imply one."""
    content = _render(tmp_path, _capture_not_attempted(_manifest([])))
    assert "decrypted the HTTPS flows below" not in content
    assert "Raw flow file" not in content
    assert "no flows recorded" not in content  # the failed-stage diagnosis


# --- the console mirrors the js surface qualifier --------------------------


def test_the_absent_asset_surface_is_explained_on_the_console():
    note = _js_surface_console_note({"js": "partial"}, 0, False)
    assert note and "no `assets/` entries at all" in note
    assert "ASSET-DROP1" in note


def test_the_note_is_absent_for_every_other_state():
    # a complete js reading needs no note
    assert _js_surface_console_note({"js": "fully_analyzed"}, 0, False) is None
    # a surface the APK DOES ship is a real bound; the loss wording is the report's
    assert _js_surface_console_note({"js": "partial"}, 25, False) is None
    # an unlistable archive is unknown, never an absence
    assert _js_surface_console_note({"js": "partial"}, None, False) is None
    # extracted surface with 0 entries cannot happen, but 0 must never mean "lost"
    assert _js_surface_console_note({"js": "partial"}, 0, True) is None
    assert _js_surface_console_note({}, 0, False) is None


def test_the_console_note_is_wired_to_the_coverage_bound_print():
    text = (REPO_ROOT / "src" / "cli.py").read_text()
    i = text.index("coverage_bound_line(coverage_map)")
    window = text[i : i + 400]
    assert "_js_surface_console_note(" in window
    assert "_asset_entries_in_apk" in window and "_asset_surface_extracted" in window


def test_the_skip_reason_reaches_the_console():
    """The row says SKIPPED; the reason the record holds is printed under it."""
    text = (REPO_ROOT / "src" / "cli.py").read_text()
    assert "_stage_skip_reason(result)" in text
