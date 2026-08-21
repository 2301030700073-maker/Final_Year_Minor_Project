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

    assert "has TN=0: the 1.00 precision/recall is a tautology, not a measurement" in content
    assert "Every ground-truthed root case is a positive" in content


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
    # 1.0) clamps to the final bucket index. Had zero direct coverage.
    from calibration.report import _bucket_index
    edges = [0.5, 0.7, 0.9]
    assert _bucket_index(0.6, edges) == 0
    assert _bucket_index(0.7, edges) == 1
    assert _bucket_index(0.85, edges) == 1
    assert _bucket_index(0.9, edges) == 1   # == last edge -> final bucket
    assert _bucket_index(1.0, edges) == 1   # beyond all edges -> final bucket
    assert _bucket_index(0.4, edges) == 1   # below first edge -> final bucket


def test_field_names_builds_category_field_triple():
    # _field_names: the three RunRow attribute names for a category.
    from calibration.report import _field_names
    assert _field_names("root") == ("root_confidence", "root_detected", "root_bypassed")
    assert _field_names("ssl") == ("ssl_confidence", "ssl_detected", "ssl_bypassed")


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
