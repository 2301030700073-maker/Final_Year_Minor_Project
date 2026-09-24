"""A skipped stage's reason was recorded and never printed.

`_print_stage` (cli.py) rendered a stage's explanation only through
`if result.error:` - and no skipped stage in this project's history has ever set
`error`. Measured over outputs/analysis/results.db on 2026-09-24: of 166 skipped
stages, 152 carried `evidence["reason"]` only, 9 carried
`evidence["not_applicable_reason"]` (the reclassified capture stages), 5 carried
neither, and 0 carried `error`.

So the AndroGoat run 085a8c10 printed

    SKIPPED  capture-traffic  (25742ms)

for a stage whose stored evidence held "no flows captured" and whose
`not_applicable_reason` ("app did not exercise its network/SSL path ...") the
report renders verbatim. A 25-second stage vanished off the one channel the
operator is watching, with the reason sitting in the record it produced
([[docstring-caveat-reaches-no-reader]], [[report-skipped-capture-authoritative-reason]]).

Fixture-driven; no Android toolchain, no database.
"""

from io import StringIO
from pathlib import Path

from rich.console import Console

import cli
from common import StageResult

REPO_ROOT = Path(__file__).resolve().parents[2]

CAPTURE_NA_REASON = (
    "app did not exercise its network/SSL path (no in-process SSL signal from "
    "the dynamic stage's observer and this capture window's own observer)"
)
STAGE_REASON = "--skip-dynamic passed"


def _print(monkeypatch, stage: StageResult) -> str:
    """The console text _print_stage emits for one stage, captured."""
    buffer = StringIO()
    monkeypatch.setattr(cli, "console", Console(file=buffer, width=200, no_color=True))
    # The status sidecar is a separate concern; keep the render pure.
    monkeypatch.setattr(cli, "_RUN_STATUS", None)
    cli._print_stage(stage)
    return buffer.getvalue()


def _skipped(evidence, error="") -> StageResult:
    return StageResult(
        stage="capture-traffic", status="skipped", evidence=evidence, error=error
    )


# --- the console carries the reason the record carries ---------------------


def test_a_reclassified_capture_prints_its_not_applicable_reason(monkeypatch):
    out = _print(
        monkeypatch,
        _skipped({"reason": "no flows captured", "not_applicable_reason": CAPTURE_NA_REASON}),
    )
    assert "SKIPPED" in out and "capture-traffic" in out
    assert CAPTURE_NA_REASON in out


def test_a_plain_skip_prints_its_own_recorded_reason(monkeypatch):
    out = _print(monkeypatch, _skipped({"reason": STAGE_REASON}))
    assert STAGE_REASON in out


def test_the_classification_time_reason_outranks_the_stages_own(monkeypatch):
    """The report gives not_applicable_reason precedence (generator.py:1497).

    The console must not tell a different story from the page beside it.
    """
    out = _print(
        monkeypatch,
        _skipped({"reason": "no flows captured", "not_applicable_reason": CAPTURE_NA_REASON}),
    )
    assert CAPTURE_NA_REASON in out
    assert "no flows captured" not in out


def test_a_skip_with_no_recorded_reason_adds_no_line(monkeypatch):
    # The technology-level success check records a `note`, not a reason; the
    # console prints the status row and nothing it cannot source.
    out = _print(monkeypatch, _skipped({"note": "technology-level hooks signal"}))
    assert out.count("\n") == 1


def test_blank_and_non_string_reasons_are_not_printed(monkeypatch):
    for evidence in ({"reason": ""}, {"reason": "   "}, {"reason": None}, {"reason": 7}):
        out = _print(monkeypatch, _skipped(evidence))
        assert out.count("\n") == 1, evidence


# --- nothing that already printed changed ----------------------------------


def test_a_failed_stage_still_prints_its_error(monkeypatch):
    stage = StageResult(
        stage="dynamic",
        status="failed",
        evidence={"reason": "unexpected dynamic-stage exception"},
        error="frida server not reachable",
    )
    out = _print(monkeypatch, stage)
    assert "FAILED" in out
    assert "frida server not reachable" in out


def test_a_successful_stage_prints_one_line(monkeypatch):
    out = _print(
        monkeypatch,
        StageResult(stage="decompile", status="success", evidence={"reason": "unused"}),
    )
    assert "OK" in out and "decompile" in out
    assert out.count("\n") == 1


def test_a_non_skipped_stage_has_no_skip_reason():
    for status in ("success", "failed"):
        stage = StageResult(stage="x", status=status, evidence={"reason": STAGE_REASON})
        assert cli._stage_skip_reason(stage) is None


def test_skip_reason_trims_and_never_returns_a_blank():
    assert cli._stage_skip_reason(_skipped({"reason": f"  {STAGE_REASON}  "})) == STAGE_REASON
    assert cli._stage_skip_reason(_skipped({})) is None
    assert cli._stage_skip_reason(_skipped({"reason": " \n "})) is None


# --- wiring: a helper nothing calls is not a fix ---------------------------


def test_print_stage_calls_the_helper(monkeypatch):
    text = (REPO_ROOT / "src" / "cli.py").read_text()
    body = text[text.index("def _print_stage(") :]
    body = body[: body.index("\ndef ")]
    assert "_stage_skip_reason(result)" in body
    # ...and only where `error` did not already say it, so the failure line is
    # untouched.
    assert body.index("if result.error:") < body.index("_stage_skip_reason(result)")


def test_console_and_report_agree_on_the_reason_keys():
    """Both surfaces read the same keys in the same order of precedence."""
    cli_text = (REPO_ROOT / "src" / "cli.py").read_text()
    report_text = (REPO_ROOT / "src" / "report" / "generator.py").read_text()
    assert 'for key in ("not_applicable_reason", "reason"):' in cli_text
    assert 'evidence.get("not_applicable_reason")' in report_text
    assert 'evidence.get("reason")' in report_text
