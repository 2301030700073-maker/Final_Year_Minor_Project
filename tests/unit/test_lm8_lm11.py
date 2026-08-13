"""Regression tests for L-M8 (unreadable-file paths reach persisted results) and
L-M11 (remote attestation stays an explicit non-goal).

L-M8: the count AND the offending paths must survive from scan() through classify()
into the persisted classification_json (the authoritative analysis store) and the
audit log - not just the rendered report. Verified against real results.db data:
records carry unreadable_file_count=1 / unreadable_files=['original/AndroidManifest.xml'].
These tests lock that guarantee against regression.

L-M11: SafetyNet / Play Integrity is a documented non-goal (PRD.md non-goals,
project-limitations.md S4, resolution-plan L-M11). The only reference anywhere is a
root-DETECTION signature flagging apps that USE attestation - nothing defeats the
server-side verification. The guard test makes the boundary structural (principle 3:
a placeholder attestation-bypass would be a fake output and must fail loudly)."""

from dataclasses import asdict
from pathlib import Path

from sqlalchemy.orm import Session

from common import Action, CategoryVerdict, ClassificationResult, StaticEvidence
from static.decision_engine import classify
from storage.db import RunRecord, get_engine
from storage.results import save_metadata, save_run

_REPO = Path(__file__).resolve().parents[2]


# --- L-M8: unreadable-file paths persist through the pipeline -----------------


def test_classify_carries_unreadable_files_into_classification():
    evidence = StaticEvidence(
        root_confidence=0.9, ssl_confidence=0.0,
        unreadable_file_count=1, unreadable_files=["original/AndroidManifest.xml"],
    )
    result = classify(evidence)
    assert result.unreadable_file_count == 1
    assert result.unreadable_files == ["original/AndroidManifest.xml"]
    # asdict(classification) is exactly what save_run/record_classification persist -
    # the offending path must survive into the persisted JSON, not just the report.
    d = asdict(result)
    assert d["unreadable_file_count"] == 1
    assert d["unreadable_files"] == ["original/AndroidManifest.xml"]


def test_save_run_persists_unreadable_files_in_classification_json(tmp_path):
    # Mirrors real verified results.db data: an unreadable original/AndroidManifest.xml.
    verdict = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    classification = ClassificationResult(
        action=Action.NEITHER, root=verdict, ssl=verdict,
        unreadable_file_count=1, unreadable_files=["original/AndroidManifest.xml"],
    )
    save_metadata(tmp_path, "abc123", {"package": {"package_name": "test.app"}})
    save_run(tmp_path, "abc123", "run1",
             {"classification": classification, "stage_results": []})
    with Session(get_engine(tmp_path)) as session:
        record = session.get(RunRecord, "run1")
        cj = record.classification_json
        assert cj["unreadable_file_count"] == 1
        assert cj["unreadable_files"] == ["original/AndroidManifest.xml"]


# --- L-M11: remote attestation stays a structural non-goal ---------------------

_ATTESTATION_BYPASS_TOKENS = (
    "safetynet",
    "playintegrity",
    "play_integrity",
    "integritytoken",
    "requestintegritytoken",
)


def test_dynamic_layer_never_attempts_remote_attestation_bypass():
    # Every module in the dynamic bypass layer must be free of attestation-bypass
    # machinery. A match here means a placeholder/fake attestation hook crept in
    # (principle 3) - it must fail loudly, not silently ship. The only Play
    # Integrity reference in the codebase is a root-DETECTION signature, which is
    # legitimately in scope (detecting the technique, not defeating it).
    dynamic = _REPO / "src" / "dynamic"
    offenders = []
    for py in sorted(dynamic.rglob("*.py")):
        text = py.read_text(encoding="utf-8", errors="replace").lower()
        for tok in _ATTESTATION_BYPASS_TOKENS:
            if tok in text:
                offenders.append(f"{py.relative_to(dynamic)}: {tok}")
    assert not offenders, (
        "remote attestation is an explicit non-goal (L-M11): the dynamic bypass "
        f"layer must not contain attestation-bypass machinery, found {offenders}"
    )
