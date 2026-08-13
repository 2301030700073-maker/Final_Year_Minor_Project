"""Unit tests for static/coverage.py - the per-surface coverage contract and the
G-A per-category surface-set exclusion (F2). Pure module, no I/O/toolchain."""

from static.coverage import (
    GOVERNING_SURFACES,
    _min_coverage,
    category_is_confident_negative,
    coverage_bound_line,
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


def test_coverage_bound_line_flags_native_unscannable_as_lower_bound():
    # L-M4: most real apps ship no scannable .so, so native=unscannable binds
    # the verdict even when Java is complete. The console line must say so -
    # otherwise a root NEITHER reads as a confident negative it isn't.
    line = coverage_bound_line({
        "java": "fully_analyzed", "native": "unscannable", "manifest": "fully_analyzed",
    })
    assert "native=unscannable" in line
    assert "root: NEITHER is a lower bound, NOT confident" in line
    assert "ssl: NEITHER is a lower bound, NOT confident" in line
    # manifest is fully analyzed, so it is not the binding surface - the bound
    # comes from native, exactly the case L-M7's java-only CAUTION missed.
    assert "ssl: NEITHER is a lower bound, NOT confident (java=fully_analyzed, native=unscannable, manifest=fully_analyzed)" in line


def test_coverage_bound_line_confirms_confident_negative_when_all_covered():
    # L-M4: when every governing surface is fully analyzed, a NEITHER IS a
    # confident negative and the line must say so (never over-downgrade).
    line = coverage_bound_line({
        "java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed",
    })
    assert "root: NEITHER is a confident negative" in line
    assert "ssl: NEITHER is a confident negative" in line
    assert "NOT confident" not in line


def test_coverage_bound_line_mentions_partial_manifest():
    # L-M4: a partial resource resolution degrades the manifest surface, which
    # per G-A governs ssl - so the ssl bound must reflect manifest=partial even
    # when java+native are complete.
    line = coverage_bound_line({
        "java": "fully_analyzed", "native": "fully_analyzed", "manifest": "partial",
    })
    assert "manifest=partial" in line
    assert "root: NEITHER is a confident negative" in line  # root not governed by manifest
    assert "ssl: NEITHER is a lower bound, NOT confident" in line
