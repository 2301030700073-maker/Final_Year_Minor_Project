from common import Action, CategoryVerdict, ClassificationResult
from storage.results import existing_metadata, save_metadata, save_run


def test_save_and_load_metadata_roundtrip(tmp_path):
    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}})

    loaded = existing_metadata(tmp_path, "abc123")

    assert loaded == {"package": {"package_name": "test.app"}}


def test_existing_metadata_returns_none_when_absent(tmp_path):
    assert existing_metadata(tmp_path, "doesnotexist") is None


def test_save_run_serializes_dataclasses_and_enums(tmp_path):
    verdict = CategoryVerdict(confidence=0.9, detected=True, evidence=[])
    classification = ClassificationResult(action=Action.ROOT_ONLY, root=verdict, ssl=verdict, threshold=0.7)

    path = save_run(tmp_path, "abc123", "run1", {"classification": classification})

    assert path.exists()
    import json
    data = json.loads(path.read_text())
    assert data["classification"]["action"] == "ROOT_ONLY"
    assert data["classification"]["root"]["confidence"] == 0.9
