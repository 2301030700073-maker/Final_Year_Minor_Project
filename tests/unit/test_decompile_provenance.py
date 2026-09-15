"""F-1: the report must say whether the scanned decompiled output was produced now
or replayed from the APK-hash cache.

The decompile stage has recorded `cached` in its own evidence all along; no consumer
read it, so a cache replay rendered as "This run's decompilation completed
successfully" - a statement about a decompilation that did not happen this run, four
lines above a paragraph promising this run's coverage is reproducible from that same
evidence. These tests are render-level on purpose: the defect was a produced-but-
unconsumed signal, so a unit test of the mapping alone would have passed throughout.
"""

from common import Action, CategoryVerdict, ClassificationResult, Evidence, StageResult
from report.generator import _decompile_summary, generate_report

REUSED = "Decompile provenance: REUSED FROM CACHE"
FRESH = "Decompile provenance: decompiled during this run"
UNRECORDED = "Decompile provenance: not recorded for this run"


def _classification():
    return ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.2, detected=False, evidence=[
            Evidence(signature_id="root_su_binary_paths", file="Main.java",
                     line_or_offset=1, matched_text="/system/bin/su"),
        ]),
        ssl=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
    )


def _decompile_stage(**overrides):
    evidence = {
        "decompile_completeness": "complete", "jadx_exit_code": 0,
        "jadx_file_count": 1234, "apktool_exit_code": 0, "decompiler_used": "jadx",
    }
    evidence.update(overrides)
    return StageResult(stage="decompile", status="success", evidence=evidence)


def _render(tmp_path, stage):
    path = generate_report(
        run_id="prov1", apk_hash="prov001", timestamp="2026-09-15T12:00:00",
        metadata={"hashes": {"sha256": "prov001"},
                  "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[stage] if stage is not None else [], output_dir=tmp_path,
    )
    return path.read_text(encoding="utf-8")


def test_cache_replay_is_named_as_a_replay(tmp_path):
    content = _render(tmp_path, _decompile_stage(cached=True))
    assert REUSED in content
    # The values shown are the sidecar's record, not a measurement taken now, and
    # the tools provably did not run - both halves must be stated, not implied.
    assert "jadx and apktool were **not** re-run for this report" in content
    assert "are the ones the original decompile recorded in its sidecar" in content
    assert FRESH not in content
    assert UNRECORDED not in content


def test_a_fresh_decompile_is_named_as_fresh(tmp_path):
    content = _render(tmp_path, _decompile_stage(cached=False))
    assert FRESH in content
    assert REUSED not in content
    assert UNRECORDED not in content


def test_an_older_record_without_the_field_claims_neither(tmp_path):
    # The third state. A persisted run predating the field must not be rendered as a
    # fresh decompile - "we did not record it" is not "it was re-run".
    content = _render(tmp_path, _decompile_stage())
    assert UNRECORDED in content
    assert REUSED not in content
    assert FRESH not in content


def test_no_decompile_stage_at_all_does_not_claim_a_fresh_decompile(tmp_path):
    # A regenerated report whose persisted stages carry no decompile entry has no
    # provenance to report; it must land in the unrecorded state, never the fresh one.
    content = _render(tmp_path, None)
    assert UNRECORDED in content
    assert FRESH not in content


def test_summary_mapping_is_tristate_and_never_defaulted():
    # Pins the no-default: `cached` absent maps to None, not to False. Defaulting to
    # False is the exact shape that would launder a replay into a fresh decompile.
    assert _decompile_summary([_decompile_stage(cached=True)])["decompile_cached"] is True
    assert _decompile_summary([_decompile_stage(cached=False)])["decompile_cached"] is False
    assert _decompile_summary([_decompile_stage()])["decompile_cached"] is None
    assert _decompile_summary([])["decompile_cached"] is None
