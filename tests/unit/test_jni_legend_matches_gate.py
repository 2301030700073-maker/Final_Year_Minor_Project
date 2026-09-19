"""The JNI legend must state the predicate the gate actually applies.

The report's JNI binding map tells the reader what each status MEANS for
coverage, so its wording is load-bearing. The `dynamic_candidate` bullet asserted
"(bodies statically invisible → surface partial)" - a downgrade the code does not
perform. `has_unresolved` counts only `unresolved`, `apply_unresolved_native`
returns coverage untouched otherwise, and `dynamic_candidate` appears nowhere in
`coverage.py` or `cli.py` at all.

Real output makes the cost concrete: com.whatsapp's run of 2026-09-19 recorded
3233 `dynamic_candidate` against 0 `unresolved`, with `native=partial`. A reader
of that report takes the legend at its word and attributes the bound to those
3233 bindings - which never touched it, because the gate was never armed. The
actual cause is elsewhere (an unaccounted load, an extraction loss, or a
lib-level rule).

The code's predicate is the defensible one: a dynamically-bound method's
*binding* is statically invisible while its library's bodies are still analyzed,
so the surface is not unexamined; a method with no export AND no `JNI_OnLoad`
anywhere is. These tests pin the prose to that predicate - and the control in the
second one is what makes "unchanged" mean anything, since a gate that can never
downgrade would pass the same assertion while proving nothing.
"""

from __future__ import annotations

from pathlib import Path

from static.coverage import apply_unresolved_native
from static.jnibridge import JNIBinding, has_unresolved

_REPO = Path(__file__).resolve().parents[2]


def test_the_legend_does_not_claim_a_downgrade_the_gate_never_applies():
    src = (_REPO / "src" / "report" / "generator.py").read_text()
    assert "statically invisible → surface partial" not in src, (
        "the legend again claims a dynamic_candidate bounds coverage; "
        "has_unresolved does not count it"
    )
    assert "does NOT bound native coverage" in src, (
        "the legend must say which status actually bounds native coverage"
    )


def test_a_dynamic_candidate_alone_leaves_the_native_surface_fully_analyzed():
    dyn = [JNIBinding(class_name="io.requery.android.database.CursorWindow",
                      method_name="nativeGetLong", status="dynamic_candidate")]
    assert has_unresolved(dyn) is False
    assert apply_unresolved_native({"native": "fully_analyzed"}, has_unresolved(dyn)) == {
        "native": "fully_analyzed"
    }

    # The control: the same call path with the status the legend does name as
    # bounding. Without this, the assertion above would hold just as well if the
    # gate were dead code.
    unres = [JNIBinding(class_name="com.app.Vault", method_name="checksum",
                        status="unresolved")]
    assert has_unresolved(unres) is True
    assert apply_unresolved_native({"native": "fully_analyzed"}, has_unresolved(unres)) == {
        "native": "partial"
    }
