"""The coverage table's java note named one of seven causes, and read as if it were the only one.

`java == "partial"` is reached by seven distinct rules: `java_coverage`'s heavy
obfuscation, a detected packer, un-ruled-out packing (PACK1) and a partial
decompile, plus `apply_dynamic_loading_java`, `apply_attribution_degraded_java` and
`apply_unreadable_files_java`. The table's note fired on heavy obfuscation alone,
so a reader of a packed-but-clear app - or a clean app whose DEX string scan had
fallen back to the whole constant pool - saw `| java | partial |` with no cause,
and a reader who did see the heavy note had no way to learn a second cause was also
in play.

Same defect the native row had, and the same fix: name the causes actually
recorded, gate every clause on its own evidence, and say plainly when none of them
is (rather than picking one, which is the false-specific-fact failure COV-HEAVY-JAVA1
records). These are render-level on purpose - the defect was in what the page said,
not in the coverage arithmetic, which was correct throughout.
"""

from __future__ import annotations

import types
from pathlib import Path

from report.generator import TEMPLATE

_REPO = Path(__file__).resolve().parents[2]

HEAVY = "heavy obfuscation (encrypted or unreachable strings stay unreadable"
PACKED = 'a packer hiding the real DEX behind a loader (see "Packer / protector identified")'
PACKER_UNRULED = "a packer scan that did not complete, so packing is un-ruled-out (PACK1)"
PARTIAL_DECOMPILE = "an incomplete decompile (1234 file(s), jadx exit 1 - see Limitations)"
DYNAMIC_LOAD = 'runtime-loaded code the static scan cannot see (2; see "Dynamic code loading")'
ATTRIB_DEGRADED = (
    'a DEX string scan that could not attribute matches to app-owned classes '
    '(see "DEX string attribution degraded")'
)
UNREADABLE = "candidate files this run could not read (5; see the CAUTION above)"
FALLBACK = "a coverage rule this report does not name"


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
        "packer_findings": None,
        "packer_scan_incomplete": False,
        "dynamic_loads": None,
        "dex_attribution_degraded": False,
        "decompile_completeness": "complete",
        "jadx_file_count": 1234,
        "jadx_exit_code": 0,
        "classification": types.SimpleNamespace(unreadable_file_count=0),
    }
    base.update(ctx)
    return env.from_string(src[start:end]).render(**base)


def test_each_recorded_cause_is_named_when_it_is_present():
    cases = {
        "heavy": ({"obfuscation_level": "heavy"}, HEAVY),
        "packed": ({"packer_findings": [{"packer_id": "x", "packer": "X", "signals": []}]}, PACKED),
        "packer scan failed": ({"packer_scan_incomplete": True}, PACKER_UNRULED),
        "partial decompile": ({"decompile_completeness": "partial", "jadx_exit_code": 1},
                             PARTIAL_DECOMPILE),
        "dynamic loading": ({"dynamic_loads": ["a", "b"]}, DYNAMIC_LOAD),
        "attribution degraded": ({"dex_attribution_degraded": True}, ATTRIB_DEGRADED),
        "unreadable files": (
            {"classification": types.SimpleNamespace(unreadable_file_count=5)}, UNREADABLE,
        ),
    }
    for name, (ctx, phrase) in cases.items():
        out = _render(coverage={"java": "partial"}, **ctx)
        assert "**Java:**" in out, (name, out)
        assert phrase in out, (name, out)
        # And no other cause is invented alongside it.
        others = [p for k, (_, p) in cases.items() if k != name]
        assert not any(p in out for p in others), (name, out)


def test_a_java_partial_with_no_recorded_cause_says_so_rather_than_picking_one():
    out = _render(coverage={"java": "partial"})
    assert FALLBACK in out, out
    # No separator, no dangling clause: the fallback is the whole answer.
    assert ";" not in out.split("Bound by", 1)[1], out


def test_all_seven_causes_render_as_one_sentence():
    out = _render(
        coverage={"java": "partial"},
        obfuscation_level="heavy",
        packer_findings=[{"packer_id": "x", "packer": "X", "signals": []}],
        packer_scan_incomplete=True,
        decompile_completeness="partial",
        jadx_exit_code=1,
        dynamic_loads=["a", "b"],
        dex_attribution_degraded=True,
        classification=types.SimpleNamespace(unreadable_file_count=5),
    )
    # The java NOTE's own line, not the whole rendered region: that region also
    # holds the sibling surfaces' notes, so a note added beside this one would be
    # read as part of this sentence - which is exactly what happened when the
    # manifest note landed after it.
    note = [ln for ln in out.splitlines() if ln.startswith("> **Java:**")][0]
    body = note.split("Bound by", 1)[1]
    # The ordering check needs each clause in FULL: HEAVY above is a prefix, so
    # measuring a boundary from it would land mid-clause.
    heavy_full = (HEAVY + " even on a complete decompile - N1/G-C)")
    assert heavy_full.startswith(HEAVY)
    phrases = [heavy_full, PACKED, PACKER_UNRULED, PARTIAL_DECOMPILE, DYNAMIC_LOAD,
               ATTRIB_DEGRADED, UNREADABLE]
    # Every clause is present, in the order the template builds them, and the text
    # BETWEEN two clauses is exactly one separator. Counting `"; "` in the body
    # would not show this - two of the clauses carry a `;` inside their own
    # parentheses - and chaining seven inline separators is where a dangling `;;`
    # or a clause swallowed by `;.` comes from.
    prev_end = None
    for phrase in phrases:
        i = body.index(phrase)
        if prev_end is not None:
            assert body[prev_end:i] == "; ", (phrase, repr(body[prev_end:i]))
        prev_end = i + len(phrase)
    assert body[prev_end:] == ".", repr(body[prev_end:])


def test_unscannable_or_fully_analyzed_java_gets_no_partial_note():
    """COV-HEAVY-JAVA1's original lesson, kept: the note is about `partial` only."""
    # Heavy obfuscation with an unknown-completeness decompile yields `unscannable`,
    # and the note must not claim a `partial` surface the table does not show.
    assert "**Java:**" not in _render(coverage={"java": "unscannable"}, obfuscation_level="heavy")
    assert "**Java:**" not in _render(coverage={"java": "fully_analyzed"}, obfuscation_level="heavy")
    # Other surfaces' notes are unaffected by this one.
    assert "**Java:**" not in _render(coverage={"native": "unscannable"})
