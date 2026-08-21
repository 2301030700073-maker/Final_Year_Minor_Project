"""Per-surface coverage contract (ADR-0008 group B, roadmap items 9-11).

Each analysis surface (Java decompile, native `.so`, manifest/resources) is
assigned `fully_analyzed | partial | unscannable` - the explicit *bound* of a
scan. A `partial`/`unscannable` surface reads as a lower bound, never a silent
confident negative (extends ADR-0006's measured-not-asserted discipline). Pure
module: no I/O, no toolchain - every function is fixture-testable anywhere.

Combination rules encoded here (G2, G-C, G10, G-B, G6, N1):
- The Java surface is derived from `decompile_completeness`, *modified* by
  obfuscation: `obfuscation_level == heavy` forces it to `partial` regardless
  of decompile status (N1/G-C). `min(decompile_completeness, obfuscation)`.
- Native coverage comes from the per-ABI degradation map (G10/G-B/G6).
- Manifest coverage: a failed manifest parse is `unscannable`; a successful
  parse of the manifest + referenced resources is `fully_analyzed`, unless
  resource resolution is partial (G9).

Per-category governing surface sets (G-A): `root -> {java, native}`,
`ssl -> {java, native, manifest}`. A category's negative is confident only if
EVERY governing surface is `fully_analyzed` - so a root check hiding in a
stripped .so excludes the root category even when Java is complete.
"""

from __future__ import annotations

from dataclasses import replace
from typing import Literal

from common import ClassificationResult

Coverage = Literal["fully_analyzed", "partial", "unscannable"]

# G-A: which surfaces govern each detection category. Adding a surface here is
# the single point that makes a new evidence source gate Tier-2 (F2).
GOVERNING_SURFACES: dict[str, tuple[str, ...]] = {
    "root": ("java", "native", "js"),
    "ssl": ("java", "native", "manifest", "js"),
}

_ALL_SURFACES: tuple[str, ...] = ("java", "native", "manifest", "js")


def _min_coverage(states: list[Coverage]) -> Coverage:
    """Severity-ordered minimum: unscannable < partial < fully_analyzed. Used so
    the most restrictive surface sets the overall bound (a partial anywhere is
    a partial everywhere)."""
    rank = {"fully_analyzed": 0, "partial": 1, "unscannable": 2}
    worst = max(states, key=lambda c: rank[c])
    return worst


def java_coverage(
    decompile_completeness: str, obfuscation_level: str, packed: bool = False
) -> Coverage:
    """G2/G-C/N1/Gap-2: Java surface = decompile completeness, forced to partial
    under heavy obfuscation OR a detected packer. A complete decompile of a
    clear/light target is fully_analyzed; a heavy target's encrypted strings
    aren't reachable, so its surface is partial even on exit-0 (a heavy clean
    NEITHER must not certify as a confident TN). A packed target's real DEX is
    hidden behind a loader, so its surface is partial the same way - even a
    'complete' decompile only sees the loader stub, never the real code
    (ADR-0006)."""
    base = {"complete": "fully_analyzed", "partial": "partial", "unknown": "unscannable"}
    state = base.get(decompile_completeness, "unscannable")
    if obfuscation_level == "heavy" or packed:
        return "partial" if state == "fully_analyzed" else state
    return state


def native_coverage(abi_coverage: dict[str, str]) -> Coverage:
    """G6: native surface = the worst per-ABI state. A device-only scan that
    under-covers one ABI shows partial/unscannable overall, so it can't silently
    under-cover. Empty dict (no .so present) => unscannable, not fully_analyzed."""
    if not abi_coverage:
        return "unscannable"
    return _min_coverage(list(abi_coverage.values()))


def manifest_coverage(manifest_parsed: bool, resources_complete: bool) -> Coverage:
    """G9: a parsed manifest with complete resource resolution is fully_analyzed;
    a parse failure is unscannable; a partial resource resolution is partial."""
    if not manifest_parsed:
        return "unscannable"
    return "fully_analyzed" if resources_complete else "partial"


def per_surface_coverage(
    decompile_completeness: str,
    obfuscation_level: str,
    abi_coverage: dict[str, str],
    manifest_parsed: bool,
    resources_complete: bool,
    packed: bool = False,
) -> dict[str, Coverage]:
    """The per-surface map for the toolchain-derived surfaces: returns
    java/native/manifest (the ones computable from its parameters). The `js`
    governing surface is patched in by the caller (cli) from the Hermes-bundle
    probe, which this function has no evidence input for - so the returned map is
    not literally every governing-surface name, and a caller must add `js` before
    feeding it to category_is_confident_negative. A surface with no evidence
    source reports unscannable so it never certifies a confident negative.
    `packed` (a detected packer) forces the Java surface to partial - the real
    DEX is hidden."""
    return {
        "java": java_coverage(decompile_completeness, obfuscation_level, packed),
        "native": native_coverage(abi_coverage),
        "manifest": manifest_coverage(manifest_parsed, resources_complete),
    }


# Dart AOT app snapshot (Flutter). A release Flutter APK compiles its Dart
# application logic - the app's real root/SSL detection surface, which lives in
# Dart, not Java - into a native snapshot blob. Unlike ordinary native code it
# carries no readable Java_* exports or ELF symbols, so native symbol/string/
# Ghidra tooling cannot analyze it. Its presence therefore bounds the native
# surface (see dart_aot_coverage) the way a Hermes bundle bounds `js`.
DART_AOT_LIBS = frozenset({"libapp.so", "dart.so"})


def is_dart_aot_lib(name: str | None) -> bool:
    """True for a Dart AOT snapshot basename: `libapp.so` (standard Flutter
    release name) or `dart.so`. These hold the app's Dart-compiled detection
    logic as a packed blob - a genuine unexamined native surface."""
    return bool(name) and name in DART_AOT_LIBS


def dart_aot_coverage(
    coverage: dict[str, Coverage],
    has_dart_aot: bool,
) -> dict[str, Coverage]:
    """Downgrade the native surface to `partial` when the app ships a Dart AOT
    snapshot (a Flutter app). The snapshot holds the app's real root/SSL logic,
    compiled to a blob our native tooling cannot analyze the way it analyzes a
    normal `.so` (no Java_* exports, no readable symbols). A native NEITHER over
    a Dart-AOT-bearing app must never certify as a confident negative (ADR-0006).
    Pure: returns a new dict, only ever downgrades fully_analyzed -> partial
    (never upgrades), so it is additive and safe alongside apply_coverage_bound."""
    if not has_dart_aot:
        return coverage
    if coverage.get("native") == "fully_analyzed":
        return {**coverage, "native": "partial"}
    return coverage


def js_surface_coverage(has_binary_bundle: bool) -> Coverage:
    """Real-world gap A1: a Hermes/bytecode JS bundle (React Native release
    `assets/index.android.bundle`, `.hbc`) is binary, so the text engine skips it
    and jadx only reads DEX. We can recover its string-constant table, not the
    surrounding JS control flow - so its surface is `partial`, never a confident
    negative over root/SSL logic that lives in the bundle. With no binary bundle
    present the surface is vacuously `fully_analyzed` (either no JS, or plain-text
    JS the signature engine already scans)."""
    return "partial" if has_binary_bundle else "fully_analyzed"


def apply_unresolved_native(
    coverage: dict[str, Coverage],
    has_unresolved: bool,
) -> dict[str, Coverage]:
    """Boundary-3: downgrade the native surface to `partial` when a declared
    `native` method is `unresolved` (no Java_* export AND no JNI_OnLoad in any
    extracted lib binds it) - a genuine unexamined surface. A NEITHER over a
    native surface that carries an unresolved declared native method must not
    certify as a confident negative. Pure: returns a new dict, only ever
    downgrades fully_analyzed -> partial (never upgrades), so it is additive and
    safe alongside `apply_coverage_bound`."""

    if not has_unresolved:
        return coverage
    if coverage.get("native") == "fully_analyzed":
        return {**coverage, "native": "partial"}
    return coverage


def apply_unresolved_java(
    coverage: dict[str, Coverage],
    has_unresolved: bool,
) -> dict[str, Coverage]:
    """Coverage-limited: dynamic code loading present (DexClassLoader /
    PathClassLoader / Class.forName / DexFile / loadDex) means the app releases
    and loads a payload DEX at runtime - code the static scan cannot see. Downgrade
    the java surface to `partial` so a java NEITHER is never a confident negative
    over a dynamically-hidden payload (ADR-0006). Pure: returns a new dict, only
    ever downgrades fully_analyzed -> partial (never upgrades), so it is additive
    and safe alongside `apply_coverage_bound`."""

    if not has_unresolved:
        return coverage
    if coverage.get("java") == "fully_analyzed":
        return {**coverage, "java": "partial"}
    return coverage


def category_is_confident_negative(
    category: str,
    coverage: dict[str, Coverage],
) -> bool:
    """F2/G-A: a category's NEITHER is a confident negative only if EVERY one of
    its governing surfaces is fully_analyzed. If any governing surface is
    partial/unscannable, the negative is not proof of absence and calibration
    must exclude it (returned False). Unknown category => never confident."""
    surfaces = GOVERNING_SURFACES.get(category)
    if surfaces is None:
        return False
    return all(coverage.get(s) == "fully_analyzed" for s in surfaces)


def coverage_bound_line(coverage: dict[str, Coverage]) -> str:
    """L-M4: one console line making the coverage bound explicit - the per-surface
    map plus, per detection category, whether a NEITHER there would be a confident
    negative or a coverage-bound lower bound. A verdict is never read as confident
    absence when a governing surface is partial/unscannable. Pure string builder
    (fixture-testable); the console print is wired in cli.py."""
    surface_part = ", ".join(f"{k}={v}" for k, v in coverage.items())
    cat_parts = []
    for category in GOVERNING_SURFACES:
        statuses = ", ".join(f"{s}={coverage.get(s, 'unknown')}" for s in GOVERNING_SURFACES[category])
        if category_is_confident_negative(category, coverage):
            cat_parts.append(f"{category}: NEITHER is a confident negative ({statuses})")
        else:
            cat_parts.append(f"{category}: NEITHER is a lower bound, NOT confident ({statuses})")
    return f"Coverage bound: {surface_part}; " + "; ".join(cat_parts)


def confidence_bound(category: str, verdict, coverage: dict[str, Coverage]) -> str:
    """L-M4: the rendered confidence for one category verdict, honouring the
    coverage bound.

    A coverage-limited verdict's numeric confidence is an UPPER bound, not a
    point estimate: a governing surface (native, manifest...) that was not fully
    analyzed means more detection could exist that this scan did not see. So for
    a coverage-limited verdict this renders the bare number plus an explicit
    "(upper bound: <surface>=<status>...)" annotation naming the non-fully-
    analyzed governing surfaces - instead of printing the point estimate as if
    the scan were complete. A fully-analyzed verdict's confidence IS a point
    estimate, so it renders the bare number unchanged. Pure string builder
    (fixture-testable); report (generator.py) and console (cli.py) both call it.
    Never alters verdict.confidence - this is a RENDERING concern only (ADR-0006:
    the honest bound is surfaced, the numeric value is untouched)."""
    if not verdict.coverage_limited:
        return f"{verdict.confidence:.2f}"
    cov = coverage or {}
    limited = [
        f"{s}={cov.get(s, 'unknown')}"
        for s in GOVERNING_SURFACES.get(category, ())
        if cov.get(s) != "fully_analyzed"
    ]
    bound = ", ".join(limited) if limited else "partial"
    return f"{verdict.confidence:.2f} (upper bound: {bound})"


def apply_coverage_bound(
    classification: ClassificationResult,
    coverage: dict[str, Coverage],
) -> ClassificationResult:
    """L-M4/L-M3: bind each category's verdict to its governing-surface coverage.

    A category whose governing surface is NOT fully analyzed gets
    verdict.coverage_limited=True (its confidence is an upper bound, not a point
    estimate) and its name recorded in classification.unknown_uncovered - the
    L-M3 machine-readable "unknown, not absent" marker - so a NEITHER over an
    uncovered surface can never be read by a downstream consumer of
    classification_json as a confident negative (NFR-7). Fully-analyzed
    categories are untouched, so this is additive: a clean, fully-covered scan
    yields unknown_uncovered == []. Pure (no I/O), returns a new ClassificationResult.
    """
    limited = [
        cat for cat in GOVERNING_SURFACES
        if not category_is_confident_negative(cat, coverage)
    ]
    return replace(
        classification,
        root=replace(classification.root, coverage_limited="root" in limited),
        ssl=replace(classification.ssl, coverage_limited="ssl" in limited),
        unknown_uncovered=limited,
    )


def apply_unattributed_indicators(
    classification: ClassificationResult,
    unattributed: dict[str, bool],
) -> ClassificationResult:
    """Boundary-1: mark detection categories that carry UNATTRIBUTED detection
    indicators (detection-shaped code present in a fully-analyzed surface that
    matched NO signature) as coverage-limited / in unknown_uncovered - so a
    NEITHER there is never a confident negative (ADR-0006). This complements
    apply_coverage_bound, which triggers on scan COMPLETENESS; this triggers on
    CONTENT, closing the signature-bounded hole where a complete, clear decompile
    still hides a technique the corpus doesn't encode (ADR-0001). Only ever
    downgrades (coverage_limited already True from completeness stays True) and
    never touches confidence. Pure, additive: returns a new ClassificationResult."""
    if not unattributed:
        return classification
    root = classification.root
    ssl = classification.ssl
    unknown = list(classification.unknown_uncovered)
    for cat in unattributed:
        if cat == "root":
            root = replace(root, coverage_limited=True)
        elif cat == "ssl":
            ssl = replace(ssl, coverage_limited=True)
        if cat not in unknown:
            unknown.append(cat)
    return replace(classification, root=root, ssl=ssl, unknown_uncovered=unknown)
