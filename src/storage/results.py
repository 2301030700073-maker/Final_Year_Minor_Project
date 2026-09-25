"""SQLite-backed persistence (FR-7.1). Same public interface as Phase 1-3's
flat-JSON version - this module is the stable boundary NFR-14 requires,
db.py's models/engine are the swappable internals behind it. cli.py's
existing save_metadata/existing_metadata/save_run call sites need no
changes.
"""

from __future__ import annotations

from dataclasses import asdict, is_dataclass
from datetime import datetime, timezone
from enum import Enum
from pathlib import Path

from common import gate_all_third_party

from sqlalchemy import select
from sqlalchemy.orm import Session

from calibration.types import RunRow
from storage.db import ApkRecord, DB_FILENAME, RunRecord, get_engine


def _to_serializable(obj):
    if is_dataclass(obj) and not isinstance(obj, type):
        obj = asdict(obj)
    if isinstance(obj, Enum):
        return obj.value
    if isinstance(obj, dict):
        return {k: _to_serializable(v) for k, v in obj.items()}
    if isinstance(obj, list):
        return [_to_serializable(v) for v in obj]
    return obj


def existing_metadata(analysis_root: Path, apk_hash: str) -> dict | None:
    """FR-1.3: re-running against an already-ingested APK references the existing record."""
    with Session(get_engine(analysis_root)) as session:
        record = session.get(ApkRecord, apk_hash)
        return record.raw_metadata if record else None


def save_metadata(analysis_root: Path, apk_hash: str, metadata: dict) -> Path:
    metadata = _to_serializable(metadata)
    hashes = metadata.get("hashes") or {}
    package = metadata.get("package") or {}
    signer = metadata.get("signer") or {}

    with Session(get_engine(analysis_root)) as session:
        record = session.get(ApkRecord, apk_hash)
        # Snapshot the prior evidence blob before any overwrite, so the
        # raw_metadata loss guard below compares against what was recorded. The
        # scalar loop never touches raw_metadata, but capturing it here keeps the
        # guard's intent local and obvious.
        old_raw = dict(record.raw_metadata) if record is not None and record.raw_metadata else {}
        if record is None:
            record = ApkRecord(sha256=apk_hash, first_ingested_at=datetime.now(timezone.utc).isoformat())
            session.add(record)
        fields = {
            "sha1": hashes.get("sha1"),
            "md5": hashes.get("md5"),
            "size_bytes": metadata.get("size_bytes"),
            "package_name": package.get("package_name"),
            "version_name": package.get("version_name"),
            "version_code": package.get("version_code"),
            "min_sdk": package.get("min_sdk"),
            "target_sdk": package.get("target_sdk"),
            "signer_v1_verified": signer.get("v1_verified"),
            "signer_v2_verified": signer.get("v2_verified"),
            "signer_v3_verified": signer.get("v3_verified"),
            "certificate_sha256": signer.get("certificate_sha256"),
        }
        # NFR-1 (Finding C): on re-ingest of the same sha256, refuse to silently
        # clobber a field the prior record already carried with None. The APK is
        # keyed by its hash - identity is immutable - so a re-ingest that drops a
        # previously-good value (toolchain drift, a signer-verify step partially
        # failing) is a regression, not a legitimate update. Upserts to a new
        # non-None value still apply (test_save_metadata_upserts); only loss to
        # None is refused, loudly.
        for field, new_value in fields.items():
            old_value = getattr(record, field)
            if old_value is not None and new_value is None:
                raise ValueError(
                    f"re-ingest of APK '{apk_hash}' would drop previously-recorded "
                    f"'{field}' (was {old_value!r}, new ingest omits it) - refusing "
                    "to silently lose existing evidence; investigate the ingest "
                    "before retrying"
                )
            setattr(record, field, new_value)
        # NFR-1 (Finding C, extended to the evidence blob): the loop above guards
        # only the promoted scalar columns. raw_metadata is the authoritative
        # roundtrip source of truth and carries evidence sections that are NOT
        # promoted to a column (permissions, native libraries, and any future
        # ingest detail); assigning it below overwrites the blob wholesale, so a
        # lossy re-ingest that leaves the scalars intact but omits such a section
        # silently drops it - exactly the loss the scalar guard refuses, one layer
        # down and invisible to it. Refuse it the same way, for the same reason:
        # a top-level section the prior record carried (non-empty) that the new
        # ingest omits (absent or empty) is a regression, not a legitimate update.
        # Sections that feed a promoted column (hashes/package/signer) are already
        # caught transitively by the loop above; this closes the un-promoted ones.
        # Checked at top-level-key granularity to match the flat altitude of the
        # scalar guard - a value shrinking WITHIN a section is not inspected here
        # (the nested fields that matter are promoted and already guarded). A
        # superset or value-updating re-ingest still applies unchanged.
        for key, old_value in old_raw.items():
            if not old_value:
                continue  # the prior section was itself empty/absent - nothing to lose
            if not metadata.get(key):
                raise ValueError(
                    f"re-ingest of APK '{apk_hash}' would drop previously-recorded "
                    f"evidence section '{key}' (was present, new ingest omits it) - "
                    "refusing to silently lose existing evidence; investigate the "
                    "ingest before retrying"
                )
        record.raw_metadata = metadata
        session.commit()

    return Path(analysis_root) / DB_FILENAME


def save_run(analysis_root: Path, apk_hash: str, run_id: str, run_data: dict) -> Path:
    run_data = _to_serializable(run_data)
    classification = run_data.get("classification") or {}
    verification = run_data.get("verification")  # None if dynamic stage skipped - kept as None, not coerced to {}
    correlation = run_data.get("correlation")
    correlation_skip_reason = run_data.get("correlation_skip_reason")
    stage_results = run_data.get("stage_results") or []

    root = classification.get("root") or {}
    ssl = classification.get("ssl") or {}
    # Gate the all_third_party qualifier on detected in the persisted
    # classification_json itself (ADR-0010) - not just the denormalized column -
    # so a non-detected category can never carry the flag in JSON/report either.
    # Shared gate lives in common (storage stays ignorant of report/).
    _ra = classification.get("root_attribution")
    if _ra is not None:
        classification["root_attribution"] = gate_all_third_party(_ra, bool(root.get("detected")))
    _sa = classification.get("ssl_attribution")
    if _sa is not None:
        classification["ssl_attribution"] = gate_all_third_party(_sa, bool(ssl.get("detected")))
    # Safe-.get() views only - verification/correlation themselves stay
    # None (not coerced to {}) for what actually gets persisted below, so
    # "dynamic stage skipped" round-trips as a real NULL, not an empty dict.
    verification_fields = verification or {}
    correlation_fields = correlation or {}

    decompile_stage = next((s for s in stage_results if s.get("stage") == "decompile"), {})
    decompile_evidence = decompile_stage.get("evidence") or {}
    dynamic_stage = next((s for s in stage_results if s.get("stage") == "dynamic"), {})
    dynamic_evidence = dynamic_stage.get("evidence") or {}
    # The live path computes this under a status gate (cli.py: only a `skipped`
    # stage yields a reason, so a FAILED dynamic setup does not) and passes the
    # result explicitly - mirroring correlation_skip_reason above. Reading it off
    # the stage's evidence instead took the reason whenever one was present, and
    # the setup-failure path records one, so `failed` rows carried the failure
    # text in a column whose meaning is "dynamic never ran" and a regenerated
    # report rendered a stage that was attempted as one that never was. The
    # derivation stays as the fallback for a caller that passes no key.
    dynamic_skip_reason = run_data.get("dynamic_skip_reason", dynamic_evidence.get("reason"))

    evidence_lines = verification_fields.get("evidence_lines") or {}

    with Session(get_engine(analysis_root)) as session:
        session.merge(RunRecord(
            run_id=run_id,
            apk_sha256=apk_hash,
            timestamp=datetime.now(timezone.utc).isoformat(),
            action=classification.get("action"),
            # RESID-4G: the single `threshold` field was removed from
            # ClassificationResult (it was redundant with root_threshold/
            # ssl_threshold and only ever carried root). The DB column keeps
            # persisting the root decision threshold to preserve its meaning.
            threshold=classification.get("root_threshold"),
            # SSL threshold promoted alongside root so a calibration query can
            # filter/aggregate by the threshold that governed each run without
            # parsing classification_json - parity with the root column.
            ssl_threshold=classification.get("ssl_threshold"),
            root_confidence=root.get("confidence"),
            root_detected=root.get("detected"),
            ssl_confidence=ssl.get("confidence"),
            ssl_detected=ssl.get("detected"),
            dynamic_status=dynamic_stage.get("status"),
            dynamic_skip_reason=dynamic_skip_reason,
            root_bypassed=verification_fields.get("root_bypassed"),
            ssl_bypassed=verification_fields.get("ssl_bypassed"),
            anomaly_flagged="anomaly" in evidence_lines,
            correlation_matches=correlation_fields.get("matches"),
            decompile_completeness=decompile_evidence.get("decompile_completeness", "unknown"),
            jadx_file_count=decompile_evidence.get("jadx_file_count"),
            jadx_exit_code=decompile_evidence.get("jadx_exit_code"),
            # ADR-0008 (G1): persist the per-surface coverage map from the run
            # payload (coverage.py's per_surface_coverage), so report and
            # calibration read the same bound. None when the run carried none.
            coverage=run_data.get("coverage"),
            # A3: persist the run-local cause annotations for the coverage bounds so
            # a regenerated report reproduces them. Already run through
            # _to_serializable above, so nested JNIBinding dataclasses (and any
            # other dataclass items) are plain JSON dicts/lists here. None when the
            # run carried none.
            coverage_causes=run_data.get("coverage_causes"),
            git_commit=run_data.get("git_commit"),
            # ADR-0022: the corpus identity, written as recorded. None is a real
            # value here (a run that predates the field), so it is stored as NULL
            # rather than re-derived - there is nothing to re-derive it from.
            signature_corpus=run_data.get("signature_corpus"),
            # ADR-0028: the device environment the run executed against, written
            # as read. None is a real value here (a run that predates the field,
            # or one that never touched a device), so it is stored as NULL rather
            # than reconstructed - there is nothing to reconstruct it from.
            device_environment=run_data.get("device_environment"),
            target=run_data.get("target"),
            package_name=run_data.get("package_name"),
            # Item 1: surface the bundled-SDK qualifier on the denormalized row
            # so calibration/consumers see it without parsing classification_json.
            # Gated on detected: the qualifier only meaningfully annotates a
            # DETECTED verdict (ADR-0010) - a non-detected category must never
            # carry it, or a consumer would infer a detection that doesn't exist.
            root_all_third_party=(
                (classification.get("root_attribution") or {}).get("all_third_party")
                if root.get("detected") else False
            ),
            ssl_all_third_party=(
                (classification.get("ssl_attribution") or {}).get("all_third_party")
                if ssl.get("detected") else False
            ),
            # Item 3: persist the manifest read + obfuscation level so report
            # regeneration stays faithful (None on runs that predate this).
            manifest_json=run_data.get("manifest"),
            obfuscation_level=run_data.get("obfuscation_level"),
            # ADR-0026: the rule behind that level, saved beside it so a
            # regenerated report names the rule the ANALYSIS fired rather than the
            # one the rendering code would otherwise assume.
            obfuscation_reason=run_data.get("obfuscation_reason"),
            classification_json=classification,
            verification_json=verification,
            correlation_json=correlation,
            correlation_skip_reason=correlation_skip_reason,
            stage_results_json=stage_results,
        ))
        session.commit()

    return Path(analysis_root) / DB_FILENAME


def load_runs_for_calibration(analysis_root: Path) -> list[RunRow]:
    """The only place that translates SQLAlchemy RunRecord rows into
    calibration's plain, dependency-free RunRow dataclass (FR-9.1) - keeps
    src/calibration/ ignorant of SQLAlchemy entirely."""
    with Session(get_engine(analysis_root)) as session:
        records = session.scalars(select(RunRecord)).all()
        return [
            RunRow(
                apk_hash=r.apk_sha256,
                run_id=r.run_id,
                action=r.action,
                root_confidence=r.root_confidence,
                root_detected=r.root_detected,
                root_bypassed=r.root_bypassed,
                ssl_confidence=r.ssl_confidence,
                ssl_detected=r.ssl_detected,
                ssl_bypassed=r.ssl_bypassed,
                root_all_third_party=bool(r.root_all_third_party),
                ssl_all_third_party=bool(r.ssl_all_third_party),
                decompile_completeness=r.decompile_completeness,
                coverage=r.coverage,
                root_threshold=r.threshold,
                ssl_threshold=r.ssl_threshold,
                timestamp=r.timestamp,
            )
            for r in records
        ]
