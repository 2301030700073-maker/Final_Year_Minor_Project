"""The uncompleted-run surface (ADR-0021).

The sidecar module has its own tests; these cover the two places the fact is
actually reported, because the defect they fix was a reporting defect. On the
authoritative audit log the note was unreachable: `verify-audit-log` exited on
`result["errors"]` before printing it, and this log carries the known line-185
fork, so 32 interrupted runs were invisible from the command line while the
result dict held them all along.
"""
import json
from pathlib import Path

import pytest
from typer.testing import CliRunner

import cli
from audit.attestation import record_authorization, verify_audit_log
from storage.run_status import RunStatusRecorder, read_run_status, run_status_path

runner = CliRunner()


def _log_with_one_orphan(tmp_path, apk_hash="deadbeef"):
    log = tmp_path / "audit.jsonl"
    record_authorization(
        audit_log_path=log, justification="ACADEMIC_TRAINING_TARGET",
        apk_hash=apk_hash, operator="tester", git_commit="g1", run_id="r-orphan",
    )
    return log


def _dead_pid():
    """A pid that cannot be allocated, so /proc has no entry for it."""
    try:
        pid_max = int(Path("/proc/sys/kernel/pid_max").read_text(encoding="utf-8").strip())
    except OSError:
        pid_max = 4194304
    return pid_max + 1


def _sidecar(tmp_path, apk_hash, *, last_stage="native_scan", state="started", dead=False,
             host=None):
    rec = RunStatusRecorder(tmp_path, apk_hash, {"run_id": "r-orphan", "apk_hash": apk_hash})
    rec.start()
    if last_stage:
        rec.record({"stage": last_stage, "status": "success", "duration_ms": 7})
    if state == "finished":
        rec.finish(report_path="/out/r.md")
    elif state == "ended_unaudited":
        rec.finish(report_path="/out/r.md", audited=False, audit_error="audit log unwritable")
    if dead or host:
        # rewrite the ownership fields: a run whose process is gone, or one
        # recorded on a machine this reader cannot probe
        path = run_status_path(tmp_path, apk_hash)
        data = json.loads(path.read_text(encoding="utf-8"))
        if dead:
            data["pid"] = _dead_pid()
        if host:
            data["host"] = host
        path.write_text(json.dumps(data), encoding="utf-8")
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
    # this sidecar was written by the live test process, so the note reports the
    # run as in flight; the stage is still named, and the phrase is matched
    # flattened because it now sits behind a longer prefix the console wraps
    assert "last stage: native_scan" in " ".join(out.split())


def test_an_unaudited_ending_is_not_reported_as_an_interruption(tmp_path, monkeypatch, capsys):
    """The log's verdict makes this run an orphan - it holds no completion. The
    sidecar knows more: the process ended on purpose and only the completion write
    failed. Printing its last stage would read as an interruption and put the two
    records in contradiction, so the ending is named instead."""
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    _sidecar(tmp_path, "deadbeef", last_stage="native_scan", state="ended_unaudited")
    cli._print_uncompleted_runs({
        "uncompleted_run_details": [
            {"run_id": "r-orphan", "apk_hash": "deadbeef", "action": "BOTH"}
        ],
    })
    out = capsys.readouterr().out
    # the console wraps to its width, so match against the flattened text rather
    # than a phrase that may straddle a line break
    flat = " ".join(out.split())
    assert "reached 'native_scan' then ended without an audit completion" in flat
    assert "audit log unwritable" in flat
    assert "last stage:" not in flat


def test_an_in_flight_run_is_not_reported_as_having_never_completed(tmp_path, monkeypatch, capsys):
    """The sidecar in this test was written by THIS process, so the run behind it
    is demonstrably still alive. `started` is not a death, and reporting a running
    run among the never-completed asserts an ending that has not happened - the
    live Netflix run that was read as an interruption for half an hour."""
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    _sidecar(tmp_path, "deadbeef", last_stage="static_scan")
    cli._print_uncompleted_runs({
        "uncompleted_run_details": [{"run_id": "r-orphan", "apk_hash": "deadbeef"}],
    })
    flat = " ".join(capsys.readouterr().out.split())
    assert "IN FLIGHT" in flat
    assert "still running" in flat
    assert "last stage: static_scan" in flat
    assert "never completed" not in flat


def test_a_run_whose_process_is_gone_is_reported_as_ended(tmp_path, monkeypatch, capsys):
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    _sidecar(tmp_path, "deadbeef", last_stage="native_scan", dead=True)
    cli._print_uncompleted_runs({
        "uncompleted_run_details": [{"run_id": "r-orphan", "apk_hash": "deadbeef"}],
    })
    flat = " ".join(capsys.readouterr().out.split())
    assert "ended with its process gone" in flat
    assert "last stage: native_scan" in flat
    assert "IN FLIGHT" not in flat


def test_a_sidecar_from_another_host_is_not_read_as_dead(tmp_path, monkeypatch, capsys):
    """The probe answers about a host. A run recorded elsewhere cannot be shown to
    have ended from here, and unknown is not dead."""
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    _sidecar(tmp_path, "deadbeef", last_stage="native_scan", host="the-collaborators-box")
    cli._print_uncompleted_runs({
        "uncompleted_run_details": [{"run_id": "r-orphan", "apk_hash": "deadbeef"}],
    })
    flat = " ".join(capsys.readouterr().out.split())
    assert "liveness not established" in flat
    assert "the-collaborators-box" in flat
    assert "ended with its process gone" not in flat


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
    assert "have no completion in this log" in " ".join(result.output.split())


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


# --- a run that ends by exiting non-zero has still ended ----------------------


def _started_recorder(tmp_path, apk_hash="deadbeef"):
    rec = RunStatusRecorder(tmp_path, apk_hash, {"run_id": "r-1", "apk_hash": apk_hash})
    rec.start()
    rec.record({"stage": "native_scan", "status": "success", "duration_ms": 3})
    return rec


def test_a_failed_audit_completion_ends_the_sidecar_before_exiting(tmp_path, monkeypatch):
    """The sidecar was finalized after the two failure branches, so a run that
    ended with a failed completion exited non-zero leaving `started` on disk: a
    claim that the run was interrupted, which is the opposite of what happened,
    and one that contradicts the log - where the missing completion is precisely
    what makes it an orphan."""
    import typer

    rec = _started_recorder(tmp_path)
    monkeypatch.setattr(cli, "_RUN_STATUS", rec)
    monkeypatch.setattr(cli, "generate_report", lambda **kw: tmp_path / "r.md")
    monkeypatch.setattr(
        cli,
        "record_run_completion",
        lambda **kw: _Stage("audit_completion", "failed", 1, error="audit log unwritable"),
    )
    monkeypatch.setattr(cli, "save_run", lambda *a, **k: None)

    with pytest.raises(typer.Exit):
        cli._finalize_run({"stage_results": []}, tmp_path, "deadbeef", "r-1", {}, {})

    data = read_run_status(tmp_path, "deadbeef")
    assert data["state"] == "ended_unaudited"
    assert data["audit_error"] == "audit log unwritable"
    assert data["finished_at"]


def test_a_failed_save_ends_the_sidecar_with_its_reason(tmp_path, monkeypatch):
    """Report written and run audited, only the DB row missing. That ending is
    neither an interruption nor an orphan, and the sidecar says which it is."""
    import typer

    rec = _started_recorder(tmp_path)
    monkeypatch.setattr(cli, "_RUN_STATUS", rec)
    monkeypatch.setattr(cli, "generate_report", lambda **kw: tmp_path / "r.md")
    monkeypatch.setattr(cli, "record_run_completion", lambda **kw: _Stage("audit_completion", "success", 1))

    def boom(*a, **k):
        raise RuntimeError("database is locked")

    monkeypatch.setattr(cli, "save_run", boom)

    with pytest.raises(typer.Exit):
        cli._finalize_run({"stage_results": []}, tmp_path, "deadbeef", "r-1", {}, {})

    data = read_run_status(tmp_path, "deadbeef")
    assert data["state"] == "finished"
    assert data["save_error"] == "database is locked"
    assert "audit_error" not in data


class _Stage:
    def __init__(self, stage, status, duration_ms, error=None):
        self.stage = stage
        self.status = status
        self.duration_ms = duration_ms
        self.error = error


def test_the_note_names_the_stage_a_dead_run_was_inside(tmp_path, monkeypatch, capsys):
    """The observed defect: Telegram's run of 2026-09-18 was killed 20 minutes into
    `native_scan` while its sidecar read `last stage: manifest_parse (success)` -
    the stage before the one it died in. The note now says where the run was, and
    keeps the last completed stage as the floor it is."""
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    rec = RunStatusRecorder(tmp_path, "deadbeef", {"run_id": "r-orphan", "apk_hash": "deadbeef"})
    rec.start()
    rec.begin("manifest_parse")
    rec.record({"stage": "manifest_parse", "status": "success", "duration_ms": 1})
    rec.begin("native_scan")
    path = run_status_path(tmp_path, "deadbeef")
    data = json.loads(path.read_text(encoding="utf-8"))
    data["pid"] = _dead_pid()  # the process that wrote this sidecar is gone
    path.write_text(json.dumps(data), encoding="utf-8")

    cli._print_uncompleted_runs({
        "uncompleted_run_details": [
            {"run_id": "r-orphan", "apk_hash": "deadbeef", "action": "BOTH"}
        ],
    })
    flat = " ".join(capsys.readouterr().out.split())
    assert (
        "ended with its process gone; was in 'native_scan' when the record stops "
        "(last completed: manifest_parse (success))"
    ) in flat
    assert "last stage:" not in flat


def test_begin_stage_cautions_instead_of_raising_when_the_sidecar_cannot_be_written(
    tmp_path, monkeypatch, capsys
):
    """Same rule as _print_stage's write: a stage boundary that cannot record
    itself must not kill a 40-minute analysis, and must not be silent about it."""
    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path)
    rec = RunStatusRecorder(tmp_path, "deadbeef", {"run_id": "r-orphan"})
    rec.start()
    rec.path.unlink()
    rec.path.mkdir()  # a directory where the file goes: every write fails
    monkeypatch.setattr(cli, "_RUN_STATUS", rec)
    cli._begin_stage("native_scan")  # must not raise
    assert "could not write the run-status sidecar" in " ".join(capsys.readouterr().out.split())
