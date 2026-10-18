"""ADR-0022: the rule corpus a run was analysed against is recorded, not inferred.

The verdict this platform produces is a function of two inputs - the code that
ran and the rules it ran against - and until now only the first was recorded at
all, imperfectly (`git_commit` carries `(dirty working tree)` on 183 of the 264
stored runs). The corpus had no identity anywhere.

These tests cover the fingerprint itself, the invariant that makes it mean
something (one list of corpus files, so nothing can be analysed without being
identified), and both branches of the report line.

ADR-0022 named a limit when it was written: the hash covered the four YAML files
and not the JS idiom lists in `hermes.py`, a second detection surface carried in
code whose ids can never appear in a YAML-derived set. That limit is closed here,
so the same three things are asserted for the second surface: it moves the hash
when its patterns change, it moves it when the weight scaling them changes (a
verdict-level difference the pattern text alone would not show), and every idiom
list in `hermes.py` must be registered, so a third one cannot fire rules the
recorded fingerprint does not describe.
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
    # Scope, not just value. The hash covers BOTH detection surfaces now, and the
    # line used to say the opposite - that the JS idioms were code, covered by the
    # Analysis-code line and not by this hash. A reader of the report never sees the
    # ADR, so a stale scope sentence is the whole of what they know about the value.
    assert "all three detection surfaces" in content
    assert "the JS idiom lists and the weight scaling them in `src/static/hermes.py`" in content
    # The third surface, added the same day: an indicator match is what stops a
    # NEITHER being certified, so two hashes a reader compares describe what the
    # platform was willing to certify, not only which patterns it held.
    assert "the unattributed-indicator lists in `src/static/indicators.py`" in content
    assert "whose matches bound whether a NEITHER is certified" in content
    # And the comparability limit of the change itself: a fingerprint from before it
    # was taken over the files alone (and, for the JS closure earlier the same day,
    # over the files plus the JS lists), so two reports either side of either change
    # can differ by scheme with identical rules.
    assert "not comparable with one from after" in content
    assert "the YAML files plus the JS lists" in content
    # And the boundary, which is NOT in this hash and must not look as though it
    # were: two runs can share a corpus and differ in the threshold they were
    # classified at, and a reader comparing hashes would otherwise read that as "the
    # rules are the same". The threshold is recorded per run and rendered on the
    # Decision line, so this line points at it rather than absorbing it.
    assert "The decision thresholds are deliberately not folded in" in content
    assert "the Decision line below renders it" in content
    assert "the JS idioms compiled into" not in content
    # The methodology paragraph must name the second surface as part of the same
    # recorded corpus too - it used to say that second corpus "is covered by the
    # Analysis-code line rather than by the Signature corpus hash above".
    assert "compiled into `src/static/hermes.py`" in content
    assert "rather than by the Signature corpus hash above" not in content


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
                # as_posix(): the provenance string this file asserts is written
                # with forward slashes, and a bare relative_to() renders with the
                # host's separator - so on Windows the assertion below read
                # "src\storage\results.py:165" and failed on a correct tree.
                rel = path.relative_to(_REPO).as_posix()
                constructions.append(f"{rel}:{number}")
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
        # ADR-0028: carried by the double for the same reason signature_corpus is -
        # _regenerate_report reads the real column name directly.
        device_environment=None,
    )
    cli._regenerate_report(run, SimpleNamespace(raw_metadata=None), "c0ffee")
    content = (tmp_path / "reports" / "abc123" / "corpus3.md").read_text(encoding="utf-8")
    assert f"**Signature corpus:** `{stored}`" in content
    assert live not in content


def _live_corpus() -> str:
    return corpus_fingerprint(_REPO / "config" / "signatures" / f"{n}.yaml" for n in _CORPUS_NAMES)


def test_editing_a_js_idiom_moves_the_recorded_corpus():
    """ADR-0022's deferral, closed. The JS idiom lists are a second detection
    surface, so a run analysed against them and one analysed against a changed set
    are not the same run and must not record the same identity.

    Appended to the live list rather than monkeypatched onto the module attribute,
    because the fingerprint reaches the list through the declared registry: a patch
    that replaced `hermes.JS_ROOT_IDIOMS` would leave the registry pointing at the
    original, and the test would then be asserting about a patch rather than about
    what a run reads. Popped in a finally, so a failure here cannot leak an idiom
    into the rest of the session."""
    from static import hermes

    baseline = _live_corpus()
    hermes.JS_ROOT_IDIOMS.append(("js_test_added", "root", re.compile(r"no-run-has-this")))
    try:
        assert _live_corpus() != baseline, "a new JS idiom did not move the corpus identity"
    finally:
        hermes.JS_ROOT_IDIOMS.pop()
    assert _live_corpus() == baseline, "the identity is not a function of the rules alone"


def test_changing_the_js_weight_moves_the_recorded_corpus(monkeypatch):
    """The weight scaling the JS idioms is part of the surface, not a detail beside
    it: every match contributes it to a category sum, so doubling it changes what a
    verdict reads while every pattern stays byte-identical. A hash over the pattern
    text alone would call those two rule sets the same."""
    from static import hermes

    baseline = _live_corpus()
    monkeypatch.setattr(hermes, "JS_EVIDENCE_WEIGHT", hermes.JS_EVIDENCE_WEIGHT + 0.2)
    assert _live_corpus() != baseline, "a changed JS weight left the corpus identity unmoved"
    monkeypatch.undo()
    assert _live_corpus() == baseline


def test_every_js_idiom_list_is_registered():
    """The JS half of the invariant the YAML test above holds. The hash is only as
    good as the set of lists it is taken over: a third `JS_*_IDIOMS` list added to
    hermes.py and not registered in `_JS_IDIOM_LISTS` would fire rules the recorded
    fingerprint never described, and every run would record an identity that was
    never the set of rules it used. Read as text, so it holds for a list nothing
    imports yet - and asserted non-empty, because a pattern that stopped matching
    would otherwise satisfy this vacuously."""
    from static import hermes

    text = (_REPO / "src" / "static" / "hermes.py").read_text(encoding="utf-8")
    declared = set(re.findall(r"^(JS_[A-Z_]+_IDIOMS)\s*:", text, re.MULTILINE))
    registered = {name for name, _ in hermes._JS_IDIOM_LISTS}
    assert declared, "no JS idiom lists matched in hermes.py - the pattern is stale"
    assert declared == registered, (
        f"JS idiom lists declared but not registered, so the recorded corpus would "
        f"not cover them: {sorted(declared - registered)}"
    )


def test_editing_an_indicator_moves_the_recorded_corpus():
    """ADR-0022's third surface, closed the same day as the second. An indicator
    match is never scored - it is what stops a NEITHER being certified - so editing
    one changes what the platform will call a confident negative while every
    signature file stays byte-identical. Two rule sets that certify different
    verdicts cannot share one identity."""
    from static import indicators

    baseline = _live_corpus()
    table = indicators._CATEGORY_TO_INDICATORS
    original = table["root"]
    table["root"] = original + (r"indicator_test_added\s*\(",)
    try:
        assert _live_corpus() != baseline, "a new indicator did not move the corpus identity"
    finally:
        table["root"] = original
    assert _live_corpus() == baseline, "the identity is not a function of the rules alone"


def test_a_new_indicator_category_moves_the_recorded_corpus():
    """This is the property that replaces a registry test here, and why this surface
    needs no `_JS_IDIOM_LISTS` equivalent: the identity is taken over the two tables
    themselves, so a category cannot reach a scan without reaching the identity. The
    hole is impossible rather than guarded - but only while the fingerprint reads the
    tables, which is what this holds."""
    from static import indicators

    baseline = _live_corpus()
    table = indicators._CATEGORY_TO_INDICATORS
    table["packer"] = ("a_category_only_the_table_carries",)
    try:
        assert _live_corpus() != baseline, "a category added to a table left the identity unmoved"
    finally:
        del table["packer"]
    assert _live_corpus() == baseline


def test_moving_an_indicator_between_the_two_surfaces_moves_the_corpus():
    """The same pattern string under a different table is a different rule: a su path
    read in Java text and the same path read out of a .so do not bound the same
    verdict. So the table name is part of the hash, not an implementation detail of
    where the pattern happens to be written down."""
    from static import indicators

    baseline = _live_corpus()
    java_table = indicators._CATEGORY_TO_INDICATORS
    native_table = indicators._NATIVE_CATEGORY_TO_INDICATORS
    java_before, native_before = java_table["ssl"], native_table["ssl"]
    java_table["ssl"] = java_before + (native_before[0],)
    native_table["ssl"] = native_before[1:]
    try:
        assert _live_corpus() != baseline, (
            "the same pattern under a different table left the identity unmoved"
        )
    finally:
        java_table["ssl"], native_table["ssl"] = java_before, native_before
    assert _live_corpus() == baseline
