from calibration.report import compute_calibration_report
from calibration.types import GroundTruthEntry, RunRow
from report.generator import generate_calibration_report


def test_generate_calibration_report_writes_file_with_expected_content(tmp_path):
    runs = [RunRow(
        apk_hash="uc1_hash", run_id="r1", action="ROOT_ONLY",
        root_confidence=0.80, root_detected=True, root_bypassed=True,
        ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
        decompile_completeness="complete",
    )]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}
    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )

    report_path = generate_calibration_report(report, tmp_path)

    assert report_path.exists()
    assert report_path.parent == tmp_path
    content = report_path.read_text(encoding="utf-8")
    assert "# Calibration Report" in content
    assert "Tier 1" in content
    assert "Tier 2" in content
    assert "abc123" in content
    assert "N/A (no data)" in content  # ssl Tier 1 confirmation rate - never attempted
    assert "SSL bypass verification" in content or "ssl_bypassed=None" in content
    # G18: the Tier-1 confirmation rate is explicitly framed as a LOWER BOUND on
    # precision (not precision itself), with Tier 2 named as the real measurement -
    # making the friend's "confirmation rate is a lower bound on precision" explicit.
    assert "lower bound on precision, not precision itself" in content


def test_generate_calibration_report_omits_ssl_note_once_all_modules_verify():
    # Confirms the field genuinely drives the template - not a dead field
    # duplicated by hardcoded prose (a real gap this closes: the field
    # existed but nothing ever read it). The flag reflects PARTIAL SSL
    # coverage (AndroGoat implements it, the three UnCrackable checks don't);
    # only when ALL modules verify does the note disappear.
    from dataclasses import replace
    report = compute_calibration_report(
        runs=[], ground_truth={}, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )
    report = replace(report, ssl_verification_partial=False)

    from report.generator import CALIBRATION_TEMPLATE
    content = CALIBRATION_TEMPLATE.render(report=report)

    assert "SSL bypass verification is PARTIAL" not in content


def test_generate_calibration_report_renders_ssl_partial_note_when_flag_set():
    # The ssl_verification_partial branch was covered only NEGATIVELY (its
    # absence when False, in the test above). The positive rendering - when some
    # modules only partially verify SSL (AndroGoat implements it, the three
    # UnCrackable checks don't) - must be asserted too: a silent break of the
    # `{% if report.ssl_verification_partial %}` branch would otherwise pass.
    report = compute_calibration_report(
        runs=[], ground_truth={}, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )
    # the sibling test deliberately flips this to False; the default here is the
    # partial-verification state the note exists to surface
    assert report.ssl_verification_partial is True

    from report.generator import CALIBRATION_TEMPLATE
    content = CALIBRATION_TEMPLATE.render(report=report)

    assert "SSL bypass verification is PARTIAL" in content


def test_generate_calibration_report_flags_vacuous_1p00_when_tn_is_zero(tmp_path):
    # RESID (finding 4): a Tier-2 with TN=0 reports 1.00 precision/recall as a
    # tautology, not a measurement - every ground-truthed case is a positive, so
    # the FP/FN direction was never tested. The report must say so loudly
    # instead of letting a structurally-unearned 1.00 read as validated.
    runs = [
        RunRow(
            apk_hash="uc1_hash", run_id="r1", action="ROOT_ONLY",
            root_confidence=0.80, root_detected=True, root_bypassed=True,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="complete",
        ),
    ]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}
    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )
    assert report.tier2["root"].true_negative == 0  # the tautology precondition

    from report.generator import CALIBRATION_TEMPLATE
    content = CALIBRATION_TEMPLATE.render(report=report)

    assert "has TN=0: the 1.00 precision is a tautology, not a measurement" in content
    assert "Every ground-truthed root case in Tier 2 is a positive" in content

    # CALIB-TN0-LABEL: the SAME fixture leaves ssl with n=0 (its one ground-truth
    # entry was a NEGATIVE that got coverage-excluded from Tier 2, not measured), so
    # ssl precision/recall render "N/A", not 1.00. The tautology warning must NOT
    # fire for ssl - a bare `TN==0` gate did, emitting a "1.00 ... tautology" caveat
    # and "Every ground-truthed ssl case is a positive" (both false: n=0, and the ssl
    # ground truth was a negative) directly beneath an N/A cell.
    assert report.tier2["ssl"].n == 0  # ssl fully excluded -> no Tier-2 corpus
    assert "ssl has TN=0" not in content
    assert "ground-truthed ssl case" not in content


def test_tn0_tautology_warning_suppressed_once_a_negative_control_exists():
    # CALIB-TN0-LABEL: the warning's whole point is "no negative control, so the
    # false-positive direction is untestable." The instant a real negative control
    # is added - even one the detector gets WRONG (FP>0) - that claim is false and
    # precision is genuinely <1.00, so the caveat must disappear rather than sit
    # self-contradictorily beneath a <1.00 precision cell. TN is still 0 here (the
    # negative was mis-detected, not correctly cleared), which the bare `TN==0` gate
    # wrongly treated as "positive-only corpus."
    runs = [
        RunRow(
            apk_hash="pos_hash", run_id="r1", action="SSL_ONLY",
            root_confidence=0.0, root_detected=False, root_bypassed=None,
            ssl_confidence=0.90, ssl_detected=True, ssl_bypassed=True,
            decompile_completeness="complete",
        ),
        RunRow(
            apk_hash="neg_hash", run_id="r2", action="SSL_ONLY",
            root_confidence=0.0, root_detected=False, root_bypassed=None,
            ssl_confidence=0.85, ssl_detected=True, ssl_bypassed=None,
            decompile_completeness="complete",
        ),
    ]
    ground_truth = {
        "pos_hash": GroundTruthEntry("pos_hash", root=None, ssl=True, source="manual review"),
        "neg_hash": GroundTruthEntry("neg_hash", root=None, ssl=False, source="manual review"),
    }
    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )
    t2 = report.tier2["ssl"]
    assert (t2.true_positive, t2.false_positive, t2.true_negative) == (1, 1, 0)
    assert t2.precision.rate == 0.5  # a mis-detected negative control -> precision < 1.00

    from report.generator import CALIBRATION_TEMPLATE
    content = CALIBRATION_TEMPLATE.render(report=report)
    assert "ssl has TN=0" not in content  # a negative control DOES exist; no tautology
    assert "tautology" not in content


def test_ssl_verification_partial_consistent_with_success_checks():
    # C1: ssl_verification_partial (calibration/report.py:115) is hand-maintained
    # with no guard that it stays true to the success_checks code - the docstring
    # itself warns it "must be updated by hand and reviewed if it ever silently
    # goes stale." If the flag were flipped to False ("full SSL verification")
    # while any check still hardcodes ssl_bypassed=None, the report would falsely
    # claim full SSL verification. Assert the flag matches the code: it must be
    # True exactly while some module cannot produce a real SSL verdict.
    import re
    from pathlib import Path
    from calibration.report import CalibrationReport

    checks_dir = Path(__file__).resolve().parents[2] / "src" / "dynamic" / "success_checks"
    modules = sorted(checks_dir.glob("*.py"))
    assert modules, "no success_checks modules found - test cannot validate the flag"

    hardcoded_none = [
        m.name for m in modules
        if re.search(r"ssl_bypassed\s*=\s*None\s*,", m.read_text(encoding="utf-8"))
    ]
    # Lock the current reality so the regex isn't silently vacuous: AndroGoat
    # implements real verification (ssl_bypassed=True on a fired pin hook), the
    # three UnCrackable checks hardcode None.
    assert "androgoat.py" not in hardcoded_none, "AndroGoat implements real SSL verification"
    assert hardcoded_none, "expected the UnCrackable checks to hardcode ssl_bypassed=None"

    if hardcoded_none:
        assert CalibrationReport.ssl_verification_partial is True, (
            f"flag claims FULL SSL verification but {hardcoded_none} still hardcode "
            "ssl_bypassed=None - flip ssl_verification_partial back to True"
        )
    else:
        assert CalibrationReport.ssl_verification_partial is False, (
            "all success checks implement real SSL verification - flip ssl_verification_partial to False"
        )


def test_bucket_index_buckets_confidence_and_clamps_boundaries():
    # _bucket_index: confidence falls in the first half-open bucket where
    # edges[i] <= c < edges[i+1]; a value at/beyond the last edge (e.g. exactly
    # 1.0) goes to the final bucket, and a value BELOW the first edge goes to the
    # BOTTOM bucket (CURVE1). The prior version of this characterization test
    # asserted below-first-edge -> FINAL bucket, mislabelled "clamps": sending a
    # low confidence to the top high-confidence bucket is misbucketing, not
    # clamping, and would corrupt the calibration curve under a zoomed edge set
    # (bucket_edges not anchored at 0.0). The code's own fallback comment only
    # ever anticipated the top edge; below-range was an unintended fall-through.
    from calibration.report import _bucket_index
    edges = [0.5, 0.7, 0.9]
    assert _bucket_index(0.6, edges) == 0
    assert _bucket_index(0.7, edges) == 1
    assert _bucket_index(0.85, edges) == 1
    assert _bucket_index(0.9, edges) == 1   # == last edge -> final bucket
    assert _bucket_index(1.0, edges) == 1   # beyond all edges -> final bucket
    assert _bucket_index(0.4, edges) == 0   # below first edge -> BOTTOM bucket (CURVE1)


def test_field_names_builds_category_field_triple():
    # _field_names: the three RunRow attribute names for a category.
    from calibration.report import _field_names
    assert _field_names("root") == ("root_confidence", "root_detected", "root_bypassed")
    assert _field_names("ssl") == ("ssl_confidence", "ssl_detected", "ssl_bypassed")


def test_fmt_edge_renders_tuned_thresholds_faithfully_and_leaves_defaults_unchanged():
    # _fmt_edge: the curve inserts the decision threshold and every per-run
    # threshold as explicit bucket edges (G2/Finding D), and those are NOT
    # 0.1-aligned. A fixed `%.1f` rounded a tuned 0.75 to "0.8" - hiding the
    # boundary and colliding buckets. _fmt_edge must render such edges truthfully
    # while leaving a 0.1-multiple edge EXACTLY as `%.1f` did (no change to the
    # default-edge curve).
    from report.generator import _fmt_edge
    # Non-0.1 edges (tuned/per-run thresholds) render with full precision.
    assert _fmt_edge(0.75) == "0.75"
    assert _fmt_edge(0.84) == "0.84"    # the per-run threshold the existing curve tests use
    assert _fmt_edge(0.725) == "0.725"
    assert _fmt_edge(0.65) == "0.65"
    # 0.1-multiple edges render identically to the old `%.1f`: one decimal kept.
    assert _fmt_edge(0.0) == "0.0"
    assert _fmt_edge(0.1) == "0.1"
    assert _fmt_edge(0.7) == "0.7"
    assert _fmt_edge(1.0) == "1.0"
    # 0.1-arithmetic float noise is rounded away at 4 decimals, not leaked.
    assert _fmt_edge(0.1 + 0.2) == "0.3"


def test_calibration_curve_render_shows_tuned_threshold_boundary_not_a_rounded_collision():
    # Regression: with a tuned threshold (e.g. 0.75), the curve DATA correctly
    # splits [0.7,0.8) into [0.7,0.75) and [0.75,0.8) (the threshold-as-edge
    # feature). But the markdown render used `%.1f`, collapsing them to
    # "[0.7, 0.8)" and a degenerate "[0.8, 0.8)" - the tuned boundary the curve
    # exists to surface became invisible and a bucket's count no longer matched
    # its label. The existing curve tests only assert the float edges in the
    # DATA, never the rendered label, so the corruption lived purely in the
    # render. Assert the rendered curve names the real boundary and shows no
    # rounded collision.
    from report.generator import CALIBRATION_TEMPLATE

    report = compute_calibration_report(
        runs=[], ground_truth={}, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
        threshold={"root": 0.75, "ssl": 0.75},
    )
    # precondition: the threshold IS an explicit edge in the data (feature works)
    root_edges = {b.range_low for b in report.calibration_curve["root"]}
    assert 0.75 in root_edges

    content = CALIBRATION_TEMPLATE.render(report=report)

    # The tuned boundary is visible in the rendered curve, both as a range end
    # and a range start - faithful to the data.
    assert "[0.7, 0.75)" in content
    assert "[0.75, 0.8)" in content
    # The old `%.1f` collision must be gone: 0.75 no longer masquerades as 0.8,
    # and there is no degenerate zero-width-looking bucket.
    assert "[0.8, 0.8)" not in content
    # A 0.1-multiple boundary elsewhere still renders exactly as before.
    assert "[0.8, 0.9)" in content


def test_calibration_report_renders_skeleton_warning_on_small_corpus():
    # report.skeleton_warning: a sub-30 observation corpus renders a loud
    # "skeleton, not a statistically robust result" note (so bucket rates are
    # never read as a reliable confidence-vs-accuracy estimate). A small corpus
    # is the default state - the positive render must be asserted, not only the
    # absence when the corpus is large. Had zero direct coverage.
    from dataclasses import replace
    from calibration.report import compute_calibration_report
    from report.generator import CALIBRATION_TEMPLATE

    report = compute_calibration_report(
        runs=[], ground_truth={}, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )
    assert report.skeleton_warning  # total_n=0 < 30 -> warning set
    content = CALIBRATION_TEMPLATE.render(report=report)
    assert "Calibration curve is a skeleton, not a statistically robust result" in content

    # negative gate: a corpus large enough (>=30) clears the warning
    full = replace(report, skeleton_warning="")
    content = CALIBRATION_TEMPLATE.render(report=full)
    assert "skeleton, not a statistically robust result" not in content


def test_tier2_exclusion_note_names_every_governing_surface():
    # The calibration report's Tier-2 methodology footnote states which governing
    # surfaces gate a confident true-negative. That prose MUST match the gate the
    # code actually enforces (static.coverage.category_is_confident_negative over
    # GOVERNING_SURFACES) - a drift here misdescribes the exclusion criteria in a
    # user-facing scientific artifact. Regression for the stale note that omitted
    # `js` (Hermes/RN bundle surface) after js became a governing surface: the
    # doc claimed root->{java,native}, ssl->{java,native,manifest} while the gate
    # already required js on both. Assert the note names every surface the gate
    # uses, cross-checked against the constant so a future surface can't be added
    # to the gate without the report tracking it.
    from report.generator import CALIBRATION_TEMPLATE
    from static.coverage import GOVERNING_SURFACES

    report = compute_calibration_report(
        runs=[], ground_truth={}, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )
    content = CALIBRATION_TEMPLATE.render(report=report)

    # The note line itself (not just anywhere in the doc).
    note_line = next(
        (ln for ln in content.splitlines() if "excluded from Tier 2 when any of its governing surfaces" in ln),
        None,
    )
    assert note_line is not None, "Tier-2 per-surface exclusion note is missing from the report"
    for category, surfaces in GOVERNING_SURFACES.items():
        rendered = f"{category}->{{{','.join(surfaces)}}}"
        assert rendered in note_line, (
            f"Tier-2 note must name the enforced governing surfaces for {category}: "
            f"expected '{rendered}' in\n{note_line}"
        )
    # Explicit belt-and-braces: js is present for both categories (the drift that regressed).
    assert "js}" in note_line


def test_tier2_exclusion_line_names_both_decompile_and_coverage_causes():
    # Honesty fix (calibration N/A attribution): excluded_partial_decompile counts
    # a NEITHER dropped from Tier 2 for EITHER reason a negative isn't proof of
    # absence - a partial decompile OR an under-covered governing surface
    # (native/manifest/js, incl. a pre-coverage run with no map). Here the ONLY
    # excluded run decompiled COMPLETELY and was dropped purely for missing
    # coverage; if the rendered report still blamed "partial/unknown decompile"
    # alone it would send the operator to fix the wrong thing. The Tier-2
    # exclusion line must name the coverage cause too, not the decompile alone.
    runs = [RunRow(
        apk_hash="cov_hash", run_id="r1", action="NEITHER",
        root_confidence=0.0, root_detected=False, root_bypassed=None,
        ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
        decompile_completeness="complete", coverage=None,  # complete decompile, NO coverage map
    )]
    ground_truth = {"cov_hash": GroundTruthEntry("cov_hash", root=False, ssl=False, source="manual review")}
    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )
    # precondition: the exclusion is real and coverage-caused, not a decompile miss
    assert report.excluded_partial_decompile["root"] == 1

    from report.generator import CALIBRATION_TEMPLATE
    content = CALIBRATION_TEMPLATE.render(report=report)

    exclusion_line = next(
        ln for ln in content.splitlines()
        if ln.startswith("Excluded from Tier 2 (partial/unknown decompile")
    )
    lowered = exclusion_line.lower()
    assert "decompile" in lowered  # the original cause stays named
    assert ("surface" in lowered or "under-covered" in lowered or "coverage" in lowered), (
        f"Tier-2 exclusion line must also name the under-covered-surface cause, "
        f"not the decompile alone:\n{exclusion_line}"
    )


def test_known_miss_caveat_names_the_apk_and_qualifies_recall():
    # CALIB-EXCL-MISS1 (RS_Vapour): recall 1.00 in the Tier-2 table is computed
    # over the CERTIFIABLE subset. A known miss - ground truth says present,
    # prediction NEITHER, excluded because coverage couldn't certify the negative
    # - is correctly not an FN, so it never depresses that 1.00. Folded into
    # "Excluded from Tier 2: root=2" it becomes indistinguishable from an
    # honestly uncertifiable negative, and the report reads as unqualified
    # perfect recall. The caveat must name the APK and say which subset the
    # recall covers.
    fully = {"java": "fully_analyzed", "native": "fully_analyzed",
             "manifest": "fully_analyzed", "js": "fully_analyzed"}
    runs = [
        RunRow(
            apk_hash="tp_hash", run_id="r1", action="ROOT_ONLY",
            root_confidence=0.9, root_detected=True, root_bypassed=True,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="complete", coverage=fully,
        ),
        RunRow(
            apk_hash="vapour_hash", run_id="r2", action="NEITHER",
            root_confidence=0.3, root_detected=False, root_bypassed=None,
            ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
            decompile_completeness="complete", coverage={**fully, "java": "partial"},
        ),
    ]
    ground_truth = {
        "tp_hash": GroundTruthEntry("tp_hash", root=True, ssl=False, source="manual review"),
        "vapour_hash": GroundTruthEntry("vapour_hash", root=True, ssl=False, source="DEX-verified"),
    }
    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-09-03T00:00:00", ground_truth_commit="abc123",
    )
    # preconditions: recall reads a clean 1.00 and the miss is genuinely excluded
    assert report.tier2["root"].recall.rate == 1.0
    assert report.excluded_missed_positives["root"] == ["vapour_hash"]

    from report.generator import CALIBRATION_TEMPLATE
    content = CALIBRATION_TEMPLATE.render(report=report)

    caveat = next(
        (ln for ln in content.splitlines() if "KNOWN MISS" in ln),
        None,
    )
    assert caveat is not None, f"known-miss caveat missing from rendered report:\n{content}"
    assert "vapour_hash" in caveat, f"caveat must name the missed APK:\n{caveat}"
    assert "certifiable subset" in caveat
    assert "NOT counted as a false negative" in caveat
    # ssl has no known miss -> exactly one caveat, never a blanket one per category.
    assert len([ln for ln in content.splitlines() if "KNOWN MISS" in ln]) == 1
    assert "ssl-detection IS present" not in content


def test_rendered_curve_names_the_boundary_and_marks_exactly_its_edge(tmp_path):
    # ADR-0033 render parity: the curve's own prose told the reader the decision
    # boundary "always" appears explicitly, and on a 0.1-multiple threshold the
    # artefact gave no way to find it. The header names the value; the marked row
    # is the bucket STARTING at it, and nothing else is marked.
    runs = [RunRow(
        apk_hash="uc1_hash", run_id="r1", action="ROOT_ONLY",
        root_confidence=0.80, root_detected=True, root_bypassed=True,
        ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
        decompile_completeness="complete",
    )]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}
    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123", threshold=0.7,
    )

    content = generate_calibration_report(report, tmp_path).read_text(encoding="utf-8")

    assert "**Decision threshold:** root 0.7, ssl 0.7" in content
    # Count the ROW marker (`... threshold |`), not the phrase: the header and the
    # curve prose both explain the marker, so the bare phrase appears there too.
    assert content.count("\u2190 threshold |") == 2      # one marked edge per category
    assert "| [0.7, 0.8) \u2190 threshold |" in content  # the range START at the boundary
    assert "[0.6, 0.7) \u2190 threshold" not in content  # the edge that ENDS there is ordinary


def test_rendered_curve_omits_the_threshold_line_when_the_report_carries_none():
    # The header line is gated on the field being present, so a report built
    # without thresholds (hand-built, or from before this field existed) still
    # renders - it must not print a boundary VALUE it does not have, and must not
    # raise on an empty mapping. The row markers are deliberately driven by the
    # BUCKET's own flag instead, so clearing this report-level field leaves each
    # bucket's provenance visible: a bucket that came from a threshold is still
    # marked even when the current boundary goes unnamed. The two directions are
    # separate on purpose - never print a value the report lacks, never hide a
    # provenance a bucket has.
    from dataclasses import replace
    from report.generator import CALIBRATION_TEMPLATE

    report = compute_calibration_report(
        runs=[], ground_truth={}, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )
    assert any(b.is_threshold_edge for b in report.calibration_curve["root"])  # precondition

    content = CALIBRATION_TEMPLATE.render(report=replace(report, thresholds={}))

    assert "**Decision threshold:**" not in content      # no value claimed
    assert "\u2190 threshold |" in content               # provenance still shown
    assert "## Confidence-Calibration Curve" in content  # the section itself still renders


def test_curve_states_its_sample_even_when_the_sample_size_warning_is_gone():
    # ADR-0034: the curve's Count column is the ground-truthed Tier-2 subset - one
    # datapoint per APK - not runs at that confidence (169 runs sit at
    # root_confidence >= 0.9 while the top bucket counts 4; 66 sit below 0.1 while
    # that bucket counts 1). The only place that population was named was the
    # skeleton warning, which report.py emits ONLY while total_n < 30 - so the
    # definition expired exactly as the curve became large enough to read as a
    # measurement. This renders the report WITHOUT the warning: a change that let
    # the definition ride on the warning again would still pass a test that only
    # checked the default, warned corpus.
    from dataclasses import replace
    from report.generator import CALIBRATION_TEMPLATE

    runs = [RunRow(
        apk_hash="uc1_hash", run_id="r1", action="ROOT_ONLY",
        root_confidence=0.80, root_detected=True, root_bypassed=True,
        ssl_confidence=0.0, ssl_detected=False, ssl_bypassed=None,
        decompile_completeness="complete",
    )]
    ground_truth = {"uc1_hash": GroundTruthEntry("uc1_hash", root=True, ssl=False, source="manual review")}
    report = compute_calibration_report(
        runs, ground_truth, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )
    assert report.skeleton_warning  # precondition: this corpus IS the warned case

    content = CALIBRATION_TEMPLATE.render(report=replace(report, skeleton_warning=""))

    assert "Calibration curve is a skeleton" not in content  # the caution is gone
    # ...and the definition is still there, in the label and in ungated prose.
    assert content.count("| Range | Count (ground-truthed) | Observed Positive Rate |") == 2
    assert "one datapoint per APK (CALIB-WEIGHT1) - not runs at that confidence" in content
    assert "not proof of absence, appears in neither column" in content
