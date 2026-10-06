"""A below-threshold NEITHER must not render like a zero-evidence NEITHER.

Measured 2026-10-06, on the sweep's own output. RS_Vapour scored root 0.30 - the
signature FIRED, six hits on its own Login class - and the report said NEITHER with
nothing on the headline to say evidence had been found and discarded. Reading it, the
audit concluded "these apps have no root detection", which was wrong: config/
ground_truth.yaml records root: true and the calibration report names it a KNOWN MISS.

The arithmetic is why it matters. Confidence is the sum of DISTINCT signature weights
and the corpus caps every signature below the 0.70 threshold (except the one measured
exception), so a single-technique app cannot clear the bar BY CONSTRUCTION. "Found
nothing" and "found one thing that could never be enough alone" are different facts
about an app, and the report must not collapse them.

Fixture-driven; no Android toolchain, no database, no device.
"""

from pathlib import Path

from common import Action, CategoryVerdict, ClassificationResult, Evidence
from static.manifest import ManifestInfo
from report.generator import generate_report

REPO_ROOT = Path(__file__).resolve().parents[2]

HEADLINE = "**Evidence below threshold:**"
HEADLINE_CLAIM = "A below-threshold NEITHER is not the same as a zero-evidence NEITHER"


def _manifest():
    return ManifestInfo(debuggable=False, network_security_config=None, permissions=[])


def _render(tmp_path, root, ssl):
    path = generate_report(
        run_id="belowthreshold",
        apk_hash="bt001",
        timestamp="2026-10-06T12:00:00",
        metadata={"hashes": {"sha256": "bt001"},
                  "package": {"package_name": "com.example.app"}},
        classification=ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl),
        verification=None,
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
        manifest=_manifest(),
    )
    return path.read_text(encoding="utf-8")


def _ev(sig_id, line):
    return Evidence(
        signature_id=sig_id,
        file="sources/com/example/app/Login.java",
        line_or_offset=line,
        matched_text="/system/xbin/",
        evidence_type="bytecode_string",
        verification_state="deterministic_matched",
    )


def test_below_threshold_evidence_is_visible_on_the_headline(tmp_path):
    root = CategoryVerdict(confidence=0.30, detected=False,
                           evidence=[_ev("root_su_search_directories", 88)])
    content = _render(tmp_path, root, CategoryVerdict(confidence=0.0, detected=False,
                                                      evidence=[]))
    assert HEADLINE in content
    assert "root 1 hit(s)/1 signature(s)" in content
    assert HEADLINE_CLAIM in content


def test_zero_evidence_renders_NO_below_threshold_line(tmp_path):
    """THE FALSIFICATION: the two states must be distinguishable in the output.

    If this fails, the headline line is unconditional and tells the reader nothing.
    """
    zero = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    content = _render(tmp_path, zero, CategoryVerdict(confidence=0.0, detected=False,
                                                      evidence=[]))
    assert HEADLINE not in content


def test_a_detected_category_does_not_get_the_below_threshold_note(tmp_path):
    """Detected evidence is not "below threshold" - the note would be a false claim."""
    detected = CategoryVerdict(confidence=0.90, detected=True,
                               evidence=[_ev("rootbeer_framework", 12)])
    content = _render(tmp_path, detected, CategoryVerdict(confidence=0.0, detected=False,
                                                          evidence=[]))
    assert HEADLINE not in content
    assert HEADLINE_CLAIM not in content


def test_the_per_category_line_names_the_threshold_and_the_hit_count(tmp_path):
    root = CategoryVerdict(confidence=0.30, detected=False,
                           evidence=[_ev("root_su_search_directories", 88)])
    content = _render(tmp_path, root, CategoryVerdict(confidence=0.0, detected=False,
                                                      evidence=[]))
    # The per-category line must state the measured facts, not just "Inconclusive".
    assert "1 signature hit(s) across 1 signature(s) WERE recorded" in content
    assert "below the 0.7 threshold" in content
    assert "a single-technique app cannot clear the threshold by construction" in content


def test_two_signatures_are_counted_as_two_not_one(tmp_path):
    """Hit count and DISTINCT signature count are different numbers, and both matter."""
    root = CategoryVerdict(
        confidence=0.40, detected=False,
        evidence=[_ev("root_su_search_directories", 88),
                  _ev("root_su_search_directories", 90),
                  _ev("root_known_indicator_files", 12)],
    )
    content = _render(tmp_path, root, CategoryVerdict(confidence=0.0, detected=False,
                                                      evidence=[]))
    assert "root 3 hit(s)/2 signature(s)" in content
