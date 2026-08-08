"""Authorization attestation + append-only audit log (FR-8, ADR-0005).

Phase 1: a flat, append-only JSONL file. Migrated into a real SQL
`audit_log` table when Phase 4 introduces SQLite for everything else -
see ADR-0005 for why this isn't a database table yet.
"""

from __future__ import annotations

import json
import time
from datetime import datetime, timezone
from pathlib import Path

from common import StageResult

VALID_JUSTIFICATION_PREFIXES = ("OWN_APP", "CTF", "AUTHORIZED_ENGAGEMENT:", "ACADEMIC_TRAINING_TARGET")


def validate_justification(justification: str) -> bool:
    return any(
        justification == prefix or justification.startswith(prefix)
        for prefix in VALID_JUSTIFICATION_PREFIXES
    )


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
                f"{VALID_JUSTIFICATION_PREFIXES} (AUTHORIZED_ENGAGEMENT: takes a suffix id)"
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

    audit_log_path = Path(audit_log_path)
    audit_log_path.parent.mkdir(parents=True, exist_ok=True)
    with open(audit_log_path, "a", encoding="utf-8") as f:
        f.write(json.dumps(record) + "\n")
        f.flush()

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
    audit_log_path = Path(audit_log_path)
    audit_log_path.parent.mkdir(parents=True, exist_ok=True)
    with open(audit_log_path, "a", encoding="utf-8") as f:
        f.write(json.dumps(record) + "\n")
        f.flush()
