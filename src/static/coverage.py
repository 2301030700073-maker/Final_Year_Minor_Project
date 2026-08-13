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

from typing import Literal

Coverage = Literal["fully_analyzed", "partial", "unscannable"]

# G-A: which surfaces govern each detection category. Adding a surface here is
# the single point that makes a new evidence source gate Tier-2 (F2).
GOVERNING_SURFACES: dict[str, tuple[str, ...]] = {
    "root": ("java", "native"),
    "ssl": ("java", "native", "manifest"),
}

_ALL_SURFACES: tuple[str, ...] = ("java", "native", "manifest")


def _min_coverage(states: list[Coverage]) -> Coverage:
    """Severity-ordered minimum: unscannable < partial < fully_analyzed. Used so
    the most restrictive surface sets the overall bound (a partial anywhere is
    a partial everywhere)."""
    rank = {"fully_analyzed": 0, "partial": 1, "unscannable": 2}
    worst = max(states, key=lambda c: rank[c])
    return worst


def java_coverage(decompile_completeness: str, obfuscation_level: str) -> Coverage:
    """G2/G-C/N1: Java surface = decompile completeness, forced to partial under
    heavy obfuscation. A complete decompile of a clear/light target is
    fully_analyzed; a heavy target's encrypted strings aren't reachable, so its
    surface is partial even on exit-0 (a heavy clean NEITHER must not certify as
    a confident TN)."""
    base = {"complete": "fully_analyzed", "partial": "partial", "unknown": "unscannable"}
    state = base.get(decompile_completeness, "unscannable")
    if obfuscation_level == "heavy":
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
) -> dict[str, Coverage]:
    """The full per-surface map, as persisted per run (item 10). Keys are the
    governing-surface names; a surface with no evidence source reports
    unscannable so it never certifies a confident negative."""
    return {
        "java": java_coverage(decompile_completeness, obfuscation_level),
        "native": native_coverage(abi_coverage),
        "manifest": manifest_coverage(manifest_parsed, resources_complete),
    }


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
