"""Run-status sidecar (ADR-0021): a run's progress recorded as it proceeds, so an
interrupted run leaves a durable account of where it stopped."""
import json
import os
import socket
import sys
from pathlib import Path

import pytest

from storage.run_status import (
    RUN_STATUS_FILENAME,
    RunStatusRecorder,
    read_run_status,
    run_is_alive,
    run_status_path,
)

# /proc is a Linux interface: a pid's start time and its liveness cannot be
# established without it, and run_is_alive() correctly answers None on a host
# that has none. The tests below assert the MEASURED True/False answers, so they
# need a real procfs - on Windows they would otherwise be asserting a fact the
# module explicitly declines to claim there.
_HAS_LINUX_PROC = sys.platform.startswith("linux") and Path("/proc").is_dir()
_requires_proc = pytest.mark.skipif(
    not _HAS_LINUX_PROC, reason="requires Linux /proc (pid start time and liveness)"
)


def _dead_pid():
    """A pid that cannot be allocated, so /proc has no entry for it regardless of
    what the machine happens to be running."""
    try:
        pid_max = int(Path("/proc/sys/kernel/pid_max").read_text(encoding="utf-8").strip())
    except OSError:
        pid_max = 4194304
    return pid_max + 1


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


def _pre_existing(tmp_path, **fields):
    """A sidecar already on disk for the same APK, as a previous run left it."""
    path = run_status_path(tmp_path, "abc")
    path.parent.mkdir(parents=True, exist_ok=True)
    doc = {
        "state": "started", "run_id": "earlier", "pid": _dead_pid(), "pid_start": "1",
        "started_at": "2026-09-19T10:29:17+00:00", "last_stage": "static_scan",
        "last_stage_status": "failed", "in_flight_stage": None, "git_commit": "55bf1d43",
    }
    doc.update(fields)
    path.write_text(json.dumps(doc), encoding="utf-8")
    return doc


def test_a_dead_runs_record_is_replaced_without_being_reported_as_superseded(tmp_path):
    """The ordinary re-run: the previous record's process is gone, so nothing is
    being erased but a file, and the field says so rather than staying absent."""
    _pre_existing(tmp_path)
    rec = _recorder(tmp_path)
    rec.start()
    data = read_run_status(tmp_path, "abc")
    assert data["state"] == "started"
    assert data["superseded_live_run"] is None


def test_a_live_run_being_replaced_is_recorded_rather_than_erased(tmp_path, monkeypatch):
    """The 2026-09-19 facebook case: a second run of an APK the first is still
    analysing overwrites the first's record - including its in_flight_stage - and
    the first's pid is then nowhere on disk. The identity is kept in the new
    record instead of the overwrite being silent.

    `run_is_alive` is stubbed rather than given a real live foreign pid because
    /proc is what answers it and this suite must run where /proc does not exist
    (NFR-6); the probe itself is tested against real pids elsewhere."""
    doc = _pre_existing(tmp_path, pid=os.getpid() + 1)
    monkeypatch.setattr("storage.run_status.run_is_alive", lambda status: True)
    rec = _recorder(tmp_path)
    rec.start()
    data = read_run_status(tmp_path, "abc")
    assert data["superseded_live_run"] == {
        key: doc[key] for key in (
            "state", "run_id", "pid", "pid_start", "started_at", "last_stage",
            "last_stage_status", "in_flight_stage", "git_commit",
        )
    }
    # ...and the file is still this run's record, not the one it replaced.
    assert data["run_id"] == "r1"
    assert data["last_stage"] is None
    assert data["pid"] == os.getpid()


def test_the_superseded_run_is_still_named_when_this_run_finishes(tmp_path, monkeypatch):
    """The note has to outlive the stages that follow it: a reader arriving after
    the run ended is the one most likely to be holding the other run's elapsed
    times and stage list."""
    _pre_existing(tmp_path, pid=os.getpid() + 1)
    monkeypatch.setattr("storage.run_status.run_is_alive", lambda status: True)
    rec = _recorder(tmp_path)
    rec.start()
    rec.record({"stage": "static_scan", "status": "success", "duration_ms": 5})
    rec.finish(report_path="/tmp/report.md")
    data = read_run_status(tmp_path, "abc")
    assert data["state"] == "finished"
    assert data["superseded_live_run"]["run_id"] == "earlier"


def test_a_record_written_by_this_same_process_is_not_a_conflict(tmp_path, monkeypatch):
    """start() is idempotent for its own run: the file it finds is its own, and
    reporting it as a superseded live run would invent a concurrent analysis."""
    _pre_existing(tmp_path, pid=os.getpid(), pid_start="1")
    monkeypatch.setattr("storage.run_status.run_is_alive", lambda status: True)
    rec = _recorder(tmp_path)
    rec.start()
    assert read_run_status(tmp_path, "abc")["superseded_live_run"] is None


def test_an_unreadable_existing_record_does_not_stop_the_new_run(tmp_path):
    """A damaged file must not deny a run its record - the same distinction the
    reader keeps between absent and unreadable."""
    path = run_status_path(tmp_path, "abc")
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("{not json", encoding="utf-8")
    rec = _recorder(tmp_path)
    rec.start()
    data = read_run_status(tmp_path, "abc")
    assert data["state"] == "started"
    assert data["superseded_live_run"] is None


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


# --- `started` is not a death: the sidecar names a process, and it is probed ---


@_requires_proc
def test_start_records_the_host_and_process_that_owns_the_run(tmp_path):
    rec = _recorder(tmp_path)
    rec.start()
    data = read_run_status(tmp_path, "abc")
    assert data["host"] == socket.gethostname()
    assert data["pid"] == os.getpid()
    # the start time is what keeps "alive" from becoming a fact about whatever
    # process inherits the pid later
    assert data["pid_start"]


@_requires_proc
def test_run_is_alive_true_for_the_process_that_wrote_the_sidecar(tmp_path):
    rec = _recorder(tmp_path)
    rec.start()
    assert run_is_alive(read_run_status(tmp_path, "abc")) is True


@_requires_proc
def test_run_is_alive_false_for_a_pid_that_is_gone(tmp_path):
    rec = _recorder(tmp_path)
    rec.start()
    path = run_status_path(tmp_path, "abc")
    data = json.loads(path.read_text(encoding="utf-8"))
    data["pid"] = _dead_pid()
    path.write_text(json.dumps(data), encoding="utf-8")
    assert run_is_alive(read_run_status(tmp_path, "abc")) is False


@_requires_proc
def test_run_is_alive_false_when_the_pid_was_recycled(tmp_path):
    # a live pid whose recorded start time is not the one /proc reports now: the
    # process holding this pid is not the run, so "alive" would be about someone
    # else entirely
    rec = _recorder(tmp_path)
    rec.start()
    path = run_status_path(tmp_path, "abc")
    data = json.loads(path.read_text(encoding="utf-8"))
    data["pid_start"] = "1"
    path.write_text(json.dumps(data), encoding="utf-8")
    assert run_is_alive(read_run_status(tmp_path, "abc")) is False


def test_run_is_alive_is_unknown_for_another_host(tmp_path):
    # the probe is a claim about a host, so a run on another machine cannot be
    # called dead from here
    rec = _recorder(tmp_path)
    rec.start()
    path = run_status_path(tmp_path, "abc")
    data = json.loads(path.read_text(encoding="utf-8"))
    data["host"] = "someone-elses-box"
    path.write_text(json.dumps(data), encoding="utf-8")
    assert run_is_alive(read_run_status(tmp_path, "abc")) is None


def test_run_is_alive_is_unknown_without_a_recorded_pid(tmp_path):
    # a sidecar written before the field existed, and one with no host
    assert run_is_alive({"state": "started", "host": socket.gethostname()}) is None
    assert run_is_alive({"state": "started"}) is None


class _Stage:
    """Stand-in for the StageResult the live pipeline records."""

    def __init__(self, stage, status, duration_ms, error=None):
        self.stage = stage
        self.status = status
        self.duration_ms = duration_ms
        self.error = error


# --- a stage in flight is named, not only the last one that finished ----------


def test_begin_marks_the_stage_in_flight(tmp_path):
    """Completions alone name the stage BEFORE the one a run died in: the Telegram
    run of 2026-09-18 was killed 20 minutes into `native_scan` and its sidecar read
    `manifest_parse`. The marker is the other end of the stage, so a death inside
    one names the stage it really was in, with the completed one kept beside it."""
    rec = RunStatusRecorder(tmp_path, "hash1", {"run_id": "r1", "apk_hash": "hash1"})
    rec.start()
    rec.begin("manifest_parse")
    rec.record({"stage": "manifest_parse", "status": "success", "duration_ms": 3})
    rec.begin("native_scan")
    on_disk = json.loads(rec.path.read_text(encoding="utf-8"))
    # this is the death record: still inside native_scan, manifest_parse finished
    assert on_disk["in_flight_stage"] == "native_scan"
    assert on_disk["last_stage"] == "manifest_parse"
    assert on_disk["last_stage_status"] == "success"


def test_recording_a_stage_clears_the_in_flight_marker(tmp_path):
    rec = RunStatusRecorder(tmp_path, "hash1", {"run_id": "r1"})
    rec.start()
    rec.begin("static_scan")
    rec.record({"stage": "static_scan", "status": "success", "duration_ms": 5})
    assert json.loads(rec.path.read_text(encoding="utf-8"))["in_flight_stage"] is None


def test_finish_clears_the_in_flight_marker(tmp_path):
    """A run that reached an end is not in a stage, whatever boundary it last
    passed - a finished sidecar claiming an in-flight stage would be a false
    interruption claim in the same direction as the one this module exists for."""
    rec = RunStatusRecorder(tmp_path, "hash1", {"run_id": "r1"})
    rec.start()
    rec.begin("native_scan")
    rec.finish(report_path=None)
    on_disk = json.loads(rec.path.read_text(encoding="utf-8"))
    assert on_disk["state"] == "finished"
    assert on_disk["in_flight_stage"] is None
