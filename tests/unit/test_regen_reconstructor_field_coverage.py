"""Every `*_from_json` reconstructor must rebuild EVERY field of its dataclass.

The stored render path is the one that rewrites a consumer-facing report, and it
reconstructs the run's objects from JSON before rendering. A field the
reconstructor does not pass falls back to the dataclass default, so the
regenerated report silently shows the default where the live report showed the
run's real value. That is not hypothetical: 12 fields were being dropped this way
(REGEN-FIELDLOSS1), most consequentially `ClassificationResult.unknown_uncovered`,
which drives the coverage-limited caveat - so a coverage-bound NEITHER came back
as a confident negative. `ManifestInfo` lost its attack-surface and SSL-policy
facts the same way.

The check is dynamic (dataclasses.fields against the keywords the call actually
passes), so a field added to any of these dataclasses fails here until the
reconstructor carries it.

Deliberately LOUD about a class it cannot resolve: an earlier version of this
sweep looked the reconstructed class up in one module's namespace, found nothing
for `ManifestInfo` - which lives in static/manifest.py - and reported "no gaps"
for it by never examining it at all. A guard that skips what it does not
understand reports success for exactly the case it exists to catch, so an
unresolved class name is an error here, not a skip.
"""

import ast
import dataclasses
from pathlib import Path

import common
from static.manifest import ManifestInfo

ROOT = Path(__file__).resolve().parents[2]
CLI = (ROOT / "src" / "cli.py").read_text(encoding="utf-8")

# Everything a reconstructor may build. Missing names fail loudly (see the
# docstring) rather than being skipped - register new homes here.
REGISTRY = {name: obj for name, obj in vars(common).items() if isinstance(obj, type)}
REGISTRY["ManifestInfo"] = ManifestInfo


def _pairs():
    """(function name, class name, kwargs) for every reconstructor call."""
    found = []
    for fn in ast.walk(ast.parse(CLI)):
        if not (isinstance(fn, ast.FunctionDef) and "from_json" in fn.name):
            continue
        for call in ast.walk(fn):
            if not isinstance(call, ast.Call):
                continue
            name = getattr(call.func, "id", None) or getattr(call.func, "attr", None)
            # Uppercase first letter: a class being constructed, not a helper.
            if name and name[:1].isupper():
                found.append((fn.name, name, {k.arg for k in call.keywords if k.arg}))
    return found


PAIRS = _pairs()
DATACLASS_PAIRS = [(f, n, k) for f, n, k in PAIRS if n in REGISTRY and dataclasses.is_dataclass(REGISTRY[n])]


def test_the_sweep_found_the_reconstructors():
    """Non-vacuity: the scan must see the family it checks."""
    assert len(DATACLASS_PAIRS) >= 6, sorted({n for _, n, _ in PAIRS})
    assert {n for _, n, _ in DATACLASS_PAIRS} >= {
        "ClassificationResult", "CategoryVerdict", "Evidence",
        "VerificationResult", "CorrelationResult", "StageResult", "ManifestInfo",
    }


def test_no_reconstructor_builds_a_class_this_check_cannot_see():
    """An unresolved name would make this file report success for an unexamined class."""
    unresolved = sorted({n for _, n, _ in PAIRS if n not in REGISTRY})
    assert unresolved == [], (
        f"{unresolved} built by a reconstructor but not resolvable here - add its "
        "class to REGISTRY, or this guard is blind to it"
    )


def test_every_reconstructor_passes_every_field():
    gaps = {
        f"{fn}->{name}": sorted({f.name for f in dataclasses.fields(REGISTRY[name])} - kwargs)
        for fn, name, kwargs in DATACLASS_PAIRS
    }
    assert {k: v for k, v in gaps.items() if v} == {}, (
        "a field the reconstructor does not pass comes back as the dataclass default, "
        "so a regenerated report shows a value the run never recorded"
    )
