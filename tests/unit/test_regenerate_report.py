"""Execute the stored-render path, which nothing did.

`_regenerate_report` had no test that ran it. The template half was covered
directly (generate_report with the flag either way) and the CLI only parsed
statically, so the call site at cli.py's `re-attribute` loop could carry a
mistyped keyword and 2000+ passing tests would not notice - it would surface on
the first real backfill, which is exactly the path that rewrites a consumer-facing
report.

These call the real function with the real generate_report and the real template,
against a redirected REPORTS_ROOT, so the assertions are about rendered output and
not about a mock. The audit log is pointed at a path that does not exist, which is
the genuine "authorization unavailable on regeneration" branch.

The two cases are the two columns the flag gates on:
  * coverage_causes populated - a modern run regenerates faithfully, and the
    annotation-loss section must NOT render, because its every sentence ("the
    cause annotations ... are not persisted columns") would be false.
  * coverage_causes None - a run stored before the column existed. The section
    must render, and the per-surface callouts must fall back to "a coverage rule
    this report does not name" rather than inventing a cause from a missing fact.
"""

from pathlib import Path
from types import SimpleNamespace

import cli

COVERAGE = {
    "java": "partial",
    "native": "fully_analyzed",
    "manifest": "fully_analyzed",
    "js": "partial",
}
APK_HASH = "a" * 64
RUN_ID = "regen0001"

ANNOTATION_LOSS = "Report regenerated from stored data (annotation loss)"
CAUSE_FALLBACK = "a coverage rule this report does not name"


def _run(coverage_causes):
    return SimpleNamespace(
        run_id=RUN_ID,
        apk_sha256=APK_HASH,
        timestamp="2026-09-20T10:00:00",
        package_name="com.example.app",
        obfuscation_level=None,
        classification_json={
            "action": "NEITHER",
            "root": {"confidence": 0.2, "detected": False, "evidence": []},
            "ssl": {"confidence": 0.2, "detected": False, "evidence": []},
        },
        coverage_causes=coverage_causes,
        verification_json=None,
        correlation_json=None,
        stage_results_json=None,
        dynamic_skip_reason=None,
        correlation_skip_reason=None,
        manifest_json=None,
        coverage=dict(COVERAGE),
    )


def _apk():
    return SimpleNamespace(
        raw_metadata={
            "hashes": {"sha256": APK_HASH},
            "package": {"package_name": "com.example.app"},
        }
    )


def _regenerate(monkeypatch, tmp_path, coverage_causes):
    monkeypatch.setattr(cli, "REPORTS_ROOT", tmp_path / "reports")
    monkeypatch.setattr(cli, "AUDIT_LOG_PATH", tmp_path / "absent_audit_log.jsonl")
    cli._regenerate_report(_run(coverage_causes), _apk(), "c0ffee")
    return tmp_path / "reports" / APK_HASH / f"{RUN_ID}.md"


def test_a_populated_run_regenerates_without_the_annotation_loss_section(monkeypatch, tmp_path):
    """The check that makes the rename matter: this is the case the flag must not fire for.

    Only the js cause is supplied, so the same report must show both halves of the
    design at once: a recorded cause renders, and a surface whose cause was not
    recorded says so rather than inventing one.
    """
    path = _regenerate(
        monkeypatch, tmp_path, {"js_binary_bundle": True, "js_asset_surface_extracted": True}
    )
    assert path.exists(), "the stored render must write where the live one does"
    content = path.read_text(encoding="utf-8")
    assert ANNOTATION_LOSS not in content, (
        "a run whose causes ARE persisted must not be told they are not persisted columns"
    )
    assert "| manifest | fully_analyzed |" in content
    assert "a binary Hermes/bytecode bundle whose control flow cannot be read" in content, (
        "a persisted cause must reach the regenerated report"
    )
    assert content.count(CAUSE_FALLBACK) == 1, (
        "java is partial with no cause among the persisted facts, js is partial with one"
    )


def test_a_legacy_run_regenerates_with_the_annotation_loss_section(monkeypatch, tmp_path):
    path = _regenerate(monkeypatch, tmp_path, None)
    content = path.read_text(encoding="utf-8")
    assert ANNOTATION_LOSS in content
    # A missing fact is not a negative: with no recorded cause, the bounded surfaces
    # say so instead of naming one.
    assert CAUSE_FALLBACK in content
    assert content.count(CAUSE_FALLBACK) == 2, (
        "java and js are both partial here; each bounded surface gets its own fallback"
    )


def test_the_regenerated_report_names_its_own_provenance(monkeypatch, tmp_path):
    content = _regenerate(monkeypatch, tmp_path, None).read_text(encoding="utf-8")
    assert "report regenerated from stored data" in content
    assert "unavailable on regeneration" in content, (
        "an unrecoverable authorization is disclosed, never rendered as absent"
    )
