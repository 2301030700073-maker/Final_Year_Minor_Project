"""The documented signature-corpus size is a claim about the YAML, so check it.

Five files state it: CLAUDE.md, README.md, docs/plans/project-limitations.md,
docs/plans/phase1-limitations-resolution-plan.md and
docs/plans/architecture/low-level-design-core-phases-1-4.md. CLAUDE.md is read by
every session that touches this repo, so a stale figure there is a claim the code
contradicts. Nothing was checking it: adding one root signature on 2026-09-20 made
all five wrong - "120 entries / 49 root" against a documented "119 / 48" - and the
whole suite stayed green.

The expected numbers come from the real loaders rather than being written down here,
so this test never needs updating when a signature is added; only the docs do. Note
the two schemas: native and packers have their own loaders, and load_signatures
rejects their pattern types outright.

The two patterns are deliberately shaped differently. The total is taken from the
number immediately before "entries"/"rules", so no lazy gap can wander onto a
neighbouring number: an earlier version of this check let its first group match the
"5" in an adjacent table cell and then "corrected" the wrong figure while the stale
one survived. The per-file breakdown is matched on the file-name words themselves
(root/ssl/native/packers), which leaves no gap to over-match, and is required in all
five docs - a doc that stops stating its breakdown should fail loudly here rather than
quietly drop out of the check.

Scope, stated: these five files only. They are the ones that state the corpus size as
current fact; the session-changes notes and the audit ledger record what was true when
they were written and are left alone.
"""

from __future__ import annotations

import re
from pathlib import Path

import pytest

from static.native import load_native_signatures
from static.packers import load_packer_signatures
from static.signatures import load_signatures

_REPO = Path(__file__).resolve().parents[2]
_DOCS = [
    _REPO / "CLAUDE.md",
    _REPO / "README.md",
    _REPO / "docs" / "plans" / "project-limitations.md",
    _REPO / "docs" / "plans" / "phase1-limitations-resolution-plan.md",
    _REPO / "docs" / "plans" / "architecture" / "low-level-design-core-phases-1-4.md",
]
# "<N> entries" / "<N> signature entries" / "<N>-entry corpus" / "<N> versioned
# detection rules" / "<N> DEX-verified entries" - up to three words may sit between
# the number and the noun. Nothing else.
_TOTAL = re.compile(
    r"(\d+)[-\s](?:[A-Za-z][A-Za-z-]*\s+){0,3}(?:entries|entry|rules|rule)\b", re.I
)
# The per-file numbers, anchored on the file names. The optional "and" is for the
# architecture doc's prose form ("..., 12 `native_detection`, and 8 `packers`").
_BREAKDOWN = re.compile(
    r"(\d+)\s+`?root[A-Za-z_]*`?\s*[,/]\s*(?:and\s+)?"
    r"(\d+)\s+`?ssl[A-Za-z_]*`?\s*[,/]\s*(?:and\s+)?"
    r"(\d+)\s+`?native[A-Za-z_]*`?\s*[,/]\s*(?:and\s+)?"
    r"(\d+)\s+`?packers?`?",
    re.I,
)


def _measured() -> tuple[int, int, int, int]:
    sig = _REPO / "config" / "signatures"
    return (
        len(load_signatures(sig / "root_detection.yaml")),
        len(load_signatures(sig / "ssl_pinning.yaml")),
        len(load_native_signatures(sig / "native_detection.yaml")),
        len(load_packer_signatures(sig / "packers.yaml")),
    )


@pytest.mark.parametrize("doc", _DOCS, ids=lambda p: p.name)
def test_every_stated_corpus_size_is_the_measured_one(doc):
    total = sum(_measured())
    stated: list[int] = []
    stale: list[str] = []
    for i, line in enumerate(doc.read_text(encoding="utf-8").splitlines(), 1):
        if not re.search(r"signature", line, re.I):
            continue
        for m in _TOTAL.finditer(line):
            stated.append(int(m.group(1)))
            if int(m.group(1)) != total:
                stale.append(f"line {i}: {m.group(0)!r} in {line.strip()[:110]}")
    assert not stale, (
        f"{doc.name} states a corpus size the YAML contradicts ({total} entries): {stale}"
    )
    assert stated, f"{doc.name} no longer states the signature corpus size at all"


@pytest.mark.parametrize("doc", _DOCS, ids=lambda p: p.name)
def test_the_stated_per_file_breakdown_matches_the_yaml(doc):
    m = _BREAKDOWN.search(doc.read_text(encoding="utf-8"))
    assert m, (
        f"{doc.name} no longer states the per-file breakdown "
        f"(root/ssl/native/packers) the corpus total is split over"
    )
    assert tuple(int(g) for g in m.groups()) == _measured(), (
        f"{doc.name} states {m.group(0)!r}, the YAML has {_measured()}"
    )
