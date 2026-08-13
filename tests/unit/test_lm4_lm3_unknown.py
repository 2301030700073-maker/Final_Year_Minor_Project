"""Regression tests for the L-M4 confidence-by-coverage binding and the L-M3
'unknown, not absent' (unknown_uncovered) marker.

L-M4: a category's NEITHER is a confident negative only when every governing
surface (root -> {java,native}, ssl -> {java,native,manifest}) is fully_analyzed.
When one is partial/unscannable, the verdict's confidence is an upper bound and
the category must be flagged coverage_limited.

L-M3 (NFR-7): that flag must be machine-readable on the persisted classification
(ClassificationResult.unknown_uncovered + CategoryVerdict.coverage_limited), so
an automated consumer can distinguish 'scanned and clean' from 'not fully
analyzed' - absence is never silently certified. Pure, fixture-testable."""

from common import Action, CategoryVerdict, ClassificationResult
from static.coverage import apply_coverage_bound

_FULL = {
    "java": "fully_analyzed",
    "native": "fully_analyzed",
    "manifest": "fully_analyzed",
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
