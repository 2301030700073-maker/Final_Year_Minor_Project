"""The manifest surface was the fourth and last one bounding a verdict with no explanation.

java, native (twice) and js each explain their coverage bound in the Scan Coverage
section. `manifest` rendered `| manifest | partial |` or `| manifest | unscannable |`
bare - and it is the surface that governs SSL (ssl->{java,native,manifest,js}), so the
bound a reader is least able to reconstruct by hand was the one left unstated.

Both causes are real and deliberate: ManifestCoverage returns `unscannable` when the
binary manifest did not parse, and `partial` when resource resolution was incomplete -
cli.py's H3 comment is explicit that the second is not a tautology of the first, because
a declared network-security-config that is missing or unparseable degrades the surface.

The manifest note differs from its siblings in one way worth pinning: the manifest
surface is a governing surface for SSL only, so its sentence must name ssl and must not
claim anything about a root detection.
"""

from common import Action, CategoryVerdict, ClassificationResult
from report.generator import generate_report

NOT_PARSED = "a binary AndroidManifest.xml that did not parse"
NOT_RESOLVED = "resource resolution that did not complete"
FALLBACK = "a coverage rule this report does not name"


def _classification():
    return ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
    )


def _render(tmp_path, manifest="partial", **kwargs):
    path = generate_report(
        run_id="mf1", apk_hash="mf001", timestamp="2026-09-20T12:00:00",
        metadata={"hashes": {"sha256": "mf001"},
                  "package": {"package_name": "com.example.app"}},
        classification=_classification(), verification=None, correlation=None,
        stage_results=[], output_dir=tmp_path,
        coverage={"java": "fully_analyzed", "native": "fully_analyzed",
                  "manifest": manifest, "js": "fully_analyzed"},
        **kwargs,
    )
    return path.read_text(encoding="utf-8")


def _note(content):
    lines = [ln for ln in content.splitlines() if ln.startswith("> **Manifest:**")]
    return lines[0] if lines else None


def test_an_incomplete_resource_pass_is_named_as_the_cause(tmp_path):
    note = _note(_render(tmp_path, manifest_parsed=True, manifest_resources_complete=False))
    assert note is not None, "a bounded manifest surface must be explained"
    assert NOT_RESOLVED in note, note
    assert NOT_PARSED not in note, note
    assert FALLBACK not in note, note


def test_an_unparsed_manifest_is_named_as_the_cause(tmp_path):
    note = _note(_render(tmp_path, manifest="unscannable",
                         manifest_parsed=False, manifest_resources_complete=False))
    assert note is not None, note
    assert "`unscannable`" in note and NOT_PARSED in note, note


def test_both_causes_read_as_one_sentence(tmp_path):
    note = _note(_render(tmp_path, manifest_parsed=False, manifest_resources_complete=False))
    assert NOT_PARSED in note and NOT_RESOLVED in note, note
    assert note.count("; ") == 1, note


def test_a_run_that_recorded_nothing_invents_no_cause(tmp_path):
    """Legacy/regenerated runs carry neither field - absent is not a NO."""
    note = _note(_render(tmp_path))
    assert note is not None and FALLBACK in note, note
    assert NOT_PARSED not in note and NOT_RESOLVED not in note, note


def test_the_note_bounds_ssl_only_and_never_speaks_for_root(tmp_path):
    note = _note(_render(tmp_path, manifest_parsed=True, manifest_resources_complete=False))
    assert "an ssl NEITHER is not proof" in note, note
    assert "root" not in note, note


def test_a_fully_analyzed_manifest_gets_no_note(tmp_path):
    assert _note(_render(tmp_path, manifest="fully_analyzed",
                         manifest_parsed=True, manifest_resources_complete=True)) is None
    assert _note(_render(tmp_path, manifest="fully_analyzed")) is None
