"""SQLite persistence for Phase 4 (FR-7.1) - SQLAlchemy engine setup and
models, replacing storage/results.py's flat-JSON backend. Two tables,
directly isomorphic to the two JSON shapes they replace (metadata.json ->
ApkRecord, run_{run_id}.json -> RunRecord); calibration-relevant scalars
(FR-9.1) are promoted to real, indexed columns so a calibration query
doesn't need to parse JSON in Python, while deep per-match/per-stage
detail stays JSON - there's no present query need for individual evidence
lines. Not the full 7-table schema docs/plans/architecture/high-level-
architecture.md previews for Phases 5-7 (hypotheses/bypass_techniques/
knowledge_corpus) - those tables have nothing to populate them until
those phases exist; building them now would be exactly the premature
design ADR-0002/ADR-0003 argue against.

No schema.py: two tables under 100 lines doesn't earn a second file yet
(ADR-0002) - split out if this genuinely grows. No migration tooling
(Alembic or otherwise) and no JSON->SQLite backfill: the calibration
dataset starts fresh from here, deliberately.
"""

from __future__ import annotations

from pathlib import Path

from sqlalchemy import JSON, Boolean, Float, ForeignKey, Integer, String, create_engine
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column

DB_FILENAME = "results.db"


class Base(DeclarativeBase):
    pass


class ApkRecord(Base):
    """One row per unique APK, keyed by SHA-256 - mirrors metadata.json (FR-1.3)."""

    __tablename__ = "apks"

    sha256: Mapped[str] = mapped_column(String, primary_key=True)
    sha1: Mapped[str | None] = mapped_column(String)
    md5: Mapped[str | None] = mapped_column(String)
    size_bytes: Mapped[int | None] = mapped_column(Integer)
    package_name: Mapped[str | None] = mapped_column(String, index=True)
    version_name: Mapped[str | None] = mapped_column(String)
    version_code: Mapped[str | None] = mapped_column(String)
    min_sdk: Mapped[str | None] = mapped_column(String)
    target_sdk: Mapped[str | None] = mapped_column(String)
    signer_v1_verified: Mapped[bool | None] = mapped_column(Boolean)
    signer_v2_verified: Mapped[bool | None] = mapped_column(Boolean)
    signer_v3_verified: Mapped[bool | None] = mapped_column(Boolean)
    certificate_sha256: Mapped[str | None] = mapped_column(String)
    first_ingested_at: Mapped[str] = mapped_column(String)  # ISO-8601 UTC
    raw_metadata: Mapped[dict] = mapped_column(JSON)  # full ingest evidence - exact roundtrip source of truth


class RunRecord(Base):
    """One row per run_id - mirrors run_{run_id}.json (FR-7.1, FR-9.1).

    Every scalar column here is a deliberate, denormalized copy of a value
    that also lives in one of the *_json blobs below - the blobs stay
    authoritative for exact roundtrips (existing_metadata-style access),
    the columns exist purely so a calibration query can filter/aggregate
    without parsing JSON in Python.
    """

    __tablename__ = "runs"

    run_id: Mapped[str] = mapped_column(String, primary_key=True)
    apk_sha256: Mapped[str] = mapped_column(String, ForeignKey("apks.sha256"), index=True)
    timestamp: Mapped[str] = mapped_column(String, index=True)

    action: Mapped[str | None] = mapped_column(String, index=True)  # ROOT_ONLY/SSL_ONLY/BOTH/NEITHER
    threshold: Mapped[float | None] = mapped_column(Float)
    root_confidence: Mapped[float | None] = mapped_column(Float, index=True)
    root_detected: Mapped[bool | None] = mapped_column(Boolean, index=True)
    ssl_confidence: Mapped[float | None] = mapped_column(Float, index=True)
    ssl_detected: Mapped[bool | None] = mapped_column(Boolean, index=True)

    dynamic_status: Mapped[str | None] = mapped_column(String)  # success/failed/skipped
    dynamic_skip_reason: Mapped[str | None] = mapped_column(String)
    root_bypassed: Mapped[bool | None] = mapped_column(Boolean, index=True)
    ssl_bypassed: Mapped[bool | None] = mapped_column(Boolean, index=True)
    anomaly_flagged: Mapped[bool] = mapped_column(Boolean, default=False)  # hooks-fired-but-block-signal-present contradiction
    correlation_matches: Mapped[bool | None] = mapped_column(Boolean)

    # Phase 4 partial-decompile tolerance (static/decompile.py) - the
    # column that keeps a NEITHER from an incomplete decompile from being
    # treated as equivalent ground truth to a NEITHER from a complete one.
    decompile_completeness: Mapped[str] = mapped_column(String, index=True, default="unknown")  # complete/partial/unknown
    jadx_file_count: Mapped[int | None] = mapped_column(Integer)
    jadx_exit_code: Mapped[int | None] = mapped_column(Integer)

    git_commit: Mapped[str | None] = mapped_column(String)
    target: Mapped[str | None] = mapped_column(String)

    classification_json: Mapped[dict] = mapped_column(JSON)
    verification_json: Mapped[dict | None] = mapped_column(JSON)  # None if dynamic stage skipped
    correlation_json: Mapped[dict | None] = mapped_column(JSON)
    stage_results_json: Mapped[list] = mapped_column(JSON)


def get_engine(analysis_root: Path):
    db_path = Path(analysis_root) / DB_FILENAME
    db_path.parent.mkdir(parents=True, exist_ok=True)
    engine = create_engine(f"sqlite:///{db_path}")
    Base.metadata.create_all(engine)  # idempotent - only creates missing tables
    return engine
