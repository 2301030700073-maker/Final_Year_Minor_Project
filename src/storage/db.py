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

from sqlalchemy import JSON, Boolean, Float, ForeignKey, Integer, String, create_engine, event, inspect, text
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
    threshold: Mapped[float | None] = mapped_column(Float)  # root decision threshold
    ssl_threshold: Mapped[float | None] = mapped_column(Float)
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

    # ADR-0008 item 10 (G1): per-surface coverage map {surface: fully_analyzed|
    # partial|unscannable} for java/native/manifest, persisted per run so the
    # report and calibration both read the same bound instead of each deriving
    # its own. JSON - no calibration query needs to filter on it, it is a
    # per-run bound to report/exclude against.
    coverage: Mapped[dict | None] = mapped_column(JSON)

    # A3: the run-local annotations that explain WHY a surface in `coverage` above
    # is bounded - dex_attribution_degraded, dart_aot_libs, jni_bindings,
    # unaccounted_loads, dynamic_loads, js_evidence, webview_sites. Persisted so a
    # regenerated report (re-attribute -> _regenerate_report) reproduces the cause
    # sections instead of dropping them; an absent cause section must never read as
    # "cause absent" (ADR-0006). JSON, not scalar columns: exactly like `coverage`
    # these are per-run report detail with no calibration query need, so they obey
    # this table's rule of promoting only calibration filters to real columns. NULL
    # on runs written before this column existed (cause unrecoverable there, which
    # _regenerate_report detects to keep the annotation-loss disclosure honest).
    coverage_causes: Mapped[dict | None] = mapped_column(JSON)

    git_commit: Mapped[str | None] = mapped_column(String)
    target: Mapped[str | None] = mapped_column(String)
    # Authoritative app identity, denormalized from apks.package_name so a run
    # row carries it without the join. `target` above is an operator-supplied
    # *label* (which past runs set inconsistently - e.g. PropertyGuru recorded
    # as 'uncrackable1'); package_name is derived from the APK manifest and is
    # the reliable key for consumers. (F1)
    package_name: Mapped[str | None] = mapped_column(String, index=True)
    # Item 1 (F3): per-category machine-visible qualifier - True when a DETECTED
    # verdict's governing evidence is entirely recognized bundled-SDK code, so a
    # consumer reading the denormalized columns doesn't mistake it for the app's
    # own implementation. Populated from root_attribution/ssl_attribution at save
    # and backfilled by re-attribute. This is a CONSUMER-VISIBLE annotation only
    # (ADR-0010): the detection is real (the code is present in the shipped
    # binary and affects the app) and Tier-2 classification is deliberately
    # unchanged - the flag never requalifies a detection.
    root_all_third_party: Mapped[bool | None] = mapped_column(Boolean, index=True)
    ssl_all_third_party: Mapped[bool | None] = mapped_column(Boolean, index=True)
    # Item 3: persist the manifest read and obfuscation level so re-attribute's
    # report regeneration is faithful (Debuggable/NSC lines, R8 caveat) instead
    # of dropping them. None on runs that predate persistence (unrecoverable).
    manifest_json: Mapped[dict | None] = mapped_column(JSON)
    obfuscation_level: Mapped[str | None] = mapped_column(String)

    classification_json: Mapped[dict] = mapped_column(JSON)
    verification_json: Mapped[dict | None] = mapped_column(JSON)  # None if dynamic stage skipped
    correlation_json: Mapped[dict | None] = mapped_column(JSON)
    # Honest reason a report's correlation line is "Not evaluated" when dynamic
    # RAN but no static/dynamic correlation was produced - distinct from
    # dynamic_skip_reason (dynamic never ran). Persisted so a REGENERATED report
    # renders the real reason instead of the false "dynamic stage skipped".
    correlation_skip_reason: Mapped[str | None] = mapped_column(String)
    stage_results_json: Mapped[list] = mapped_column(JSON)


def get_engine(analysis_root: Path):
    db_path = Path(analysis_root) / DB_FILENAME
    db_path.parent.mkdir(parents=True, exist_ok=True)
    # NFR-1: runs.apk_sha256 -> apks.sha256 is declared but SQLite enforces
    # foreign keys only when PRAGMA foreign_keys=ON runs on each connection (it
    # is OFF by default). Without this, a save_run whose apks row is missing
    # silently writes an orphan instead of erroring. Enable it per-connection so
    # the declared referential integrity is actually enforced.
    engine = create_engine(f"sqlite:///{db_path}")

    @event.listens_for(engine, "connect")
    def _enforce_foreign_keys(dbapi_connection, _connection_record):
        # Runs on every new pooled connection - FK enforcement is per-connection,
        # not per-database.
        cursor = dbapi_connection.cursor()
        cursor.execute("PRAGMA foreign_keys=ON")
        cursor.close()

    Base.metadata.create_all(engine)  # idempotent - only creates missing tables
    _migrate_schema(engine)  # ...but create_all never adds columns to existing tables
    return engine


def _migrate_schema(engine) -> None:
    """Bring an on-disk DB created by an older model into sync with the current
    one. `create_all` only creates *missing tables* - it never ALTERs an existing
    table, so a column the model gained since the DB was first written is absent
    and every save fails (live-caught: `runs.coverage` added by ADR-0008). This is
    idempotent: we read the real columns via the inspector and ALTER ADD COLUMN
    only those the model declares but the table lacks. No-op on a fresh DB.

    Covers EVERY table the model declares - both `apks` and `runs`, and any table a
    future phase adds - not just `runs`. `save_metadata` writes an ApkRecord on
    every ingest (results.py), so a column added to ApkRecord would break saves on
    a pre-existing DB with exactly the "no such column" failure the coverage column
    caused on `runs`. The migration owns its own general contract here rather than
    leaning on the unstated invariant that only RunRecord ever grows
    (decider-owns-its-guard) - it iterates the model's declared tables instead of
    hardcoding one. Table CREATION stays create_all's job: a declared table not yet
    on disk is skipped (this step only ADDs columns/indexes to existing tables, the
    strictly safe direction), so calling this directly on a partially-built DB
    (e.g. only `runs` created) never errors on the absent table.
    """
    with engine.begin() as conn:
        insp = inspect(conn)
        on_disk = set(insp.get_table_names())
        for tbl in Base.metadata.sorted_tables:
            if tbl.name not in on_disk:
                continue  # create_all owns creation; we only extend existing tables
            existing = {c["name"] for c in insp.get_columns(tbl.name)}
            for col in tbl.columns:
                if col.name in existing:
                    continue
                col_type = col.type.compile(engine.dialect)
                conn.execute(text(f"ALTER TABLE {tbl.name} ADD COLUMN {col.name} {col_type}"))
            # ALTER ADD COLUMN above never creates the indexes a fresh create_all
            # would (e.g. ix_runs_package_name); a migrated DB would silently miss
            # them. Create any index the model declares that isn't already present.
            index_names = {row[1] for row in conn.exec_driver_sql(f"PRAGMA index_list({tbl.name})")}
            for ix in tbl.indexes:
                if ix.name not in index_names:
                    cols = ", ".join(c.name for c in ix.columns)
                    conn.execute(text(f"CREATE INDEX {ix.name} ON {tbl.name} ({cols})"))
