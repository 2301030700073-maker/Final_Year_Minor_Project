"""LITPREF / PERF-3 regression tests for the literal-match gate in ``scan()``.

The gate is a PURE performance optimization: it builds one combined regex per
literal family and, before the per-line x per-signature inner loop, skips every
``string_literal`` / ``class_reference`` signature on lines the gate says
contain none of the literal patterns. It must NEVER change *which* matches are
found - only how many times ``_line_matches`` is invoked.

The safety argument is that the gate is an EXACT SUPERSET of
``_line_matches``'s literal logic: it mirrors ``_line_matches`` bit-for-bit
(fold vs raw for case-insensitivity; slash->dot normalization ONLY for
dotted-package patterns). So when the gate does NOT fire, no literal signature
can match, and skipping them is behaviour-identical. If a future edit breaks
that - the classic trap: compile the gate case-insensitively with
``re.IGNORECASE`` instead of ``str.casefold``, or drop the slash->dot
normalization for dotted-package patterns - the gate would UNDER-fire and
suppress genuine matches, and these tests go RED.
"""
from __future__ import annotations

from pathlib import Path

import pytest

import static.signatures as ss_mod
from static.signatures import (
    _build_literal_gate,
    _line_matches,
    _literal_gate_fires,
    load_signatures,
    scan,
)

REPO_ROOT = Path(__file__).resolve().parents[2]

REAL_SET = (
    load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    + load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")
)


def _small_set(tmp_path):
    """A tiny, fully-controlled signature set so the quiet/skip tests are
    deterministic and cannot accidentally collide with a real pattern."""
    yaml = tmp_path / "gate_sigs.yaml"
    yaml.write_text(
        "---\n"
        "- id: lit_cs\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: string_literal\n"
        "  patterns: [FINDME_CS]\n"
        "  evidence_type: bytecode_string\n"
        "- id: lit_ci\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: string_literal\n"
        "  patterns: [FindMeCi]\n"
        "  case_sensitive: false\n"
        "  evidence_type: bytecode_string\n"
        "- id: rx\n"
        "  category: ssl\n"
        "  weight: 0.5\n"
        "  pattern_type: regex\n"
        "  patterns: ['FINDME.RX']\n"
        "  evidence_type: tls_config\n"
        "- id: ml\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: regex\n"
        "  patterns: ['(?s)MULTI.LINE']\n"
        "  multiline: true\n"
        "  evidence_type: bytecode_string\n",
        encoding="utf-8",
    )
    return load_signatures(yaml)


def test_gate_is_exact_superset_of_line_matches_over_real_corpus():
    """Over the real 100-signature set, every crafted line a literal signature
    actually matches MUST make the gate fire. This is the invariant that makes
    the skip safe: gate does not fire => no literal can match."""
    gate = _build_literal_gate(REAL_SET)
    literal_sigs = [s for s in REAL_SET
                    if s.pattern_type in ("string_literal", "class_reference")]

    # Each gate family represented: cs plain, cs dotted (slash spelling),
    # ci dotted (dot + slash spelling), ci plain (mixed case), and a quiet line.
    lines = [
        'const-string v0, "Superuser request granted"',           # cs plain literal
        "Lcom/example/hidden/SuBinary;",                            # cs dotted (slash spelling)
        "import com.datatheorem.android.trustkit.PinningConfig;",  # ci dotted (dot spelling)
        "Lcom/datatheorem/android/trustkit/PinningConfig;",        # ci dotted (slash spelling)
        "TrustKit initialized ok",                                 # ci plain (mixed-case variant)
        "this line matches nothing in the corpus",                # quiet
    ]
    for line in lines:
        gate_fires = _literal_gate_fires(line, gate)
        any_literal_match = any(_line_matches(line, s) is not None
                                for s in literal_sigs)
        assert any_literal_match <= gate_fires, (
            f"gate missed a real literal match on line {line!r}: "
            f"literal matched={any_literal_match} but gate_fires={gate_fires}"
        )


def test_scan_evidence_is_identical_with_gate_enabled_or_disabled(tmp_path, monkeypatch):
    """Integration guarantee: enabling the gate yields byte-identical evidence
    to disabling it. Disable by forcing the gate to (None,)*4 so has_literal_gate
    is False and the per-line loop runs every signature (pre-PERF-3 behaviour)."""
    sigs = _small_set(tmp_path)
    (tmp_path / "src").mkdir()
    (tmp_path / "src" / "a.smali").write_text(
        "FINDME_CS present on this line\n"     # matches lit_cs
        "FindMeCi also present here\n"         # matches lit_ci (case-insensitive)
        "FINDME.RX regex hit\n",               # matches rx
        encoding="utf-8",
    )
    (tmp_path / "src" / "quiet.txt").write_text(
        "this file matches none of the patterns\n", encoding="utf-8",
    )

    ev_on = scan(tmp_path, sigs)

    # Force the gate OFF: has_literal_gate becomes False, every literal signature
    # is checked on every line - the pre-optimization behaviour.
    monkeypatch.setattr(ss_mod, "_build_literal_gate",
                        lambda s: (None, None, None, None))
    ev_off = scan(tmp_path, sigs)

    ids_on = sorted(e.signature_id for e in ev_on.root_evidence + ev_on.ssl_evidence)
    ids_off = sorted(e.signature_id for e in ev_off.root_evidence + ev_off.ssl_evidence)
    assert ids_on == ids_off, "gate changed which signatures matched"
    assert (round(ev_on.root_confidence, 6), round(ev_on.ssl_confidence, 6)) == (
        round(ev_off.root_confidence, 6), round(ev_off.ssl_confidence, 6),
    ), "gate changed computed confidence"


def test_gate_skips_literal_matches_on_quiet_lines(tmp_path, monkeypatch):
    """Pin the performance mechanism itself: on a line the gate does NOT fire on,
    the literal-signature calls to ``_line_matches`` must drop to zero. If the
    gate ever stops firing (e.g. a maintainer 'simplifies' it), literal matches
    stop being skipped and this fails - a perf-regression guard."""
    sigs = _small_set(tmp_path)
    quiet = tmp_path / "quiet.smali"
    quiet.write_text(
        "this line matches nothing at all\n"
        "nor does this one\n",
        encoding="utf-8",
    )

    real_lm = ss_mod._line_matches
    counter = {"n": 0}

    def counting_lm(line, sig):
        if sig.pattern_type in ("string_literal", "class_reference"):
            counter["n"] += 1
        return real_lm(line, sig)

    monkeypatch.setattr(ss_mod, "_line_matches", counting_lm)

    # gate ON (normal)
    counter["n"] = 0
    scan(tmp_path, sigs)
    count_on = counter["n"]

    # gate OFF (forced)
    monkeypatch.setattr(ss_mod, "_build_literal_gate",
                        lambda s: (None, None, None, None))
    counter["n"] = 0
    scan(tmp_path, sigs)
    count_off = counter["n"]

    assert count_on == 0, (
        f"gate failed to skip literal _line_matches on quiet lines ({count_on} calls)"
    )
    assert count_off > 0, "gate-off baseline must still invoke literal _line_matches"


def test_gate_never_skips_regex_or_multiline_signatures(tmp_path):
    """The gate only gates string_literal / class_reference signatures. Regex and
    multiline signatures must ALWAYS run, even on a line the gate does not fire
    on - otherwise the gate would suppress non-literal matches."""
    sigs = _small_set(tmp_path)
    # rx is a single-line regex and ml is a multiline regex. Neither is a literal
    # type, so the gate must never skip them - even though these lines contain no
    # literal pattern (the literal gate does not fire on them).
    (tmp_path / "r.java").write_text("FINDME.RX is here\n", encoding="utf-8")
    (tmp_path / "m.smali").write_text("MULTI\nLINE present\n", encoding="utf-8")
    ev = scan(tmp_path, sigs)
    assert any(e.signature_id == "rx" for e in ev.ssl_evidence), (
        "gate suppressed a single-line regex match on a quiet line"
    )
    assert any(e.signature_id == "ml" for e in ev.root_evidence), (
        "gate suppressed a multiline regex match on a quiet line"
    )
