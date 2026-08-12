"""Authorization attestation + append-only audit log (FR-8, ADR-0005).

Phase 1: a flat, append-only JSONL file. Migrated into a real SQL
`audit_log` table when Phase 4 introduces SQLite for everything else -
see ADR-0005 for why this isn't a database table yet.

Integrity: records are hash-chained. Each line carries `prev_hash` (the
previous record's `record_hash`) and its own `record_hash` computed over
the canonicalized record (including prev_hash), so any edit, deletion, or
reorder is detectable. `verify_audit_log()` re-derives the chain; a CLI
`verify-audit-log` command surfaces it (A1/A5). Each append is fsynced so
a crash cannot silently drop the last record (A4).
"""

from __future__ import annotations

import hashlib
import json
import os
import re
import time
from datetime import datetime, timezone
from pathlib import Path

from common import StageResult

# Exact-match categories (no suffix allowed); AUTHORIZED_ENGAGEMENT: is the
# only one that takes a suffix id (see validate_justification).
EXACT_JUSTIFICATIONS = ("OWN_APP", "CTF", "ACADEMIC_TRAINING_TARGET")
AUTHORIZED_ENGAGEMENT_PREFIX = "AUTHORIZED_ENGAGEMENT:"


def validate_justification(justification: str) -> bool:
    # RESID-2E: strip once up front so whitespace is handled consistently for
    # both the exact-match and the AUTHORIZED_ENGAGEMENT:<id> branches (" OWN_APP"
    # now validates like "OWN_APP", instead of only the suffix branch stripping).
    justification = justification.strip()
    if justification in EXACT_JUSTIFICATIONS:
        return True
    if justification.startswith(AUTHORIZED_ENGAGEMENT_PREFIX):
        # Requires a non-blank suffix id, not a bare prefix (LIM-C). This is
        # deliberate *self-attestation*: the id is operator-supplied and not
        # validated against an engagement registry - that is a documented
        # scope decision, not a bug, because there is no registry to validate
        # against in this single-operator tool. We only reject an empty id.
        return len(justification) > len(AUTHORIZED_ENGAGEMENT_PREFIX)
    return False


def _canonical(record: dict) -> str:
    """Deterministic serialization over every field except `record_hash`
    (which is computed over this), so the hash is stable across dict ordering."""
    base = {k: v for k, v in record.items() if k != "record_hash"}
    return json.dumps(base, sort_keys=True, separators=(",", ":"))


# Per-path tail-hash cache (LIM-B). The CLI is single-process and only ever
# appends, so the last seen `record_hash` stays valid between appends - this
# turns a whole-file rescan on every append (O(n²)) into one read per path.
# A path is read once, on first use in the process, then maintained here.
_last_hash_by_path: dict[str, str | None] = {}


def _last_record_hash(audit_log_path: Path) -> str | None:
    """Hash of the last record, to chain the next one onto (None when empty)."""
    key = str(audit_log_path)
    if key in _last_hash_by_path:
        return _last_hash_by_path[key]

    try:
        with open(audit_log_path, encoding="utf-8") as f:
            prev_hash: str | None = None
            for line in f:
                line = line.strip()
                if not line:
                    continue
                try:
                    prev_hash = json.loads(line).get("record_hash")
                except json.JSONDecodeError as exc:
                    # LIM-D: a malformed trailing line is an integrity break.
                    # Never silently reset the chain to None - that would let
                    # the next record anchor to nothing and hide the corruption.
                    raise ValueError(
                        f"audit log corrupt: line is not valid JSON ({exc}): {line}"
                    ) from exc
            _last_hash_by_path[key] = prev_hash
            return prev_hash
    except FileNotFoundError:
        _last_hash_by_path[key] = None
        return None


# RESID-2B: rotate the log before it grows past this many bytes, so an
# unbounded JSONL append can't consume disk indefinitely. Rotation archives the
# current file and starts a fresh, empty log; the fresh file's first record is
# anchored to the archived file's last record_hash (cross-file chaining) so the
# chain runs continuously across files and a deleted archive stays detectable.
MAX_LOG_BYTES = 5 * 1024 * 1024


def _maybe_rotate(audit_log_path: Path) -> str | None:
    """Rename the log to a timestamped archive once it exceeds MAX_LOG_BYTES,
    so appends continue in a fresh file. Resets the tail-hash cache for the
    current path. Returns the archived file's last record_hash (captured before
    the cache reset) so the new file's first record can anchor onto it - without
    that anchor, deleting an archive would be invisible to verify_audit_log,
    which would just see a fresh chain start instead of a missing file. Returns
    None when nothing rotated (no archive, no anchor)."""
    try:
        if audit_log_path.stat().st_size >= MAX_LOG_BYTES:
            archive = audit_log_path.with_name(
                f"{audit_log_path.name}.{datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')}"
            )
            tail_hash = _last_record_hash(audit_log_path)  # capture BEFORE the pop below
            os.replace(audit_log_path, archive)
            _last_hash_by_path.pop(str(audit_log_path), None)
            return tail_hash
    except FileNotFoundError:
        pass  # first record: nothing to rotate
    return None


def _append_audit_record(audit_log_path: Path, record: dict) -> None:
    """Append one hash-chained record with an fsync (A4: flush() alone only
    reaches the OS page cache; a crash right after would silently drop it)."""
    audit_log_path = Path(audit_log_path)
    audit_log_path.parent.mkdir(parents=True, exist_ok=True)
    anchor = _maybe_rotate(audit_log_path)
    # A rotation returns the archived file's tail hash: the new file's first
    # record chains onto it, so the chain is continuous across the boundary.
    # Otherwise (no rotation) chain onto the current file's own tail as before.
    record["prev_hash"] = anchor if anchor is not None else _last_record_hash(audit_log_path)
    record["record_hash"] = hashlib.sha256(_canonical(record).encode()).hexdigest()
    with open(audit_log_path, "a", encoding="utf-8") as f:
        f.write(json.dumps(record, sort_keys=True) + "\n")
        f.flush()
        os.fsync(f.fileno())
    # Keep the cache in sync so the next append chains in O(1), not O(log-size).
    _last_hash_by_path[str(audit_log_path)] = record["record_hash"]


def record_authorization(
    audit_log_path: Path,
    justification: str,
    apk_hash: str,
    operator: str,
    git_commit: str,
    tool_version: str = "0.1.0",
    run_id: str | None = None,
) -> StageResult:
    start = time.monotonic()
    if not validate_justification(justification):
        return StageResult(
            stage="audit", status="failed", evidence={},
            error=(
                f"invalid --justification '{justification}' - must be one of "
                f"{', '.join(EXACT_JUSTIFICATIONS)} or {AUTHORIZED_ENGAGEMENT_PREFIX}<id>"
            ),
            duration_ms=int((time.monotonic() - start) * 1000),
        )

    record = {
        "event": "run_authorized",
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "apk_hash": apk_hash,
        "justification": justification,
        "operator": operator,
        "tool_version": tool_version,
        "git_commit": git_commit,
    }
    if run_id is not None:
        # RESID-2A: carry the run id so verify_audit_log can pair each
        # completion back to its authorization (semantic check on top of the
        # hash chain). Omitted when callers don't track a run id.
        record["run_id"] = run_id
    try:
        _append_audit_record(audit_log_path, record)
    except ValueError as exc:
        # LIM-D: a corrupt log (e.g. a malformed tail line) must fail this
        # record loudly as a StageResult, not raise a raw traceback.
        return StageResult(
            stage="audit", status="failed", evidence={}, error=str(exc),
            duration_ms=int((time.monotonic() - start) * 1000),
        )

    return StageResult(
        stage="audit", status="success", evidence=record,
        duration_ms=int((time.monotonic() - start) * 1000),
    )


def record_run_completion(
    audit_log_path: Path,
    run_id: str,
    apk_hash: str,
    justification: str,
    operator: str,
    git_commit: str,
    action: str,
    stage_statuses: dict,
    verification: str,
    tool_version: str = "0.1.0",
) -> StageResult:
    """Append the run-outcome record (LIM-A). ADR-0005 demands every analysis
    attempt be traceable, but the trail previously recorded only authorization
    and ingest failures - never whether a run completed or what it found, so a
    completed analysis was untraceable end-to-end. This closes start -> end by
    recording the run id, per-stage statuses, the decision action, and the
    dynamic-verification result."""
    start = time.monotonic()
    record = {
        "event": "run_completed",
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "run_id": run_id,
        "apk_hash": apk_hash,
        "justification": justification,
        "operator": operator,
        "tool_version": tool_version,
        "git_commit": git_commit,
        "action": action,
        "stage_statuses": stage_statuses,
        "verification": verification,
    }
    try:
        _append_audit_record(audit_log_path, record)
    except ValueError as exc:
        return StageResult(
            stage="audit", status="failed", evidence={}, error=str(exc),
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    return StageResult(
        stage="audit", status="success", evidence=record,
        duration_ms=int((time.monotonic() - start) * 1000),
    )


def record_ingest_failure(
    audit_log_path: Path,
    apk_hash: str | None,
    justification: str,
    operator: str,
    git_commit: str,
    error: str,
    tool_version: str = "0.1.0",
) -> StageResult:
    """Append an audit line for an ingest that failed before an authorization
    record could be written. ADR-0005 demands *every* analysis attempt be
    traceable; cli.py runs ingest before record_authorization so the log can
    carry the real hash, but that ordering silently dropped failed ingests.
    This keeps the attempt on record (with the hash if it was computed) so a
    failed run isn't invisible. Not gated on justification validity - logging
    a failed attempt is the whole point, and we still record who tried.

    Returns a StageResult like every other record_* function (FR-8
    consistency): success when the record was appended, failed when a corrupt
    log made it impossible (RESID-2D) - the crash-path still never raises a raw
    traceback, it just reports failure loudly instead of a bare False.
    """
    start = time.monotonic()
    record = {
        "event": "ingest_failed",
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "apk_hash": apk_hash,
        "justification": justification,
        "operator": operator,
        "tool_version": tool_version,
        "git_commit": git_commit,
        "error": error,
    }
    try:
        _append_audit_record(audit_log_path, record)
    except ValueError as exc:
        # RESID-2D: a corrupt log must not crash the ingest-failure path; report
        # it as a failed StageResult instead.
        return StageResult(
            stage="audit", status="failed", evidence={}, error=str(exc),
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    return StageResult(
        stage="audit", status="success", evidence=record,
        duration_ms=int((time.monotonic() - start) * 1000),
    )


def record_classification(
    audit_log_path: Path,
    run_id: str,
    apk_hash: str,
    justification: str,
    operator: str,
    git_commit: str,
    action: str,
    classification: dict,
    tool_version: str = "0.1.0",
) -> StageResult:
    """Append the deterministic classification verdict + full evidence trail to
    the audit log BEFORE any dynamic stage runs (FR-3.3). The decision is only
    serialized to the DB/report in _finalize_run, which runs AFTER dynamic; if
    the frida spawn crashes or _halt() fires mid-run, the verdict and its
    evidence would be lost. Flushing it here (append-only, hash-chained, fsynced)
    guarantees the deterministic decision survives a downstream crash - the same
    partial-evidence-preservation the project already applies to ingest
    (LIM-1/ADR-0005). Fails loudly (StageResult, not a traceback) when a corrupt
    log blocks the write."""
    start = time.monotonic()
    record = {
        "event": "classification",
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "run_id": run_id,
        "apk_hash": apk_hash,
        "justification": justification,
        "operator": operator,
        "tool_version": tool_version,
        "git_commit": git_commit,
        "action": action,
        "classification": classification,
    }
    try:
        _append_audit_record(audit_log_path, record)
    except ValueError as exc:
        return StageResult(
            stage="audit", status="failed", evidence={}, error=str(exc),
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    return StageResult(
        stage="audit", status="success", evidence=record,
        duration_ms=int((time.monotonic() - start) * 1000),
    )


def record_re_attribution(
    audit_log_path: Path,
    justification: str,
    operator: str,
    git_commit: str,
    runs_updated: int,
    third_party_only: int,
    regenerated: int,
    affected_run_ids: list[str],
    force: bool,
    tool_version: str = "0.1.0",
) -> StageResult:
    """Append an audit record for a `re-attribute` backfill (FR-8/ADR-0005).

    re-attribute mutates a persisted finding's attribution - a consumer-visible
    caveat (ADR-0010) - so it is a write to analysis state that happens OUTSIDE
    the run flow (no record_authorization/record_classification fire for it). To
    keep that write on the audited trail like every other mutation of analysis
    state, it records the operator, justification, how much state changed, and
    the specific run_ids whose attribution was rewritten - so a record is
    traceable to the findings it touched, not just a count (ADR-0005). Validates
    justification with the same M3 gate as the run flow. Fails loudly as a
    StageResult when a corrupt log blocks the write."""
    start = time.monotonic()
    if not validate_justification(justification):
        return StageResult(
            stage="audit", status="failed", evidence={},
            error=(
                f"invalid --justification '{justification}' - must be one of "
                f"{', '.join(EXACT_JUSTIFICATIONS)} or {AUTHORIZED_ENGAGEMENT_PREFIX}<id>"
            ),
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    record = {
        "event": "re_attributed",
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "justification": justification,
        "operator": operator,
        "tool_version": tool_version,
        "git_commit": git_commit,
        "runs_updated": runs_updated,
        "third_party_only": third_party_only,
        "regenerated": regenerated,
        "affected_run_ids": affected_run_ids,
        "force": force,
    }
    try:
        _append_audit_record(audit_log_path, record)
    except ValueError as exc:
        return StageResult(
            stage="audit", status="failed", evidence={}, error=str(exc),
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    return StageResult(
        stage="audit", status="success", evidence=record,
        duration_ms=int((time.monotonic() - start) * 1000),
    )


def verify_audit_log(audit_log_path: Path) -> dict:
    """Re-derive the hash chain and report integrity. Returns a dict and never
    raises on corrupt content - it collects every error it finds. Records
    written before hashing existed are counted as `legacy` (unchainable) and
    don't fail the check on their own.

    Scans the current log AND every rotated archive sibling (RESID-2C) oldest to
    newest, carrying prev_hash across the boundary - the fresh file's first record
    anchors to the most-recent archive's tail hash (cross-file chaining), so both
    a tampered archive and a *deleted* archive break the chain and are flagged.
    Authorizations are tracked across files so a completion in a later file can
    still pair with an authorization from an earlier archive.

    Beyond the hash chain it also performs a semantic pairing check (RESID-2A):
    each run_completed and classification event must have a prior run_authorized
    event carrying the same run_id. An *orphan record* (a result on record with
    no authorization) is an integrity break and fails the check; an *authorization
    without completion* is informational (normal for a crashed or
    deliberately-halted run) and reported separately without failing."""
    path = Path(audit_log_path)
    # RESID-2C: rotated archives are named <name>.<YYYYMMDDTHHMMSSZ> (RESID-2B).
    archive_re = re.compile(re.escape(path.name) + r"\.\d{8}T\d{6}Z$")
    # Cross-file chaining (F4): iterate archives oldest->newest, then the current
    # file, carrying prev_hash across the boundary. The current file's first
    # record anchors to the most-recent archive's tail hash, so a deleted
    # archive breaks the chain of the surviving files rather than being silently
    # absent from the scan.
    archives = sorted(
        p for p in path.parent.iterdir() if archive_re.match(p.name) and p.is_file()
    )
    if not path.is_file() and not archives:
        return {
            "valid": True, "total": 0, "chained": 0, "legacy": 0,
            "archives_checked": 0, "orphan_completions": [], "uncompleted_runs": [],
            "errors": [],
        }
    # L6: a missing current log with archives present is a truncated tail, not a
    # clean log - the newest end of the chain is gone. Verify the archives that
    # survive and surface the truncation as an integrity error, instead of
    # short-circuiting to valid=True and skipping the archives entirely.
    if not path.is_file():
        errors = [f"current audit log missing but {len(archives)} archive(s) present - tail may be truncated"]
        files = archives
    else:
        errors = []
        files = archives + [path]

    total = chained = legacy = 0
    archives_checked = 0
    authorized_run_ids: set[str] = set()
    completed_run_ids: set[str] = set()
    orphan_order: list[str] = []

    # prev_hash is declared ONCE and carried across every file (oldest archive
    # through current), so the chain is verified continuously rather than reset
    # per file - a missing archive now shows up as a prev_hash break in the next
    # file's first record.
    prev_hash: str | None = None
    # M2-hardening: legacy (record_hash-less) records can only legitimately form
    # the PREFIX of the log - they were written before hashing existed. Once any
    # hashed record appears, a later record without record_hash is provably a
    # tamper (the code always writes record_hash now), so flag it rather than
    # silently letting it re-enter the legacy pool.
    seen_hashed = False
    for file in files:
        if file != path:
            archives_checked += 1
        with open(file, encoding="utf-8") as f:
            for lineno, line in enumerate(f, 1):
                line = line.strip()
                if not line:
                    continue
                total += 1
                try:
                    rec = json.loads(line)
                except json.JSONDecodeError as exc:
                    errors.append(f"{file.name} line {lineno}: invalid JSON: {exc}")
                    continue
                record_hash = rec.get("record_hash")
                prev = rec.get("prev_hash")
                # Legacy = written before hashing existed (no record_hash key at
                # all), and only that is unverifiable - we can't recompute a hash
                # that was never stored. A record that HAS record_hash but lacks
                # prev_hash is NOT legacy: it must still get its record_hash
                # verified, and the missing prev_hash breaks the chain (prev !=
                # prev_hash) unless it is the chain anchor. Treating any missing
                # key as legacy would let a tampered record escape every check
                # (M2) - deleting the hash keys is itself the tamper signal.
                if "record_hash" not in rec:
                    if seen_hashed:
                        # M2-hardening: hashed records already exist in the log,
                        # so a hashed-record-less record after them is a tamper
                        # (the code always writes record_hash), not legacy.
                        errors.append(
                            f"{file.name} line {lineno}: record without record_hash after "
                            "hashed records - tamper"
                        )
                    else:
                        legacy += 1
                    continue
                seen_hashed = True
                chained += 1
                if hashlib.sha256(_canonical(rec).encode()).hexdigest() != record_hash:
                    errors.append(f"{file.name} line {lineno}: record_hash mismatch (record edited)")
                if prev != prev_hash:
                    errors.append(f"{file.name} line {lineno}: prev_hash breaks the chain (record inserted/deleted)")
                prev_hash = record_hash

                # Semantic pairing (RESID-2A) - only for hashed, current-schema
                # records that carry a run_id. Authorizations accumulate across
                # files so a completion in a later file pairs with an earlier
                # archive's authorization (RESID-2C).
                event = rec.get("event")
                run_id = rec.get("run_id")
                if event == "run_authorized" and run_id:
                    authorized_run_ids.add(run_id)
                elif event in ("run_completed", "classification"):
                    # C: classification carries the run's deterministic verdict
                    # (FR-3.3) and is also a result on record - so like a
                    # run_completed, it must have a prior run_authorized for the
                    # same run_id. In the real flow it always follows its
                    # authorization, so a classification flagged here is a tamper
                    # signal (an inserted/edited record), not a live false positive.
                    if run_id:
                        if event == "run_completed":
                            completed_run_ids.add(run_id)
                        if run_id not in authorized_run_ids:
                            suffix = "completion" if event == "run_completed" else "record"
                            errors.append(
                                f"{file.name} line {lineno}: {event} for run_id '{run_id}' "
                                f"has no prior authorization (orphan {suffix})"
                            )
                            orphan_order.append(run_id)

    uncompleted = sorted(authorized_run_ids - completed_run_ids)
    return {
        "valid": not errors, "total": total, "chained": chained, "legacy": legacy,
        "archives_checked": archives_checked,
        "orphan_completions": orphan_order,
        "uncompleted_runs": uncompleted,
        "errors": errors,
    }
