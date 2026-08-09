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
import time
from datetime import datetime, timezone
from pathlib import Path

from common import StageResult

# Exact-match categories (no suffix allowed); AUTHORIZED_ENGAGEMENT: is the
# only one that takes a suffix id (see validate_justification).
EXACT_JUSTIFICATIONS = ("OWN_APP", "CTF", "ACADEMIC_TRAINING_TARGET")
AUTHORIZED_ENGAGEMENT_PREFIX = "AUTHORIZED_ENGAGEMENT:"


def validate_justification(justification: str) -> bool:
    if justification in EXACT_JUSTIFICATIONS:
        return True
    if justification.startswith(AUTHORIZED_ENGAGEMENT_PREFIX):
        # Requires a non-blank suffix id, not a bare prefix (LIM-C). This is
        # deliberate *self-attestation*: the id is operator-supplied and not
        # validated against an engagement registry - that is a documented
        # scope decision, not a bug, because there is no registry to validate
        # against in this single-operator tool. We only reject an empty id.
        return len(justification.strip()) > len(AUTHORIZED_ENGAGEMENT_PREFIX)
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


def _append_audit_record(audit_log_path: Path, record: dict) -> None:
    """Append one hash-chained record with an fsync (A4: flush() alone only
    reaches the OS page cache; a crash right after would silently drop it)."""
    audit_log_path = Path(audit_log_path)
    audit_log_path.parent.mkdir(parents=True, exist_ok=True)
    record["prev_hash"] = _last_record_hash(audit_log_path)
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
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "apk_hash": apk_hash,
        "justification": justification,
        "operator": operator,
        "tool_version": tool_version,
        "git_commit": git_commit,
    }
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
) -> None:
    """Append an audit line for an ingest that failed before an authorization
    record could be written. ADR-0005 demands *every* analysis attempt be
    traceable; cli.py runs ingest before record_authorization so the log can
    carry the real hash, but that ordering silently dropped failed ingests.
    This keeps the attempt on record (with the hash if it was computed) so a
    failed run isn't invisible. Not gated on justification validity - logging
    a failed attempt is the whole point, and we still record who tried.
    """
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
    _append_audit_record(audit_log_path, record)


def verify_audit_log(audit_log_path: Path) -> dict:
    """Re-derive the hash chain and report integrity. Returns a dict and never
    raises on corrupt content - it collects every error it finds. Records
    written before hashing existed are counted as `legacy` (unchainable) and
    don't fail the check on their own."""
    path = Path(audit_log_path)
    if not path.is_file():
        return {"valid": True, "total": 0, "chained": 0, "legacy": 0, "errors": []}

    errors: list[str] = []
    total = chained = legacy = 0
    prev_hash: str | None = None

    with open(path, encoding="utf-8") as f:
        for lineno, line in enumerate(f, 1):
            line = line.strip()
            if not line:
                continue
            total += 1
            try:
                rec = json.loads(line)
            except json.JSONDecodeError as exc:
                errors.append(f"line {lineno}: invalid JSON: {exc}")
                continue
            record_hash = rec.get("record_hash")
            prev = rec.get("prev_hash")
            # Legacy = written before hashing existed (no record_hash key at
            # all). The first hashed record legitimately has prev_hash=None -
            # that's the chain anchor, not a legacy record - so it still gets
            # its record_hash verified.
            if "record_hash" not in rec or "prev_hash" not in rec:
                legacy += 1
                continue
            chained += 1
            if hashlib.sha256(_canonical(rec).encode()).hexdigest() != record_hash:
                errors.append(f"line {lineno}: record_hash mismatch (record edited)")
            if prev != prev_hash:
                errors.append(f"line {lineno}: prev_hash breaks the chain (record inserted/deleted)")
            prev_hash = record_hash

    return {"valid": not errors, "total": total, "chained": chained, "legacy": legacy, "errors": errors}
