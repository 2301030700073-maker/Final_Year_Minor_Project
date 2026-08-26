"""Report completeness: an empty traffic capture must be cross-referenced with the
manifest's INTERNET permission (memory: report-completeness-gaps).

- No INTERNET declared  -> an empty capture is EXPECTED (app cannot open a socket).
- INTERNET declared     -> an empty capture is a COVERAGE LIMITATION of the run,
                           never evidence the app makes no network calls (ADR-0006).

The no-INTERNET branch already existed; the INTERNET-declared branch was lumped
into a generic note that stated only the reason, silently under-claiming. Pure,
fixture-driven, no Android toolchain."""

from common import (
    Action, CategoryVerdict, ClassificationResult, Evidence, StageResult,
)
from static.manifest import ManifestInfo
from report.generator import generate_report


def _neither_classification():
    root = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    ssl = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
    return ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl)


def _empty_capture_stage():
    # A real capture stage that produced zero flows - reported honestly as a
    # reason, never fabricated flows (matches _capture_summary's contract).
    return StageResult(
        stage="capture-traffic",
        status="failed",
        evidence={"reason": "capture proxy produced no flows", "flow_summary": []},
        error="no flows recorded",
    )


def _render(manifest, tmp_path):
    report_path = generate_report(
        run_id="cap", apk_hash="cap001", timestamp="2026-08-23T12:00:00",
        metadata={"hashes": {"sha256": "cap001"}, "package": {"package_name": "com.example.net"}},
        classification=_neither_classification(), verification=None, correlation=None,
        stage_results=[_empty_capture_stage()], output_dir=tmp_path, manifest=manifest,
    )
    return report_path.read_text(encoding="utf-8")


def test_empty_capture_with_internet_declared_is_a_coverage_limitation(tmp_path):
    manifest = ManifestInfo(
        debuggable=False, network_security_config=None,
        permissions=["android.permission.INTERNET"],
    )
    content = _render(manifest, tmp_path)
    assert "## Captured Traffic" in content
    # the app CAN talk to the network, so an empty capture is a coverage gap...
    assert "declares `android.permission.INTERNET`" in content
    assert "coverage limitation of this run" in content
    assert "not evidence that the app makes no network calls" in content
    # ...and it must NOT read as the no-permission "expected empty" case.
    assert "expected regardless of proxy state" not in content


def test_empty_capture_without_internet_is_expected(tmp_path):
    manifest = ManifestInfo(
        debuggable=False, network_security_config=None, permissions=[],
    )
    content = _render(manifest, tmp_path)
    assert "## Captured Traffic" in content
    # no socket possible -> empty capture is expected, not a coverage gap.
    assert "no `android.permission.INTERNET` permission" in content
    assert "expected regardless of proxy state" in content
    assert "coverage limitation of this run" not in content
