"""Unit tests for static/coverage.py - the per-surface coverage contract and the
G-A per-category surface-set exclusion (F2). Pure module, no I/O/toolchain."""

from common import CategoryVerdict
from static.coverage import (
    GOVERNING_SURFACES,
    _min_coverage,
    apply_attribution_degraded_java,
    apply_dynamic_loading_java,
    apply_unresolved_native,
    category_is_confident_negative,
    dart_aot_coverage,
    is_dart_aot_lib,
    confidence_bound,
    coverage_bound_line,
    java_coverage,
    js_surface_coverage,
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


def test_java_coverage_packed_forces_partial_even_on_complete():
    # Gap-2: a detected packer hides the real DEX behind a loader, so even a
    # 'complete' decompile only sees the loader stub, never the real code - the
    # Java surface must read partial (a packed clean NEITHER can't certify a
    # confident TN, ADR-0006).
    assert java_coverage("complete", "clear", packed=True) == "partial"


def test_java_coverage_packed_not_confident_on_partial():
    # A packed app whose decompile is already partial stays partial (never a
    # silent upgrade), and an unknown decompile stays unscannable.
    assert java_coverage("partial", "clear", packed=True) == "partial"
    assert java_coverage("unknown", "clear", packed=True) == "unscannable"


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
    # js is fully_analyzed here (no binary JS bundle -> vacuously safe).
    assert category_is_confident_negative("root", {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "partial", "js": "fully_analyzed"})
    # Native partial -> root negative is NOT confident (stripped .so hides the check).
    assert not category_is_confident_negative("root", {"java": "fully_analyzed", "native": "partial", "js": "fully_analyzed"})
    # Java partial -> also not confident.
    assert not category_is_confident_negative("root", {"java": "partial", "native": "fully_analyzed", "js": "fully_analyzed"})


def test_category_confident_negative_ssl_includes_manifest():
    # ssl's governing set is {java, native, manifest, js} - a partial manifest excludes.
    assert not category_is_confident_negative("ssl", {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "unscannable", "js": "fully_analyzed"})
    assert category_is_confident_negative("ssl", {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed"})


def test_category_confident_negative_unknown_category_never_confident():
    assert not category_is_confident_negative("unknown", {"java": "fully_analyzed"})


def test_governing_surfaces_match_the_doc():
    assert GOVERNING_SURFACES["root"] == ("java", "native", "js")
    assert GOVERNING_SURFACES["ssl"] == ("java", "native", "manifest", "js")


def test_js_surface_coverage_degrades_only_on_binary_bundle():
    # No binary JS bundle -> vacuously fully_analyzed (no JS, or plain-text JS the
    # text engine already scans); a Hermes/bytecode bundle we can't fully read is
    # partial so a NEITHER is never a confident negative over bundle-hidden logic.
    assert js_surface_coverage(False) == "fully_analyzed"
    assert js_surface_coverage(True) == "partial"


def test_is_dart_aot_lib_recognizes_flutter_snapshots():
    # A release Flutter APK compiles its Dart logic into libapp.so (or dart.so) -
    # a packed blob native tooling cannot analyze like a normal .so.
    assert is_dart_aot_lib("libapp.so") is True
    assert is_dart_aot_lib("dart.so") is True
    # The Flutter engine itself and ordinary native libs are NOT the app's Dart
    # snapshot; a plain basename edge is False, never misclassified.
    assert is_dart_aot_lib("libflutter.so") is False
    assert is_dart_aot_lib("libtiff.so") is False
    assert is_dart_aot_lib(None) is False


def test_dart_aot_coverage_downgrades_native_only_when_snapshot_present():
    # With no Dart AOT snapshot the native surface is untouched (additive, safe).
    cov = {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed"}
    assert dart_aot_coverage(cov, False) == cov
    # A Dart snapshot is a genuine unexamined native surface -> native partial so
    # a native NEITHER is never a confident negative (ADR-0006).
    assert dart_aot_coverage(cov, True)["native"] == "partial"
    assert dart_aot_coverage(cov, True)["java"] == "fully_analyzed"
    # Idempotent / downgrade-only: never upgrades a partial to fully_analyzed.
    cov_partial = {**cov, "native": "partial"}
    assert dart_aot_coverage(cov_partial, True) == cov_partial


def test_dart_aot_gates_confident_negative():
    # root/ssl both govern on `native`, so a Dart-AOT-bearing app (native partial)
    # can never certify a confident negative even when java is fully_analyzed.
    cov_dart = {"java": "fully_analyzed", "native": "partial", "manifest": "fully_analyzed", "js": "fully_analyzed"}
    assert not category_is_confident_negative("root", cov_dart)
    assert not category_is_confident_negative("ssl", cov_dart)


def test_js_governing_surface_gates_confident_negative():
    # root/ssl now govern on `js`: a partial js surface makes NEITHER non-confident.
    cov_partial_js = {"java": "fully_analyzed", "native": "fully_analyzed", "js": "partial"}
    assert not category_is_confident_negative("root", cov_partial_js)
    assert not category_is_confident_negative(
        "ssl", {**cov_partial_js, "manifest": "fully_analyzed"}
    )
    # Fully-analyzed js (no binary bundle) does NOT gate a confident negative.
    cov_ok = {"java": "fully_analyzed", "native": "fully_analyzed", "js": "fully_analyzed"}
    assert category_is_confident_negative("root", cov_ok)


def test_min_coverage_orders_severity():
    assert _min_coverage(["fully_analyzed", "fully_analyzed"]) == "fully_analyzed"
    assert _min_coverage(["fully_analyzed", "partial"]) == "partial"
    assert _min_coverage(["partial", "unscannable"]) == "unscannable"


def test_coverage_bound_line_flags_native_unscannable_as_lower_bound():
    # L-M4: most real apps ship no scannable .so, so native=unscannable binds
    # the verdict even when Java is complete. The console line must say so -
    # otherwise a root NEITHER reads as a confident negative it isn't.
    line = coverage_bound_line({
        "java": "fully_analyzed", "native": "unscannable", "manifest": "fully_analyzed", "js": "fully_analyzed",
    })
    assert "native=unscannable" in line
    assert "root: NEITHER is a lower bound, NOT confident" in line
    assert "ssl: NEITHER is a lower bound, NOT confident" in line
    # manifest is fully analyzed, so it is not the binding surface - the bound
    # comes from native, exactly the case L-M7's java-only CAUTION missed.
    assert "ssl: NEITHER is a lower bound, NOT confident (java=fully_analyzed, native=unscannable, manifest=fully_analyzed, js=fully_analyzed)" in line


def test_coverage_bound_line_confirms_confident_negative_when_all_covered():
    # L-M4: when every governing surface is fully analyzed, a NEITHER IS a
    # confident negative and the line must say so (never over-downgrade).
    line = coverage_bound_line({
        "java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed", "js": "fully_analyzed",
    })
    assert "root: NEITHER is a confident negative" in line
    assert "ssl: NEITHER is a confident negative" in line
    assert "NOT confident" not in line


def test_coverage_bound_line_mentions_partial_manifest():
    # L-M4: a partial resource resolution degrades the manifest surface, which
    # per G-A governs ssl - so the ssl bound must reflect manifest=partial even
    # when java+native are complete.
    line = coverage_bound_line({
        "java": "fully_analyzed", "native": "fully_analyzed", "manifest": "partial", "js": "fully_analyzed",
    })
    assert "manifest=partial" in line
    assert "root: NEITHER is a confident negative" in line  # root not governed by manifest
    assert "ssl: NEITHER is a lower bound, NOT confident" in line


def test_apply_dynamic_loading_java_downgrades_only_fully_analyzed():
    # Dynamic code loading present -> java surface degrades to partial so a java
    # NEITHER is never a confident negative over a dynamically-hidden payload.
    assert apply_dynamic_loading_java({"java": "fully_analyzed"}, True)["java"] == "partial"
    # never upgrades, never downgrades below partial
    assert apply_dynamic_loading_java({"java": "partial"}, True)["java"] == "partial"
    assert apply_dynamic_loading_java({"java": "fully_analyzed"}, False)["java"] == "fully_analyzed"
    # other surfaces untouched
    m = apply_dynamic_loading_java({"java": "fully_analyzed", "native": "fully_analyzed"}, True)
    assert m["java"] == "partial" and m["native"] == "fully_analyzed"
    # additive: returns a new dict, original unchanged
    orig = {"java": "fully_analyzed"}
    apply_dynamic_loading_java(orig, True)
    assert orig["java"] == "fully_analyzed"


def test_apply_dynamic_loading_java_propagates_to_categories():
    # Because GOVER==NING_SURFACES for root/ssl both include "java", a partial java
    # surface removes the confident-negative status for both categories.
    cov = apply_dynamic_loading_java(
        {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed"}, True
    )
    assert category_is_confident_negative("root", cov) is False
    assert category_is_confident_negative("ssl", cov) is False


def test_confidence_bound_plain_number_when_fully_analyzed():
    # L-M4: a fully-analyzed verdict's confidence IS a point estimate - render the
    # bare number, no upper-bound annotation (never over-downgrade).
    verdict = CategoryVerdict(confidence=0.2, detected=False, evidence=[])
    line = confidence_bound("root", verdict, {
        "java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed",
    })
    assert line == "0.20"
    assert "upper bound" not in line


def test_confidence_bound_appends_upper_bound_when_native_partial():
    # L-M4: a coverage-limited verdict's numeric confidence is an upper bound - a
    # native=partial governing surface means more root detection could exist that
    # this scan didn't see. The rendered line must say so, naming the binding
    # surface, instead of printing the point estimate as if the scan were complete.
    verdict = CategoryVerdict(confidence=0.2, detected=False, evidence=[], coverage_limited=True)
    line = confidence_bound("root", verdict, {
        "java": "fully_analyzed", "native": "partial", "manifest": "fully_analyzed",
    })
    assert line.startswith("0.20")
    assert "upper bound" in line
    assert "native=partial" in line
    # java is fully analyzed so it is NOT named as the binding surface.
    assert "java=fully_analyzed" not in line


def test_confidence_bound_ssl_mentions_partial_manifest():
    # L-M4: ssl's governing surfaces are {java, native, manifest} - a partial
    # manifest resource resolution degrades the manifest surface and must appear
    # in the rendered upper bound even when java+native are complete.
    verdict = CategoryVerdict(confidence=0.7, detected=True, evidence=[], coverage_limited=True)
    line = confidence_bound("ssl", verdict, {
        "java": "fully_analyzed", "native": "fully_analyzed", "manifest": "partial",
    })
    assert line.startswith("0.70")
    assert "upper bound" in line
    assert "manifest=partial" in line
    assert "native=fully_analyzed" not in line


def test_confidence_bound_never_alters_numeric_confidence():
    # L-M4 (ADR-0006): the upper-bound annotation is a RENDERING concern - the
    # numeric confidence on the verdict object is untouched by rendering it.
    verdict = CategoryVerdict(confidence=0.35, detected=False, evidence=[], coverage_limited=True)
    line = confidence_bound("root", verdict, {"native": "unscannable"})
    assert line.startswith("0.35")
    assert verdict.confidence == 0.35  # unchanged


def test_apply_attribution_degraded_java_downgrades_only_fully_analyzed():
    # F4: the DEX scan lost app-owned attribution and matched the WHOLE constant
    # pool -> the java surface is not the fully-attributed one fully_analyzed
    # claims, so it degrades to partial (ADR-0006: an unreliable view of a surface
    # cannot certify a clean over it).
    assert apply_attribution_degraded_java({"java": "fully_analyzed"}, True)["java"] == "partial"
    # never upgrades, never downgrades below partial
    assert apply_attribution_degraded_java({"java": "partial"}, True)["java"] == "partial"
    assert apply_attribution_degraded_java({"java": "unscannable"}, True)["java"] == "unscannable"
    # an attributed scan is untouched - no over-degradation
    assert apply_attribution_degraded_java({"java": "fully_analyzed"}, False)["java"] == "fully_analyzed"
    # other surfaces untouched
    m = apply_attribution_degraded_java({"java": "fully_analyzed", "native": "fully_analyzed"}, True)
    assert m["java"] == "partial" and m["native"] == "fully_analyzed"
    # additive: returns a new dict, original unchanged
    orig = {"java": "fully_analyzed"}
    apply_attribution_degraded_java(orig, True)
    assert orig["java"] == "fully_analyzed"


def test_apply_attribution_degraded_java_propagates_to_categories():
    # root/ssl both govern on "java", so a whole-pool DEX scan removes the
    # confident-negative status for both - the point of threading the signal.
    cov = apply_attribution_degraded_java(
        {"java": "fully_analyzed", "native": "fully_analyzed", "manifest": "fully_analyzed",
         "js": "fully_analyzed"}, True
    )
    assert category_is_confident_negative("root", cov) is False
    assert category_is_confident_negative("ssl", cov) is False
