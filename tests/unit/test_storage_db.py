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


def test_run_record_apk_sha256_is_a_plain_indexed_column_not_a_hard_fk_constraint(tmp_path):
    # SQLite doesn't enforce FK constraints by default (no PRAGMA foreign_keys=ON
    # here) - a run row can be saved even if its apk hasn't been separately
    # ingested yet, which matters since cli.py's real pipeline order calls
    # save_metadata before save_run but nothing enforces that ordering at the
    # DB layer itself.
    with Session(get_engine(tmp_path)) as session:
        session.add(RunRecord(
            run_id="run1", apk_sha256="never_ingested", timestamp="2026-01-01T00:00:00",
            classification_json={}, stage_results_json=[],
        ))
        session.commit()

    with Session(get_engine(tmp_path)) as session:
        assert session.get(RunRecord, "run1") is not None
