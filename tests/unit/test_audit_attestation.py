"""Tests for record_classification (FR-3.3): the deterministic verdict + full
evidence trail must be flushed to the immutable, hash-chained audit log BEFORE
any dynamic stage runs, so it survives a downstream crash (the same
partial-evidence-preservation the project applies to ingest, LIM-1/ADR-0005).
"""

import json

from audit.attestation import (
    _canonical,
    record_authorization,
    record_classification,
    record_re_attribution,
    validate_justification,
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


def test_rotation_cross_file_chain_breaks_on_deleted_archive(tmp_path, monkeypatch):
    """The audit log must chain across a rotation: when the current file exceeds
    MAX_LOG_BYTES it is renamed to a timestamped archive and a fresh file anchors
    onto the archive's tail hash. Deleting an archive must therefore surface as a
    prev_hash break in the surviving file, not as a silent gap (F4 cross-file
    anchor, RESID-2B/2C).
    """
    from audit import attestation

    # Force a small rotation threshold. Archive names are second-granularity, so
    # to stay deterministic we append until the FIRST rotation fires, then stop -
    # a second same-second rotation would overwrite the first archive and corrupt
    # the very invariant under test (that's a test-threshold artifact, not a real
    # path: real logs rotate rarely at 5MB, never every append).
    monkeypatch.setattr(attestation, "MAX_LOG_BYTES", 320)
    log = tmp_path / "audit.jsonl"
    for i in range(20):
        result = record_authorization(
            audit_log_path=log, run_id=f"r{i}", apk_hash="abc123",
            justification="CTF", operator="tester", git_commit="deadbeef",
        )
        assert result.status == "success"
        if any(p.name != "audit.jsonl" for p in tmp_path.iterdir()):
            break
    archives = [p for p in tmp_path.iterdir() if p.name != "audit.jsonl"]
    assert archives, "expected a rotation to fire under the small threshold"
    assert len(archives) == 1, "test must stop before a second same-second rotation"

    # Every authorization without a completion is informational (never a break),
    # so a valid rotation must verify clean across the archive boundary.
    check = verify_audit_log(log)
    assert check["valid"] is True
    assert check["archives_checked"] == 1
    assert check["chained"] == check["total"]  # chain continuous across the boundary

    # Deleting the archive removes the anchor the current file chained onto: the
    # surviving file's first record can no longer resolve its prev_hash.
    archive = next(p for p in tmp_path.iterdir() if p.name != "audit.jsonl")
    archive.unlink()
    check2 = verify_audit_log(log)
    assert check2["valid"] is False
    assert any("prev_hash" in e for e in check2["errors"])


def test_cross_file_semantic_pairing_across_archive_boundary(tmp_path, monkeypatch):
    """RESID-2A pairing must hold across a rotation, not just within one file: an
    authorization written into an earlier archive is still the valid prior
    authorization for a classification written into the later current file, so
    the classification is NOT an orphan. This is the 'Authorizations are tracked
    across files' claim in verify_audit_log's docstring.
    """
    from audit import attestation

    # Authorizations are ~300 bytes, so a threshold of 1200 accumulates a few per
    # file before rotation. It must stay large enough that after the FIRST rotation
    # the fresh file holds only a single filler, so the classification write (a
    # second append) can never push it back over the threshold and trigger a second
    # same-second rotation that would overwrite the first archive.
    monkeypatch.setattr(attestation, "MAX_LOG_BYTES", 1200)
    log = tmp_path / "audit.jsonl"

    # Write the authorization, then append fillers until a rotation fires so the
    # authorization ends up in the archive. Stop immediately (second-granularity
    # archive names forbid a second same-second rotation).
    record_authorization(
        audit_log_path=log, run_id="xa", apk_hash="abc123",
        justification="CTF", operator="tester", git_commit="deadbeef",
    )
    for i in range(20):
        if any(p.name != "audit.jsonl" for p in tmp_path.iterdir()):
            break
        record_authorization(
            audit_log_path=log, run_id=f"fill{i}", apk_hash="abc123",
            justification="CTF", operator="tester", git_commit="deadbeef",
        )
    archives = [p for p in tmp_path.iterdir() if p.name != "audit.jsonl"]
    assert len(archives) == 1
    assert "xa" in archives[0].read_text()  # the authorization really is in the archive

    # Now the classification for that authorized run lands in the CURRENT file,
    # which is a different file than the authorization's archive.
    cls = record_classification(
        audit_log_path=log, run_id="xa", apk_hash="abc123",
        justification="CTF", operator="tester", git_commit="deadbeef",
        action="ROOT_ONLY", classification={"action": "ROOT_ONLY"},
    )
    assert cls.status == "success"

    check = verify_audit_log(log)
    assert check["valid"] is True
    assert check["orphan_completions"] == []
    # The chain is continuous and the semantic pairing resolved across the file
    # boundary - the classification is not orphaned despite living in a later file.
    assert check["chained"] == check["total"]
    assert check["archives_checked"] == 1


def test_canonical_is_order_independent_and_excludes_record_hash():
    """The hash chain is only sound if _canonical is deterministic: the same
    record serialized to the same string regardless of dict key insertion order,
    and never influenced by record_hash itself (which is computed over it).
    """
    a = {"record_hash": "zzz", "event": "run_authorized", "run_id": "r1", "n": 1}
    b = {"n": 1, "event": "run_authorized", "record_hash": "aaa", "run_id": "r1"}
    assert _canonical(a) == _canonical(b)
    # Compact separators - no whitespace between keys, so the byte stream is
    # exactly what went into sha256.
    assert _canonical(a) == '{"event":"run_authorized","n":1,"run_id":"r1"}'


def test_validate_justification_accepts_exact_and_authorized_prefix():
    # Exact justifications, including with surrounding whitespace (RESID-2E).
    assert validate_justification("OWN_APP")
    assert validate_justification(" CTF ")
    assert validate_justification("ACADEMIC_TRAINING_TARGET")
    # Self-attested authorized-engagement ids (LIM-C): a non-blank suffix passes.
    assert validate_justification("AUTHORIZED_ENGAGEMENT:eng-42")
    # A bare prefix or blank suffix is rejected (LIM-C) - the id must be real.
    assert not validate_justification("AUTHORIZED_ENGAGEMENT:")
    assert not validate_justification("AUTHORIZED_ENGAGEMENT:   ")
    assert not validate_justification("arbitrary string")


def test_maybe_rotate_returns_anchor_and_noops_below_threshold(tmp_path, monkeypatch):
    # _maybe_rotate (F4): when the log exceeds MAX_LOG_BYTES it is renamed to a
    # timestamped archive and RETURNS the archive's tail hash so the fresh file's
    # first record can anchor onto it (deleting an archive then breaks the
    # chain, never silently). Below the threshold it is a no-op -> None, no
    # archive. Had zero direct coverage (only exercised end-to-end).
    import json
    from audit import attestation

    monkeypatch.setattr(attestation, "MAX_LOG_BYTES", 500)
    log = tmp_path / "audit.jsonl"

    # below threshold: no rotation, no anchor
    log.write_text(json.dumps({"record_hash": "small"}) + "\n", encoding="utf-8")
    assert attestation._maybe_rotate(log) is None
    assert log.exists()  # untouched
    assert len(list(tmp_path.iterdir())) == 1

    # above threshold: archived, tail hash returned as the anchor
    big = {"record_hash": "tailhash123", "pad": "x" * 1000}
    log.write_text(json.dumps(big) + "\n", encoding="utf-8")
    anchor = attestation._maybe_rotate(log)
    assert anchor == "tailhash123"
    assert not log.exists()  # renamed away
    archives = [p for p in tmp_path.iterdir() if p.name != "audit.jsonl"]
    assert len(archives) == 1 and "audit.jsonl." in archives[0].name

    # first-record path (missing file): FileNotFoundError swallowed -> None
    assert attestation._maybe_rotate(tmp_path / "absent.jsonl") is None


def test_append_audit_record_chains_and_syncs_cache(tmp_path):
    # _append_audit_record: appends one fsync'd record whose prev_hash chains
    # onto the prior tail, computes a canonical record_hash, and updates the
    # O(1) tail-hash cache so the next append chains without re-reading. Had zero
    # direct coverage.
    from audit import attestation

    log = tmp_path / "audit.jsonl"
    r1 = {"run_id": "a", "actor": "tester"}
    attestation._append_audit_record(log, r1)
    assert "record_hash" in r1 and r1["record_hash"]  # computed
    assert attestation._last_record_hash(log) == r1["record_hash"]  # cache synced

    r2 = {"run_id": "b", "actor": "tester"}
    attestation._append_audit_record(log, r2)
    assert r2["prev_hash"] == r1["record_hash"]  # chained onto the prior tail

    # two lines on disk, both valid JSON
    lines = log.read_text(encoding="utf-8").strip().splitlines()
    assert len(lines) == 2
    import json
    assert json.loads(lines[1])["record_hash"] == r2["record_hash"]


def test_verify_audit_log_flags_record_hashless_record_after_hashed_as_tamper(tmp_path):
    # M2-hardening: legacy (record_hash-less) records can only legitimately form
    # the PREFIX of the log - written before hashing existed. Once any hashed
    # record appears, the code always writes record_hash, so a later record that
    # LACKS it is provably a tamper (deleting the hash keys is itself the signal),
    # and must be flagged rather than silently counted as unverifiable legacy.
    log = tmp_path / "audit.jsonl"
    auth = record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r1")
    assert auth.status == "success"
    result = record_classification(
        audit_log_path=log, run_id="r1", apk_hash="abc123", justification="CTF",
        operator="tester", git_commit="g1", action="ROOT_ONLY",
        classification={"action": "ROOT_ONLY"},
    )
    assert result.status == "success"
    assert verify_audit_log(log)["valid"] is True  # the clean paired baseline

    # tamper: a third record appended with NO record_hash after the two hashed
    # ones. Not legacy (hashed records already exist) - flagged as a tamper.
    log.write_text(log.read_text(encoding="utf-8") + '{"event":"classification","run_id":"r9"}\n', encoding="utf-8")
    check = verify_audit_log(log)
    assert check["valid"] is False
    assert any("record without record_hash after hashed records - tamper" in e for e in check["errors"])
    # the legitimate prefix records still chain; only the forged tail is flagged
    assert check["chained"] == 2
    assert check["legacy"] == 0


def test_verify_audit_log_flags_truncated_tail_when_current_log_missing_but_archives_present(tmp_path):
    # L6: a MISSING current log with rotated archives present is a truncated
    # tail, not a clean log - the newest end of the chain is gone. The archives
    # that survive are still verified, but the truncation is surfaced as an
    # integrity error instead of short-circuiting to valid=True.
    log = tmp_path / "audit.jsonl"
    auth = record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r1")
    assert auth.status == "success"
    assert verify_audit_log(log)["valid"] is True

    # rotate: rename the current log to a timestamped archive, leaving none.
    archive = tmp_path / "audit.jsonl.20260820T120000Z"
    log.rename(archive)
    assert not log.exists()

    check = verify_audit_log(log)
    assert check["valid"] is False
    assert any("audit log missing but 1 archive(s) present - tail may be truncated" in e for e in check["errors"])
    # the surviving archive was still verified end-to-end (chained), not skipped
    assert check["archives_checked"] == 1
    assert check["chained"] == 1


def test_verify_audit_log_counts_leading_hashless_record_as_legacy(tmp_path):
    # attestation.py:488: a record written BEFORE hashing existed (no
    # record_hash) legitimately forms only the PREFIX of the log. It is counted
    # as `legacy` (unchainable, doesn't fail the check on its own) - the semantic
    # OPPOSITE of the M2 tamper case (a hashless record AFTER hashed ones, which
    # is flagged). Real coverage proved the legacy-prefix path untested: only the
    # tamper direction was pinned.
    log = tmp_path / "audit.jsonl"
    # a pre-hashing legacy record as the very first line
    log.write_text('{"event":"run_authorized","run_id":"r1","actor":"tester"}\n', encoding="utf-8")

    auth = record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r2")
    assert auth.status == "success"

    check = verify_audit_log(log)
    assert check["legacy"] == 1     # the leading hashless record is legacy, not tamper
    assert check["chained"] == 1    # the hashed record after it still chains
    assert check["valid"] is True   # legacy prefix + valid chain = clean (legacy alone never fails)


def test_verify_audit_log_empty_when_no_log_and_no_archives(tmp_path):
    # attestation.py:419-424: with NO log file AND NO archives (a fresh
    # environment, nothing has run yet) the verifier returns a clean empty
    # result - valid=True, total=0, no errors. This is the anchor that
    # distinguishes "nothing recorded" from "something tampered/truncated".
    # Real coverage proved the early-return untested (only the archives-present
    # truncation and populated-log paths were).
    log = tmp_path / "audit.jsonl"
    assert not log.exists()
    check = verify_audit_log(log)
    assert check["valid"] is True
    assert check["total"] == 0
    assert check["chained"] == 0
    assert check["legacy"] == 0
    assert check["archives_checked"] == 0
    assert check["errors"] == []


def test_verify_audit_log_clean_empty_when_parent_dir_does_not_exist(tmp_path):
    # attestation.py verify_audit_log: the sibling test above put the log
    # directly in tmp_path, whose parent already exists - so it only exercised
    # "dir exists, no file/archives". The archive scan iterates path.parent, and
    # that directory legitimately may not exist yet: `verify-audit-log` run before
    # any analysis has created outputs/ (OUTPUTS_ROOT is relative and made only on
    # the first append), or a --audit-log path in a not-yet-created dir. Before
    # the fix, path.parent.iterdir() raised FileNotFoundError - a raw traceback out
    # of the CLI verify command, contradicting the docstring's "never raises" and
    # the clean-empty intent (a never-created trail is "nothing logged", not
    # corruption). It must return the SAME clean-empty result as the sibling case,
    # not crash.
    log = tmp_path / "never_created" / "audit.jsonl"
    assert not log.parent.exists()
    check = verify_audit_log(log)  # must not raise
    assert check["valid"] is True
    assert check["total"] == 0
    assert check["chained"] == 0
    assert check["legacy"] == 0
    assert check["archives_checked"] == 0
    assert check["errors"] == []
    # attestation.py:226-227: record_authorization on a corrupt log must return
    # a FAILED StageResult, never a raw traceback (RESID-2D). The equivalent
    # corrupt-log path was tested for record_classification but not for the
    # authorization record that precedes every run. Real coverage proved it
    # uncovered.
    log = tmp_path / "audit.jsonl"
    log.write_text("not json\n")
    result = record_authorization(log, "CTF", "abc123", "tester", "g1", run_id="r1")
    assert result.status == "failed"
    assert "corrupt" in result.error.lower()


def test_record_ingest_failure_fails_loudly_on_corrupt_log(tmp_path):
    # attestation.py:279: record_ingest_failure (ADR-0005's failed-ingest trace)
    # must likewise degrade to a FAILED StageResult on a corrupt log, never crash
    # the crash-reporting path itself. Real coverage proved it uncovered.
    from audit.attestation import record_ingest_failure
    log = tmp_path / "audit.jsonl"
    log.write_text("not json\n")
    result = record_ingest_failure(log, "abc123", "CTF", "tester", "g1", "boom")
    assert result.status == "failed"
    assert "corrupt" in result.error.lower()


def test_last_record_hash_skips_blank_lines(tmp_path):
    # attestation.py:76: a blank line in the log is skipped (not treated as
    # corruption) while hashing the last record. Real coverage proved the
    # empty-line continue untested - a genuine gap, not cache noise.
    from audit.attestation import _last_record_hash
    p = tmp_path / "audit.jsonl"
    p.write_text('\n{"record_hash":"abc"}\n')
    assert _last_record_hash(p) == "abc"


def test_record_run_completion_fails_loudly_on_corrupt_log(tmp_path):
    # attestation.py:226-227: the run-outcome recorder's corrupt-log branch.
    # record_authorization/classification/ingest_failure all have corrupt-log
    # tests, but record_run_completion (which closes the start->end audit trail)
    # did not - a genuine gap I had earlier mislabeled as cache noise.
    from audit.attestation import record_run_completion
    log = tmp_path / "audit.jsonl"
    log.write_text("not json\n")
    result = record_run_completion(log, "r1", "abc123", "CTF", "tester",
                                   "g1", "root", {}, "not_attempted")
    assert result.status == "failed"
    assert "corrupt" in result.error.lower()


def test_record_ingest_failure_success_path(tmp_path):
    # attestation.py:279: record_ingest_failure's SUCCESS return. The sibling
    # corrupt-log test covers the failure branch; this success path was uncovered.
    from audit.attestation import record_ingest_failure
    log = tmp_path / "audit.jsonl"  # fresh/empty -> append succeeds
    result = record_ingest_failure(log, "abc123", "CTF", "tester", "g1", "boom")
    assert result.status == "success"


def test_verify_audit_log_skips_blank_lines(tmp_path):
    # attestation.py:461: a blank line inside the scanned log is skipped (not
    # counted, not errored) while verifying the chain. Real coverage proved the
    # blank-line continue in the scan loop untested.
    log = tmp_path / "audit.jsonl"
    # legacy (hashless) record preceded by a blank line: the blank line must be
    # skipped (not counted, not errored) so total stays exactly 1.
    log.write_text('\n{"event":"run_authorized","justification":"CTF"}\n')
    result = verify_audit_log(log)
    assert result["errors"] == []
    assert result["total"] == 1      # the blank line was not counted
    assert result["legacy"] == 1
    assert result["archives_checked"] == 0


def test_append_chains_onto_on_disk_tail_not_stale_cache(tmp_path):
    # Concurrency integrity (hash chain, ADR-0005): the per-path tail cache must
    # never let an append chain onto a tail another writer has already superseded.
    # Two records sharing one prev_hash is a FORKED chain - precisely the tamper
    # shape the chain exists to make detectable - so a warm cache plus an external
    # append must still yield one linear chain.
    import hashlib
    import json as _json

    from audit import attestation

    log = tmp_path / "audit.jsonl"
    attestation._append_audit_record(log, {"a": 1})
    first = _json.loads(log.read_text().splitlines()[0])
    assert attestation._last_record_hash(log) == first["record_hash"]  # cache warm

    # a second writer (another CLI process) appends its own correctly-chained record
    outside = {"b": 2, "prev_hash": first["record_hash"]}
    outside["record_hash"] = hashlib.sha256(
        attestation._canonical(outside).encode()
    ).hexdigest()
    with open(log, "a", encoding="utf-8") as f:
        f.write(_json.dumps(outside, sort_keys=True) + "\n")

    attestation._append_audit_record(log, {"c": 3})

    lines = [_json.loads(x) for x in log.read_text().splitlines()]
    assert len(lines) == 3
    # chains onto the OUTSIDE record, not the stale cached tail
    assert lines[2]["prev_hash"] == outside["record_hash"]
    # the fork that the unwitnessed cache produced: same prev_hash as line 2
    assert lines[2]["prev_hash"] != first["record_hash"]
    assert attestation._last_record_hash(log) == lines[2]["record_hash"]


def test_tail_cache_is_size_witnessed(tmp_path):
    # The witness that makes the cache safe: an append-only log whose size is
    # unchanged provably has the same tail (serve the cache, O(1)); a changed size
    # means another writer appended and the entry must be re-read, never served.
    import json as _json

    from audit import attestation

    log = tmp_path / "audit.jsonl"
    attestation._append_audit_record(log, {"a": 1})
    key = str(log)
    size, tail = attestation._tail_by_path[key]
    assert size == log.stat().st_size and tail is not None

    with open(log, "a", encoding="utf-8") as f:
        f.write(_json.dumps({"record_hash": "outside-tail"}) + "\n")
    # size now differs from the witness -> the stale cached tail is NOT served
    assert attestation._last_record_hash(log) == "outside-tail"


def test_append_works_without_fcntl(tmp_path, monkeypatch):
    # ADR-0007: pure-Python paths must run anywhere. On a host without fcntl
    # (non-POSIX) the lock degrades to a no-op and appends still chain correctly -
    # locking is concurrency hardening, not a precondition for auditing.
    import json as _json

    from audit import attestation

    monkeypatch.setattr(attestation, "fcntl", None)
    log = tmp_path / "audit.jsonl"
    attestation._append_audit_record(log, {"a": 1})
    attestation._append_audit_record(log, {"b": 2})
    lines = [_json.loads(x) for x in log.read_text().splitlines()]
    assert lines[1]["prev_hash"] == lines[0]["record_hash"]
