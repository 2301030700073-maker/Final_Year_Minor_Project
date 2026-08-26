from pathlib import Path

from sqlalchemy import inspect
from sqlalchemy.orm import Session

from storage.db import ApkRecord, DB_FILENAME, RunRecord, get_engine


def test_get_engine_creates_db_file_and_both_tables(tmp_path):
    engine = get_engine(tmp_path)

    assert (tmp_path / DB_FILENAME).exists()
    table_names = set(inspect(engine).get_table_names())
    assert {"apks", "runs"} <= table_names


def test_get_engine_is_idempotent_on_existing_tables(tmp_path):
    get_engine(tmp_path)
    with Session(get_engine(tmp_path)) as session:
        session.add(ApkRecord(sha256="abc", first_ingested_at="2026-01-01T00:00:00", raw_metadata={}))
        session.commit()

    # Calling get_engine again must not wipe out data already committed -
    # create_all() only creates missing tables, never drops/recreates existing ones.
    with Session(get_engine(tmp_path)) as session:
        assert session.get(ApkRecord, "abc") is not None


def test_run_record_apk_sha256_fk_is_enforced_not_just_declared(tmp_path):
    # This previously asserted the DB layer was deliberately permissive (a run
    # could be saved without its apk row, relying on cli.py's save_metadata-
    # before-save_run ordering). The runs.apk_sha256 -> apks.sha256 ForeignKey
    # was declared but unenforced - the schema claimed referential integrity it
    # didn't provide. NFR-1 ("fail loudly, never silently") prefers an orphan to
    # be refused at the DB layer. get_engine now runs PRAGMA foreign_keys=ON per
    # connection, so an insert with a missing parent must raise IntegrityError
    # instead of being silently written.
    import pytest
    from sqlalchemy.exc import IntegrityError

    with Session(get_engine(tmp_path)) as session:
        session.add(RunRecord(
            run_id="run1", apk_sha256="never_ingested", timestamp="2026-01-01T00:00:00",
            classification_json={}, stage_results_json=[],
        ))
        with pytest.raises(IntegrityError):
            session.commit()


def test_get_engine_migrates_column_added_since_db_was_created(tmp_path):
    # Live-caught (ADR-0008): a real on-disk DB created Jul 29 predates the
    # `runs.coverage` column the model gained. create_all() only creates *missing
    # tables*, never ALTERs an existing one - so without a migration every run on
    # a pre-existing DB silently failed to save and calibration lost precision/
    # recall data. Build an old-schema runs table, then confirm get_engine adds
    # the column and a save with coverage persists.
    import sqlite3

    db_path = tmp_path / DB_FILENAME
    conn = sqlite3.connect(db_path)
    # Old schema: exactly the runs columns present before `coverage` (and before
    # any later additions) - no coverage column.
    conn.execute(
        "CREATE TABLE runs ("
        "  run_id VARCHAR PRIMARY KEY,"
        "  apk_sha256 VARCHAR,"
        "  timestamp VARCHAR,"
        "  classification_json JSON NOT NULL,"
        "  stage_results_json JSON NOT NULL"
        ")"
    )
    conn.execute("CREATE TABLE apks (sha256 VARCHAR PRIMARY KEY, first_ingested_at VARCHAR, raw_metadata JSON NOT NULL)")
    conn.commit()
    conn.close()

    engine = get_engine(tmp_path)
    cols = {c["name"] for c in inspect(engine).get_columns("runs")}
    assert "coverage" in cols  # migration added the missing column

    with Session(engine) as session:
        session.add(RunRecord(
            run_id="run_migrated", apk_sha256="abc", timestamp="2026-01-01T00:00:00",
            coverage={"java": "partial", "native": "unscannable", "manifest": "fully_analyzed"},
            classification_json={}, stage_results_json=[],
        ))
        session.commit()

    with Session(engine) as session:
        row = session.get(RunRecord, "run_migrated")
        assert row is not None
        assert row.coverage == {"java": "partial", "native": "unscannable", "manifest": "fully_analyzed"}


def test_get_engine_migrates_apks_columns_added_since_db_was_created(tmp_path):
    # DB-MIG1 (decider-owns-its-guard, same class as the runs case above): the
    # migration must repair EVERY declared table, not just `runs`. save_metadata
    # writes an ApkRecord on every ingest (results.py), so an apks column the model
    # gained after the original identity table - package_name, certificate_sha256,
    # the signer flags - is absent on a pre-existing DB and every save_metadata
    # fails with "no such column: apks.<x>", exactly the failure `runs.coverage`
    # caused. Build an old-schema apks table (the three columns present at first
    # write) and confirm get_engine brings it up to the current model and a write
    # using the added columns round-trips. This FAILS before the fix (migration
    # only touched `runs`, so the ApkRecord insert raises OperationalError).
    import sqlite3

    db_path = tmp_path / DB_FILENAME
    conn = sqlite3.connect(db_path)
    conn.execute("CREATE TABLE apks (sha256 VARCHAR PRIMARY KEY, first_ingested_at VARCHAR, raw_metadata JSON NOT NULL)")
    # A minimal runs table too, so get_engine's runs migration is a distinct no-op
    # from the apks one under test (both tables exist -> create_all creates neither).
    conn.execute(
        "CREATE TABLE runs ("
        "  run_id VARCHAR PRIMARY KEY, apk_sha256 VARCHAR, timestamp VARCHAR,"
        "  classification_json JSON NOT NULL, stage_results_json JSON NOT NULL)"
    )
    conn.commit()
    conn.close()

    engine = get_engine(tmp_path)
    apks_cols = {c["name"] for c in inspect(engine).get_columns("apks")}
    # columns the model declares that the old two-plus-blob identity table lacked
    assert {"package_name", "certificate_sha256", "signer_v1_verified"} <= apks_cols
    # the declared index on package_name is created too (ALTER ADD COLUMN wouldn't)
    apks_indexes = {row[1] for row in engine.raw_connection().cursor()
                    .execute("PRAGMA index_list(apks)").fetchall()}
    assert "ix_apks_package_name" in apks_indexes

    with Session(engine) as session:
        session.add(ApkRecord(
            sha256="deadbeef", first_ingested_at="2026-01-01T00:00:00", raw_metadata={},
            package_name="com.example.app", certificate_sha256="cafe", signer_v1_verified=True,
        ))
        session.commit()

    with Session(engine) as session:
        row = session.get(ApkRecord, "deadbeef")
        assert row is not None
        assert row.package_name == "com.example.app"
        assert row.certificate_sha256 == "cafe"
        assert row.signer_v1_verified is True
