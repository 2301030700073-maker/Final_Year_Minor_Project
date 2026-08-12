"""Tests for record_classification (FR-3.3): the deterministic verdict + full
evidence trail must be flushed to the immutable, hash-chained audit log BEFORE
any dynamic stage runs, so it survives a downstream crash (the same
partial-evidence-preservation the project applies to ingest, LIM-1/ADR-0005).
"""

import json

from audit.attestation import record_classification, verify_audit_log


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

    # The new event carries a run_id but is neither run_authorized nor
    # run_completed, so it must not break the semantic pairing check.
    check = verify_audit_log(log)
    assert check["valid"] is True
    assert check["total"] == 1
    assert check["chained"] == 1
    assert check["errors"] == []


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
    assert check["valid"] is True
    assert check["total"] == 2
    assert check["chained"] == 2


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
