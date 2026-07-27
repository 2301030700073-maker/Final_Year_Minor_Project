import json

from audit.attestation import record_authorization, validate_justification


def test_validate_justification_accepts_known_values():
    assert validate_justification("OWN_APP") is True
    assert validate_justification("CTF") is True
    assert validate_justification("ACADEMIC_TRAINING_TARGET") is True
    assert validate_justification("AUTHORIZED_ENGAGEMENT:eng-123") is True


def test_validate_justification_rejects_unknown_value():
    assert validate_justification("BECAUSE_I_FELT_LIKE_IT") is False
    assert validate_justification("") is False


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
