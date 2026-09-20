"""The coverage table told the reader the app ships a Hermes bundle whether it did or not.

`js_surface_coverage` returns `partial` from TWO causes: a binary bundle genuinely
present (`has_binary_bundle`), and ASSET-DROP1's un-extracted asset surface, where
that flag reads False precisely because nothing reached the scan roots to walk. The
note was gated on `coverage["js"] == "partial"` alone and asserted the first cause
unconditionally.

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

from common import Action, CategoryVerdict, ClassificationResult
from report.generator import generate_report

BUNDLE_CLAUSE = "a binary Hermes/bytecode bundle whose control flow cannot be read"
ASSET_CLAUSE = "an asset surface this run never put on disk"
FALLBACK = "a coverage rule this report does not name"


def _classification():
    return ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
    )


def _render(tmp_path, js="partial", **kwargs):
    path = generate_report(
        run_id="js1", apk_hash="js001", timestamp="2026-09-20T12:00:00",
        metadata={"hashes": {"sha256": "js001"},
                  "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
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
