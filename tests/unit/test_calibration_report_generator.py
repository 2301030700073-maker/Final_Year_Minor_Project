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


def test_generate_calibration_report_omits_ssl_note_once_flag_is_false():
    # Confirms the field genuinely drives the template - not a dead field
    # duplicated by hardcoded prose (a real gap this closes: the field
    # existed but nothing ever read it).
    from dataclasses import replace
    report = compute_calibration_report(
        runs=[], ground_truth={}, generated_at="2026-07-30T00:00:00", ground_truth_commit="abc123",
    )
    report = replace(report, ssl_verification_not_implemented=False)

    from report.generator import CALIBRATION_TEMPLATE
    content = CALIBRATION_TEMPLATE.render(report=report)

    assert "No `success_checks/*.py` module implements SSL bypass verification yet" not in content
