"""Findings #16-#18 regression guard for the report-honesty auditor.

- #17: matching must be case-insensitive (a report may render `true` lowercase).
- #16: the auditor must see the new false-OK signal - a confirmed bypass that
  contradicts the stage's own "no hook-install signal observed" annotation.
- #18: `main()` must exit NON-ZERO when a report has a finding, so CI can fail
  on a lying report instead of always succeeding.
"""
import sys
from pathlib import Path

_TOOLS = Path(__file__).resolve().parents[2] / "tools"
if str(_TOOLS) not in sys.path:
    sys.path.insert(0, str(_TOOLS))

import report_honesty_audit as rha  # noqa: E402


def _write(root: Path, name: str, body: str) -> Path:
    d = root / name
    d.mkdir(parents=True, exist_ok=True)
    f = d / "report.md"
    f.write_text(body, encoding="utf-8")
    return f


def test_main_returns_nonzero_when_a_report_lies(tmp_path):
    _write(tmp_path, "a", "Root bypassed: true\nnothing else here\n")
    assert rha.main(["--root", str(tmp_path)]) == 1


def test_main_returns_zero_when_clean(tmp_path):
    _write(tmp_path, "a", "Root bypassed: False\nprobe hit recorded\n")
    assert rha.main(["--root", str(tmp_path)]) == 0


def test_case_insensitive_root_bypassed_without_probe(tmp_path):
    f = _write(tmp_path, "a", "root bypassed: true\nnothing else here\n")
    findings = rha.audit(f)
    assert any("no probe" in x for x in findings)


def test_confirmed_bypass_contradicting_no_hook_signal(tmp_path):
    body = "SSL bypassed: True\n(machinery ran; no hook-install signal observed)\n"
    f = _write(tmp_path, "a", body)
    findings = rha.audit(f)
    assert any("no hook-install signal observed" in x for x in findings)
