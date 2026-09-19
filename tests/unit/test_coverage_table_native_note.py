"""The coverage table must name why a surface is `partial`, where it is read.

The table is the reader's summary of what this scan actually bounds, and every
other non-fully state already carries an inline note gated on the state itself:
`native == "unscannable"`, `js == "partial"`, and `java == "partial"` under heavy
obfuscation (COV-HEAVY-JAVA1). `native == "partial"` had none, so its cause sat
in an evidence section far below - com.whatsapp's run of 2026-09-19 showed
`| native | partial |` with the actual cause (three loaded libraries the APK does
not ship) some 3000 lines further down.

Each clause below is gated on the evidence being present, for the reason
COV-HEAVY-JAVA1 records: a caveat that fires where its own assertion is false
prints a confident specific fact that is wrong. A `partial` with none of the four
recorded causes is a per-library rule outside the body sweep, and says so.
"""

from __future__ import annotations

import types
from pathlib import Path

from report.generator import TEMPLATE

_REPO = Path(__file__).resolve().parents[2]


def _render(**ctx) -> str:
    """Render the Scan Coverage block, which is where the table and its notes live."""
    src = (_REPO / "src" / "report" / "generator.py").read_text()
    start = src.index("{% if coverage -%}")
    end = src.index("{% if jni_bindings", start)
    env = getattr(TEMPLATE, "environment", TEMPLATE)
    base = {
        "obfuscation_level": None,
        "unaccounted_loads": None,
        "extraction_failures": None,
        "native_scan_errors": None,
        "jni_bindings": None,
    }
    base.update(ctx)
    return env.from_string(src[start:end]).render(**base)


def test_the_native_bound_names_the_cause_that_is_actually_present():
    out = _render(
        coverage={"native": "partial", "java": "fully_analyzed"},
        unaccounted_loads=["dextricks-early", "datax_jni_local", "androidx.graphics.path"],
    )
    assert "| native | partial |" in out, out
    assert "**Native:**" in out, out
    assert 'loaded native targets the APK does not ship (3; see "Unaccounted native loads").' in out, out
    # It must also say what the bound MEANS, not only what caused it.
    assert "a native NEITHER is not proof" in out, out


def test_the_note_fires_only_for_a_partial_native_surface():
    assert "**Native:**" not in _render(coverage={"native": "fully_analyzed"})
    # `unscannable` has its own note; this one must not add a second, contradictory
    # one saying the surface was merely partial.
    unscannable = _render(coverage={"native": "unscannable"})
    assert unscannable.count("**Native:**") == 1, unscannable


def test_the_note_names_only_the_causes_recorded_and_falls_back_when_none_are():
    extracted = _render(
        coverage={"native": "partial"},
        extraction_failures=["lib/x86/libfoo.so: No space left on device"],
    )
    # A single recorded cause must still end the sentence: the clauses are
    # separated, not terminated, so the period lands after whichever is last.
    assert (
        "shipped libraries this run could not extract (1)." in extracted
    ), extracted
    assert "does not ship" not in extracted, extracted

    # Two causes: the separator appears between them, once.
    both = _render(
        coverage={"native": "partial"},
        unaccounted_loads=["dextricks-early"],
        extraction_failures=["lib/x86/libfoo.so: No space left on device"],
    )
    assert "does not ship (1; see \"Unaccounted native loads\"); shipped libraries" in both, both
    assert both.count("; shipped libraries") == 1, both

    unresolved = _render(
        coverage={"native": "partial"},
        jni_bindings=[types.SimpleNamespace(status="unresolved")],
    )
    assert "no library binds" in unresolved, unresolved

    # None of the four: the bound is a per-library rule, and saying anything more
    # specific than that would be inventing a cause.
    bare = _render(coverage={"native": "partial"})
    assert "a per-library rule outside the body sweep." in bare, bare
    assert "does not ship" not in bare, bare
