"""A failed dynamic stage must never render as "not run".

The bypassed lines read:

    - Root bypassed: ... {% if dynamic_skip_reason %}not run ({{ dynamic_skip_reason }})
                      {% else %}bypass not verified (see stage status and evidence below)

`dynamic_skip_reason` was gated on the stage's status in cli.py when the LIVE report
was rendered - `evidence.get("reason", "skipped") if status == "skipped" else None` -
but the column is written without that gate, so any dynamic stage that records a
`reason` while failing stores one. 11 rows in a real results.db are exactly that:
`dynamic_status='failed'` with the setup-failure text in the reason column.

A live report of such a run says "bypass not verified"; a report regenerated from
the same row said "not run (dynamic setup failed before the app could run ...)" - a
stage that ran and failed described as one that never ran, which is the
not-attempted-is-not-skipped confusion reintroduced through storage.

The gate belongs at the render, not only at the write, because the rows are already
stored and are not rewritten: fixing only the write would leave every existing row
rendering the wrong sentence forever. The claim "not run" is true of a skipped stage,
so it is gated on the RECORDED status, read from stage_results - which both the live
and the regenerated path already pass.
"""

from common import Action, CategoryVerdict, ClassificationResult, StageResult
from report.generator import generate_report

FAILED_REASON = (
    "dynamic setup failed before the app could run - no usable device/emulator, "
    "or the APK could not be installed/verified"
)
NOT_RUN = "not run ("
NOT_VERIFIED = "bypass not verified (see stage status and evidence below)"


def _classification():
    return ClassificationResult(
        action=Action.NEITHER,
        root=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
        ssl=CategoryVerdict(confidence=0.2, detected=False, evidence=[]),
    )


def _bypass_lines(tmp_path, stage_results, skip_reason):
    path = generate_report(
        run_id="dyn1", apk_hash="dyn001", timestamp="2026-09-20T12:00:00",
        metadata={"hashes": {"sha256": "dyn001"},
                  "package": {"package_name": "com.example.app"}},
        classification=_classification(),
        verification=None, correlation=None,
        stage_results=stage_results, output_dir=tmp_path,
        coverage={"java": "fully_analyzed", "native": "fully_analyzed",
                  "manifest": "fully_analyzed", "js": "fully_analyzed"},
        dynamic_skip_reason=skip_reason,
    )
    content = path.read_text(encoding="utf-8")
    return [ln for ln in content.splitlines() if ln.startswith(("- Root bypassed:", "- SSL bypassed:"))]


def _dynamic_stage(status, reason):
    evidence = {"reason": reason} if reason is not None else None
    return StageResult(stage="dynamic", status=status, evidence=evidence,
                       error="dynamic setup failed (AdbError): no devices/emulators found")


def test_a_failed_stage_with_a_stored_reason_is_not_rendered_as_not_run(tmp_path):
    """The 11 real rows: stored reason + failed status."""
    lines = _bypass_lines(tmp_path, [_dynamic_stage("failed", FAILED_REASON)], FAILED_REASON)
    assert len(lines) == 2, lines
    for line in lines:
        assert NOT_RUN not in line, line
        assert NOT_VERIFIED in line, line


def test_a_skipped_stage_still_renders_not_run_with_its_reason(tmp_path):
    """The 145 real rows - unchanged behaviour, so the gate did not overreach."""
    reason = "--skip-dynamic passed"
    lines = _bypass_lines(tmp_path, [_dynamic_stage("skipped", reason)], reason)
    for line in lines:
        assert f"not run ({reason})" in line, line


def test_no_dynamic_stage_row_keeps_the_previous_reading(tmp_path):
    """A reason with no stage row is not evidence of failure either way: render as before."""
    lines = _bypass_lines(tmp_path, [], FAILED_REASON)
    for line in lines:
        assert NOT_RUN in line, line


def test_a_successful_stage_with_a_stale_reason_is_not_rendered_as_not_run(tmp_path):
    """Mirror of the failed case: a stage that ran must not claim it never did."""
    lines = _bypass_lines(tmp_path, [_dynamic_stage("success", FAILED_REASON)], FAILED_REASON)
    for line in lines:
        assert NOT_RUN not in line, line
        assert NOT_VERIFIED in line, line


def test_no_reason_still_reads_as_unverified(tmp_path):
    lines = _bypass_lines(tmp_path, [_dynamic_stage("success", None)], None)
    for line in lines:
        assert NOT_VERIFIED in line, line
