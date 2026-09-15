import json

import pytest

from audit.attestation import (
    record_authorization,
    record_ingest_failure,
    record_run_completion,
    validate_justification,
    verify_audit_log,
)


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


def test_record_run_completion_appends_chained_outcome_record(tmp_path):
    # LIM-A: the run-outcome record must close start->end - authorization
    # alone left the trail silent on whether the analysis completed or what
    # it found. Verify it lands, carries the result, and stays hash-chained.
    log_path = tmp_path / "audit_log.jsonl"
    # Real paired run: the authorization carries the same run_id the completion
    # will, so the semantic pairing check (RESID-2A) sees a legitimate run.
    record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1", run_id="run-abc")

    result = record_run_completion(
        audit_log_path=log_path,
        run_id="run-abc", apk_hash="hash1",
        justification="OWN_APP", operator="op", git_commit="commit1",
        action="ROOT_ONLY",
        stage_statuses={"ingest": "success", "audit": "success", "dynamic": "success"},
        verification="root_bypassed=True, ssl_bypassed=None",
    )

    assert result.status == "success"
    lines = log_path.read_text(encoding="utf-8").splitlines()
    assert len(lines) == 2
    rec = json.loads(lines[1])
    assert rec["event"] == "run_completed"
    assert rec["run_id"] == "run-abc"
    assert rec["action"] == "ROOT_ONLY"
    assert rec["stage_statuses"]["dynamic"] == "success"

    verified = verify_audit_log(log_path)
    assert verified["valid"] is True
    assert verified["chained"] == 2  # completion chains onto the authorization record


def test_record_run_completion_records_operator_forced_override(tmp_path):
    # ADR-0005: --force-dynamic deploys a bypass on a NEITHER static verdict. The
    # IMMUTABLE log (not just the DB/report) must record that this happened and why:
    # the static `action` stays NEITHER (never promoted), and the forced provenance
    # rides along as its own fields. A reader of the audit trail ALONE can then see a
    # bypass ran on a NEITHER target because an operator explicitly forced it.
    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "pg01", "op", "c1", run_id="run-forced")

    result = record_run_completion(
        audit_log_path=log_path,
        run_id="run-forced", apk_hash="pg01",
        justification="OWN_APP", operator="op", git_commit="c1",
        action="NEITHER",
        stage_statuses={"ingest": "success", "audit": "success", "dynamic": "success"},
        verification="root_bypassed=True, ssl_bypassed=None",
        force_dynamic=True,
        effective_dynamic_action="BOTH",
    )

    assert result.status == "success"
    rec = json.loads(log_path.read_text(encoding="utf-8").splitlines()[1])
    assert rec["action"] == "NEITHER"                    # static verdict NEVER promoted
    assert rec["force_dynamic"] is True                  # ...but the override is on record
    assert rec["effective_dynamic_action"] == "BOTH"
    assert verify_audit_log(log_path)["valid"] is True   # extra fields stay hash-chained


def test_record_run_completion_omits_force_fields_on_normal_run(tmp_path):
    # Negative control: a normal (unforced) run's outcome record must be free of the
    # forced-override fields entirely - they are provenance for an override, never
    # keys present on every record. Guards the byte-identical-when-unforced promise.
    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "h1", "op", "c1", run_id="run-normal")
    record_run_completion(
        audit_log_path=log_path,
        run_id="run-normal", apk_hash="h1",
        justification="OWN_APP", operator="op", git_commit="c1",
        action="ROOT_ONLY", stage_statuses={"dynamic": "success"},
        verification="root_bypassed=True, ssl_bypassed=None",
    )
    rec = json.loads(log_path.read_text(encoding="utf-8").splitlines()[1])
    assert "force_dynamic" not in rec
    assert "effective_dynamic_action" not in rec


def test_authorized_engagement_requires_non_blank_id(tmp_path):
    # LIM-C: self-attested engagement id must be non-blank - a bare prefix or
    # a prefix + whitespace-only id must be rejected.
    assert validate_justification("AUTHORIZED_ENGAGEMENT:") is False
    assert validate_justification("AUTHORIZED_ENGAGEMENT:   ") is False
    assert validate_justification("AUTHORIZED_ENGAGEMENT:eng-123") is True


def test_append_chains_oo1_no_whole_file_rescan(tmp_path, monkeypatch):
    # LIM-B: each append must chain in O(1), not re-read the whole file to
    # find the tail hash (that would be O(n²) across a run). Warm the cache,
    # then instrument open() to count accesses to the audit file during the
    # next append: a cached tail hash means exactly one open (the append-mode
    # write), whereas a rescan would add a second read-mode open.
    log_path = tmp_path / "audit_log.jsonl"
    for i in range(10):
        record_authorization(log_path, "OWN_APP", f"hash{i}", "op", "commit1")
    # Warm the per-path cache so the next append reads it instead of the file.
    from audit.attestation import _last_record_hash
    _last_record_hash(log_path)

    opens = {"count": 0}
    real_open = open

    def counting_open(*args, **kwargs):
        if str(args[0]) == str(log_path):
            opens["count"] += 1
        return real_open(*args, **kwargs)

    monkeypatch.setattr("builtins.open", counting_open)
    record_authorization(log_path, "OWN_APP", "hash-last", "op", "commit1")
    # One open for the append write; no extra read to rescan the tail.
    assert opens["count"] <= 1

    verified = verify_audit_log(log_path)
    assert verified["valid"] is True
    assert verified["chained"] == 11  # 10 auth + 1 appended, all chained


def test_corrupt_tail_line_fails_append_loudly(tmp_path):
    # LIM-D: a malformed trailing line must not silently reset the hash chain
    # (which would hide tampering) - record_authorization must surface it as a
    # failed StageResult instead of appending an unanchored record.
    log_path = tmp_path / "audit_log.jsonl"
    log_path.write_text("this is not valid json\n", encoding="utf-8")

    result = record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1")

    assert result.status == "failed"
    assert "corrupt" in result.error
    # Nothing appended - the bad tail was not papered over.
    lines = log_path.read_text(encoding="utf-8").splitlines()
    assert len(lines) == 1


def test_verify_audit_log_flags_orphan_completion(tmp_path):
    # RESID-2A: a run_completed with no prior run_authorized is an integrity
    # break the hash chain alone can't see (a result recorded without the
    # authorization gate) - it must fail verification.
    log_path = tmp_path / "audit_log.jsonl"
    record_run_completion(
        audit_log_path=log_path,
        run_id="ghost", apk_hash="hash1",
        justification="OWN_APP", operator="op", git_commit="commit1",
        action="ROOT_ONLY", stage_statuses={}, verification="not run",
    )

    result = verify_audit_log(log_path)
    assert result["valid"] is False
    assert result["orphan_completions"] == ["ghost"]
    assert any("orphan completion" in e for e in result["errors"])


def test_verify_audit_log_reports_uncompleted_runs_informational(tmp_path):
    # RESID-2A: an authorization with no completion is normal for a crashed or
    # halted run - reported but must NOT fail verification.
    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1", run_id="run-halted")

    result = verify_audit_log(log_path)
    assert result["valid"] is True
    assert result["uncompleted_runs"] == ["run-halted"]
    assert result["orphan_completions"] == []


def test_audit_log_rotates_past_size_cap(tmp_path, monkeypatch):
    # RESID-2B: once the log exceeds the cap, the next append must archive the
    # current file and start fresh instead of appending without bound.
    import audit.attestation as att
    monkeypatch.setattr(att, "MAX_LOG_BYTES", 1)  # any existing file triggers rotation

    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1", run_id="run-1")
    record_authorization(log_path, "OWN_APP", "hash2", "op", "commit1", run_id="run-2")

    archives = [p for p in tmp_path.iterdir() if p.name.startswith("audit_log.jsonl.")]
    assert len(archives) == 1  # run-1's record was rotated out
    lines = log_path.read_text(encoding="utf-8").splitlines()
    assert len(lines) == 1  # fresh file holds only run-2
    assert json.loads(lines[0])["run_id"] == "run-2"


def test_verify_audit_log_checks_rotated_archives(tmp_path, monkeypatch):
    # RESID-2C: rotation resets the chain and was previously invisible to
    # verify_audit_log - a tampered archive went undetected. Verify must now
    # scan archive siblings too and flag tampering in them.
    import audit.attestation as att
    monkeypatch.setattr(att, "MAX_LOG_BYTES", 1)

    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1", run_id="run-1")
    record_authorization(log_path, "OWN_APP", "hash2", "op", "commit1", run_id="run-2")

    archive = next(p for p in tmp_path.iterdir() if p.name.startswith("audit_log.jsonl."))
    # Tamper the archive (edit a field without recomputing its chain hash).
    lines = archive.read_text(encoding="utf-8").splitlines()
    edited = json.loads(lines[0])
    edited["operator"] = "forged"
    archive.write_text(json.dumps(edited, sort_keys=True) + "\n", encoding="utf-8")

    result = verify_audit_log(log_path)
    assert result["archives_checked"] == 1
    assert result["valid"] is False
    assert any("record_hash mismatch" in e for e in result["errors"])


def test_verify_audit_log_flags_deleted_archive_via_chain_break(tmp_path, monkeypatch):
    # Cross-file chaining: the fresh file's first record is anchored to the
    # archived file's last record_hash. Deleting an archive after rotation was
    # previously invisible - verify iterated [current] + archives, each verifying
    # independently, so a removed archive was simply not scanned. Now the current
    # file's first record's prev_hash points at the missing archive's tail hash,
    # which no longer matches any processed file - the deletion breaks the chain.
    import audit.attestation as att
    monkeypatch.setattr(att, "MAX_LOG_BYTES", 1)

    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1", run_id="run-1")
    record_authorization(log_path, "OWN_APP", "hash2", "op", "commit1", run_id="run-2")

    archive = next(p for p in tmp_path.iterdir() if p.name.startswith("audit_log.jsonl."))
    archive.unlink()  # deletion after rotation

    result = verify_audit_log(log_path)
    assert result["archives_checked"] == 0
    assert result["valid"] is False
    assert any("prev_hash breaks the chain" in e for e in result["errors"])


def test_record_ingest_failure_does_not_crash_on_corrupt_log(tmp_path):
    # RESID-2D: on a corrupt log the ingest-failure path must not raise a raw
    # traceback (unlike authorization/completion, it previously had no guard).
    # FR-8 consistency: it now returns a failed StageResult like every other
    # record_* function, not a bare False.
    log_path = tmp_path / "audit_log.jsonl"
    log_path.write_text("not valid json\n", encoding="utf-8")

    result = record_ingest_failure(log_path, "hash1", "OWN_APP", "op", "commit1", "boom")

    assert result.status == "failed"
    assert "corrupt" in result.error.lower()
    assert log_path.read_text(encoding="utf-8").splitlines() == ["not valid json"]


def test_validate_justification_strips_whitespace_consistently():
    # RESID-2E: whitespace is handled uniformly - surrounding spaces on exact
    # justifications validate just like the bare value (previously only the
    # AUTHORIZED_ENGAGEMENT branch stripped).
    assert validate_justification("  OWN_APP  ") is True
    assert validate_justification(" OWN_APP") is True
    assert validate_justification("OWN_APP ") is True
    assert validate_justification("  CTF ") is True
    assert validate_justification("AUTHORIZED_ENGAGEMENT: eng-123") is True
    assert validate_justification("  AUTHORIZED_ENGAGEMENT:  ") is False  # blank id
    assert validate_justification("   ") is False


def test_verify_audit_log_does_not_treat_record_hash_without_prev_as_legacy(tmp_path):
    # M2: a record that HAS record_hash but is missing prev_hash is NOT legacy.
    # It must be chain-verified - the missing key breaks the chain (unless it's
    # the anchor) - so deleting hash keys can't escape every check.
    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "c1")
    record_authorization(log_path, "CTF", "hash2", "op", "c2")
    lines = log_path.read_text(encoding="utf-8").splitlines()
    second = json.loads(lines[1])
    second.pop("prev_hash", None)
    log_path.write_text(lines[0] + "\n" + json.dumps(second, sort_keys=True) + "\n", encoding="utf-8")

    result = verify_audit_log(log_path)
    assert result["legacy"] == 0            # has record_hash => not legacy
    assert result["chained"] == 2
    assert result["valid"] is False         # chain break surfaced, not silently skipped
    assert any("prev_hash breaks the chain" in e for e in result["errors"])


def test_verify_audit_log_classifies_a_concurrent_write_fork_distinctly(tmp_path):
    # The real 2026-08-17 incident, reproduced: two runs appended concurrently and
    # one chained its record onto an EARLIER record's hash (its own run_authorized)
    # instead of the on-disk tail, under the stale-tail-cache bug _append_audit_record
    # has since fixed (it now reads the tail under flock). Such a fork must still fail
    # the check, but nothing was inserted or deleted - so it is reported as a fork,
    # not mislabeled "inserted/deleted". The record itself is internally valid (its
    # record_hash is recomputed over the stale prev_hash), exactly as the real forked
    # write was, so the ONLY error is the fork - not a record_hash mismatch.
    import hashlib
    from audit.attestation import _canonical

    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hashA", "op", "c1", run_id="run-A")
    record_authorization(log_path, "OWN_APP", "hashB", "op", "c1", run_id="run-B")
    record_authorization(log_path, "OWN_APP", "hashC", "op", "c1", run_id="run-C")

    recs = [json.loads(l) for l in log_path.read_text(encoding="utf-8").splitlines()]
    recs[2]["prev_hash"] = recs[0]["record_hash"]          # fork onto the first record
    recs[2]["record_hash"] = hashlib.sha256(_canonical(recs[2]).encode()).hexdigest()
    log_path.write_text(
        "\n".join(json.dumps(r, sort_keys=True) for r in recs) + "\n", encoding="utf-8"
    )

    result = verify_audit_log(log_path)
    assert result["valid"] is False
    assert result["chained"] == 3
    assert any("forks the chain" in e for e in result["errors"])
    assert not any("record_hash mismatch" in e for e in result["errors"])   # hash is valid
    assert not any("breaks the chain" in e for e in result["errors"])       # not the generic label


def test_verify_audit_log_flags_missing_current_when_archives_present(tmp_path, monkeypatch):
    # L6: deleting the current log (tail truncation) while archives survive must
    # NOT short-circuit to valid=True and skip the archives - the truncation is
    # surfaced as an integrity error and the surviving archive is still checked.
    import audit.attestation as att
    monkeypatch.setattr(att, "MAX_LOG_BYTES", 1)

    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "commit1", run_id="run-1")
    record_authorization(log_path, "OWN_APP", "hash2", "op", "commit1", run_id="run-2")
    archive = next(p for p in tmp_path.iterdir() if p.name.startswith("audit_log.jsonl."))
    log_path.unlink()  # current file gone, archive survives

    result = verify_audit_log(log_path)
    assert result["archives_checked"] == 1   # archive still scanned
    assert result["total"] >= 1              # the surviving archive's records were read
    assert result["valid"] is False
    assert any("current audit log missing" in e for e in result["errors"])


def test_verify_audit_log_flags_record_hash_less_record_after_hashed(tmp_path):
    # M2-hardening: legacy (record_hash-less) records can only form the PREFIX.
    # A hashed-record-less record AFTER hashed records is provably a tamper (the
    # code always writes record_hash now) - it must be flagged, not silently
    # re-admitted into the legacy pool.
    log_path = tmp_path / "audit_log.jsonl"
    record_authorization(log_path, "OWN_APP", "hash1", "op", "c1")
    # Append a forged record with BOTH hash keys stripped, after a hashed record.
    forged = {"event": "run_authorized", "timestamp": "2026-01-01T00:00:00Z",
              "apk_hash": "hash2", "justification": "CTF", "operator": "op",
              "tool_version": "0.1.0", "git_commit": "c2", "run_id": "run-forged"}
    with open(log_path, "a", encoding="utf-8") as f:
        f.write(json.dumps(forged) + "\n")

    result = verify_audit_log(log_path)
    assert result["legacy"] == 0             # not silently counted as legacy
    assert result["valid"] is False
    assert any("without record_hash after hashed records" in e for e in result["errors"])
