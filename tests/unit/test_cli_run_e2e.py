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
import typer

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


def test_install_failure_preserves_static_report_and_exits_nonzero(run_setup, monkeypatch):
    # FR-4.2 / GAP-2 on the install path: an arbitrary real-world app that fails
    # to install (ABI/signature/minSdk/storage) used to _halt and discard the
    # already-complete static analysis. It must instead record the failed dynamic
    # stage, STILL write the full static report (with dynamic=failed and
    # correlation=not_attempted surfaced), then exit non-zero - so no consumer
    # mistakes it for a verified run and no good static work is lost.
    from dynamic import device as device_mod

    monkeypatch.setattr(device_mod, "discover_device", lambda serial: "emulator-5554")
    monkeypatch.setattr(device_mod, "install_apk", lambda serial, apk: None)
    monkeypatch.setattr(device_mod, "verify_installed", lambda serial, pkg: False)
    # synthetic bypass is computed before the device gate - keep it real/simple
    monkeypatch.setattr(
        cli, "synthesize",
        lambda classification, action: SimpleNamespace(source="root", applied_hooks=[]),
    )

    captured = []
    original_print = cli.console.print
    cli.console.print = lambda *a, **kw: captured.append(" ".join(str(x) for x in a))
    try:
        with pytest.raises(typer.Exit) as ei:
            cli.run(
                apk=run_setup / "fixture.apk",
                justification="ACADEMIC_TRAINING_TARGET",
                skip_dynamic=False,
                device_serial=None,
                target="uncrackable1",
            )
    finally:
        cli.console.print = original_print

    assert ei.value.exit_code == 1  # dynamic-failed run must exit non-zero
    reports_dir = run_setup / "reports"
    report_files = sorted(reports_dir.rglob("*.md"))
    assert report_files, "install failure must NOT discard the static report"
    text = report_files[0].read_text(encoding="utf-8")
    # dynamic failure surfaced in the report's Stage Results row (via the stage
    # error field, which carries the FR-4.2 install-verify marker)
    assert "FR-4.2: APK install not verified" in text
    # the static detection work is still present in the preserved report
    assert "Root-detection" in text
    # the loud post-report failure was surfaced, not a silent swallow
    assert any("Dynamic stage FAILED" in c for c in captured)


def test_unexpected_dynamic_exception_preserves_static_report_and_exits_nonzero(run_setup, monkeypatch):
    # GAP-2 on an UNEXPECTED dynamic-stage exception (not a clean failed/skipped
    # StageResult): a real-world app that makes run_dynamic_stage throw - an
    # unmapped frida/device error, a synthesized-script quirk - must NOT propagate
    # out of cli.run and discard the already-complete static report. It must be
    # recorded as a failed dynamic stage, the full static report still written,
    # the error surfaced, and the run exit non-zero. Same guarantee as the install
    # failure, for the run_dynamic_stage call itself.
    from dynamic import device as device_mod

    monkeypatch.setattr(device_mod, "discover_device", lambda serial: "emulator-5554")
    monkeypatch.setattr(device_mod, "install_apk", lambda serial, apk: None)
    monkeypatch.setattr(device_mod, "verify_installed", lambda serial, pkg: True)
    monkeypatch.setattr(
        cli, "synthesize",
        lambda classification, action: SimpleNamespace(source="root", applied_hooks=[]),
    )
    # the dynamic stage throws unexpectedly for this real app
    monkeypatch.setattr(
        "dynamic.frida_runner.run_dynamic_stage",
        lambda *a, **kw: (_ for _ in ()).throw(RuntimeError("unmapped frida-server error")),
    )

    captured = []
    original_print = cli.console.print
    cli.console.print = lambda *a, **kw: captured.append(" ".join(str(x) for x in a))
    try:
        with pytest.raises(typer.Exit) as ei:
            cli.run(
                apk=run_setup / "fixture.apk",
                justification="ACADEMIC_TRAINING_TARGET",
                skip_dynamic=False,
                device_serial=None,
                target="uncrackable1",
            )
    finally:
        cli.console.print = original_print

    assert ei.value.exit_code == 1  # dynamic-failed run must exit non-zero
    reports_dir = run_setup / "reports"
    report_files = sorted(reports_dir.rglob("*.md"))
    assert report_files, "an unexpected dynamic exception must NOT discard the static report"
    text = report_files[0].read_text(encoding="utf-8")
    # the unexpected error is surfaced in the report's Stage Results row
    assert "unmapped frida-server error" in text
    # the static detection work is still present in the preserved report
    assert "Root-detection" in text
    # the loud post-report failure was surfaced, not a silent swallow
    assert any("Dynamic stage FAILED" in c for c in captured)


def test_logcat_capture_failure_preserves_static_report_and_exits_nonzero(run_setup, monkeypatch):
    # GAP-2 on the success path: a real-world app's dynamic stage SUCCEEDS but the
    # post-stage device call (logcat capture) raises - adb disconnect, logcat
    # buffer, device quirk. That must not propagate out of cli.run and discard the
    # already-complete static report: it must be recorded as a failed check, the
    # full static report still written, and the run exit non-zero. Same guarantee
    # as the install/unexpected-exception fixes, for the success-path device calls.
    from dynamic import device as device_mod

    monkeypatch.setattr(device_mod, "discover_device", lambda serial: "emulator-5554")
    monkeypatch.setattr(device_mod, "install_apk", lambda serial, apk: None)
    monkeypatch.setattr(device_mod, "verify_installed", lambda serial, pkg: True)
    monkeypatch.setattr(
        cli, "synthesize",
        lambda classification, action: SimpleNamespace(source="root", applied_hooks=[]),
    )
    # the dynamic stage succeeds (synthesized bypass ran)
    monkeypatch.setattr(
        "dynamic.frida_runner.run_dynamic_stage",
        lambda *a, **kw: _ok("dynamic", frida_messages=[]),
    )
    # but the logcat capture glitches - a real device/adb failure
    monkeypatch.setattr(
        device_mod, "capture_logcat",
        lambda serial: (_ for _ in ()).throw(RuntimeError("adb logcat buffer overrun")),
    )
    monkeypatch.setattr(device_mod, "clear_logcat", lambda serial: None)

    captured = []
    original_print = cli.console.print
    cli.console.print = lambda *a, **kw: captured.append(" ".join(str(x) for x in a))
    try:
        with pytest.raises(typer.Exit) as ei:
            cli.run(
                apk=run_setup / "fixture.apk",
                justification="ACADEMIC_TRAINING_TARGET",
                skip_dynamic=False,
                device_serial=None,
                target="uncrackable1",
            )
    finally:
        cli.console.print = original_print

    assert ei.value.exit_code == 1  # failed check must exit non-zero
    reports_dir = run_setup / "reports"
    report_files = sorted(reports_dir.rglob("*.md"))
    assert report_files, "a logcat-capture failure must NOT discard the static report"
    text = report_files[0].read_text(encoding="utf-8")
    # the logcat failure is surfaced in the report's Stage Results row
    assert "adb logcat buffer overrun" in text
    # the static detection work is still present in the preserved report
    assert "Root-detection" in text
