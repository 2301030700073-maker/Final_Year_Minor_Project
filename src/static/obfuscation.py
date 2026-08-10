"""Obfuscation-level detection (ADR-0008 group A, roadmap item 2).

Deterministic per-run `obfuscation_level ∈ clear | light | heavy`, derived by
one concrete rule (G7): the ratio of single-char class identifiers among the
decompiled Java classes. A minified/obfuscated app (ProGuard/R8 with short
names) has a high proportion of one- or two-char class names; a clear app does
not. The thresholds are empirical starting points validated by manual inspection
against the known corpus (N3) - there is no obfuscation calibration dimension,
so this text never promises an automated tuning loop that doesn't exist.

Pure module: no I/O, no toolchain - feed it a list of class simple names and it
returns the level. `heavy` forces the Java surface to partial in the coverage
contract (N1/G-C) so a heavy target's clean NEITHER can't certify as a confident
TN.
"""

from __future__ import annotations

from pathlib import Path
from typing import Literal

ObfuscationLevel = Literal["clear", "light", "heavy"]

# G7: single-char class-name ratio thresholds. > 0.40 heavy, > 0.10 light,
# else clear. Documented as empirical starting points (N3), not asserted.
HEAVY_RATIO = 0.40
LIGHT_RATIO = 0.10


def _class_simple_names(java_files: list[Path]) -> list[str]:
    """Extract the simple class names from decompiled .java files - the final
    identifier before the opening brace, which is what minifiers shorten. Empty
    corpus => [] (the caller decides how an empty corpus reads, not here)."""
    names: list[str] = []
    for p in java_files:
        try:
            text = p.read_text(encoding="utf-8", errors="ignore")
        except OSError:
            continue
        # Match a top-level `public/class|interface|enum <Name>` - take the
        # identifier that follows the class keyword on the same line. This is a
        # deterministic heuristic; it does not need a full Java parser.
        for line in text.splitlines():
            stripped = line.strip()
            for kw in ("class ", "interface ", "enum "):
                idx = stripped.find(kw)
                if idx == -1:
                    continue
                after = stripped[idx + len(kw):].strip()
                name = after.split(" ")[0].split("{")[0].split("<")[0]
                name = name.strip()
                # R8 emits `a$b` inner-class names; isidentifier() rejects the
                # `$`, so allow alnum plus `_` and `$` (H6).
                if name and all(c.isalnum() or c in ("_", "$") for c in name):
                    names.append(name)
                break
    return names


def _is_minified_name(n: str) -> bool:
    """A name reads as minified when it is one/two chars (`a`, `b`, `aa`, `ab`),
    OR it is an R8-flattened inner class whose *outer* segment is itself short
    (`a$a`). A bare `$` is NOT enough: `Cache$urls$1` is the normal inner/
    anonymous-class marker in a clear app and would mislabel it as minified (C1)."""
    if len(n) <= 2:
        return True
    outer = n.split("$", 1)[0]
    return len(outer) <= 2


def _minified_name_ratio(names: list[str]) -> float:
    """Fraction of names that look minified (see _is_minified_name). Single-char-
    only missed real R8, which uses two-char and `$` names, so the heavy guard
    never fired on the population it targets (H6); requiring the outer segment to
    also be short keeps clear apps' inner classes from being counted (C1)."""
    if not names:
        return 0.0
    minified = sum(1 for n in names if _is_minified_name(n))
    return minified / len(names)


def detect_obfuscation_level(java_files: list[Path]) -> ObfuscationLevel:
    """G7: the one deterministic rule. Empty corpus => 'clear' (nothing to
    observe; the coverage contract separately marks a low-corpus Java surface
    partial via decompile_completeness, so this can't over-claim absence)."""
    names = _class_simple_names(java_files)
    ratio = _minified_name_ratio(names)
    if ratio > HEAVY_RATIO:
        return "heavy"
    if ratio > LIGHT_RATIO:
        return "light"
    return "clear"


def obfuscation_from_names(names: list[str]) -> ObfuscationLevel:
    """Fixture-testable entry point - pass class simple names directly instead
    of walking files. Used by unit tests and by callers that already hold the
    name list."""
    ratio = _minified_name_ratio(names)
    if ratio > HEAVY_RATIO:
        return "heavy"
    if ratio > LIGHT_RATIO:
        return "light"
    return "clear"
