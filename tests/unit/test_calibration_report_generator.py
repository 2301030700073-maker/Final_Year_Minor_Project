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
