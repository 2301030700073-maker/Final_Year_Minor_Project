"""A stage's status says the stage RAN; its recorded note says what that run of
it returned. The report rendered the status and neither the note nor any
qualifier.

Measured 2026-09-24 on the real AndroGoat run 303bb420 (report
outputs/reports/a47a8b0d.../303bb420....md), Stage Results table:

    | success-check (capture window) | success | 0 |  |

That row's stored evidence carries ssl_bypassed: None - nothing was confirmed in
that window - beside the note "the dynamic window had already confirmed the SSL
bypass, so this window's evaluation could not upgrade anything; recorded so both
launches' evaluations are in the audit trail" (cli.py:3143). Exactly two
evidence["note"] producers exist in src/cli.py (the capture-window check and the
technology-level check at cli.py:2865), and neither sentence appeared anywhere in
the rendered report (grep for "could not upgrade anything" and "already
confirmed" over the report: 0 lines). A reader therefore saw a bare `success`
for a check that confirmed nothing, with the sentence qualifying it absent from
the page.

Pure, fixture-driven, no Android toolchain.
"""

import re
from pathlib import Path

from common import Action, CategoryVerdict, ClassificationResult, StageResult
from static.manifest import ManifestInfo
from report.generator import _stage_notes, generate_report

REPO_ROOT = Path(__file__).resolve().parents[2]

NOTES_HEADING = "Stages whose own recorded result carries a note"
QUALIFIER = "(ran; nothing confirmed here"

CAPTURE_NOTE = (
    "the dynamic window had already confirmed the SSL bypass, so this "
    "window's evaluation could not upgrade anything; recorded so both "
    "launches' evaluations are in the audit trail"
)


def _neither_classification():
    root = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    ssl = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    return ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl)


def _empty_capture_stage():
    return StageResult(
        stage="capture-traffic",
        status="failed",
        evidence={"reason": "capture proxy produced no flows", "flow_summary": []},
        error="no flows recorded",
    )


def _manifest():
    return ManifestInfo(
        debuggable=False,
        network_security_config=None,
        permissions=["android.permission.INTERNET"],
    )


def _render(tmp_path, extra_stages=()):
    report_path = generate_report(
        run_id="cap",
        apk_hash="cap001",
        timestamp="2026-08-23T12:00:00",
        metadata={
            "hashes": {"sha256": "cap001"},
            "package": {"package_name": "com.example.net"},
        },
        classification=_neither_classification(),
        verification=None,
        correlation=None,
        stage_results=[_empty_capture_stage(), *extra_stages],
        output_dir=tmp_path,
        manifest=_manifest(),
    )
    return report_path.read_text(encoding="utf-8")


def _capture_check(ssl_bypassed=None, note=CAPTURE_NOTE):
    evidence = {
        "window": "capture",
        "bypass_applied": True,
        "ssl_bypassed": ssl_bypassed,
        "upgraded_ssl_verification": False,
        "bypass_hooks_engaged": "none",
    }
    if note is not None:
        evidence["note"] = note
    return StageResult(
        stage="success-check (capture window)", status="success", evidence=evidence
    )


# --- the note reaches the page ---------------------------------------------


def test_capture_window_note_is_rendered(tmp_path):
    content = _render(tmp_path, [_capture_check()])
    assert NOTES_HEADING in content
    # verbatim, and attributed to the stage that recorded it
    assert CAPTURE_NOTE in content
    assert "**success-check (capture window)** (success)" in content


def test_a_success_check_with_no_recorded_verdict_is_qualified(tmp_path):
    """`success` alone reads as a confirmed bypass. It is not one."""
    content = _render(tmp_path, [_capture_check()])
    row = next(
        line
        for line in content.splitlines()
        if line.startswith("| success-check (capture window) |")
    )
    assert QUALIFIER in row
    assert "see the note below" in row


def test_a_check_that_recorded_a_verdict_is_not_qualified(tmp_path):
    stage = StageResult(
        stage="success-check",
        status="success",
        evidence={"target": "AndroGoat", "root_bypassed": True, "ssl_bypassed": False},
    )
    content = _render(tmp_path, [stage])
    row = next(
        line for line in content.splitlines() if line.startswith("| success-check |")
    )
    assert QUALIFIER not in row
    # nothing was noted, so there is no dangling pointer to a note
    assert NOTES_HEADING not in content


def test_runs_without_notes_render_no_block(tmp_path):
    content = _render(tmp_path)
    assert NOTES_HEADING not in content
    assert QUALIFIER not in content


def test_partially_confirmed_check_is_not_qualified(tmp_path):
    stage = StageResult(
        stage="success-check (capture window)",
        status="success",
        evidence={"ssl_bypassed": True, "root_bypassed": None, "note": CAPTURE_NOTE},
    )
    content = _render(tmp_path, [stage])
    row = next(
        line
        for line in content.splitlines()
        if line.startswith("| success-check (capture window) |")
    )
    # ssl WAS confirmed in this window, so the row must not claim otherwise
    assert QUALIFIER not in row
    # ...and the note the stage did record still has to render
    assert CAPTURE_NOTE in content


# --- the renderer reads every note the pipeline writes ---------------------


def _cli_note_literals():
    """Every note src/cli.py actually attaches to stage evidence.

    Falsification-proof corpus: the literals come from the producer, so a new
    note added there fails this test until the report renders it.
    """
    text = (REPO_ROOT / "src" / "cli.py").read_text()
    notes = []
    for pattern in (
        r'"note":\s*\(?\s*((?:"[^"]*"\s*)+)\)?',
        r'capture_note = \(\s*((?:"[^"]*"\s*)+)\)',
    ):
        for match in re.finditer(pattern, text):
            joined = "".join(re.findall(r'"([^"]*)"', match.group(1)))
            if joined.strip():
                notes.append(joined)
    return notes


def test_every_note_the_pipeline_records_is_rendered(tmp_path):
    notes = _cli_note_literals()
    assert len(notes) >= 4, notes  # 3 capture-window branches + 1 technology-level
    assert CAPTURE_NOTE in notes
    stages = [
        StageResult(
            stage=f"success-check note-{i}",
            status="success",
            evidence={"root_bypassed": None, "ssl_bypassed": None, "note": note},
        )
        for i, note in enumerate(notes)
    ]
    content = _render(tmp_path, stages)
    for note in notes:
        assert note in content, note


# --- the helper reads the record, whatever shape it comes back in ----------


def test_stage_notes_reads_dict_shaped_stages():
    # regenerated runs deserialize stage_results from stored JSON
    assert _stage_notes(
        [{"stage": "success-check", "status": "success", "evidence": {"note": "n"}}]
    ) == [{"stage": "success-check", "status": "success", "note": "n"}]


def test_stage_notes_ignores_stages_without_a_note():
    assert _stage_notes(None) == []
    assert _stage_notes([]) == []
    assert _stage_notes([StageResult(stage="dynamic", status="success", evidence={})]) == []
    assert (
        _stage_notes([{"stage": "dynamic", "status": "success", "evidence": None}]) == []
    )
    # a note key that is empty or not a string is not a note
    assert _stage_notes([{"stage": "d", "status": "success", "evidence": {"note": ""}}]) == []
    assert (
        _stage_notes([{"stage": "d", "status": "success", "evidence": {"note": None}}]) == []
    )


# --- wiring: the helper and the context variable both have to exist --------


def test_renderer_wires_the_notes_helper_into_the_context():
    text = (REPO_ROOT / "src" / "report" / "generator.py").read_text()
    assert "stage_notes=_stage_notes(stage_results)" in text
    assert "{% if stage_notes -%}" in text
    assert "{{ n.note }}" in text
