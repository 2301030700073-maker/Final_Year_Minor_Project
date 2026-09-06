"""Structural guard against REGEN-FIELDLOSS1.

`cli.py` rebuilds the persisted analysis (for `report --regenerate`) with a set
of hand-maintained `_*_from_json` deserializers. Every one of them has, at some
point, silently dropped a dataclass field - and because a dropped field falls
back to the dataclass default, the failure is INVISIBLE at runtime: the report
regenerates cleanly but says something weaker or wrong. The consequential cases
are documented inline in cli.py and in memory:

  * a dropped `unknown_uncovered` re-rendered a COVERAGE-LIMITED NEITHER as a
    CONFIDENT NEGATIVE (the exact mislabel ADR-0006 forbids);
  * a dropped `pin_set_expirations` re-read an EXPIRED pin-set as active pinning;
  * a dropped `permissions` inverted the INTERNET cross-reference;
  * a dropped `evidence_type` blanked every match's forensic provenance.

Each was fixed reactively, after it shipped. This test makes the contract
PROACTIVE: for every (deserializer, dataclass) pair it introspects the function's
source for the dict keys it reads and asserts that set covers every field of the
dataclass it builds. Add a field to any of these dataclasses and forget to wire
it into the matching `_*_from_json`, and this test fails immediately - naming the
missing field - instead of the omission surfacing as a quietly-wrong report weeks
later.

It is pure/toolchain-free: it reads source with `ast` and dataclass metadata with
`dataclasses.fields`; it executes none of the pipeline.
"""
from __future__ import annotations

import ast
import dataclasses as dc
import inspect

import pytest

import cli
from common import (
    CategoryVerdict,
    ClassificationResult,
    CorrelationResult,
    Evidence,
    StageResult,
    VerificationResult,
)
from static.manifest import ManifestInfo


def _keys_read_by(func) -> set[str]:
    """The set of string-literal dict keys a `_*_from_json` function reads, via
    either `d.get("key"...)` or `d["key"]`. Walks the function's own AST plus any
    nested helper closures it defines (e.g. `_classification_from_json` defines
    `_ev`/`_cat` inline), since those restore the nested dataclasses' fields."""
    src = inspect.getsource(func)
    tree = ast.parse(src)
    keys: set[str] = set()
    for node in ast.walk(tree):
        # d["key"]
        if isinstance(node, ast.Subscript) and isinstance(node.slice, ast.Constant) \
                and isinstance(node.slice.value, str):
            keys.add(node.slice.value)
        # d.get("key" [, default])
        if isinstance(node, ast.Call) and isinstance(node.func, ast.Attribute) \
                and node.func.attr == "get" and node.args \
                and isinstance(node.args[0], ast.Constant) \
                and isinstance(node.args[0].value, str):
            keys.add(node.args[0].value)
    return keys


# (dataclass, deserializer) pairs. The deserializer must read a dict key for
# every field of the dataclass it reconstructs. Evidence and CategoryVerdict are
# rebuilt by the nested `_ev`/`_cat` closures inside `_classification_from_json`,
# so its source (walked whole) must cover their fields too.
_CONTRACTS = [
    (Evidence, cli._classification_from_json),
    (CategoryVerdict, cli._classification_from_json),
    (ClassificationResult, cli._classification_from_json),
    (VerificationResult, cli._verification_from_json),
    (CorrelationResult, cli._correlation_from_json),
    (StageResult, cli._stage_from_json),
    (ManifestInfo, cli._manifest_from_json),
]


@pytest.mark.parametrize(
    "klass, deserializer",
    _CONTRACTS,
    ids=[f"{k.__name__}<-{d.__name__}" for k, d in _CONTRACTS],
)
def test_deserializer_restores_every_dataclass_field(klass, deserializer):
    field_names = {f.name for f in dc.fields(klass)}
    keys_read = _keys_read_by(deserializer)
    missing = field_names - keys_read
    assert not missing, (
        f"{deserializer.__name__} does not restore {sorted(missing)} of "
        f"{klass.__name__}. A field added to the dataclass but not wired into its "
        f"regen deserializer silently re-renders on `report --regenerate` as the "
        f"dataclass default (REGEN-FIELDLOSS1) - read a `{sorted(missing)[0]!r}` "
        f"key in {deserializer.__name__}, or the regenerated report drops it."
    )
