from sqlalchemy.orm import Session

from common import Action, CategoryVerdict, ClassificationResult
from storage.db import RunRecord, get_engine
from storage.results import existing_metadata, save_metadata, save_run


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

    path = save_run(tmp_path, "abc123", "run1", {"classification": classification, "stage_results": []})

    assert path.name == "results.db"
    assert path.exists()
    with Session(get_engine(tmp_path)) as session:
        record = session.get(RunRecord, "run1")
        assert record.action == "ROOT_ONLY"
        assert record.classification_json["action"] == "ROOT_ONLY"
        assert record.classification_json["root"]["confidence"] == 0.9


def test_save_run_promotes_calibration_fields_to_indexed_columns(tmp_path):
    verdict = CategoryVerdict(confidence=0.9, detected=True, evidence=[])
    classification = ClassificationResult(action=Action.ROOT_ONLY, root=verdict, ssl=verdict)

    save_run(tmp_path, "abc123", "run1", {"classification": classification, "stage_results": []})

    with Session(get_engine(tmp_path)) as session:
        record = session.get(RunRecord, "run1")
        assert record.root_confidence == 0.9
        assert record.root_detected is True
        assert record.decompile_completeness == "unknown"  # no decompile stage in this fixture
        assert record.root_bypassed is None  # no verification supplied - dynamic stage never ran
        assert record.verification_json is None  # stays a real NULL, not an empty dict


def test_save_run_records_decompile_completeness_from_stage_results(tmp_path):
    from common import StageResult
    verdict = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    classification = ClassificationResult(action=Action.NEITHER, root=verdict, ssl=verdict)
    stage_results = [StageResult(
        stage="decompile", status="success",
        evidence={"decompile_completeness": "partial", "jadx_file_count": 1563, "jadx_exit_code": 1},
    )]

    save_run(tmp_path, "propertyguru", "run2", {"classification": classification, "stage_results": stage_results})

    with Session(get_engine(tmp_path)) as session:
        record = session.get(RunRecord, "run2")
        assert record.decompile_completeness == "partial"
        assert record.jadx_file_count == 1563


def test_save_run_flags_anomaly_from_verification_evidence_lines(tmp_path):
    verdict = CategoryVerdict(confidence=0.8, detected=True, evidence=[])
    classification = ClassificationResult(action=Action.ROOT_ONLY, root=verdict, ssl=verdict)
    verification = {"root_bypassed": False, "ssl_bypassed": None, "evidence_lines": {"anomaly": "contradiction"}}

    save_run(tmp_path, "abc123", "run3", {
        "classification": classification, "verification": verification, "stage_results": [],
    })

    with Session(get_engine(tmp_path)) as session:
        record = session.get(RunRecord, "run3")
        assert record.anomaly_flagged is True
