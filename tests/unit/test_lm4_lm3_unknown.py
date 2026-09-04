"""Regression tests for the L-M4 confidence-by-coverage binding and the L-M3
'unknown, not absent' (unknown_uncovered) marker.

L-M4: a category's NEITHER is a confident negative only when every governing
surface (root -> {java,native,js}, ssl -> {java,native,manifest,js}) is fully_analyzed.
When one is partial/unscannable, the verdict's confidence is an upper bound and
the category must be flagged coverage_limited.

L-M3 (NFR-7): that flag must be machine-readable on the persisted classification
(ClassificationResult.unknown_uncovered + CategoryVerdict.coverage_limited), so
an automated consumer can distinguish 'scanned and clean' from 'not fully
analyzed' - absence is never silently certified. Pure, fixture-testable."""

from common import Action, CategoryVerdict, ClassificationResult
from static.coverage import apply_coverage_bound, apply_unattributed_indicators

_FULL = {
    "java": "fully_analyzed",
    "native": "fully_analyzed",
    "manifest": "fully_analyzed",
    "js": "fully_analyzed",
}


def _cls():
    v = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    return ClassificationResult(action=Action.NEITHER, root=v, ssl=v)


def test_fully_analyzed_is_confident_no_marker():
    # Every governing surface fully_analyzed -> no coverage_limited, no unknown.
    out = apply_coverage_bound(_cls(), _FULL)
    assert out.root.coverage_limited is False
    assert out.ssl.coverage_limited is False
    assert out.unknown_uncovered == []


def test_native_unscannable_limits_root_but_not_ssl_only_java_gap():
    # Most real apps ship no scannable .so -> native=unscannable, which binds
    # root even when Java is complete. ssl is also governed by native here, so
    # both are limited in this exact map.
    cov = {**_FULL, "native": "unscannable"}
    out = apply_coverage_bound(_cls(), cov)
    assert out.root.coverage_limited is True
    assert out.ssl.coverage_limited is True
    assert out.unknown_uncovered == ["root", "ssl"]


def test_manifest_partial_limits_ssl_only():
    # ssl is governed by manifest; root is not. A partial manifest binds ssl
    # but leaves root a confident-negative candidate.
    cov = {**_FULL, "manifest": "partial"}
    out = apply_coverage_bound(_cls(), cov)
    assert out.root.coverage_limited is False
    assert out.ssl.coverage_limited is True
    assert out.unknown_uncovered == ["ssl"]


def test_bound_flows_into_persisted_json(tmp_path):
    # The marker must survive asdict() (what save_run persists) so a downstream
    # consumer of classification_json sees it, not just the console line.
    from dataclasses import asdict

    cov = {**_FULL, "native": "unscannable"}
    d = asdict(apply_coverage_bound(_cls(), cov))
    assert d["unknown_uncovered"] == ["root", "ssl"]
    assert d["root"]["coverage_limited"] is True
    assert d["ssl"]["coverage_limited"] is True


def test_bound_is_additive_preserves_existing_fields():
    # apply_coverage_bound returns a new ClassificationResult and must not drop
    # any pre-existing fields (e.g. attribution, thresholds, counts).
    v = CategoryVerdict(confidence=0.4, detected=True, evidence=[])
    cls = ClassificationResult(
        action=Action.ROOT_ONLY, root=v, ssl=CategoryVerdict(0.0, False, []),
        root_attribution={"vendor": "androidx", "all_third_party": True},
        scanned_file_count=7, unreadable_file_count=1,
        unreadable_files=["original/AndroidManifest.xml"],
        evidence_capped_counts={"root_su_binary_paths": 200},
    )
    out = apply_coverage_bound(cls, {**_FULL, "native": "partial"})
    assert out.root_attribution == {"vendor": "androidx", "all_third_party": True}
    assert out.scanned_file_count == 7
    assert out.unreadable_files == ["original/AndroidManifest.xml"]
    assert out.evidence_capped_counts == {"root_su_binary_paths": 200}
    assert out.root.coverage_limited is True
    assert out.unknown_uncovered == ["root", "ssl"]


def test_unattributed_indicators_marks_category_limited():
    # Boundary-1: detection-shaped code that matched no signature marks the
    # category coverage-limited even on a FULLY-analyzed surface - a NEITHER
    # there is "unknown, not absent", never a confident negative (ADR-0006).
    out = apply_unattributed_indicators(_cls(), {"ssl": True})
    assert out.ssl.coverage_limited is True
    assert out.root.coverage_limited is False
    assert out.unknown_uncovered == ["ssl"]


def test_unattributed_indicators_root_and_ssl():
    out = apply_unattributed_indicators(_cls(), {"root": True, "ssl": True})
    assert out.root.coverage_limited is True
    assert out.ssl.coverage_limited is True
    assert out.unknown_uncovered == ["root", "ssl"]


def test_unattributed_indicators_noop_when_empty():
    # No indicators -> classification untouched (additive, never over-limits).
    cls = _cls()
    out = apply_unattributed_indicators(cls, {})
    assert out.root.coverage_limited is False
    assert out.ssl.coverage_limited is False
    assert out.unknown_uncovered == []
    assert out is cls  # same object, no spurious copy


def test_unattributed_indicators_preserves_existing_uncovered():
    # A category already limited by completeness (root.coverage_limited=True,
    # root in unknown_uncovered) stays limited AND keeps its existing entries;
    # a newly-attributed category (ssl) is appended without disturbing root.
    root_v = CategoryVerdict(confidence=0.0, detected=False, evidence=[], coverage_limited=True)
    ssl_v = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    cls = ClassificationResult(
        action=Action.NEITHER, root=root_v, ssl=ssl_v, unknown_uncovered=["root"]
    )
    out = apply_unattributed_indicators(cls, {"ssl": True})
    assert out.root.coverage_limited is True  # preserved from completeness
    assert out.ssl.coverage_limited is True   # newly marked
    assert out.unknown_uncovered == ["root", "ssl"]


def test_unattributed_indicators_flows_into_persisted_json():
    from dataclasses import asdict

    d = asdict(apply_unattributed_indicators(_cls(), {"root": True}))
    assert d["unknown_uncovered"] == ["root"]
    assert d["root"]["coverage_limited"] is True
    assert d["ssl"]["coverage_limited"] is False


def test_unattributed_indicators_never_upgrades_confidence():
    # The indicator layer downgrades coverage only; it must never change a
    # verdict's confidence or detected state (ADR-0001: only the corpus decides).
    v = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    cls = ClassificationResult(action=Action.NEITHER, root=v, ssl=v)
    out = apply_unattributed_indicators(cls, {"ssl": True})
    assert out.ssl.confidence == 0.0
    assert out.ssl.detected is False


def test_coverage_bound_recomputes_not_merges_unknown_uncovered():
    # The composition-order load-bearing property, pinned at the function level:
    # apply_coverage_bound RECOMPUTES unknown_uncovered from the coverage alone,
    # discarding any pre-existing content entries. Given fully-analyzed coverage,
    # a classification that already carries an unattributed-content marker must
    # come out with [] - a merge would silently defeat the coverage bound. This
    # is why the pipeline runs coverage_bound BEFORE unattributed_indicators
    # (test_cli_run_e2e pins that order via the composition spy).
    from dataclasses import replace

    preloaded = replace(_cls(), unknown_uncovered=["ssl"])
    out = apply_coverage_bound(preloaded, _FULL)

    assert out.unknown_uncovered == []  # recomputed from coverage, not merged
    assert out.root.coverage_limited is False
    assert out.ssl.coverage_limited is False


def test_assert_homogeneous_deterministic_rejects_non_deterministic_tiers():
    # _assert_homogeneous_deterministic (principle 2 / ADR-0001): the static
    # classification path may ONLY aggregate deterministic_matched evidence - a
    # non-deterministic tier present in the blend must raise loudly (never be
    # silently mixed into a static confidence). Empty/all-deterministic pass.
    from types import SimpleNamespace
    from static.decision_engine import _assert_homogeneous_deterministic
    _assert_homogeneous_deterministic([])
    _assert_homogeneous_deterministic([
        SimpleNamespace(signature_id="a", verification_state="deterministic_matched"),
        SimpleNamespace(signature_id="b", verification_state="deterministic_matched"),
    ])
    import pytest
    with pytest.raises(ValueError) as ei:
        _assert_homogeneous_deterministic([
            SimpleNamespace(signature_id="bad", verification_state="ai_hypothesized_unverified"),
        ])
    assert "bad" in str(ei.value)
    assert "ai_hypothesized_unverified" in str(ei.value)


def test_category_is_confident_negative_none_and_empty_are_not_confident():
    # The confident-negative decider owns the None/empty semantics itself, so no
    # caller can drift by forgetting the guard (the SIG1 lesson): a run with no
    # coverage map at all means nothing was analyzed, so every governing surface
    # is effectively unscannable and a NEITHER can never be a confident negative.
    from static.coverage import category_is_confident_negative

    for cov in (None, {}):
        assert category_is_confident_negative("root", cov) is False
        assert category_is_confident_negative("ssl", cov) is False
    # An unknown category is likewise never confident (unchanged behavior).
    assert category_is_confident_negative("bogus", _FULL) is False


def test_no_coverage_map_marks_every_category_coverage_limited():
    # Regression: apply_coverage_bound is the "unknown, not absent" safety net,
    # and the run that MOST needs it is one with no coverage map at all. It must
    # do the maximally-conservative thing - mark BOTH root and ssl
    # coverage_limited so neither NEITHER reads as a confident negative - not
    # crash on None.get (which, if later "fixed" by swallowing the error, would
    # silently let a NEITHER pass as a confident false negative, ADR-0006).
    for cov in (None, {}):
        out = apply_coverage_bound(_cls(), cov)
        assert out.root.coverage_limited is True
        assert out.ssl.coverage_limited is True
        assert out.unknown_uncovered == ["root", "ssl"]


def test_uncov_cause1_records_which_mechanism_flagged_each_category():
    """UNCOV-CAUSE1. Two structurally independent mechanisms write into
    unknown_uncovered and their remediations are OPPOSITE - apply_coverage_bound
    fires on scan COMPLETENESS (fix: analyze more of the app), while
    apply_unattributed_indicators fires on CONTENT that matched no signature (fix:
    author a signature, more decompilation changes nothing). The list recorded
    only the category, so neither the persisted classification_json nor the report
    could say which one fired, and an operator reading "root is coverage-limited"
    had no way to know what to do about it.
    """
    # Completeness path alone -> incomplete_coverage, on exactly the bound cats.
    out = apply_coverage_bound(_cls(), {**_FULL, "manifest": "partial"})
    assert out.unknown_uncovered == ["ssl"]
    assert out.unknown_uncovered_causes == {"ssl": ["incomplete_coverage"]}

    # Content path alone, over a fully-analyzed corpus -> unattributed_indicator.
    covered = apply_coverage_bound(_cls(), _FULL)
    assert covered.unknown_uncovered_causes == {}
    out = apply_unattributed_indicators(covered, {"root": True})
    assert out.unknown_uncovered == ["root"]
    assert out.unknown_uncovered_causes == {"root": ["unattributed_indicator"]}
    # A considered-and-absent indicator contributes no cause (bool VALUE honored).
    assert apply_unattributed_indicators(covered, {"ssl": False}).unknown_uncovered_causes == {}

    # BOTH causes on one category - the case a single-cause field would hide.
    # Order follows the pipeline: coverage bound first, then indicators.
    both = apply_unattributed_indicators(
        apply_coverage_bound(_cls(), {**_FULL, "java": "partial"}),
        {"root": True, "ssl": True},
    )
    assert both.unknown_uncovered == ["root", "ssl"]
    for cat in ("root", "ssl"):
        assert both.unknown_uncovered_causes[cat] == [
            "incomplete_coverage", "unattributed_indicator"
        ], cat

    # Causes are RECOMPUTED by the completeness pass, never merged - same reason
    # unknown_uncovered is: its answer derives from the coverage map alone, so a
    # stale cause must not outlive a map that no longer supports it.
    from dataclasses import replace
    stale = replace(_cls(), unknown_uncovered=["ssl"],
                    unknown_uncovered_causes={"ssl": ["incomplete_coverage"]})
    assert apply_coverage_bound(stale, _FULL).unknown_uncovered_causes == {}

    # And it survives asdict() (what save_run persists), so the machine-readable
    # consumer sees the cause too, not just the console line.
    from dataclasses import asdict
    assert asdict(both)["unknown_uncovered_causes"] == {
        "root": ["incomplete_coverage", "unattributed_indicator"],
        "ssl": ["incomplete_coverage", "unattributed_indicator"],
    }


def test_uncov_cause1_round_trips_through_regeneration():
    # REGEN-FIELDLOSS1 discipline: a regenerated report must not lose the cause.
    # Dropping it would still print the coverage-limited caveat but with no way to
    # tell whether to decompile more or author a signature - the same class of
    # field-loss bug as dropping unknown_uncovered itself, which had re-rendered a
    # coverage-bound NEITHER as a confident negative.
    from dataclasses import asdict
    from cli import _classification_from_json

    original = apply_unattributed_indicators(
        apply_coverage_bound(_cls(), {**_FULL, "native": "partial"}),
        {"root": True},
    )
    rebuilt = _classification_from_json(asdict(original))
    assert rebuilt.unknown_uncovered == original.unknown_uncovered
    assert rebuilt.unknown_uncovered_causes == original.unknown_uncovered_causes
    assert rebuilt.unknown_uncovered_causes["root"] == [
        "incomplete_coverage", "unattributed_indicator"
    ]
    # A row stored before the field existed reports NO cause rather than a guess.
    legacy = asdict(original)
    legacy.pop("unknown_uncovered_causes")
    assert _classification_from_json(legacy).unknown_uncovered_causes == {}
