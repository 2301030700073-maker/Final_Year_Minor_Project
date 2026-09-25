"""The `regen-reports` sweep's two load-bearing parts: the root split that makes a
preview honest, and the audit record that makes the sweep traceable.

ADR-0027 turns on a distinction that is easy to get wrong and invisible when you
do. A `--dry-run` must render into a throwaway tree WITHOUT losing the refusal
category, and the REGEN-FIELDLOSS2 guard decides that category by reading the
report already on disk. Point both at one root and the guard looks inside the
empty temp tree, finds nothing, and reports zero refusals - a preview that is
confidently wrong about the one thing a preview exists to surface. `source_root`
is that separation, and these tests fail if a later refactor collapses it.

The audit half is asserted through `verify_audit_log` rather than by reading the
record's own fields back. A new event type the verifier rejects would leave this
project's own `verify-audit-log` command calling its log invalid, which is a worse
defect than the sweep not being audited at all.
"""

import json
from pathlib import Path
from types import SimpleNamespace

import pytest

import cli
from audit.attestation import record_report_regeneration, verify_audit_log

COVERAGE = {
    "java": "partial",
    "native": "fully_analyzed",
    "manifest": "fully_analyzed",
    "js": "partial",
}
APK_HASH = "b" * 64
RUN_ID = "regenreports1"
LOST_SECTION = "### Dynamic code loading (coverage-limited)"
ORIGINAL = f"# run\n\n{LOST_SECTION}\n\npayload only this file has\n"
STALE = "# run\n\nstale body nothing can reconstruct\n"


def _run(coverage_causes):
    return SimpleNamespace(
        run_id=RUN_ID,
        apk_sha256=APK_HASH,
        timestamp="2026-09-20T10:00:00",
        package_name="com.example.app",
        obfuscation_level=None,
        obfuscation_reason=None,
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
        signature_corpus=None,
        # ADR-0028: the device environment, read off the row by the regen path.
        # None is this fixture's legacy run, and the template names both possible
        # causes for it rather than asserting the one the row cannot prove.
        device_environment=None,
    )


def _apk():
    return SimpleNamespace(
        raw_metadata={
            "hashes": {"sha256": APK_HASH},
            "package": {"package_name": "com.example.app"},
        }
    )


def _seed(root: Path, body: str) -> Path:
    path = root / APK_HASH / f"{RUN_ID}.md"
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(body, encoding="utf-8")
    return path


@pytest.fixture
def roots(monkeypatch, tmp_path):
    """The live tree and a throwaway tree, plus a non-existent audit log - the
    genuine 'authorization unavailable on regeneration' branch."""
    reports, dry = tmp_path / "reports", tmp_path / "dry"
    monkeypatch.setattr(cli, "REPORTS_ROOT", reports)
    monkeypatch.setattr(cli, "AUDIT_LOG_PATH", tmp_path / "absent_audit_log.jsonl")
    return reports, dry


def test_a_dry_run_writes_the_preview_root_and_leaves_the_stored_report_alone(roots):
    """The split's positive case: the render lands in `out_root`, and the file in
    `source_root` is not touched even though it is the file that was read."""
    reports, dry = roots
    stored = _seed(reports, STALE)
    cli._regenerate_report(_run(None), _apk(), "c0ffee", out_root=dry, source_root=reports)
    preview = dry / APK_HASH / f"{RUN_ID}.md"
    assert preview.exists(), "a dry run must render with the real renderer, not skip it"
    assert preview.read_text(encoding="utf-8") != STALE
    assert stored.read_text(encoding="utf-8") == STALE, (
        "--dry-run must not write a report file into the live tree"
    )


def test_a_dry_run_still_refuses_a_row_whose_stored_report_holds_lost_sections(roots):
    """The case that makes `source_root` load-bearing.

    The row's `coverage_causes` is empty and the report on disk carries a cause
    section nothing can reproduce, so the sweep must refuse. If the guard read
    `out_root` it would inspect an empty temporary tree, find no report, and
    report zero refusals - silently dropping the category ADR-0027 decision 3
    exists to keep separate from a plain failure.
    """
    reports, dry = roots
    stored = _seed(reports, ORIGINAL)
    with pytest.raises(cli.RegenerationRefused, match="refusing to regenerate"):
        cli._regenerate_report(_run(None), _apk(), "c0ffee", out_root=dry, source_root=reports)
    assert stored.read_text(encoding="utf-8") == ORIGINAL, (
        "a refused regeneration must leave the stored report byte-identical"
    )
    assert not (dry / APK_HASH / f"{RUN_ID}.md").exists(), (
        "a refused row must not leave a half-written preview behind either"
    )


def test_the_refusal_stays_a_runtime_error_for_existing_callers():
    """`re-attribute` catches `Exception` and the older tests raise on RuntimeError;
    the distinct type is an ADDITION to that contract, not a replacement of it."""
    assert issubclass(cli.RegenerationRefused, RuntimeError)


def test_the_command_is_registered_on_the_cli():
    """A command function that is defined but never decorated is dead code, and
    nothing else in the suite would notice - the sweep would simply not exist."""
    assert "regen-reports" in {c.name for c in cli.app.registered_commands}


def test_the_sweep_record_keeps_its_three_outcomes_separate(tmp_path):
    """Regenerated, refused and failed are three different facts (ADR-0027
    decision 3). Collapsing them would report a row that cannot be repaired as one
    that merely errored, so the run ids are asserted individually."""
    log = tmp_path / "audit.jsonl"
    result = record_report_regeneration(
        audit_log_path=log,
        justification="ACADEMIC_TRAINING_TARGET",
        operator="tester",
        git_commit="c0ffee",
        regenerated_run_ids=["r-regen"],
        refused_run_ids=["r-refused"],
        failed_run_ids=["r-failed"],
        dry_run=True,
        missing_corpus_only=True,
    )
    assert result.status == "success", result.error
    record = json.loads(log.read_text(encoding="utf-8").splitlines()[-1])
    assert record["event"] == "reports_regenerated"
    assert (record["runs_regenerated"], record["runs_refused"], record["runs_failed"]) == (1, 1, 1)
    assert record["regenerated_run_ids"] == ["r-regen"]
    assert record["refused_run_ids"] == ["r-refused"]
    assert record["failed_run_ids"] == ["r-failed"]
    # A preview is an act by an operator against real stored state, so it is
    # recorded - and `dry_run` is what keeps it distinguishable from a rewrite.
    assert record["dry_run"] is True
    assert record["missing_corpus_only"] is True


def test_the_new_event_type_does_not_invalidate_the_hash_chain(tmp_path):
    """The verifier is event-aware; a record type it cannot chain would make this
    project's own `verify-audit-log` command reject a log it wrote itself."""
    log = tmp_path / "audit.jsonl"
    record_report_regeneration(
        audit_log_path=log,
        justification="ACADEMIC_TRAINING_TARGET",
        operator="tester",
        git_commit="c0ffee",
        regenerated_run_ids=["r1"],
        refused_run_ids=[],
        failed_run_ids=[],
        dry_run=False,
        missing_corpus_only=False,
    )
    report = verify_audit_log(log)
    assert report["errors"] == []
    assert report["valid"] is True
    assert report["chained"] == 1, "the record must be on the chain, not merely present"


def test_an_unauthorized_sweep_records_nothing(tmp_path):
    """The gate, asserted at the same place it is enforced: an invalid
    justification must leave no trace at all, not a rejected one."""
    log = tmp_path / "audit.jsonl"
    result = record_report_regeneration(
        audit_log_path=log,
        justification="BECAUSE_I_WANT_TO",
        operator="tester",
        git_commit="c0ffee",
        regenerated_run_ids=["r1"],
        refused_run_ids=[],
        failed_run_ids=[],
        dry_run=False,
        missing_corpus_only=False,
    )
    assert result.status == "failed"
    assert not log.exists()
