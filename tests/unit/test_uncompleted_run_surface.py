"""The uncompleted-run surface (ADR-0021).

The sidecar module has its own tests; these cover the two places the fact is
actually reported, because the defect they fix was a reporting defect. On the
authoritative audit log the note was unreachable: `verify-audit-log` exited on
`result["errors"]` before printing it, and this log carries the known line-185
fork, so 32 interrupted runs were invisible from the command line while the
result dict held them all along.
"""
import json

import pytest
from typer.testing import CliRunner

import cli
from audit.attestation import record_authorization, verify_audit_log
from storage.run_status import RunStatusRecorder, run_status_path

runner = CliRunner()


def _log_with_one_orphan(tmp_path, apk_hash="deadbeef"):
    log = tmp_path / "audit.jsonl"
    record_authorization(
        audit_log_path=log, justification="ACADEMIC_TRAINING_TARGET",
        apk_hash=apk_hash, operator="tester", git_commit="g1", run_id="r-orphan",
    )
    return log


def _sidecar(tmp_path, apk_hash, *, last_stage="native_scan", state="started"):
    rec = RunStatusRecorder(tmp_path, apk_hash, {"run_id": "r-orphan", "apk_hash": apk_hash})
    rec.start()
    if last_stage:
        rec.record({"stage": last_stage, "status": "success", "duration_ms": 7})
    if state == "finished":
        rec.finish(report_path="/out/r.md")
    return rec


# --- the pairing carries identity, not just ids -------------------------------


def test_uncompleted_run_details_carry_the_authorizations_identity(tmp_path):
    log = _log_with_one_orphan(tmp_path, apk_hash="cafebabe")
    result = verify_audit_log(log)
    assert result["uncompleted_runs"] == ["r-orphan"]
    details = result["uncompleted_run_details"]
    assert len(details) == 1
    entry = details[0]
    # a bare run_id is not actionable - an auditor needs to know which APK was
    # mid-flight and under which justification
    assert entry["run_id"] == "r-orphan"
    assert entry["apk_hash"] == "cafebabe"
    assert entry["justification"] == "ACADEMIC_TRAINING_TARGET"
    assert entry["operator"] == "tester"


def test_a_completed_run_is_not_reported_as_uncompleted(tmp_path):
    log = tmp_path / "audit.jsonl"
    record_authorization(
        audit_log_path=log, justification="CTF", apk_hash="aa",
        operator="t", git_commit="g", run_id="r-done",
    )
    from audit.attestation import record_run_completion

    record_run_completion(
        audit_log_path=log, run_id="r-done", apk_hash="aa", justification="CTF",
        operator="t", git_commit="g", action="BOTH", stage_statuses={},
        verification="", tool_version="0.1.0",
    )
    result = verify_audit_log(log)
    assert result["uncompleted_runs"] == []
    assert result["uncompleted_run_details"] == []


def test_the_empty_result_states_the_details_key_too(tmp_path):
    # Both return sites must carry the same keys: a consumer reading the details
    # off an absent-log result would otherwise KeyError on the one path nobody
    # exercises.
    result = verify_audit_log(tmp_path / "does-not-exist.jsonl")
    assert result["uncompleted_run_details"] == []


# --- the note is printed where it can be seen --------------------------------


def test_the_note_names_the_apk_and_the_last_stage(tmp_path, monkeypatch, capsys):
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    _sidecar(tmp_path, "deadbeef", last_stage="native_scan")
    cli._print_uncompleted_runs({
        "uncompleted_runs": ["r-orphan"],
        "uncompleted_run_details": [
            {"run_id": "r-orphan", "apk_hash": "deadbeef", "action": "BOTH"}
        ],
    })
    out = capsys.readouterr().out
    assert "r-orphan" in out
    assert "deadbeef" in out
    assert "last stage: native_scan" in out


def test_the_note_says_so_when_no_sidecar_was_ever_written(tmp_path, monkeypatch, capsys):
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    cli._print_uncompleted_runs({
        "uncompleted_run_details": [{"run_id": "old", "apk_hash": "aa"}],
    })
    out = capsys.readouterr().out
    # a run from before the sidecar existed must not read as a run that stopped
    # at stage None
    assert "no sidecar" in out


def test_a_corrupt_sidecar_is_not_reported_as_absent(tmp_path, monkeypatch, capsys):
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    path = run_status_path(tmp_path, "aa")
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("{ truncated")
    cli._print_uncompleted_runs({"uncompleted_run_details": [{"run_id": "r", "apk_hash": "aa"}]})
    assert "sidecar unreadable" in capsys.readouterr().out


def test_no_orphans_prints_nothing(tmp_path, monkeypatch, capsys):
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    cli._print_uncompleted_runs({"uncompleted_runs": [], "uncompleted_run_details": []})
    assert capsys.readouterr().out == ""


def test_the_note_survives_a_result_dict_without_details(tmp_path, monkeypatch, capsys):
    # an older result shape must still report the fact rather than dropping it
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    cli._print_uncompleted_runs({"uncompleted_runs": ["legacy-id"]})
    assert "legacy-id" in capsys.readouterr().out


# --- the ordering that was the defect ----------------------------------------


def test_the_command_reports_orphans_before_exiting_on_chain_errors(tmp_path, monkeypatch):
    log = _log_with_one_orphan(tmp_path)
    # make the chain genuinely broken: flip the tail record's prev_hash, the same
    # class of break the authoritative log carries at line 185
    lines = log.read_text().splitlines()
    tail = json.loads(lines[-1])
    tail["prev_hash"] = "0" * 64
    lines[-1] = json.dumps(tail)
    log.write_text("\n".join(lines) + "\n")
    assert verify_audit_log(log)["errors"], "fixture must produce a real chain error"

    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    result = runner.invoke(cli.app, ["verify-audit-log", "--audit-log", str(log)])
    assert result.exit_code == 1, "a broken chain still fails the command"
    assert "integrity FAILED" in result.output
    # ...and the orphans are named anyway: chain integrity and run-history
    # incompleteness are independent facts about the log
    assert "r-orphan" in result.output
    assert "never completed" in result.output


# --- _print_stage is the single choke point ----------------------------------


def test_print_stage_records_into_the_run_sidecar(tmp_path, monkeypatch):
    rec = RunStatusRecorder(tmp_path, "abc", {"run_id": "r1", "apk_hash": "abc"})
    rec.start()
    monkeypatch.setattr(cli, "_RUN_STATUS", rec)
    cli._print_stage(_Stage("native_scan", "success", 42))
    from storage.run_status import read_run_status

    data = read_run_status(tmp_path, "abc")
    assert data["last_stage"] == "native_scan"
    assert data["last_stage_status"] == "success"


def test_print_stage_cautions_instead_of_raising_when_the_sidecar_cannot_be_written(
    tmp_path, monkeypatch, capsys
):
    class _Boom:
        def record(self, stage):
            raise OSError("No space left on device")

    monkeypatch.setattr(cli, "_RUN_STATUS", _Boom())
    cli._print_stage(_Stage("native_scan", "success", 42))  # must not raise
    out = capsys.readouterr().out
    assert "CAUTION" in out and "No space left on device" in out


class _Stage:
    def __init__(self, stage, status, duration_ms, error=None):
        self.stage = stage
        self.status = status
        self.duration_ms = duration_ms
        self.error = error
