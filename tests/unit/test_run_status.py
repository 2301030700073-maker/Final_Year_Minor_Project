"""Run-status sidecar (ADR-0021): a run's progress recorded as it proceeds, so an
interrupted run leaves a durable account of where it stopped."""
import json

import pytest

from storage.run_status import (
    RUN_STATUS_FILENAME,
    RunStatusRecorder,
    read_run_status,
    run_status_path,
)


def _recorder(tmp_path, **identity):
    ident = {"run_id": "r1", "apk_hash": "abc", "package_name": "com.x"}
    ident.update(identity)
    return RunStatusRecorder(tmp_path, ident["apk_hash"], ident)


def test_start_records_identity_and_state(tmp_path):
    rec = _recorder(tmp_path, target="androgoat", operator="analyst",
                    justification="ACADEMIC_TRAINING_TARGET", git_commit="deadbeef")
    rec.start()
    data = read_run_status(tmp_path, "abc")
    assert data["state"] == "started"
    assert data["run_id"] == "r1"
    assert data["apk_hash"] == "abc"
    assert data["package_name"] == "com.x"
    assert data["target"] == "androgoat"
    assert data["justification"] == "ACADEMIC_TRAINING_TARGET"
    assert data["git_commit"] == "deadbeef"
    assert data["stages"] == []
    assert data["last_stage"] is None
    assert data["started_at"]


def test_record_advances_last_stage_from_objects_and_dicts(tmp_path):
    rec = _recorder(tmp_path)
    rec.start()
    rec.record({"stage": "ingest", "status": "success", "duration_ms": 12})
    rec.record(_Stage("decompile", "success", 999))
    data = read_run_status(tmp_path, "abc")
    assert [s["stage"] for s in data["stages"]] == ["ingest", "decompile"]
    assert data["last_stage"] == "decompile"
    assert data["last_stage_status"] == "success"
    # the live path hands StageResult objects; the regeneration path hands dicts.
    # Both must round-trip the same three fields, or a reader sees a stage with no
    # duration on one path and a duration on the other.
    assert data["stages"][1]["duration_ms"] == 999


def test_a_failed_stage_keeps_its_reason(tmp_path):
    rec = _recorder(tmp_path)
    rec.start()
    rec.record({"stage": "native_scan", "status": "failed", "duration_ms": 5,
                "error": "readelf missing"})
    data = read_run_status(tmp_path, "abc")
    assert data["last_stage"] == "native_scan"
    assert data["last_stage_status"] == "failed"
    assert data["stages"][0]["error"] == "readelf missing"


def test_finish_marks_the_run_done_with_its_report(tmp_path):
    rec = _recorder(tmp_path)
    rec.start()
    rec.record({"stage": "report", "status": "success", "duration_ms": 1})
    rec.finish(report_path="/out/report.md")
    data = read_run_status(tmp_path, "abc")
    assert data["state"] == "finished"
    assert data["report_path"] == "/out/report.md"
    assert data["finished_at"]


def test_finish_without_a_report_is_recorded_as_none(tmp_path):
    rec = _recorder(tmp_path)
    rec.start()
    rec.finish(report_path=None)
    assert read_run_status(tmp_path, "abc")["report_path"] is None


def test_writes_are_atomic_and_leave_no_temp_file(tmp_path):
    rec = _recorder(tmp_path)
    rec.start()
    rec.record({"stage": "a", "status": "success", "duration_ms": 1})
    leftovers = [p.name for p in rec.path.parent.iterdir() if p.name != RUN_STATUS_FILENAME]
    assert leftovers == []
    # the document on disk is always complete JSON, never a partial write
    json.loads(rec.path.read_text())


def test_absent_sidecar_reads_as_absent_not_as_unreadable(tmp_path):
    assert read_run_status(tmp_path, "never-ran") is None


def test_no_hash_reads_as_absent(tmp_path):
    # an uncompleted run whose authorization carries no apk_hash must not resolve
    # to some other APK's directory
    assert read_run_status(tmp_path, None) is None
    assert read_run_status(tmp_path, "") is None


def test_corrupt_sidecar_is_named_unreadable_not_absent(tmp_path):
    path = run_status_path(tmp_path, "abc")
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("{not json")
    data = read_run_status(tmp_path, "abc")
    # "we recorded nothing" and "we recorded something we could not parse" are
    # different facts; collapsing them presents a damaged record as a run that
    # never started
    assert data["state"] == "unreadable"
    assert data["error"]


def test_non_object_sidecar_is_unreadable(tmp_path):
    path = run_status_path(tmp_path, "abc")
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("[1, 2, 3]")
    assert read_run_status(tmp_path, "abc")["state"] == "unreadable"


def test_a_write_failure_raises_rather_than_going_silent(tmp_path, monkeypatch):
    rec = _recorder(tmp_path)
    rec.start()

    def boom(*a, **k):
        raise OSError("No space left on device")

    monkeypatch.setattr("storage.run_status.os.replace", boom)
    with pytest.raises(OSError):
        rec.record({"stage": "ingest", "status": "success", "duration_ms": 1})


def test_an_unaudited_ending_is_a_distinct_state_not_finished(tmp_path):
    """A run whose audit completion failed is an orphan by the log's own verdict.
    If the sidecar read `finished`, the orphan note - which takes its authority
    from the log - would describe a run that reached an end as an interruption,
    and the two records would contradict each other."""
    rec = _recorder(tmp_path)
    rec.start()
    rec.finish(report_path="/out/report.md", audited=False, audit_error="audit log unwritable")
    data = read_run_status(tmp_path, "abc")
    assert data["state"] == "ended_unaudited"
    assert data["audit_error"] == "audit log unwritable"
    assert data["report_path"] == "/out/report.md"
    assert data["finished_at"]


def test_a_save_error_is_recorded_against_a_completed_run(tmp_path):
    """Report written and run audited, but no DB row: a different fact from both
    an interruption and an unaudited ending, and the sidecar can state all three."""
    rec = _recorder(tmp_path)
    rec.start()
    rec.finish(report_path="/out/report.md", save_error="database is locked")
    data = read_run_status(tmp_path, "abc")
    assert data["state"] == "finished"
    assert data["save_error"] == "database is locked"
    assert "audit_error" not in data


class _Stage:
    """Stand-in for the StageResult the live pipeline records."""

    def __init__(self, stage, status, duration_ms, error=None):
        self.stage = stage
        self.status = status
        self.duration_ms = duration_ms
        self.error = error
