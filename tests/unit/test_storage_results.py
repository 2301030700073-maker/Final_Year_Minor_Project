from sqlalchemy.orm import Session

from common import Action, CategoryVerdict, ClassificationResult
from storage.db import RunRecord, get_engine
from storage.results import existing_metadata, load_runs_for_calibration, save_metadata, save_run


def test_save_and_load_metadata_roundtrip(tmp_path):
    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}})

    loaded = existing_metadata(tmp_path, "abc123")

    assert loaded == {"package": {"package_name": "test.app"}}


def test_existing_metadata_returns_none_when_absent(tmp_path):
    assert existing_metadata(tmp_path, "doesnotexist") is None


def test_save_metadata_upserts_rather_than_duplicating(tmp_path):
    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}, "size_bytes": 100})
    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}, "size_bytes": 200})

    loaded = existing_metadata(tmp_path, "abc123")

    assert loaded["size_bytes"] == 200  # updated in place, not duplicated


def test_save_run_serializes_dataclasses_and_enums(tmp_path):
    verdict = CategoryVerdict(confidence=0.9, detected=True, evidence=[])
    classification = ClassificationResult(action=Action.ROOT_ONLY, root=verdict, ssl=verdict)

    # FK enforcement (PRAGMA foreign_keys=ON) is on, so the parent apks row must
    # exist before the run is written - the real flow always save_metadata before
    # save_run (cli.py), so the test models that invariant.
    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}})
    path = save_run(tmp_path, "abc123", "run1", {"classification": classification, "stage_results": []})

    assert path.name == "results.db"
    assert path.exists()
    with Session(get_engine(tmp_path)) as session:
        record = session.get(RunRecord, "run1")
        assert record.action == "ROOT_ONLY"
        assert record.classification_json["action"] == "ROOT_ONLY"
        assert record.classification_json["root"]["confidence"] == 0.9


def test_save_run_gates_all_third_party_on_detected(tmp_path):
    # results.py:105, 110: the persisted classification_json rewrites
    # root_attribution/ssl_attribution all_third_party to be gated on `detected`
    # (ADR-0010) - a non-detected category must never carry the flag in the
    # stored JSON, so a consumer cannot infer a detection that doesn't exist.
    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}})
    classification = {
        "root": {"detected": True, "confidence": 0.9},
        "ssl": {"detected": False, "confidence": 0.1},
        "root_attribution": {"all_third_party": True},
        "ssl_attribution": {"all_third_party": True},
    }
    save_run(tmp_path, "abc123", "run_g", {"classification": classification, "stage_results": []})
    with Session(get_engine(tmp_path)) as session:
        row = session.get(RunRecord, "run_g")
    assert row.classification_json["root_attribution"]["all_third_party"] is True
    assert row.classification_json["ssl_attribution"]["all_third_party"] is False


def test_load_runs_for_calibration_returns_run_rows(tmp_path):
    # results.py:193-195: the RunRecord -> RunRow translation used by the
    # calibration query. Real coverage proved load_runs_for_calibration untested
    # (the sibling tests query RunRecord directly, bypassing this loader).
    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}})
    save_run(tmp_path, "abc123", "run_c", {
        "classification": {"root": {"detected": True, "confidence": 0.9}, "action": "root"},
        "stage_results": [],
    })
    rows = load_runs_for_calibration(tmp_path)
    assert len(rows) == 1
    assert rows[0].run_id == "run_c"
    assert rows[0].apk_hash == "abc123"
    assert rows[0].root_detected is True


def test_save_run_promotes_calibration_fields_to_indexed_columns(tmp_path):
    verdict = CategoryVerdict(confidence=0.9, detected=True, evidence=[])
    classification = ClassificationResult(
        action=Action.ROOT_ONLY, root=verdict, ssl=verdict,
        root_threshold=0.8, ssl_threshold=0.85,
    )

    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}})
    save_run(tmp_path, "abc123", "run1", {"classification": classification, "stage_results": []})

    with Session(get_engine(tmp_path)) as session:
        record = session.get(RunRecord, "run1")
        assert record.root_confidence == 0.9
        assert record.root_detected is True
        assert record.decompile_completeness == "unknown"  # no decompile stage in this fixture
        assert record.root_bypassed is None  # no verification supplied - dynamic stage never ran
        assert record.verification_json is None  # stays a real NULL, not an empty dict
        # Both decision thresholds promoted to columns so a calibration query
        # doesn't need to parse classification_json (parity: root used to be the
        # only one promoted, SSL was JSON-only).
        assert record.threshold == 0.8  # root decision threshold
        assert record.ssl_threshold == 0.85


def test_save_run_records_decompile_completeness_from_stage_results(tmp_path):
    from common import StageResult
    verdict = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    classification = ClassificationResult(action=Action.NEITHER, root=verdict, ssl=verdict)
    stage_results = [StageResult(
        stage="decompile", status="success",
        evidence={"decompile_completeness": "partial", "jadx_file_count": 1563, "jadx_exit_code": 1},
    )]

    save_metadata(tmp_path, "propertyguru", {"package": {"package_name": "com.propertyguru"}})
    save_run(tmp_path, "propertyguru", "run2", {"classification": classification, "stage_results": stage_results})

    with Session(get_engine(tmp_path)) as session:
        record = session.get(RunRecord, "run2")
        assert record.decompile_completeness == "partial"
        assert record.jadx_file_count == 1563


def test_save_run_flags_anomaly_from_verification_evidence_lines(tmp_path):
    verdict = CategoryVerdict(confidence=0.8, detected=True, evidence=[])
    classification = ClassificationResult(action=Action.ROOT_ONLY, root=verdict, ssl=verdict)
    verification = {"root_bypassed": False, "ssl_bypassed": None, "evidence_lines": {"anomaly": "contradiction"}}

    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}})
    save_run(tmp_path, "abc123", "run3", {
        "classification": classification, "verification": verification, "stage_results": [],
    })

    with Session(get_engine(tmp_path)) as session:
        record = session.get(RunRecord, "run3")
        assert record.anomaly_flagged is True


def test_save_run_persists_correlation_skip_reason(tmp_path):
    # Regression: when dynamic RAN but correlation was not attempted (technology
    # hooks-engaged tier), the report's reason must survive persistence so a
    # REGENERATED report renders it instead of the false "dynamic stage
    # skipped". This round-trip (save -> reload) locks the persistence half; the
    # render half is covered in test_report_generator.
    verdict = CategoryVerdict(confidence=0.8, detected=True, evidence=[])
    classification = ClassificationResult(action=Action.SSL_ONLY, root=verdict, ssl=verdict)
    reason = (
        "dynamic used the technology-level hooks-engaged check (no "
        "target-specific success check for this app); correlation requires "
        "a target-specific verification"
    )
    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}})
    save_run(tmp_path, "abc123", "run4", {
        "classification": classification,
        "stage_results": [],
        "correlation_skip_reason": reason,
    })

    with Session(get_engine(tmp_path)) as session:
        record = session.get(RunRecord, "run4")
        assert record.correlation_skip_reason == reason
        # distinct from a genuinely-skipped dynamic stage (which stays None)
        assert record.dynamic_skip_reason is None


def test_save_run_orphan_without_apks_row_fails_loudly(tmp_path):
    # FR-7/NFR-1 (Finding B): runs.apk_sha256 -> apks.sha256 was declared but
    # unenforced - SQLite has PRAGMA foreign_keys=OFF by default, so a run
    # written without its apks row was persisted silently as an orphan. With
    # enforcement on, save_run must fail loudly (IntegrityError) instead.
    import pytest
    from sqlalchemy.exc import IntegrityError
    verdict = CategoryVerdict(confidence=0.8, detected=True, evidence=[])
    classification = ClassificationResult(action=Action.ROOT_ONLY, root=verdict, ssl=verdict)

    with pytest.raises(IntegrityError):
        save_run(tmp_path, "no-such-apk", "orphan", {"classification": classification, "stage_results": []})


def test_save_metadata_reingest_refuses_to_drop_existing_fields(tmp_path):
    # NFR-1 (Finding C): save_metadata blind-overwrote every field on re-ingest,
    # so a less-complete future ingest (toolchain drift / partial signer
    # failure) would silently set previously-good values to None. It now refuses
    # to clobber a recorded value with None - loud ValueError, not silent loss.
    # (Upserts to new non-None values still apply - see
    # test_save_metadata_upserts_rather_than_duplicating.)
    import pytest
    save_metadata(tmp_path, "abc123", {"hashes": {"sha256": "abc123"}, "signer": {"certificate_sha256": "aa:bb"}})
    with pytest.raises(ValueError, match="certificate_sha256"):
        save_metadata(tmp_path, "abc123", {"hashes": {"sha256": "abc123"}, "signer": {}})


def test_migrate_schema_adds_missing_column_and_index(tmp_path):
    # _migrate_schema: create_all never ALTERs an existing table, so a column the
    # model gained since the DB was first written is absent and every save fails
    # (live-caught: `runs.coverage` added by ADR-0008). This must add exactly the
    # missing column + any index create_all would have made, idempotently, and
    # no-op on an already-current schema. Had zero coverage.
    from sqlalchemy import create_engine, inspect, text
    from storage.db import RunRecord, _migrate_schema

    engine = create_engine(f"sqlite:///{tmp_path}/old.db")
    RunRecord.__table__.create(engine)

    # simulate an OLDER model: drop the coverage column and one index
    with engine.begin() as conn:
        conn.exec_driver_sql("ALTER TABLE runs DROP COLUMN coverage")
        conn.exec_driver_sql("DROP INDEX ix_runs_package_name")
    insp_before = inspect(engine)
    before_cols = {c["name"] for c in insp_before.get_columns("runs")}
    assert "coverage" not in before_cols

    _migrate_schema(engine)  # brings the DB up to the current model

    insp = inspect(engine)
    cols = {c["name"] for c in insp.get_columns("runs")}
    assert "coverage" in cols
    idx = {row[1] for row in engine.connect().exec_driver_sql("PRAGMA index_list(runs)")}
    assert "ix_runs_package_name" in idx

    # idempotent: a second run adds nothing and does not raise
    _migrate_schema(engine)
