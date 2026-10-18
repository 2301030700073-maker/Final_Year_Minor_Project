"""Security hardening of the audit log's integrity checks.

H3: the hash chain is UNKEYED, so an attacker with write access can edit a
record and re-derive every later hash - the chain then verifies clean. The
optional `AUDIT_HMAC_KEY` anchor closes that: records carry `head_hmac`, an
HMAC over the record's canonical content, and verify checks it when the key is
set. With the key unset the log must stay byte-identical to before.

H4: a present log with ZERO intact chain hashes was previously counted as
"legacy" and verified clean - which is exactly what deleting `record_hash` from
every line produces. It must now fail unless `allow_legacy=True` is passed.
"""

import hashlib
import json

from audit.attestation import (
    _canonical,
    record_authorization,
    verify_audit_log,
)

_KEY_ENV = "AUDIT_HMAC_KEY"


def _records(path):
    return [json.loads(line) for line in path.read_text(encoding="utf-8").splitlines()]


def test_no_keyed_anchor_when_the_key_is_unset(tmp_path, monkeypatch):
    # Backward compatibility: unset key => no new field, and the chain verifies
    # exactly as before. Nothing about a normal log may change.
    monkeypatch.delenv(_KEY_ENV, raising=False)
    log = tmp_path / "audit.jsonl"
    record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r1")
    record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r2")

    recs = _records(log)
    assert all("head_hmac" not in rec for rec in recs)
    check = verify_audit_log(log)
    assert check["valid"] is True
    assert check["hmac_checked"] == 0


def test_keyed_anchor_is_written_and_verified(tmp_path, monkeypatch):
    monkeypatch.setenv(_KEY_ENV, "correct horse battery staple")
    log = tmp_path / "audit.jsonl"
    record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r1")

    rec = _records(log)[0]
    assert rec["head_hmac"]
    # record_hash covers the anchor, so stripping/rewriting it is a chain break.
    assert hashlib.sha256(_canonical(rec).encode()).hexdigest() == rec["record_hash"]

    check = verify_audit_log(log)
    assert check["valid"] is True
    assert check["hmac_checked"] == 1


def test_keyed_anchor_catches_a_fully_rehashed_forgery(tmp_path, monkeypatch):
    # The attack the unkeyed chain cannot stop: edit a record, then recompute
    # every record_hash/prev_hash so the chain itself is internally perfect.
    # Without the key the forgery is invisible - with it, the edited record's
    # head_hmac no longer matches, because the attacker cannot re-key it.
    monkeypatch.setenv(_KEY_ENV, "s3cret")
    log = tmp_path / "audit.jsonl"
    record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r1")
    record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r2")

    recs = _records(log)
    recs[0]["operator"] = "someone-else"
    prev = None
    for rec in recs:
        rec["prev_hash"] = prev
        # The anchor is left exactly as the writer emitted it: it cannot be
        # recomputed without the key, so re-hashing the chain does not help.
        rec["record_hash"] = hashlib.sha256(_canonical(rec).encode()).hexdigest()
        prev = rec["record_hash"]
    log.write_text(
        "\n".join(json.dumps(r, sort_keys=True) for r in recs) + "\n", encoding="utf-8")

    check = verify_audit_log(log)
    assert check["valid"] is False
    assert check["chained"] == 2
    assert any("head_hmac mismatch" in e for e in check["errors"])
    # ...and the chain alone would have said it was fine.
    assert not any("record_hash mismatch" in e for e in check["errors"])
    assert not any("prev_hash" in e for e in check["errors"])


def test_keyed_anchor_ignores_records_written_before_the_key(tmp_path, monkeypatch):
    # A record that predates the key has no anchor and must not fail the check -
    # enabling the key is not a retroactive integrity claim about old records.
    monkeypatch.delenv(_KEY_ENV, raising=False)
    log = tmp_path / "audit.jsonl"
    record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r1")

    monkeypatch.setenv(_KEY_ENV, "s3cret")
    record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r2")

    check = verify_audit_log(log)
    assert check["valid"] is True
    assert check["hmac_checked"] == 1  # only the record written under the key


def test_verify_audit_log_fails_a_log_with_every_hash_stripped(tmp_path):
    # H4: the cheapest way to disable the chain is to delete `record_hash` from
    # every line. That used to read as legacy==total, chained==0, valid=True.
    log = tmp_path / "audit.jsonl"
    record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r1")
    record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r2")

    stripped = []
    for rec in _records(log):
        rec.pop("record_hash", None)
        rec.pop("prev_hash", None)
        stripped.append(json.dumps(rec, sort_keys=True))
    log.write_text("\n".join(stripped) + "\n", encoding="utf-8")

    check = verify_audit_log(log)
    assert check["total"] == 2
    assert check["chained"] == 0
    assert check["legacy"] == 2
    assert check["valid"] is False
    assert any("no intact hash chain" in e for e in check["errors"])


def test_allow_legacy_accepts_a_genuinely_prehashing_log(tmp_path):
    # The explicit escape hatch: a log known to predate hashing still verifies.
    log = tmp_path / "audit.jsonl"
    log.write_text('{"event":"run_authorized","run_id":"r1"}\n', encoding="utf-8")

    assert verify_audit_log(log)["valid"] is False
    check = verify_audit_log(log, allow_legacy=True)
    assert check["valid"] is True
    assert check["errors"] == []
    assert check["legacy"] == 1
