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
            capture_traffic=False,
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

    # L-M7-class: the console must carry the same Coverage-limited caveat the
    # report's Decision line does. native is unscannable here, so both root and
    # ssl are coverage-limited (unknown_uncovered non-empty) - a bare "Decision:
    # ROOT_ONLY" with no caveat would read as a confident result, but the root
    # detection is an upper bound over an uncovered native surface (ADR-0006).
    assert any("Coverage-limited (unknown, not absent)" in c for c in captured)

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
                capture_traffic=False,
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


def test_no_device_setup_failure_preserves_static_report_and_exits_nonzero(run_setup, monkeypatch):
    # GAP-2 on the EARLIEST dynamic steps (the exact crash this guards): discover_
    # device and install_apk run BEFORE the already-guarded install-verify / run_
    # dynamic_stage paths and were UNGUARDED. On a box with no connected device -
    # discover_device raises CalledProcessError when the adb daemon is unreachable
    # (the WSL2 adb socket failure) or RuntimeError when `adb devices` is empty -
    # the whole CLI crashed with a raw traceback and DISCARDED the already-complete
    # static report. It must instead record a failed dynamic stage, STILL write the
    # full static report, surface the failure loudly, and exit non-zero - identical
    # to the install-verify / run_dynamic_stage / logcat guarantees, for the two
    # steps that run before them. Without --skip-dynamic, "no device" is a LOUD
    # failure (exit non-zero), never a silent skip: the operator asked for dynamic
    # verification and must be told it could not run (Principle 3 / NFR-1). The
    # --skip-dynamic flag is the explicit opt-out for a static-only clean exit 0.
    import subprocess
    from dynamic import device as device_mod

    def _adb_daemon_unreachable(serial):
        # faithful to the observed repro: `adb devices` exits non-zero
        raise subprocess.CalledProcessError(1, ["adb", "devices"])

    monkeypatch.setattr(device_mod, "discover_device", _adb_daemon_unreachable)
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
                capture_traffic=False,
                device_serial=None,
                target="uncrackable1",
            )
    finally:
        cli.console.print = original_print

    assert ei.value.exit_code == 1  # no device + no --skip-dynamic must exit non-zero
    reports_dir = run_setup / "reports"
    report_files = sorted(reports_dir.rglob("*.md"))
    assert report_files, "a no-device setup failure must NOT discard the static report"
    text = report_files[0].read_text(encoding="utf-8")
    # the setup failure is surfaced in the report's Stage Results row (error field),
    # naming the failing step - not a raw traceback and not a silent skip
    assert "dynamic setup failed" in text
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
                capture_traffic=False,
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
                capture_traffic=False,
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


def test_unknown_app_root_probe_confirms_in_report(run_setup, monkeypatch):
    # App-agnostic root confirmation for an UNKNOWN real target (no hand-authored
    # success check): the technology-level check sees the app's own root-check
    # probe being answered-false (probeHit) and confirms root_bypassed=True, which
    # MUST reach the report as "Root bypassed: True" - not be understated to "not
    # a bypass confirmation" by the unknown-target degrade path. A real app whose
    # root check was genuinely defeated is confirmed, matching the known-target
    # guarantee.
    from dynamic import device as device_mod

    monkeypatch.setattr(device_mod, "discover_device", lambda serial: "emulator-5554")
    monkeypatch.setattr(device_mod, "install_apk", lambda serial, apk: None)
    monkeypatch.setattr(device_mod, "verify_installed", lambda serial, pkg: True)
    monkeypatch.setattr(
        cli, "synthesize",
        lambda classification, action: SimpleNamespace(source="root", applied_hooks=[]),
    )
    # an unknown real app (propertyguru) whose synthesized bypass defeated its
    # root check: the app's own root-check probed a root artifact, answered-false
    monkeypatch.setattr(
        "dynamic.frida_runner.run_dynamic_stage",
        lambda *a, **kw: _ok(
            "dynamic",
            frida_messages=[
                {"type": "send", "payload": {"probeHit": "root", "path": "/system/bin/su"}},
                {"type": "send", "payload": {"hook": "root_su_binary_paths"}},
            ],
        ),
    )
    monkeypatch.setattr(device_mod, "clear_logcat", lambda serial: None)
    monkeypatch.setattr(device_mod, "capture_logcat", lambda serial: "")

    captured = []
    original_print = cli.console.print
    cli.console.print = lambda *a, **kw: captured.append(" ".join(str(x) for x in a))
    try:
        cli.run(
            apk=run_setup / "fixture.apk",
            justification="ACADEMIC_TRAINING_TARGET",
            skip_dynamic=False,
            capture_traffic=False,
            device_serial=None,
            target="propertyguru",  # unknown real target -> synthesized bypass + tech check
        )
    finally:
        cli.console.print = original_print

    reports_dir = run_setup / "reports"
    report_files = sorted(reports_dir.rglob("*.md"))
    assert report_files
    text = report_files[0].read_text(encoding="utf-8")
    # the app-agnostic root confirmation reached the report - NOT understated
    assert "Root bypassed: True" in text
    assert "Root-detection" in text


def test_capture_failure_footer_does_not_claim_dynamic_was_not_attempted(run_setup, monkeypatch):
    # The ROOT_ONLY case runs dynamic (machinery ran, bypass not confirmed) but
    # the capture fails. The footer must NOT claim "dynamic verification is NOT
    # attempted" - correlation=not_attempted means no *correlation* was evaluated,
    # not that dynamic never ran. Say what actually happened.
    from dynamic import device as device_mod
    from common import StageResult

    monkeypatch.setattr(device_mod, "discover_device", lambda serial: "emulator-5554")
    monkeypatch.setattr(device_mod, "install_apk", lambda serial, apk: None)
    monkeypatch.setattr(device_mod, "verify_installed", lambda serial, pkg: True)
    monkeypatch.setattr(
        cli, "synthesize",
        lambda classification, action: SimpleNamespace(source="root", applied_hooks=[]),
    )
    # dynamic ran but did not confirm (machinery ran; no probeHit)
    monkeypatch.setattr(
        "dynamic.frida_runner.run_dynamic_stage",
        lambda *a, **kw: _ok(
            "dynamic",
            frida_messages=[{"type": "send", "payload": {"hook": "root_su_binary_paths"}}],
        ),
    )
    monkeypatch.setattr(device_mod, "clear_logcat", lambda serial: None)
    monkeypatch.setattr(device_mod, "capture_logcat", lambda serial: "")
    # capture fails with no flows
    monkeypatch.setattr(
        "dynamic.mitmproxy_capture.run_capture_stage",
        lambda *a, **kw: StageResult(
            stage="capture-traffic", status="failed",
            evidence={"reason": "no flows captured"}, error="no flows",
        ),
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
                capture_traffic=True,
                device_serial=None,
                target="propertyguru",  # unknown real target -> synthesized bypass + tech check
            )
        assert ei.value.exit_code == 1
    finally:
        cli.console.print = original_print

    footer = " ".join(captured)
    assert "dynamic verification is NOT attempted" not in footer
    assert "the dynamic bypass ran but was not confirmed, and no traffic was captured" in footer

    reports_dir = run_setup / "reports"
    assert sorted(reports_dir.rglob("*.md")), "a capture failure must NOT discard the static report"


def test_run_composes_coverage_bound_before_unattributed_indicators(run_setup, monkeypatch):
    # Load-bearing composition order: apply_coverage_bound recomputes
    # unknown_uncovered from scratch, while apply_unattributed_indicators only
    # APPENDS to it. If the order were swapped, a content-based (unattributed-only)
    # coverage_limited marker - the Boundary-1 "a fully-analyzed surface still hides
    # a technique the corpus doesn't encode" honesty caveat (ADR-0006) - would be
    # silently recomputed away. Pin: completeness runs first, content second.
    import cli

    calls = []
    real_cb = cli.apply_coverage_bound
    real_ui = cli.apply_unattributed_indicators

    def spy_cb(classification, coverage):
        calls.append("coverage_bound")
        return real_cb(classification, coverage)

    def spy_ui(classification, unattributed):
        calls.append("unattributed")
        return real_ui(classification, unattributed)

    monkeypatch.setattr("cli.apply_coverage_bound", spy_cb)
    monkeypatch.setattr("cli.apply_unattributed_indicators", spy_ui)

    cli.run(
        apk=run_setup / "fixture.apk",
        justification="ACADEMIC_TRAINING_TARGET",
        skip_dynamic=True,
        capture_traffic=False,
        device_serial=None,
        target="uncrackable1",
    )

    assert calls == ["coverage_bound", "unattributed"]


def test_run_writes_full_audit_trail_in_order(run_setup, monkeypatch):
    # ADR-0005: every analysis attempt must be traceable end-to-end. The run
    # pipeline wires record_authorization (before any analysis stage) then
    # record_classification and record_run_completion - but run_setup stubs all
    # three, so no test asserts they actually FIRE. Spy them (replacing the
    # fixture's stubs) and pin that the trail is written with the real data.
    import cli

    calls = {"auth": [], "cls": [], "done": []}

    def spy_auth(**kw):
        calls["auth"].append(kw)
        return _ok("audit")

    def spy_cls(**kw):
        calls["cls"].append(kw)
        return _ok("classification_flush")

    def spy_done(**kw):
        calls["done"].append(kw)
        return _ok("completion")

    monkeypatch.setattr(cli, "record_authorization", spy_auth)
    monkeypatch.setattr(cli, "record_classification", spy_cls)
    monkeypatch.setattr(cli, "record_run_completion", spy_done)

    cli.run(
        apk=run_setup / "fixture.apk",
        justification="ACADEMIC_TRAINING_TARGET",
        skip_dynamic=True,
        capture_traffic=False,
        device_serial=None,
        target="uncrackable1",
    )

    # Authorization opens the run, before any classification/completion result.
    assert len(calls["auth"]) == 1
    assert calls["auth"][0]["justification"] == "ACADEMIC_TRAINING_TARGET"
    assert len(calls["cls"]) == 1  # the deterministic verdict is flushed
    assert len(calls["done"]) == 1  # the run's outcome is recorded
    # The completion record carries the run's decision action - the end of the
    # start -> end trail (LIM-A) is populated, not an empty stub.
    assert "action" in calls["done"][0]


def test_merge_native_evidence_caps_confidence_and_unions_indicators():
    # _merge_native_evidence: native evidence feeds the SAME confidence model as
    # Java (ADR-0001) - per-category confidence is summed and capped at 1.0, the
    # evidence lists are extended, and unattributed indicators are unioned so the
    # single apply_unattributed_indicators call marks coverage-limited exactly
    # like Java-side. Had zero direct coverage.
    from types import SimpleNamespace
    import cli
    static = SimpleNamespace(
        root_confidence=0.8, ssl_confidence=0.3,
        root_evidence=[], ssl_evidence=[],
        unattributed_indicators=set(),
    )
    native = SimpleNamespace(
        root_confidence=0.5, ssl_confidence=0.2,
        root_evidence=["root_native"], ssl_evidence=["ssl_native"],
        unattributed_indicators={"root_native_runtime"},
    )
    cli._merge_native_evidence(static, native)
    assert static.root_confidence == 1.0   # 0.8 + 0.5 capped
    assert static.ssl_confidence == 0.5    # 0.3 + 0.2
    assert static.root_evidence == ["root_native"]
    assert static.ssl_evidence == ["ssl_native"]
    assert static.unattributed_indicators == {"root_native_runtime"}


def test_json_deserializers_round_trip():
    # The persisted-JSON rebuilders (regenerate-report path): a serialized
    # classification/verification/correlation/stage round-trips back to typed
    # objects with the same fields, and None input yields None (pre-persistence
    # runs). Verification state defaults to deterministic_matched when absent.
    import cli
    from common import Action

    cls = cli._classification_from_json({
        "action": "ROOT_ONLY",
        "root": {"confidence": 0.8, "detected": True, "evidence": [
            {"signature_id": "root_su_binary_paths", "file": "MainActivity.java",
             "line_or_offset": 12, "matched_text": "/system/bin/su"},
        ]},
        "ssl": {"confidence": 0.0, "detected": False, "evidence": []},
    })
    assert cls.action == Action.ROOT_ONLY
    assert cls.root.confidence == 0.8
    assert cls.root.evidence[0].signature_id == "root_su_binary_paths"
    assert cls.root.evidence[0].verification_state == "deterministic_matched"  # default

    v = cli._verification_from_json({"root_bypassed": True, "ssl_bypassed": None, "evidence_lines": {"k": "v"}})
    assert v.root_bypassed is True and v.ssl_bypassed is None
    assert cli._verification_from_json(None) is None

    c = cli._correlation_from_json({"matches": False, "mismatches": ["m"], "unverified": ["u"]})
    assert c.matches is False and c.mismatches == ["m"] and c.unverified == ["u"]

    s = cli._stage_from_json({"stage": "ingest", "status": "success", "evidence": {"e": 1}})
    assert s.stage == "ingest" and s.status == "success" and s.evidence == {"e": 1}


def test_to_serializable_flattens_dataclasses_enums_and_nested():
    # _to_serializable: the storage write-path normalizer - dataclasses become
    # dicts, Enums their value, dicts/lists recurse, scalars pass through. A
    # nested dataclass inside a list must flatten too. Had zero direct coverage.
    from dataclasses import dataclass
    from enum import Enum
    from storage.results import _to_serializable

    class Color(Enum):
        RED = "red"

    @dataclass
    class Inner:
        x: int

    @dataclass
    class Outer:
        name: str
        color: Color
        inner: Inner
        items: list

    out = _to_serializable(Outer("a", Color.RED, Inner(5), [Inner(7)]))
    assert out == {"name": "a", "color": "red", "inner": {"x": 5}, "items": [{"x": 7}]}
    assert _to_serializable(5) == 5  # scalar passthrough


def test_merge_js_evidence_dedupes_and_routes_by_category():
    # _merge_js_evidence: Hermes/JS-bundle idiom matches merge into StaticEvidence
    # at a fixed deterministic weight, deduped per signature_id across bundles,
    # and routed by category (root vs ssl). matched_text is truncated to 200
    # chars. Returns the number of NEW signatures added. Had zero coverage.
    from types import SimpleNamespace
    import cli
    static = SimpleNamespace(root_confidence=0.0, ssl_confidence=0.0, root_evidence=[], ssl_evidence=[])
    js = [
        ("js_root", "root", "text", "bundle.js"),
        ("js_ssl", "ssl", "text2", "bundle.js"),
        ("js_root", "root", "dup", "other.js"),  # already added -> skipped
    ]
    added = cli._merge_js_evidence(static, js)
    assert added == 2
    assert static.root_confidence > 0.0
    assert static.ssl_confidence > 0.0
    assert [e.signature_id for e in static.root_evidence] == ["js_root"]
    assert [e.signature_id for e in static.ssl_evidence] == ["js_ssl"]
    assert static.root_evidence[0].verification_state == "deterministic_matched"


def test_merge_js_evidence_truncates_matched_text():
    from types import SimpleNamespace
    import cli
    static = SimpleNamespace(root_confidence=0.0, ssl_confidence=0.0, root_evidence=[], ssl_evidence=[])
    long_text = "x" * 500
    cli._merge_js_evidence(static, [("js_root", "root", long_text, "b.js")])
    assert len(static.root_evidence[0].matched_text) <= 200


def test_merge_dex_evidence_dedupes_and_skips_unknown_category():
    # _merge_dex_evidence: merges androguard DEX matches, deduped per
    # signature_id (a sig already matched by the java/smali scan is NOT
    # double-counted), routed by category with weight applied and capped at 1.0,
    # and an unknown category is skipped entirely. Returns the count of NEW
    # signatures added. Had zero direct coverage.
    from types import SimpleNamespace
    import cli
    static = SimpleNamespace(
        root_confidence=0.5, ssl_confidence=0.0,
        root_evidence=[SimpleNamespace(signature_id="existing_root")],
        ssl_evidence=[],
    )
    sigs = [
        SimpleNamespace(id="root_a", weight=0.3, category="root"),
        SimpleNamespace(id="ssl_a", weight=0.4, category="ssl"),
        SimpleNamespace(id="mystery", weight=0.5, category="other"),
    ]
    dex = [
        SimpleNamespace(signature_id="existing_root"),  # dup of java match -> skip
        SimpleNamespace(signature_id="root_a"),
        SimpleNamespace(signature_id="ssl_a"),
        SimpleNamespace(signature_id="mystery"),  # unknown category -> skip
        SimpleNamespace(signature_id="root_a"),   # dup within dex -> skip
    ]
    added = cli._merge_dex_evidence(static, dex, sigs, "com.example.app")
    assert added == 2
    assert static.root_confidence == 0.8      # 0.5 + 0.3
    assert static.ssl_confidence == 0.4
    assert [e.signature_id for e in static.root_evidence] == ["existing_root", "root_a"]
    assert [e.signature_id for e in static.ssl_evidence] == ["ssl_a"]
