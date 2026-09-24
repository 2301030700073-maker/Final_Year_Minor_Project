"""The coverage table told the reader the app ships a Hermes bundle whether it did or not.

`js_surface_coverage` returns `partial` from THREE causes: a binary bundle genuinely
present (`has_binary_bundle`), ASSET-DROP1's un-extracted asset surface, where that
flag reads False precisely because nothing reached the scan roots to walk, and
ADR-0025's asset-less APK whose decode did not complete. The note was gated on
`coverage["js"] == "partial"` alone and asserted the first cause unconditionally.

Found on a real run, not in review: the UnCrackable-Level1 static run recorded
`js=partial`, and the report's only js line was "partial means the app ships a binary
Hermes/bytecode bundle" - an app that ships no JS at all. Neither the Hermes-bundle
section nor any js evidence rendered, which is the proof the bundle was never there.

The template cannot see either fact unless the run hands it over, so the two booleans
travel the coverage_causes path. The third case below is the load-bearing one: a run
stored before these fields have no recorded fact, and "not recorded" must not be read
as a NO - manufacturing the asset-surface clause for a legacy run would reintroduce a
false cause in the name of removing one.
"""

from pathlib import Path

from common import Action, CategoryVerdict, ClassificationResult, StageResult
from report.generator import generate_report

BUNDLE_CLAUSE = "a binary Hermes/bytecode bundle whose control flow cannot be read"
ASSET_CLAUSE = "an asset surface this run never put on disk"
ABSENT_CLAUSE = "no asset surface at all - the APK lists no `assets/` entries"
INCOMPLETE_CLAUSE = "a decompile that did not complete"
FALLBACK = "a coverage rule this report does not name"


def _classification():
    return ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
    )


def _render(tmp_path, js="partial", decompile_completeness=None, **kwargs):
    # ADR-0025's clause reads the completeness the report pulls from the decompile
    # stage's own evidence (generator._decompile_summary), not a render kwarg - so
    # a test that wants that clause has to supply the stage the run would have.
    stages = []
    if decompile_completeness is not None:
        stages.append(StageResult(
            stage="decompile", status="success",
            evidence={"decompile_completeness": decompile_completeness},
            error=None, duration_ms=0,
        ))
    path = generate_report(
        run_id="js1", apk_hash="js001", timestamp="2026-09-20T12:00:00",
        metadata={"hashes": {"sha256": "js001"},
                  "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=stages, output_dir=tmp_path,
        coverage={"java": "fully_analyzed", "native": "fully_analyzed", "js": js},
        **kwargs,
    )
    return path.read_text(encoding="utf-8")


def _note(content):
    lines = [ln for ln in content.splitlines() if ln.startswith("> **JS:**")]
    return lines[0] if lines else None


def test_an_unextracted_asset_surface_does_not_claim_the_app_ships_a_bundle(tmp_path):
    """The UnCrackable-Level1 case: no bundle in the APK, surface unread."""
    note = _note(_render(tmp_path, js_binary_bundle=False, js_asset_surface_extracted=False))
    assert note is not None, "the note must still bound a partial js surface"
    assert ASSET_CLAUSE in note, note
    assert BUNDLE_CLAUSE not in note, note
    # The old wording, verbatim, is what a reader was told about an app with no JS.
    assert "the app ships a binary Hermes/bytecode bundle" not in note, note
    assert FALLBACK not in note, note


def test_a_real_bundle_is_named_as_the_bundle(tmp_path):
    note = _note(_render(tmp_path, js_binary_bundle=True, js_asset_surface_extracted=True))
    assert BUNDLE_CLAUSE in note, note
    assert ASSET_CLAUSE not in note, note


def test_both_causes_at_once_read_as_one_sentence(tmp_path):
    note = _note(_render(tmp_path, js_binary_bundle=True, js_asset_surface_extracted=False))
    assert BUNDLE_CLAUSE in note and ASSET_CLAUSE in note, note
    assert note.count("; ") == 1, note


def test_a_run_that_recorded_neither_cause_invents_none(tmp_path):
    """A pre-field run being regenerated: no fact recorded is not a NO."""
    note = _note(_render(tmp_path))
    assert note is not None and FALLBACK in note, note
    assert BUNDLE_CLAUSE not in note and ASSET_CLAUSE not in note, note


def test_a_fully_analyzed_js_surface_gets_no_note(tmp_path):
    assert _note(_render(tmp_path, js="fully_analyzed",
                         js_binary_bundle=False, js_asset_surface_extracted=True)) is None
    assert _note(_render(tmp_path, js="fully_analyzed")) is None


# --- ASSET-TRI1: `asset_surface_extracted=False` is three states, not two ----
#
# Measured 2026-09-24 on the AndroGoat run 53bc1316: `unzip -l AndroGoat.apk`
# lists ZERO `assets/` entries and the sidecar read `asset_surface_extracted:
# false, asset_file_count: 0`, so the report told the reader its js bound came
# from an asset surface this run failed to put on disk. Every false on disk that
# day was that same shape (AndroGoat x2, UnCrackable-Level1, InsecureBankv2,
# RS_CertPinning), while every APK shipping assets recorded True with its real
# count (PropertyGuru 25, jerboa 3). The APK's own entry count now travels with
# the extraction result and gates the clause.


def test_an_asset_less_apk_with_an_incomplete_decode_is_told_which_bound_applies(tmp_path):
    """ADR-0025: with the decode complete, an APK listing zero `assets/` reads
    `js: fully_analyzed` and reaches no clause here at all. The one way it still
    reads `partial` is a decode that did not complete, and that is the cause the
    clause names - never the absent surface, which is not a bound."""
    note = _note(_render(tmp_path, js_binary_bundle=False, js_asset_surface_extracted=False,
                         js_asset_entries_in_apk=0, decompile_completeness="partial"))
    assert note is not None, "the note must still bound a partial js surface"
    assert INCOMPLETE_CLAUSE in note, note
    assert ASSET_CLAUSE not in note, note
    assert BUNDLE_CLAUSE not in note, note
    assert ABSENT_CLAUSE not in note, note


def test_an_asset_less_apk_whose_completeness_was_never_recorded_invents_no_cause(tmp_path):
    """The fact is gated on the exact recorded label. A run predating the field,
    or one whose completeness reads `unknown`, is not told it had an incomplete
    decode - it falls through to the unnamed-rule wording."""
    for completeness in (None, "unknown", "complete"):
        note = _note(_render(tmp_path, js_binary_bundle=False,
                             js_asset_surface_extracted=False,
                             js_asset_entries_in_apk=0,
                             decompile_completeness=completeness))
        assert note is not None and FALLBACK in note, note
        assert INCOMPLETE_CLAUSE not in note, note
        assert ABSENT_CLAUSE not in note, note


def test_a_surface_the_apk_does_ship_is_still_named_as_a_loss(tmp_path):
    """The case ASSET-DROP1 exists for: 25 entries listed, none of them on disk."""
    note = _note(_render(tmp_path, js_binary_bundle=False,
                         js_asset_surface_extracted=False, js_asset_entries_in_apk=25))
    assert ASSET_CLAUSE in note, note
    assert ABSENT_CLAUSE not in note, note
    assert INCOMPLETE_CLAUSE not in note, note


def test_an_archive_that_could_not_be_listed_keeps_the_unknown_wording(tmp_path):
    """None is not 0: an unlistable archive has an unknown surface, and a run
    predating the field must keep the older wording rather than be told the app
    ships no assets."""
    for kwargs in ({"js_asset_entries_in_apk": None}, {}):
        note = _note(_render(tmp_path, js_binary_bundle=False,
                             js_asset_surface_extracted=False, **kwargs))
        assert ASSET_CLAUSE in note, note
        assert ABSENT_CLAUSE not in note, note
        assert INCOMPLETE_CLAUSE not in note, note


def test_only_the_surface_states_that_are_losses_get_the_loss_sentence(tmp_path):
    """Three recorded states, two sentences - and the split is the honest one.

    "the APK lists 25 and none reached disk" and "the archive could not be listed"
    are both a surface that is not on disk, and the loss sentence is true of both
    (its second half is a conditional: a bundle the APK DOES carry would be
    invisible). The third state - an APK listing zero - is no longer a `partial`
    at all with the decode complete (ADR-0025); when its decode did not complete
    it gets the incomplete-decode sentence instead. What must never happen is the
    unknown state being told it lost something it never had.
    """

    def js_clause(**kw):
        note = _note(_render(tmp_path, js_binary_bundle=False, **kw))
        return note.split("Bound by", 1)[1]

    dropped = js_clause(js_asset_surface_extracted=False, js_asset_entries_in_apk=25)
    unlistable = js_clause(js_asset_surface_extracted=False, js_asset_entries_in_apk=None)
    assetless = js_clause(js_asset_entries_in_apk=0, decompile_completeness="partial")
    assert dropped == unlistable, "an unlistable archive is a missing surface, not an empty one"
    assert assetless != dropped
    assert ABSENT_CLAUSE not in dropped and ABSENT_CLAUSE not in unlistable


def test_the_apk_entry_count_travels_on_both_report_paths():
    """Wiring: a regenerated report reproduces the fact, so it must be persisted
    in coverage_causes as well as passed to the live render."""
    text = (Path(__file__).resolve().parents[2] / "src" / "cli.py").read_text()
    # The live render gets it through coverage_causes (its keys are
    # generate_report()'s parameter names and the dict is spread into the call),
    # so it must sit in that dict exactly once - a second keyword is a SyntaxError.
    causes = text.split("coverage_causes = dict(", 1)[1]
    assert causes.count("js_asset_entries_in_apk=_asset_entries_in_apk,") == 1
    assert "**coverage_causes" in text
    # ...and the regeneration path reads the persisted value, not a default.
    assert "js_asset_entries_in_apk=causes.get(" in text
