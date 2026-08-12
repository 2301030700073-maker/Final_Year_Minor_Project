"""Tests for record_classification (FR-3.3): the deterministic verdict + full
evidence trail must be flushed to the immutable, hash-chained audit log BEFORE
any dynamic stage runs, so it survives a downstream crash (the same
partial-evidence-preservation the project applies to ingest, LIM-1/ADR-0005).
"""

import json

from audit.attestation import (
    record_authorization,
    record_classification,
    record_re_attribution,
    verify_audit_log,
)


def test_record_classification_appends_chained_event(tmp_path):
    log = tmp_path / "audit.jsonl"
    classification = {
        "action": "ROOT_ONLY",
        "root": {
            "detected": True,
            "confidence": 0.95,
            "evidence": [
                {"signature_id": "root_su_binary_paths", "file": "sources/sg/vantagepoint/a/c.java"}
            ],
        },
        "ssl": {"detected": False, "confidence": 0.1, "evidence": []},
    }

    result = record_classification(
        audit_log_path=log, run_id="r1", apk_hash="abc123",
        justification="CTF", operator="tester", git_commit="deadbeef",
        action="ROOT_ONLY", classification=classification,
    )

    assert result.status == "success"
    lines = [json.loads(line) for line in log.read_text().splitlines()]
    assert len(lines) == 1
    rec = lines[0]
    assert rec["event"] == "classification"
    assert rec["run_id"] == "r1"
    assert rec["apk_hash"] == "abc123"
    assert rec["action"] == "ROOT_ONLY"
    assert rec["classification"]["root"]["detected"] is True
    assert rec["classification"]["root"]["evidence"][0]["signature_id"] == "root_su_binary_paths"
    assert rec["record_hash"] and rec["prev_hash"] is None  # first record anchors the chain

    # FR-8 (C): a classification with a run_id but no prior run_authorized is
    # now an orphan (result on record with no authorization) and is flagged -
    # the stricter, more honest pairing. It is still hashed/chained.
    check = verify_audit_log(log)
    assert check["total"] == 1
    assert check["chained"] == 1
    assert check["valid"] is False
    assert any("classification" in e and "no prior authorization" in e for e in check["errors"])


def test_record_classification_chains_onto_prior_record(tmp_path):
    log = tmp_path / "audit.jsonl"
    first = record_classification(
        audit_log_path=log, run_id="r1", apk_hash="a", justification="CTF",
        operator="tester", git_commit="g1", action="ROOT_ONLY",
        classification={"action": "ROOT_ONLY"},
    )
    second = record_classification(
        audit_log_path=log, run_id="r2", apk_hash="b", justification="CTF",
        operator="tester", git_commit="g1", action="NEITHER",
        classification={"action": "NEITHER"},
    )
    assert first.status == "success" and second.status == "success"

    lines = [json.loads(line) for line in log.read_text().splitlines()]
    # second record's prev_hash chains onto first record's record_hash.
    assert lines[1]["prev_hash"] == lines[0]["record_hash"]

    check = verify_audit_log(log)
    assert check["total"] == 2
    assert check["chained"] == 2
    # FR-8 (C): both classifications lack a prior authorization -> both orphaned.
    assert check["valid"] is False
    assert len(check["orphan_completions"]) == 2


def test_record_classification_fails_loudly_on_corrupt_log(tmp_path):
    log = tmp_path / "audit.jsonl"
    log.write_text("not json\n")

    result = record_classification(
        audit_log_path=log, run_id="r1", apk_hash="a", justification="CTF",
        operator="tester", git_commit="g1", action="NEITHER",
        classification={"action": "NEITHER"},
    )

    assert result.status == "failed"
    assert "corrupt" in result.error.lower()


def test_classification_paired_with_authorization_is_valid(tmp_path):
    # FR-8 (C): in the real flow a classification always follows its
    # run_authorized, so a properly-paired classification must NOT be flagged.
    log = tmp_path / "audit.jsonl"
    auth = record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r1")
    assert auth.status == "success"
    result = record_classification(
        audit_log_path=log, run_id="r1", apk_hash="abc123", justification="CTF",
        operator="tester", git_commit="g1", action="ROOT_ONLY",
        classification={"action": "ROOT_ONLY"},
    )
    assert result.status == "success"
    check = verify_audit_log(log)
    assert check["valid"] is True  # pairs with its authorization - not an orphan
    assert check["chained"] == 2


# ---------------------------------------------------------------------------
# FR-8/ADR-0005: re-attribute is an audited write path (record_re_attribution)
# ---------------------------------------------------------------------------


def test_record_re_attribution_appends_chained_event(tmp_path):
    log = tmp_path / "audit.jsonl"
    result = record_re_attribution(
        audit_log_path=log, justification="CTF", operator="tester",
        git_commit="deadbeef", runs_updated=3, third_party_only=2,
        regenerated=3, affected_run_ids=["r_a", "r_b", "r_c"], force=False,
    )
    assert result.status == "success"
    lines = [json.loads(line) for line in log.read_text().splitlines()]
    assert len(lines) == 1
    rec = lines[0]
    assert rec["event"] == "re_attributed"
    assert rec["justification"] == "CTF"
    assert rec["operator"] == "tester"
    assert rec["runs_updated"] == 3
    assert rec["third_party_only"] == 2
    assert rec["regenerated"] == 3
    assert rec["affected_run_ids"] == ["r_a", "r_b", "r_c"]  # names the runs, not just counts
    assert rec["force"] is False
    assert rec["record_hash"] and rec["prev_hash"] is None  # anchors the chain
    # not run_authorized/run_completed -> must not break the pairing check
    check = verify_audit_log(log)
    assert check["valid"] is True
    assert check["chained"] == 1


def test_record_re_attribution_chains_onto_prior_record(tmp_path):
    log = tmp_path / "audit.jsonl"
    first = record_re_attribution(
        audit_log_path=log, justification="CTF", operator="tester",
        git_commit="g1", runs_updated=0, third_party_only=0, regenerated=0,
        affected_run_ids=[], force=False,
    )
    second = record_re_attribution(
        audit_log_path=log, justification="OWN_APP", operator="tester",
        git_commit="g1", runs_updated=1, third_party_only=0, regenerated=1,
        affected_run_ids=["r_new"], force=True,
    )
    assert first.status == "success" and second.status == "success"
    lines = [json.loads(line) for line in log.read_text().splitlines()]
    assert lines[1]["prev_hash"] == lines[0]["record_hash"]
    assert lines[1]["affected_run_ids"] == ["r_new"]


def test_record_re_attribution_rejects_invalid_justification(tmp_path):
    log = tmp_path / "audit.jsonl"
    result = record_re_attribution(
        audit_log_path=log, justification="not-a-real-justification", operator="tester",
        git_commit="g1", runs_updated=0, third_party_only=0, regenerated=0,
        affected_run_ids=[], force=False,
    )
    assert result.status == "failed"
    assert "invalid --justification" in result.error


def test_record_re_attribution_fails_loudly_on_corrupt_log(tmp_path):
    log = tmp_path / "audit.jsonl"
    log.write_text("not json\n")
    result = record_re_attribution(
        audit_log_path=log, justification="CTF", operator="tester",
        git_commit="g1", runs_updated=0, third_party_only=0, regenerated=0,
        affected_run_ids=[], force=False,
    )
    assert result.status == "failed"
    assert "corrupt" in result.error.lower()
