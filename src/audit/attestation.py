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
from contextlib import contextmanager
from datetime import datetime, timezone
from pathlib import Path

try:  # POSIX advisory locking. Guarded so the module still imports (and every
    # pure test still runs) on a non-POSIX machine - ADR-0007: pure-Python logic
    # must be unit-testable anywhere, with no assumption about the host.
    import fcntl
except ImportError:  # pragma: no cover - only on a non-POSIX host
    fcntl = None  # type: ignore[assignment]

from common import StageResult, elapsed_ms

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


# Per-path tail cache (LIM-B), held as (file_size_when_cached, tail_record_hash).
# Caching the tail turns a whole-file rescan on every append (O(n²) over a run)
# into one read per path. The SIZE is the validity witness: this log is
# append-only, so a size still equal to the cached one proves no other writer has
# appended since and the cached hash is provably still the tail; a differing size
# (another process appended, or the file was rotated/replaced) invalidates the
# entry and forces a fresh read.
#
# The witness is what makes the cache safe. Keyed on path alone it assumed
# single-process access ("the CLI is single-process and only ever appends"), so a
# second concurrent CLI holding a warm cache would chain its record onto a tail
# that had already been superseded - producing two records with the same
# prev_hash, a forked chain, which is precisely the tampering shape the hash
# chain exists to make detectable (ADR-0005).
_tail_by_path: dict[str, tuple[int, str | None]] = {}

_NO_FILE_SIZE = -1  # sentinel: the log does not exist yet


def _log_size(audit_log_path: Path) -> int:
    try:
        return audit_log_path.stat().st_size
    except FileNotFoundError:
        return _NO_FILE_SIZE


def _last_record_hash(audit_log_path: Path) -> str | None:
    """Hash of the last record, to chain the next one onto (None when empty)."""
    key = str(audit_log_path)
    cached = _tail_by_path.get(key)
    if cached is not None and cached[0] == _log_size(audit_log_path):
        return cached[1]

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
            # Witness the size of exactly the bytes just read, from the same fd,
            # so a cached size can never describe a file state other than the
            # one this hash was derived from.
            _tail_by_path[key] = (os.fstat(f.fileno()).st_size, prev_hash)
            return prev_hash
    except FileNotFoundError:
        _tail_by_path[key] = (_NO_FILE_SIZE, None)
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
            _tail_by_path.pop(str(audit_log_path), None)
            return tail_hash
    except FileNotFoundError:
        pass  # first record: nothing to rotate
    return None


@contextmanager
def _exclusive_append_lock(fileobj):
    """Serialize appenders on the log file itself, so read-tail -> compute-hash ->
    write is one atomic critical section across processes.

    The lock is taken on the log's own append fd rather than a sidecar `.lock`
    file for two reasons: it needs no extra file (the audit directory stays
    exactly the log plus its archives - a property the rotation tests assert), and
    it cannot be defeated by a stale lock file left behind by a killed process.
    `flock` is advisory and released automatically if the holder dies, so a
    crashed run cannot wedge the log.

    A host without `fcntl` yields unlocked: locking is a concurrency hardening,
    and refusing to append there would break the audit log on a platform where
    the single-process path was always correct anyway."""
    if fcntl is None:  # pragma: no cover - only on a non-POSIX host
        yield
        return
    fcntl.flock(fileobj.fileno(), fcntl.LOCK_EX)
    try:
        yield
    finally:
        fcntl.flock(fileobj.fileno(), fcntl.LOCK_UN)


def _append_audit_record(audit_log_path: Path, record: dict) -> None:
    """Append one hash-chained record with an fsync (A4: flush() alone only
    reaches the OS page cache; a crash right after would silently drop it), inside
    an exclusive lock so two concurrent appenders cannot chain onto the same tail
    and fork the chain."""
    audit_log_path = Path(audit_log_path)
    audit_log_path.parent.mkdir(parents=True, exist_ok=True)
    anchor = _maybe_rotate(audit_log_path)
    with open(audit_log_path, "a", encoding="utf-8") as f:
        with _exclusive_append_lock(f):
            # Read the tail INSIDE the lock and chain onto what is actually on
            # disk. Hashing before the lock (as this did) meant a tail read
            # moments earlier could already be superseded by another process's
            # append, and both records would carry the same prev_hash. The
            # size-witnessed cache keeps this O(1) whenever this process is in
            # fact the only writer - the normal single-CLI case.
            on_disk_tail = _last_record_hash(audit_log_path)
            # A rotation hands back the archived file's tail hash to anchor the
            # fresh file's FIRST record, keeping the chain continuous across the
            # boundary. It applies only while that fresh file is still empty: if
            # a concurrent appender already landed a record in it, that record is
            # the real tail, and anchoring past it would fork the chain.
            record["prev_hash"] = on_disk_tail if on_disk_tail is not None else anchor
            record["record_hash"] = hashlib.sha256(_canonical(record).encode()).hexdigest()
            f.write(json.dumps(record, sort_keys=True) + "\n")
            f.flush()
            os.fsync(f.fileno())
            # Re-witness under the lock so the next append chains in O(1).
            _tail_by_path[str(audit_log_path)] = (
                os.fstat(f.fileno()).st_size,
                record["record_hash"],
            )


def _append_outcome(
    audit_log_path: Path,
    record: dict,
    start: float,
) -> StageResult:
    """Shared append-and-map tail for every record_* function (dedup): appends
    the record to the hash-chained audit log and maps the outcome to a
    StageResult (FR-8 consistency) - success with the record as evidence, or
    failed when a corrupt log made the append impossible (LIM-D/RESID-2D),
    never a raw traceback."""
    try:
        _append_audit_record(audit_log_path, record)
    except ValueError as exc:
        return StageResult(
            stage="audit", status="failed", evidence={}, error=str(exc),
            duration_ms=elapsed_ms(start),
        )
    return StageResult(
        stage="audit", status="success", evidence=record,
        duration_ms=elapsed_ms(start),
    )


def _invalid_justification_error(justification: str) -> str:
    return (
        f"invalid --justification '{justification}' - must be one of "
        f"{', '.join(EXACT_JUSTIFICATIONS)} or {AUTHORIZED_ENGAGEMENT_PREFIX}<id>"
    )


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
            error=_invalid_justification_error(justification),
            duration_ms=elapsed_ms(start),
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
    return _append_outcome(audit_log_path, record, start)


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
    force_dynamic: bool = False,
    effective_dynamic_action: str | None = None,
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
    # ADR-0005: when an operator forced the dynamic stage over a NEITHER static
    # verdict (--force-dynamic), the IMMUTABLE log itself must say so - not just the
    # DB/report. `action` above stays the true static verdict (never promoted);
    # these fields record WHY a bypass was deployed anyway and which action drove
    # synthesis/deployment. Emitted only on a forced run, so a normal run's outcome
    # record is byte-identical to before this feature.
    if force_dynamic:
        record["force_dynamic"] = True
        record["effective_dynamic_action"] = effective_dynamic_action
    return _append_outcome(audit_log_path, record, start)


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
    return _append_outcome(audit_log_path, record, start)


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
    return _append_outcome(audit_log_path, record, start)


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
            error=_invalid_justification_error(justification),
            duration_ms=elapsed_ms(start),
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
    return _append_outcome(audit_log_path, record, start)


def authorization_for_run(audit_log_path: Path, run_id: str) -> dict | None:
    """Recover a run's original authorization (operator + justification) from the
    immutable audit log by run_id, for faithful report regeneration.

    ADR-0005 makes the audit log - not the mutable RunRecord - the authoritative,
    tamper-evident home of a run's authorization. A report regenerated from stored
    data (re-attribute -> _regenerate_report) therefore sources its "Authorized by"
    line here, rather than from a duplicated DB copy that re-attribute itself could
    drift. Scans the current log AND rotated archives (RESID-2C naming, oldest to
    newest, same discovery verify_audit_log uses), so a run whose authorization has
    since rotated out of the live file is still recoverable; the newest matching
    record wins. Returns {"operator": ..., "justification": ...} for the matching
    run_authorized event, or None when none is found - a genuinely unrecoverable
    authorization the caller must disclose explicitly, never omit silently (NFR-1).
    Never raises: a missing directory or a corrupt line is skipped, mirroring
    verify_audit_log's "never raises" contract."""
    if not run_id:
        return None
    path = Path(audit_log_path)
    archive_re = re.compile(re.escape(path.name) + r"\.\d{8}T\d{6}Z$")
    try:
        archives = sorted(
            p for p in path.parent.iterdir()
            if archive_re.match(p.name) and p.is_file()
        )
    except FileNotFoundError:
        archives = []
    files = archives + ([path] if path.is_file() else [])
    found: dict | None = None
    for file in files:
        try:
            with open(file, encoding="utf-8") as f:
                for line in f:
                    line = line.strip()
                    if not line:
                        continue
                    try:
                        rec = json.loads(line)
                    except json.JSONDecodeError:
                        # A corrupt line is verify_audit_log's business to flag; here
                        # it is simply not a recoverable authorization - skip it.
                        continue
                    if rec.get("event") == "run_authorized" and rec.get("run_id") == run_id:
                        # Keep scanning newer files so the most recent authorization
                        # for this id wins (ids are unique in practice; defensive).
                        found = {
                            "operator": rec.get("operator"),
                            "justification": rec.get("justification"),
                        }
        except OSError:
            continue
    return found


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
    #
    # The audit directory may not exist yet: verify run before any analysis has
    # created outputs/ (OUTPUTS_ROOT is relative, made only on the first append),
    # or a --audit-log path pointing into a not-yet-existent dir. That is not
    # corruption - nothing was ever logged - so a missing parent yields no
    # archives and, with no current file either, falls through to the clean-empty
    # result below. Catch it rather than let iterdir() raise, honoring this
    # function's documented "never raises" contract (a missing dir is
    # indistinguishable from an empty one, which already returns valid-empty; a
    # fully deleted trail with no retained anchor is undetectable by any
    # self-contained hash chain either way - an ADR-0005 boundary, not weakened
    # here).
    try:
        archives = sorted(
            p for p in path.parent.iterdir() if archive_re.match(p.name) and p.is_file()
        )
    except FileNotFoundError:
        archives = []
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
    # Every record_hash seen so far, so a chain break can be classified: a prev_hash
    # that re-points to an EARLIER record (a fork - a concurrent write onto a stale
    # tail) reads differently from one that matches nothing seen (insert/delete).
    seen_hashes: set[str] = set()
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
                    if prev in seen_hashes:
                        # Fork: this record chained onto an EARLIER record's hash
                        # rather than the on-disk tail - the signature of two runs
                        # appending concurrently where one wrote onto a stale cached
                        # tail (the bug _append_audit_record fixed by reading the
                        # tail under flock). Still a broken chain and still fails the
                        # check; the cause is named accurately instead of mislabeled
                        # "inserted/deleted" when nothing was inserted or deleted.
                        errors.append(
                            f"{file.name} line {lineno}: prev_hash forks the chain - points to an "
                            "earlier record, not the tail (likely a concurrent write onto a stale tail)"
                        )
                    else:
                        errors.append(
                            f"{file.name} line {lineno}: prev_hash breaks the chain "
                            "(record inserted, deleted, or reordered)"
                        )
                prev_hash = record_hash
                seen_hashes.add(record_hash)

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
