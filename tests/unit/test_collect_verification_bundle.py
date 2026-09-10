import json
import sys
import time

import collect_verification_bundle as bundle


def test_run_enforces_the_given_timeout_rather_than_hanging():
    start = time.monotonic()
    result = bundle._run([sys.executable, "-c", "import time; time.sleep(30)"], timeout=1)
    assert time.monotonic() - start < 5  # generous margin, still far below the 30s sleep
    assert result["exit_code"] is None
    assert result["stderr"] == "TIMED OUT"


def test_frida_ps_check_uses_a_short_explicit_timeout_not_the_default(monkeypatch):
    calls = []

    def fake_run(cmd, timeout=60):
        calls.append((cmd, timeout))
        return {"command": " ".join(cmd), "found": True, "exit_code": 0, "stdout": "", "stderr": ""}

    monkeypatch.setattr(bundle, "_run", fake_run)
    bundle.collect_environment()

    frida_ps_calls = [(cmd, t) for cmd, t in calls if "frida-ps" in cmd]
    assert frida_ps_calls, "expected a frida-ps -U check in collect_environment()"
    for _, t in frida_ps_calls:
        assert t <= 5, f"frida-ps -U must use an explicit short timeout, got {t}"


def test_export_calibration_snapshot_reads_real_db_and_parses_json_columns(tmp_path, monkeypatch):
    monkeypatch.setattr(bundle, "REPO_ROOT", tmp_path)
    analysis_dir = tmp_path / "outputs" / "analysis"
    analysis_dir.mkdir(parents=True)

    from sqlalchemy.orm import Session
    from storage.db import ApkRecord, RunRecord, get_engine
    with Session(get_engine(analysis_dir)) as session:
        # FK enforcement (PRAGMA foreign_keys=ON) is on, so the parent apks row
        # must exist before the run - matching the real save_metadata-before-
        # save_run flow.
        session.add(ApkRecord(sha256="abc123", first_ingested_at="2026-01-01T00:00:00", raw_metadata={}))
        session.add(RunRecord(
            run_id="run1", apk_sha256="abc123", timestamp="2026-01-01T00:00:00",
            action="ROOT_ONLY", root_confidence=0.8, root_detected=True,
            classification_json={"action": "ROOT_ONLY"}, stage_results_json=[],
        ))
        session.commit()

    bundle_dir = tmp_path / "bundle"
    bundle_dir.mkdir()

    bundle.export_calibration_snapshot(bundle_dir)

    snapshot = json.loads((bundle_dir / "calibration_runs_snapshot.json").read_text(encoding="utf-8"))
    assert len(snapshot) == 1
    assert snapshot[0]["run_id"] == "run1"
    # Parsed back into a real object, not left as a JSON-encoded string -
    # this is meant as a human/diff-readable durability snapshot.
    assert snapshot[0]["classification_json"] == {"action": "ROOT_ONLY"}


def test_export_calibration_snapshot_handles_missing_db_gracefully(tmp_path, monkeypatch):
    monkeypatch.setattr(bundle, "REPO_ROOT", tmp_path)
    bundle_dir = tmp_path / "bundle"
    bundle_dir.mkdir()

    bundle.export_calibration_snapshot(bundle_dir)  # must not raise when no run has ever been persisted

    assert not (bundle_dir / "calibration_runs_snapshot.json").exists()


def test_extract_run_id_parses_fresh_report_from_pipeline_output():
    # Finding H: the bundle must ship only THIS run's report, not every
    # historical one for the apk hash. The fresh report's filename is its
    # run_id, parsed from the pipeline's "Report:" line.
    #
    # Finding I: the fixture must be the REAL rich-wrapped output, not a
    # synthetic single-line path. Rich console.print wraps the long report path
    # across lines ("[bold green]Report:\noutputs/reports/<hash>\n/<run_id>.md
    # [/bold green]") when capturing via subprocess (no terminal, default 80-col
    # wrap). A same-line fixture passed while real output - where "." can't cross
    # the newline - returned None and shipped zero reports.
    from collect_verification_bundle import _extract_run_id
    apk_hash = "014a5bb124a344909045ec27ec3577d0" * 2  # 64-char sha256, wrapped onto its own line
    run_id = "014a5bb124a344909045ec27ec3577d0"  # 32-char run id on the next line
    stdout = (
        "\n[bold green]Report:\n"
        f"outputs/reports/{apk_hash}\n"
        f"/{run_id}.md[/bold green]\n"
    )
    assert _extract_run_id(stdout) == run_id


def test_extract_run_id_returns_none_when_no_report_was_produced():
    # A run that failed before the report stage must parse to None so the
    # bundle ships no reports rather than stale ones from prior runs.
    from collect_verification_bundle import _extract_run_id
    assert _extract_run_id("") is None
    assert _extract_run_id("ingest failed before report generation\n") is None


def test_find_fresh_report_reads_apk_hash_from_the_written_path_not_the_input(tmp_path):
    # The bug this guards: the pipeline NORMALIZES the input before hashing (an
    # .aab/.apks is converted to an apk and it is the CONVERTED apk that gets
    # hashed - cli.py runs normalize_input() then compute_hashes()), and keys
    # outputs/reports/<hash>/ to THAT hash. The sha256 of the raw input file is
    # therefore NOT the apk_hash for a normalized input, so locating the report
    # by re-hashing args.apk points at a nonexistent dir and ships no evidence
    # on a fully successful run. The collector must instead read apk_hash from
    # the report the pipeline actually wrote, found by this run's unique run_id.
    from collect_verification_bundle import _find_fresh_report

    reports_root = tmp_path / "outputs" / "reports"
    pipeline_hash = "d" * 64  # the CONVERTED apk's hash - what the pipeline keyed the dir to
    run_id = "a" * 32
    written = reports_root / pipeline_hash / f"{run_id}.md"
    written.parent.mkdir(parents=True)
    written.write_text("# report\n", encoding="utf-8")

    found = _find_fresh_report(run_id, reports_root)
    assert found == written
    # apk_hash is READ from the path, so it equals the dir the pipeline wrote -
    # independent of any hash of the raw input file (the whole point of the fix).
    assert found.parent.name == pipeline_hash


def test_find_fresh_report_matches_only_this_runs_id_not_a_stale_report(tmp_path):
    # A prior run's report for the same apk sits in the same hash dir. The glob
    # is by this run's unique run_id, so a stale different-run_id report is never
    # returned - the filesystem-layer counterpart of _extract_run_id's "ship no
    # stale reports" contract.
    from collect_verification_bundle import _find_fresh_report

    reports_root = tmp_path / "outputs" / "reports"
    hash_dir = reports_root / ("d" * 64)
    hash_dir.mkdir(parents=True)
    (hash_dir / f"{'b' * 32}.md").write_text("stale prior run", encoding="utf-8")

    assert _find_fresh_report("a" * 32, reports_root) is None


def test_find_fresh_report_returns_none_when_reports_root_is_absent(tmp_path):
    # No runs ever recorded (reports_root missing): glob yields nothing, the
    # helper returns None, and the caller ships no report - never raises.
    from collect_verification_bundle import _find_fresh_report

    assert _find_fresh_report("a" * 32, tmp_path / "outputs" / "reports") is None
