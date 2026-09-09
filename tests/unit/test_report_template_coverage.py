"""Structural guard: every variable a report template references is provided.

The report templates are rendered by a plain `jinja2.Environment()` (default
`Undefined`). Under default Undefined a `{{ some_var }}` that no code path
provides does NOT raise - it renders as the **empty string, silently**. For a
report whose entire reason to exist is to state coverage caveats honestly and
never drop them (ADR-0006, and the whole `verdict_label`/`confidence_bound`
coverage layer), a caveat that silently renders blank because a template edit
outran its data provider is the single worst failure mode: the report still
looks complete. (A variable used in arithmetic or iteration - `{% if x > 0 %}`,
`{% for x %}` - would instead crash mid-render, an equally unacceptable but at
least loud outcome. Both are prevented here.)

Nothing else guards this. `test_regen_field_coverage.py` protects the
persistence round-trip; this protects the template <- render() boundary.

The check, per template, is purely structural (AST + Jinja parse, no pipeline
run, toolchain-free):

  * the set of top-level variables the template REFERENCES comes from
    `jinja2.meta.find_undeclared_variables`, minus names the template assigns
    itself (`{% set %}` / `{% for %}` targets - template-local, not the
    provider's job to supply);
  * the set of variables the render call PROVIDES comes from that
    `<TEMPLATE>.render(...)` call's own keyword arguments, expanding any
    `**_helper(...)` splat by calling the helper and taking its keys;
  * every referenced variable must be in the provided set. (The reverse is not
    required: a render kwarg the template never uses is harmless.)

Add `{{ new_caveat_var }}` to a template without wiring it into the matching
`render(...)` and this test fails immediately, naming the variable - instead of
the caveat shipping blank.
"""
from __future__ import annotations

import ast
import inspect
from pathlib import Path

import pytest
from jinja2 import meta, nodes

import report.generator as G

_GEN_SRC = Path(G.__file__).read_text(encoding="utf-8")
_GEN_AST = ast.parse(_GEN_SRC)


def _template_source(var_name: str) -> str:
    """The literal string assigned to a module-level `<var_name> = _env.from_string("...")`."""
    for node in ast.walk(_GEN_AST):
        if isinstance(node, ast.Assign) and any(
            isinstance(t, ast.Name) and t.id == var_name for t in node.targets
        ):
            call = node.value
            if (
                isinstance(call, ast.Call)
                and call.args
                and isinstance(call.args[0], ast.Constant)
                and isinstance(call.args[0].value, str)
            ):
                return call.args[0].value
    raise AssertionError(f"could not locate `{var_name} = _env.from_string(<str>)` in generator.py")


def _call_func_name(value: ast.expr) -> str | None:
    """Name of the function in a `**_helper(...)` splat, unwrapping a walrus
    (`**(_x := _helper(...))`). Returns None if it is not a plain call to a
    module-level function."""
    if isinstance(value, ast.NamedExpr):  # walrus: (_x := _helper(...))
        value = value.value
    if isinstance(value, ast.Call) and isinstance(value.func, ast.Name):
        return value.func.id
    return None


def _render_provides(var_name: str) -> set[str]:
    """Variable names supplied by the `<var_name>.render(...)` call: its explicit
    keyword arguments, plus the keys of every `**_helper(...)` splat (obtained by
    actually calling the helper - the only faithful way to know its keys)."""
    render_call = None
    for node in ast.walk(_GEN_AST):
        if (
            isinstance(node, ast.Call)
            and isinstance(node.func, ast.Attribute)
            and node.func.attr == "render"
            and isinstance(node.func.value, ast.Name)
            and node.func.value.id == var_name
        ):
            render_call = node
            break
    assert render_call is not None, f"no `{var_name}.render(...)` call found in generator.py"

    provided: set[str] = set()
    for kw in render_call.keywords:
        if kw.arg is not None:
            provided.add(kw.arg)
            continue
        # `**splat` - resolve the helper and take its returned keys.
        fn_name = _call_func_name(kw.value)
        assert fn_name is not None, (
            f"{var_name}.render() splats an expression this guard cannot resolve "
            f"statically ({ast.dump(kw.value)[:80]}...). Teach _render_provides how "
            f"to enumerate its keys, or this coverage check is unsound."
        )
        fn = getattr(G, fn_name, None)
        assert fn is not None, f"{var_name}.render() splats **{fn_name}(), not found on generator"
        # Every splat helper in the report path takes the stage-results list.
        try:
            keys = set(fn([]).keys())
        except TypeError as exc:  # pragma: no cover - fires only if a helper's arity changes
            raise AssertionError(
                f"could not call splat helper {fn_name}([]) to enumerate its report "
                f"variables ({exc}). If its signature changed, update this guard so it "
                f"still knows which template variables {fn_name} provides."
            ) from exc
        provided |= keys
    return provided


def _template_requires(var_name: str) -> set[str]:
    """Top-level variables the template references, excluding names it binds
    itself (`{% set %}` / loop targets / macro params - template-local)."""
    src = _template_source(var_name)
    parsed = G._env.parse(src)  # module env so custom filters (`md`) are known
    referenced = meta.find_undeclared_variables(parsed)
    local = {n.name for n in parsed.find_all(nodes.Name) if n.ctx in ("store", "param")}
    return referenced - local


# Both report templates rendered by generator.py. Each entry is the module-level
# name of the compiled template constant; its provider is its own render() call.
_TEMPLATES = ["TEMPLATE", "CALIBRATION_TEMPLATE"]


@pytest.mark.parametrize("template_name", _TEMPLATES)
def test_every_template_variable_is_provided_by_its_render_call(template_name):
    required = _template_requires(template_name)
    provided = _render_provides(template_name)
    missing = sorted(required - provided)
    assert not missing, (
        f"{template_name} references {missing} but the {template_name}.render(...) "
        f"call provides no such variable. Under the report env's default Jinja "
        f"Undefined this renders as an empty string silently (or crashes if used in "
        f"a comparison/loop) - the exact silent-dropped-caveat failure this guard "
        f"exists to prevent. Provide {missing[0]!r} in the render call (directly or "
        f"via a splat helper), or stop referencing it in the template."
    )


def test_capture_summary_return_paths_expose_identical_keys():
    """`_capture_summary` has two return paths (no capture stage vs a capture
    stage present). The template's device-reachability line references
    `capture_client_connections`, which is only *safe* today because that line is
    gated by `capture_present`. Lock the stronger invariant instead of relying on
    that gate: both paths must expose the SAME key set, so the template can never
    reference a `_capture_summary` key that is missing on one path (which would
    render blank or crash depending on how it is used)."""
    from common import StageResult

    no_stage = set(G._capture_summary([]).keys())
    with_stage = set(
        G._capture_summary(
            [
                StageResult(
                    stage="capture-traffic",
                    status="failed",
                    evidence={"reason": "no flows", "flow_summary": []},
                )
            ]
        ).keys()
    )
    assert no_stage == with_stage, (
        "_capture_summary return paths diverge: "
        f"only-with-stage={sorted(with_stage - no_stage)}, "
        f"only-without-stage={sorted(no_stage - with_stage)}. Both paths must "
        "expose the same keys so the template never hits an undefined capture var."
    )


def test_guard_is_wired_to_the_real_generator_module():
    """Sanity: the AST this guard parses is the generator module actually imported
    (not a stale copy), so a real template edit is what gets checked."""
    assert Path(G.__file__) == Path(inspect.getsourcefile(G.generate_report))


def test_calibration_template_strict_render_resolves_every_report_attribute():
    """Attribute-level coverage for CALIBRATION_TEMPLATE, which the structural
    check above cannot give it.

    That check verifies each template's TOP-LEVEL variables are provided. For
    CALIBRATION_TEMPLATE the only top-level variable is `report` - a single object -
    so it is nearly vacuous: it confirms `report` is passed (always true) but cannot
    see that `{{ report.generated_at }}`, `{{ t2.n }}`, or `{{ t1.confirmed }}` names
    a REAL attribute. Under the report env's default Undefined, a renamed dataclass
    field or a typo'd template attribute that is merely PRINTED renders as a silent
    empty string - a blanked timestamp or metric in a scientific artifact that still
    looks complete, the exact ADR-0006 silent-drop this file exists to prevent (the
    render-based tests in test_calibration_report_generator.py assert specific
    CAVEATS, but not that every table cell / header value is non-blank).

    Render the real template SOURCE (same AST extraction the structural guard uses)
    through a StrictUndefined env, with the same custom filters and a fully-computed
    report, so every attribute path the template visits must resolve or the render
    raises UndefinedError naming the broken reference. The fixture deliberately turns
    ON the conditional branches (root's TN=0 tautology caveat and known-miss caveat,
    the SSL-partial note, the small-corpus skeleton warning) so the strict pass walks
    nearly every attribute path, not only the always-rendered header/table/curve ones.

    Scope: the main TEMPLATE receives many flat kwargs and is well-covered by the
    structural check plus its render-based tests; this strict pass targets the
    single-object calibration template, where the top-level check sees almost nothing.
    """
    from jinja2 import Environment, StrictUndefined, UndefinedError

    from calibration.report import compute_calibration_report
    from calibration.types import GroundTruthEntry, RunRow

    fully = {"java": "fully_analyzed", "native": "fully_analyzed",
             "manifest": "fully_analyzed", "js": "fully_analyzed"}
    runs = [
        RunRow(
            apk_hash="tp_hash", run_id="r1", action="ROOT_ONLY",
            root_confidence=0.9, root_detected=True, root_bypassed=True,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="complete", coverage=fully,
        ),
        RunRow(
            apk_hash="miss_hash", run_id="r2", action="NEITHER",
            root_confidence=0.3, root_detected=False, root_bypassed=None,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="complete", coverage={**fully, "java": "partial"},
        ),
    ]
    ground_truth = {
        # tp_hash: detected root + GT root -> root TP=1, no FP, no TN -> TN=0
        # tautology caveat fires; miss_hash: GT root present, prediction NEITHER,
        # coverage-excluded -> known-miss caveat fires. Both under `root`.
        "tp_hash": GroundTruthEntry("tp_hash", root=True, ssl=False, source="manual review"),
        "miss_hash": GroundTruthEntry("miss_hash", root=True, ssl=False, source="DEX-verified"),
    }
    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    strict = Environment(undefined=StrictUndefined)
    strict.filters.update(G._env.filters)  # md, edge - the filters the real env registers
    src = _template_source("CALIBRATION_TEMPLATE")

    # Current template: every visited attribute path resolves -> no UndefinedError.
    strict.from_string(src).render(report=report)

    # Teeth: a typo'd attribute DOES raise under the same strict env, proving this
    # guard would catch a future field rename instead of silently shipping a blank.
    # (Without this negative control the positive render alone could pass vacuously
    # if StrictUndefined were ever mis-wired.)
    broken = src.replace("{{ report.generated_at }}", "{{ report.generatedd_at }}")
    assert broken != src, "expected `{{ report.generated_at }}` in the template to build the negative control"
    with pytest.raises(UndefinedError):
        strict.from_string(broken).render(report=report)
