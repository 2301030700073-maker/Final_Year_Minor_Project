"""authorization_for_run: faithful recovery of a run's authorization (operator +
justification) from the immutable audit log by run_id, for report regeneration.

ADR-0005 keeps authorization in the audit log, not on the mutable RunRecord, so a
regenerated report (_regenerate_report) must source its "Authorized by" line from
here. These pin: (1) a live-log recovery round-trips the exact operator +
justification; (2) an unknown run_id returns None so the caller discloses rather
than fabricates; (3) recovery still works when the authorizing record has rotated
into an archive sibling; (4) a missing log never raises. Together they close the
regen field-loss where a regenerated report silently dropped its authorization line.
"""

from pathlib import Path

from audit.attestation import authorization_for_run, record_authorization


def _authorize(log: Path, run_id: str, operator: str, justification: str) -> None:
    res = record_authorization(
        audit_log_path=log,
        justification=justification,
        apk_hash="a" * 64,
        operator=operator,
        git_commit="deadbeef",
        run_id=run_id,
    )
    assert res.status == "success", res.error


def test_recovers_operator_and_justification_from_live_log(tmp_path):
    log = tmp_path / "audit_log.jsonl"
    _authorize(log, "run-1", "alice", "CTF")
    assert authorization_for_run(log, "run-1") == {
        "operator": "alice",
        "justification": "CTF",
    }


def test_unknown_run_id_returns_none(tmp_path):
    # A run_id with no run_authorized event is genuinely unrecoverable: None, so the
    # caller discloses the gap rather than fabricating an authorizer.
    log = tmp_path / "audit_log.jsonl"
    _authorize(log, "run-1", "alice", "CTF")
    assert authorization_for_run(log, "does-not-exist") is None


def test_empty_run_id_returns_none(tmp_path):
    log = tmp_path / "audit_log.jsonl"
    _authorize(log, "run-1", "alice", "CTF")
    assert authorization_for_run(log, "") is None


def test_recovers_across_rotated_archive(tmp_path):
    # Mirror rotation: the authorizing record lives in an archive sibling
    # (<name>.<YYYYMMDDTHHMMSSZ>), not the live file. Recovery must still find it,
    # or an older run's regenerated report would silently lose its authorization.
    log = tmp_path / "audit_log.jsonl"
    _authorize(log, "run-old", "bob", "OWN_APP")
    archive = tmp_path / "audit_log.jsonl.20260101T000000Z"
    log.rename(archive)  # simulate a rotation: old content archived, fresh log next
    _authorize(log, "run-new", "carol", "ACADEMIC_TRAINING_TARGET")
    assert authorization_for_run(log, "run-old") == {
        "operator": "bob",
        "justification": "OWN_APP",
    }
    assert authorization_for_run(log, "run-new") == {
        "operator": "carol",
        "justification": "ACADEMIC_TRAINING_TARGET",
    }


def test_missing_log_never_raises(tmp_path):
    # No log written at all: recovery returns None, does not raise - report
    # regeneration must degrade to disclosure, never crash (NFR-1).
    assert authorization_for_run(tmp_path / "nope.jsonl", "run-1") is None
