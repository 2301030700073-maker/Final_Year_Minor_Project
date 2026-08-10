"""Unit tests for static/coverage.py - the per-surface coverage contract and the
G-A per-category surface-set exclusion (F2). Pure module, no I/O/toolchain."""

from static.coverage import (
    GOVERNING_SURFACES,
    _min_coverage,
    category_is_confident_negative,
    java_coverage,
    manifest_coverage,
    native_coverage,
    per_surface_coverage,
)


def test_java_coverage_derived_from_decompile_completeness():
    assert java_coverage("complete", "clear") == "fully_analyzed"
    assert java_coverage("partial", "clear") == "partial"
    assert java_coverage("unknown", "clear") == "unscannable"


def test_java_coverage_heavy_forces_partial_even_on_complete():
    # N1/G-C: heavy obfuscation -> partial even on an exit-0 complete decompile.
    assert java_coverage("complete", "heavy") == "partial"


def test_java_coverage_light_does_not_force_partial():
    assert java_coverage("complete", "light") == "fully_analyzed"


def test_native_coverage_empty_is_unscannable():
    assert native_coverage({}) == "unscannable"


def test_native_coverage_worst_abi_wins():
    # G6: one partial ABI under-covers the whole native surface.
    assert native_coverage({"arm64-v8a": "fully_analyzed", "x86_64": "partial"}) == "partial"


def test_native_coverage_fully_analyzed_when_all_healthy():
    assert native_coverage({"arm64-v8a": "fully_analyzed", "x86_64": "fully_analyzed"}) == "fully_analyzed"


def test_manifest_coverage_unscannable_on_parse_failure():
    # G9: a failed manifest parse drives the surface to unscannable.
    assert manifest_coverage(manifest_parsed=False, resources_complete=False) == "unscannable"


def test_manifest_coverage_partial_on_resource_incomplete():
    assert manifest_coverage(manifest_parsed=True, resources_complete=False) == "partial"


def test_manifest_coverage_fully_analyzed():
    assert manifest_coverage(manifest_parsed=True, resources_complete=True) == "fully_analyzed"


def test_per_surface_coverage_builds_full_map():
    coverage = per_surface_coverage(
        decompile_completeness="complete", obfuscation_level="heavy",
        abi_coverage={"arm64-v8a": "fully_analyzed"},
        manifest_parsed=True, resources_complete=True,
    )
    assert coverage["java"] == "partial"      # heavy -> partial
    assert coverage["native"] == "fully_analyzed"
    assert coverage["manifest"] == "fully_analyzed"


def test_category_confident_negative_requires_all_governing_surfaces():
    # G-A/F2: root negative is confident only when java AND native are full.
    assert category_is_confident_negative("root", {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "partial"})
    # Native partial -> root negative is NOT confident (stripped .so hides the check).
    assert not category_is_confident_negative("root", {"java": "fully_analyzed", "native": "partial"})
    # Java partial -> also not confident.
    assert not category_is_confident_negative("root", {"java": "partial", "native": "fully_analyzed"})


def test_category_confident_negative_ssl_includes_manifest():
    # ssl's governing set is {java, native, manifest} - a partial manifest excludes.
    assert not category_is_confident_negative("ssl", {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "unscannable"})
    assert category_is_confident_negative("ssl", {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed"})


def test_category_confident_negative_unknown_category_never_confident():
    assert not category_is_confident_negative("unknown", {"java": "fully_analyzed"})


def test_governing_surfaces_match_the_doc():
    assert GOVERNING_SURFACES["root"] == ("java", "native")
    assert GOVERNING_SURFACES["ssl"] == ("java", "native", "manifest")


def test_min_coverage_orders_severity():
    assert _min_coverage(["fully_analyzed", "fully_analyzed"]) == "fully_analyzed"
    assert _min_coverage(["fully_analyzed", "partial"]) == "partial"
    assert _min_coverage(["partial", "unscannable"]) == "unscannable"
