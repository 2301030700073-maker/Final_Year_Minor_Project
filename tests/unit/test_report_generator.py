from common import Action, CategoryVerdict, ClassificationResult, Evidence
from report.generator import generate_report


def _classification():
    root = CategoryVerdict(
        confidence=0.8, detected=True,
        evidence=[Evidence(signature_id="root_su_binary_paths", file="Main.java", line_or_offset=42, matched_text="/system/bin/su")],
    )
    ssl = CategoryVerdict(confidence=0.2, detected=False, evidence=[])
    return ClassificationResult(action=Action.ROOT_ONLY, root=root, ssl=ssl, threshold=0.7)


def test_generate_report_writes_file_with_expected_content(tmp_path):
    metadata = {
        "hashes": {"sha256": "abc123"},
        "package": {"package_name": "owasp.mstg.uncrackable1", "version_name": "1.0", "version_code": "1", "min_sdk": "21", "target_sdk": "23"},
    }

    report_path = generate_report(
        run_id="run1",
        apk_hash="abc123",
        timestamp="2026-07-27T12:00:00",
        metadata=metadata,
        classification=_classification(),
        verification=None,
        dynamic_skip_reason="--skip-dynamic passed",
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
    )

    assert report_path.exists()
    assert report_path.name == "run1.md"
    assert report_path.parent.name == "abc123"  # nested by APK hash, mirrors outputs/analysis/{hash}/
    content = report_path.read_text(encoding="utf-8")
    assert "owasp.mstg.uncrackable1" in content
    assert "ROOT_ONLY" in content
    assert "DETECTED" in content
    assert "Inconclusive" in content  # ssl category, not detected
    assert "root_su_binary_paths" in content
    assert "not run (--skip-dynamic passed)" in content


def test_generate_report_distinguishes_neither_auto_skip_from_operator_skip(tmp_path):
    # A negative-control run (NEITHER) auto-skips the dynamic stage for a
    # different reason than an operator passing --skip-dynamic - the report
    # must say so, not render the same generic string either way (this was
    # a real bug: both cases used to show "not run (--skip-dynamic)" even
    # when nobody passed that flag).
    root = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    ssl = CategoryVerdict(confidence=0.0, detected=False, evidence=[])
    classification = ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl, threshold=0.7)

    report_path = generate_report(
        run_id="run2",
        apk_hash="def456",
        timestamp="2026-07-30T12:00:00",
        metadata={"hashes": {"sha256": "def456"}, "package": {"package_name": "com.android.contacts"}},
        classification=classification,
        verification=None,
        dynamic_skip_reason="NEITHER classification - no bypass technique to apply",
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "not run (NEITHER classification - no bypass technique to apply)" in content
    assert "not run (--skip-dynamic)" not in content


def test_generate_report_falls_back_when_no_skip_reason_given(tmp_path):
    # dynamic_skip_reason defaults to None - shouldn't render "None" literally.
    report_path = generate_report(
        run_id="run3",
        apk_hash="ghi789",
        timestamp="2026-07-30T12:00:00",
        metadata={"hashes": {"sha256": "ghi789"}, "package": {"package_name": "unknown"}},
        classification=_classification(),
        verification=None,
        correlation=None,
        stage_results=[],
        output_dir=tmp_path,
    )

    content = report_path.read_text(encoding="utf-8")
    assert "not run (reason unknown)" in content
