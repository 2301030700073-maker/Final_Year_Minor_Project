"""ADR-0022: the rule corpus a run was analysed against is recorded, not inferred.

The verdict this platform produces is a function of two inputs - the code that
ran and the rules it ran against - and until now only the first was recorded at
all, imperfectly (`git_commit` carries `(dirty working tree)` on 183 of the 264
stored runs). The corpus had no identity anywhere.

These tests cover the fingerprint itself, the invariant that makes it mean
something (one list of corpus files, so nothing can be analysed without being
identified), and both branches of the report line.
"""

from __future__ import annotations

import re
from pathlib import Path

import pytest

from common import Action, CategoryVerdict, ClassificationResult, Evidence
from report.generator import generate_report
from static.signatures import corpus_fingerprint

_REPO = Path(__file__).resolve().parents[2]
_CORPUS_NAMES = ["native_detection", "packers", "root_detection", "ssl_pinning"]


def _write(tmp_path: Path, name: str, text: str) -> Path:
    path = tmp_path / name
    path.write_text(text, encoding="utf-8")
    return path


def _classification() -> ClassificationResult:
    return ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.0, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.0, detected=False, evidence=[]),
    )


def test_fingerprint_is_stable_and_independent_of_argument_order(tmp_path):
    a = _write(tmp_path, "a.yaml", "id: one\n")
    b = _write(tmp_path, "b.yaml", "id: two\n")
    assert corpus_fingerprint([a, b]) == corpus_fingerprint([b, a])
    assert corpus_fingerprint([a, b]) == corpus_fingerprint([a, b])


def test_fingerprint_moves_on_a_one_byte_edit(tmp_path):
    a = _write(tmp_path, "a.yaml", "id: one\n")
    before = corpus_fingerprint([a])
    a.write_text("id: two\n", encoding="utf-8")
    assert corpus_fingerprint([a]) != before


def test_fingerprint_moves_on_a_rename_with_identical_content(tmp_path):
    """The identity is the file SET and its contents, not the concatenation of
    some bytes: a corpus that moves a rule from one file to another is a
    different corpus even though every byte is still present."""
    a = _write(tmp_path, "a.yaml", "id: one\n")
    before = corpus_fingerprint([a])
    renamed = tmp_path / "z.yaml"
    a.rename(renamed)
    assert corpus_fingerprint([renamed]) != before


def test_fingerprint_refuses_a_missing_file(tmp_path):
    """Not a skip. Fingerprinting the subset that happens to exist would name a
    rule set no run ever loaded - the silent-substitution failure Principle 3
    forbids, and worse here than elsewhere because the value is recorded as
    fact."""
    a = _write(tmp_path, "a.yaml", "id: one\n")
    with pytest.raises(FileNotFoundError, match="not readable"):
        corpus_fingerprint([a, tmp_path / "gone.yaml"])


def test_the_fingerprint_covers_every_declared_corpus_file(tmp_path):
    """A fingerprint that silently ignored one of the four files would still be
    stable and would still move on most edits, so 'it changed when I edited a
    rule' proves nothing on its own. Cover the set explicitly: mutating ANY
    single file must move it, and restoring that file must restore the hash."""
    sig_dir = _REPO / "config" / "signatures"
    copies = []
    for name in _CORPUS_NAMES:
        path = tmp_path / f"{name}.yaml"
        path.write_bytes((sig_dir / f"{name}.yaml").read_bytes())
        copies.append(path)
    baseline = corpus_fingerprint(copies)
    for name, path in zip(_CORPUS_NAMES, copies):
        original = path.read_bytes()
        path.write_bytes(original + b"\n")
        assert corpus_fingerprint(copies) != baseline, f"{name} is not covered by the hash"
        path.write_bytes(original)
    assert corpus_fingerprint(copies) == baseline


def test_every_corpus_path_is_built_in_the_one_declared_list():
    """The hash is only as good as the list it is taken over. A loader call site
    that builds its own path - `CONFIG_ROOT / "signatures" / "x.yaml"` written
    inline - would load and analyse that file while the recorded fingerprint
    never saw it. So every corpus path literal must live in SIGNATURE_CORPUS and
    nowhere else, and there must be exactly the four of them.

    Structural, not behavioural: it reads cli.py as text rather than importing it,
    so it stays toolchain-free and cannot be satisfied by a runtime alias."""
    src = (_REPO / "src" / "cli.py").read_text(encoding="utf-8")
    named = re.findall(r'CONFIG_ROOT\s*/\s*"signatures"\s*/\s*"([a-z_]+)\.yaml"', src)
    assert sorted(named) == _CORPUS_NAMES, (
        "a signature corpus path is built outside SIGNATURE_CORPUS, so the recorded "
        f"fingerprint would not cover it: found {sorted(named)}"
    )


def test_the_report_states_the_corpus_it_ran_against(tmp_path):
    corpus = "b" * 64
    report_path = generate_report(
        run_id="corpus1", apk_hash="deadbeef", timestamp="2026-09-20T12:00:00",
        metadata={"hashes": {"sha256": "deadbeef"}, "package": {"package_name": "com.example"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path, signature_corpus=corpus,
    )
    content = report_path.read_text(encoding="utf-8")
    assert f"**Signature corpus:** `{corpus}`" in content
    # Scope, not just value. The hash covers the YAML set, and detection patterns
    # also live in hermes.py's JS idiom lists (they emit evidence carrying real
    # signature ids), so a 64-character digest under a bare heading reads as "all
    # the rules" when it is one of two corpora. ADR-0022 records the asymmetry;
    # the reader of a report never sees the ADR.
    assert "the four YAML files under `config/signatures/` only" in content
    # And the methodology paragraph must name the second corpus too - it used to
    # say detection matches "a hand-authored, versioned signature set
    # (`config/signatures/`)", which reads as the definition of the method.
    assert "compiled into `src/static/hermes.py`" in content


def test_a_run_without_a_recorded_corpus_says_so_and_never_renders_blank(tmp_path):
    """The whole point of the line is that its absence is loud. A blank, or the
    bare word 'unknown', reads as a lookup that failed rather than as a category
    of run - and a run that predates the field is a real category, not an error."""
    report_path = generate_report(
        run_id="corpus2", apk_hash="deadbeef", timestamp="2026-09-20T12:00:00",
        metadata={"hashes": {"sha256": "deadbeef"}, "package": {"package_name": "com.example"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path, signature_corpus=None,
    )
    content = report_path.read_text(encoding="utf-8")
    assert "**Signature corpus:** not recorded for this run" in content
    assert "**Signature corpus:** `None`" not in content
    assert "**Signature corpus:**\n" not in content
    # One cause, not a list of them. The sentence used to offer two - "either it
    # predates ADR-0022, or its corpus was not derived" - and only the first can
    # happen: the sole writer of a runs row sets the key unconditionally. A hedge
    # over an unreachable cause is not caution, it is cover: a future regression
    # that stopped populating the field would render as "not derived" and every
    # test here would still pass, because this branch is the one they assert.
    assert "it predates ADR-0022" in content
    assert "not derived" not in content


def test_only_one_place_can_create_a_runs_row():
    """The sentence above claims a missing corpus means the run predates the
    field, and that claim is only as good as the writer count. One writer, whose
    payload always carries the fingerprint, makes it true; a second - a row
    recorded for a run that halted before the fingerprint was taken, say - makes
    it false for that row while every test still passes, since a NULL is exactly
    what they assert. So the invariant is held here, structurally, and whoever
    adds a second writer is stopped and made to decide what its corpus value is.

    Reads src/ as text rather than importing it, so it stays toolchain-free."""
    constructions = []
    for path in sorted((_REPO / "src").rglob("*.py")):
        if path.parent.name == "storage" and path.name == "db.py":
            continue  # the model's own definition, not a write
        for number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
            if re.search(r"\bRunRecord\s*\(", line):
                constructions.append(f"{path.relative_to(_REPO)}:{number}")
    assert len(constructions) == 1, (
        f"a runs row can now be written from {constructions}; the report tells a "
        "reader that a missing corpus fingerprint means the run predates ADR-0022, "
        "so every new writer must record one"
    )
    assert constructions[0].startswith("src/storage/results.py:"), (
        f"the runs row is now written from {constructions[0]} - all run persistence "
        "belongs to the storage layer, where save_run holds the payload contract"
    )


def test_a_regenerated_report_carries_the_stored_corpus_not_the_live_one(monkeypatch, tmp_path):
    """ADR-0022, through the seam where it is easiest to get wrong. The regenerate
    path deliberately resets the Analysis-code line to the RENDERING commit,
    because that is the code that produced the file. The corpus must NOT follow
    that rule: reading the live corpus here would attribute today's rules to an
    analysis that never used them, which is precisely the misattribution the
    fingerprint exists to prevent - so the stored value is asserted present AND
    the current corpus asserted absent."""
    from types import SimpleNamespace

    import cli

    stored = "c" * 64
    live = corpus_fingerprint(_REPO / "config" / "signatures" / f"{n}.yaml" for n in _CORPUS_NAMES)
    assert live != stored

    monkeypatch.setattr(cli, "REPORTS_ROOT", tmp_path / "reports")
    monkeypatch.setattr(cli, "AUDIT_LOG_PATH", tmp_path / "absent_audit_log.jsonl")
    run = SimpleNamespace(
        run_id="corpus3", apk_sha256="abc123", timestamp="2026-09-20T10:00:00",
        package_name="com.example.app", obfuscation_level=None,
        # ADR-0026: the rule beside the level. The regen path reads both off the
        # same row, so a fixture standing in for that row carries both; None is
        # this run's "not recorded" and must not be defaulted by the renderer.
        obfuscation_reason=None,
        classification_json={
            "action": "NEITHER",
            "root": {"confidence": 0.0, "detected": False, "evidence": []},
            "ssl": {"confidence": 0.0, "detected": False, "evidence": []},
        },
        coverage_causes={}, verification_json=None, correlation_json=None,
        stage_results_json=None, dynamic_skip_reason=None, correlation_skip_reason=None,
        manifest_json=None, coverage={}, signature_corpus=stored,
    )
    cli._regenerate_report(run, SimpleNamespace(raw_metadata=None), "c0ffee")
    content = (tmp_path / "reports" / "abc123" / "corpus3.md").read_text(encoding="utf-8")
    assert f"**Signature corpus:** `{stored}`" in content
    assert live not in content
