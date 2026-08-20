"""End-to-end cli `run` test (deterministic, --skip-dynamic).

This runs the REAL detection, coverage, decision-engine, and report pipeline -
the value under test - while monkeypatching only the toolchain/audit/dynamic
boundaries that need a device or Android SDK (ingest's aapt2/apksigner, the
decompile subprocesses, native readelf/strings, androguard's AnalyzeAPK,
packer detection, and the audit-log writer). scan()/classify()/per_surface_
coverage()/apply_coverage_bound()/confidence_bound()/generate_report() all run
for real against a fixture Java source that fires root_su_binary_paths, so this
pins the full stage sequence: Decision rendered, coverage bound rendered with
the L-M4 upper-bound annotation on a coverage-limited category, and the report
written.
"""

from pathlib import Path
from types import SimpleNamespace

import pytest

import cli
from common import StageResult


def _ok(stage: str, **evidence) -> StageResult:
    return StageResult(stage=stage, status="success", evidence=evidence)


@pytest.fixture
def run_setup(tmp_path, monkeypatch):
    """Build a decompiled-looking tree + monkeypatch the toolchain/audit/dynamic
    boundaries, leaving scan/classify/coverage/report real."""
    # decompiled-looking tree: app-owned MainActivity.java firing
    # root_su_binary_paths ("/system/bin/su") + an apktool AndroidManifest.xml.
    jadx_dir = tmp_path / "jadx"
    src = jadx_dir / "sources" / "com" / "example" / "app"
    src.mkdir(parents=True)
    (src / "MainActivity.java").write_text(
        "package com.example.app;\n"
        "public class MainActivity {\n"
        "    boolean rooted() {\n"
        "        return new java.io.File(\"/system/bin/su\").exists();\n"
        "    }\n"
        "}\n",
        encoding="utf-8",
    )
    apktool_dir = tmp_path / "apktool"
    apktool_dir.mkdir(parents=True)
    (apktool_dir / "AndroidManifest.xml").write_text("<manifest/>", encoding="utf-8")

    monkeypatch.setattr(cli, "ANALYSIS_ROOT", tmp_path / "analysis")
    monkeypatch.setattr(cli, "REPORTS_ROOT", tmp_path / "reports")
    monkeypatch.setattr(cli, "AUDIT_LOG_PATH", tmp_path / "audit" / "audit.jsonl")
    monkeypatch.setattr(cli, "_operator_identity", lambda: "test-operator")
    monkeypatch.setattr(cli, "_git_commit_hash", lambda: "test-commit")

    hashval = "e2e" + "0" * 60
    # the real pipeline's ingest creates ANALYSIS_ROOT/<hash>/ for the scan's
    # xref.sqlite and the report; with ingest monkeypatched away, pre-create it.
    (tmp_path / "analysis" / hashval).mkdir(parents=True, exist_ok=True)
    monkeypatch.setattr(cli, "normalize_input", lambda apk, out: Path(apk))
    monkeypatch.setattr(cli, "compute_hashes", lambda apk: SimpleNamespace(sha256=hashval))
    monkeypatch.setattr(cli, "existing_metadata", lambda root, h: None)
    monkeypatch.setattr(cli, "save_metadata", lambda root, h, ev: None)
    monkeypatch.setattr(
        cli, "ingest",
        lambda apk, **kw: _ok(
            "ingest",
            hashes={"sha256": hashval},
            package={"package_name": "com.example.app"},
        ),
    )
    monkeypatch.setattr(cli, "record_authorization", lambda **kw: _ok("audit"))
    monkeypatch.setattr(cli, "record_classification", lambda **kw: _ok("classification_flush"))
    monkeypatch.setattr(cli, "record_run_completion", lambda **kw: _ok("completion"))
    monkeypatch.setattr(
        cli, "decompile",
        lambda apk, out, h: _ok(
            "decompile",
            jadx_output=str(jadx_dir),
            apktool_output=str(apktool_dir),
            manifest_path=str(apktool_dir / "AndroidManifest.xml"),
            decompile_completeness="complete",
            jadx_file_count=1,
            jadx_exit_code=0,
        ),
    )
    monkeypatch.setattr(cli, "_run_native_scan", lambda *a, **kw: None)
    monkeypatch.setattr(cli, "scan_dex_strings", lambda *a, **kw: (_ for _ in ()).throw(RuntimeError("no androguard")))
    monkeypatch.setattr(cli, "detect_packers", lambda *a, **kw: [])
    monkeypatch.setattr(cli, "save_run", lambda *a, **kw: None)
    return tmp_path


def test_run_skips_dynamic_and_writes_coverage_bounded_report(run_setup, monkeypatch):
    captured = []
    original_print = cli.console.print
    cli.console.print = lambda *a, **kw: captured.append(" ".join(str(x) for x in a))

    try:
        cli.run(
            apk=run_setup / "fixture.apk",
            justification="ACADEMIC_TRAINING_TARGET",
            skip_dynamic=True,
            device_serial=None,
            target="uncrackable1",
        )
    finally:
        cli.console.print = original_print

    # cli.run() is a Typer command that writes the report to REPORTS_ROOT and
    # prints its path, rather than returning it - so locate the written report.
    reports_dir = run_setup / "reports"
    report_files = sorted(reports_dir.rglob("*.md"))
    assert report_files, f"no report written under {reports_dir}"
    report_path = report_files[0]
    assert report_path.exists()
    text = report_path.read_text(encoding="utf-8")
    assert "Root-detection" in text

    # real decision engine ran and detected root from the fixture su path
    assert any("Decision:" in c for c in captured)

    # L-M4: native was skipped (native_evidence=None -> native=unscannable), so
    # both root and ssl are coverage-limited and the confidence must render with
    # the upper-bound annotation - not a bare point estimate (ADR-0006).
    assert "upper bound" in text
