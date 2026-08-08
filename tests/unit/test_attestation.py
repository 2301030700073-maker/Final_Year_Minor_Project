import json

from audit.attestation import record_authorization, validate_justification, verify_audit_log


def test_validate_justification_accepts_known_values():
    assert validate_justification("OWN_APP") is True
    assert validate_justification("CTF") is True
    assert validate_justification("ACADEMIC_TRAINING_TARGET") is True
    assert validate_justification("AUTHORIZED_ENGAGEMENT:eng-123") is True


def test_validate_justification_rejects_unknown_value():
    assert validate_justification("BECAUSE_I_FELT_LIKE_IT") is False
    assert validate_justification("") is False


def test_validate_justification_exact_match_only():
    # OWN_APP/CTF/ACADEMIC_TRAINING_TARGET are exact - no arbitrary suffix.
    assert validate_justification("OWN_APPX") is False
    assert validate_justification("OWN_APPx") is False
    assert validate_justification("CTFjunk") is False
    assert validate_justification("ACADEMIC_TRAINING_TARGET_extra") is False
    # AUTHORIZED_ENGAGEMENT: requires a real suffix id, not a bare prefix.
    assert validate_justification("AUTHORIZED_ENGAGEMENT:") is False
    assert validate_justification("AUTHORIZED_ENGAGEMENT:eng-123") is True


def test_record_authorization_appends_jsonl_line(tmp_path):
    log_path = tmp_path / "audit_log.jsonl"

    result = record_authorization(
        audit_log_path=log_path,
        justification="ACADEMIC_TRAINING_TARGET",
        apk_hash="abc123",
        operator="s-sam23",
        git_commit="deadbeef",
    )

    assert result.status == "success"
    lines = log_path.read_text(encoding="utf-8").splitlines()
    assert len(lines) == 1
    record = json.loads(lines[0])
    assert record["apk_hash"] == "abc123"
    assert record["justification"] == "ACADEMIC_TRAINING_TARGET"


def test_record_authorization_appends_without_overwriting(tmp_path):
    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1")
    record_authorization(log_path, "CTF", "hash2", "op", "commit2")

    lines = log_path.read_text(encoding="utf-8").splitlines()
    assert len(lines) == 2


def test_record_authorization_fails_loudly_on_invalid_justification(tmp_path):
    log_path = tmp_path / "audit_log.jsonl"

    result = record_authorization(log_path, "NOT_VALID", "hash1", "op", "commit1")

    assert result.status == "failed"
    assert result.error is not None
    assert not log_path.exists()


def test_records_are_hash_chained_and_verify_ok(tmp_path):
    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1")
    record_authorization(log_path, "CTF", "hash2", "op", "commit2")

    result = verify_audit_log(log_path)
    assert result["valid"] is True
    assert result["total"] == 2
    assert result["chained"] == 2


def test_verify_audit_log_detects_tampering(tmp_path):
    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1")

    # Edit a field without recomputing the chain hash - verify must flag it.
    lines = log_path.read_text(encoding="utf-8").splitlines()
    edited = json.loads(lines[0])
    edited["apk_hash"] = "forged"
    log_path.write_text(json.dumps(edited, sort_keys=True) + "\n", encoding="utf-8")

    result = verify_audit_log(log_path)
    assert result["valid"] is False
    assert any("record_hash mismatch" in e for e in result["errors"])
