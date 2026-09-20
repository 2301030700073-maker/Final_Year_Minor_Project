"""The coverage_causes contract has four legs, and every key must survive all four.

A key that travels three of them is the defect this guards. A key persisted and
replayed but read by no Jinja delimiter dies one step from the record - the value
was computed, stored, and silently rendered as nothing, which is the same failure
the console-is-not-a-record rule exists for, one layer further in. A key the live
render reads but _regenerate_report never replays is the mirror image: the run's
own report is correct and the *stored* one loses the fact.

  1. cli.py's `coverage_causes` dict          - the producer
  2. generate_report()'s parameters           - accepted by the live render
  3. a Jinja delimiter in the template        - actually read
  4. _regenerate_report()'s replay            - read by the stored render

Leg 3 strips `{# ... #}` comments first. A name that appears only in a note is not
read, and the manifest keys are exactly the ones that could look wired that way,
since the comments introducing them name them.

Parsing is ast-based rather than regex so a reformatted call cannot make these
pass vacuously; the counts are asserted non-zero for the same reason.
"""

import ast
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CLI = (ROOT / "src" / "cli.py").read_text(encoding="utf-8")
GENERATOR = (ROOT / "src" / "report" / "generator.py").read_text(encoding="utf-8")


def _dict_keys(call_or_dict):
    """Keys of a dict literal or dict(...) call."""
    if isinstance(call_or_dict, ast.Dict):
        return [k.value for k in call_or_dict.keys if isinstance(k, ast.Constant)]
    if isinstance(call_or_dict, ast.Call):
        return [kw.arg for kw in call_or_dict.keywords if kw.arg]
    return []


def coverage_causes_keys():
    """Leg 1: the names bound in cli.py's coverage_causes dict."""
    for node in ast.walk(ast.parse(CLI)):
        if isinstance(node, ast.Assign) and any(
            isinstance(t, ast.Name) and t.id == "coverage_causes" for t in node.targets
        ):
            return _dict_keys(node.value)
    raise AssertionError("coverage_causes is no longer assigned in cli.py")


def _func(name, source):
    for node in ast.walk(ast.parse(source)):
        if isinstance(node, ast.FunctionDef) and node.name == name:
            return node
    raise AssertionError(f"{name} not found")


def generate_report_params():
    """Leg 2: the parameters generate_report accepts."""
    fn = _func("generate_report", GENERATOR)
    args = fn.args.posonlyargs + fn.args.args + fn.args.kwonlyargs
    return [a.arg for a in args]


def regenerate_replay_names():
    """Leg 4: the keyword names _regenerate_report passes to generate_report."""
    check = _func("_regenerate_report", CLI)
    for node in ast.walk(check):
        if isinstance(node, ast.Call):
            f = node.func
            if (isinstance(f, ast.Name) and f.id == "generate_report") or (
                isinstance(f, ast.Attribute) and f.attr == "generate_report"
            ):
                return [kw.arg for kw in node.keywords if kw.arg]
    raise AssertionError("_regenerate_report no longer calls generate_report")


def jinja_read_names():
    """Leg 3: names read inside a Jinja delimiter, comments stripped."""
    body = re.sub(r"\{#.*?#\}", " ", GENERATOR, flags=re.S)
    delims = " ".join(re.findall(r"\{\{.*?\}\}|\{%.*?%\}", body, flags=re.S))
    return set(re.findall(r"[A-Za-z_]\w*", delims))


KEYS = coverage_causes_keys()


def test_the_parser_found_the_real_contract():
    """A vacuous parse would make every other test here pass for free."""
    assert len(KEYS) >= 15, KEYS
    assert "manifest_resources_complete" in KEYS and "js_asset_surface_extracted" in KEYS
    assert len(generate_report_params()) >= 30
    assert len(regenerate_replay_names()) >= 15
    assert len(jinja_read_names()) >= 100


def test_every_key_is_a_generate_report_parameter():
    params = set(generate_report_params())
    assert [k for k in KEYS if k not in params] == []


def test_every_key_is_read_by_a_jinja_delimiter():
    """Not merely present in the file - present inside {{ }} or {% %}."""
    read = jinja_read_names()
    assert [k for k in KEYS if k not in read] == []


def test_every_key_is_replayed_by_regenerate_report():
    """The live render and the stored render must read the same set."""
    replayed = set(regenerate_replay_names())
    assert [k for k in KEYS if k not in replayed] == []
