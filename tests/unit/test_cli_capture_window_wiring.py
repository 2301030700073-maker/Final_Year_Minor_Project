"""ADR-0016 wiring: a capture window that carried the app's own pin-check AND a
completed handshake upgrades the run's SSL verdict in the report a real run writes.

This drives the REAL `cli.run` pipeline with only the toolchain/audit/capture
boundaries stubbed, and asserts on the report text - so it fails if the
post-capture evaluation stops reaching the report, which a test of the extractor
alone cannot see ([[unit-tested-parser-neq-consumed-signal]]).

Device note: `--skip-dynamic` keeps the fixture free of Frida/device stubs, and
the real producer cannot set `bypass_applied` under that flag (cli.py passes no
bypass script when dynamic is skipped). The block this test exercises is the same
post-capture block a `--force-dynamic` run reaches; what the flag changes is how
the fixture gets to it, not what is tested once there.
"""

from pathlib import Path

import cli
from common import StageResult

# the e2e fixture (fake toolchain, real scan/classify/coverage/report) is reused
# from its own module rather than duplicated here; importing it into this module's
# namespace is what makes it available as a fixture to the tests below
from test_cli_run_e2e import run_setup  # noqa: F401


def _hooked_capture_stage() -> StageResult:
    """A capture window that launched the app itself under the pinning-only
    bypass and whose own observer recorded both effects the check needs - stored
    in the capture stage's shape (payload alone, no Frida envelope)."""
    return StageResult(
        stage="capture-traffic", status="success",
        evidence={
            # BYPASSAPPLIED1: the observer gate reads the ARM, not the outcome - a
            # crashed script reports no `bypassed`, so gating on the outcome would
            # skip this window's evaluation entirely. Real evidence carries both
            # keys; this fixture must too, or it tests a shape the producer cannot
            # emit.
            "bypass_arm": "script file: ssl_pinning_bypass_universal.js",
            "bypass_applied": True,
            "app_launch": {"component": "com.example.app/.MainActivity",
                           "launched_by": "am start", "pid": 4242},
            "app_target_running": True,
            "ui_liveness": {"window_focused": True},
            "frida_messages": [
                {"hostname": "api.example.com", "bypassEffect": "ssl-pin-check"},
                {"bypassEffect": "ssl-handshake"},
            ],
            "flows": [{"host": "api.example.com", "method": "GET", "path": "/", "status": 200}],
            "client_connections": 1,
        },
    )


def test_capture_window_confirmation_reaches_the_written_report(run_setup, monkeypatch):
    captured = []
    original_print = cli.console.print
    cli.console.print = lambda *a, **kw: captured.append(" ".join(str(x) for x in a))

    monkeypatch.setattr(cli.device, "discover_device", lambda serial: "emulator-5554")
    # ADR-0028: the run now reads the device environment from the same
    # device it just resolved, so a faked device must fake this seam too.
    monkeypatch.setattr(cli.device, "read_device_environment", lambda serial: {"serial": serial, "ro.build.version.sdk": "34", "ro.build.version.release": "14", "ro.build.type": "userdebug", "ro.debuggable": "1", "ro.product.cpu.abi": "x86_64", "ro.hardware": "ranchu", "ro.build.fingerprint": "google/sdk_gphone64_x86_64/emu64x:14/UE1A:userdebug/test-keys"})
    monkeypatch.setattr(cli.mitmproxy_capture, "run_capture_stage",
                        lambda *a, **kw: _hooked_capture_stage())
    try:
        cli.run(
            apk=run_setup / "fixture.apk",
            justification="ACADEMIC_TRAINING_TARGET",
            skip_dynamic=True,
            capture_traffic=True,
            device_serial=None,
            target="uncrackable1",
        )
    finally:
        cli.console.print = original_print

    # the second evaluation is its own recorded stage, named for the window
    assert any("success-check (capture window)" in c for c in captured), captured

    report_files = sorted((run_setup / "reports").rglob("*.md"))
    assert report_files, "no report written"
    text = report_files[0].read_text(encoding="utf-8")
    # the verdict itself, promoted from the capture window's own observer
    assert "- SSL bypassed: True" in text
    # and the evidence line says WHICH launch confirmed it, so the confirmation
    # cannot be read as belonging to the dynamic window
    assert "launched by am start" in text


def test_capture_window_without_both_effects_leaves_the_verdict_alone(run_setup, monkeypatch):
    """Upgrade-only: a hooked window whose observer did not carry both effects must
    not turn the run's SSL verdict into a confirmation - nor into a retraction."""
    def silent_window() -> StageResult:
        stage = _hooked_capture_stage()
        stage.evidence["frida_messages"] = [
            {"hostname": "api.example.com", "bypassEffect": "ssl-pin-check"},
        ]
        return stage

    monkeypatch.setattr(cli.device, "discover_device", lambda serial: "emulator-5554")
    # ADR-0028: the run now reads the device environment from the same
    # device it just resolved, so a faked device must fake this seam too.
    monkeypatch.setattr(cli.device, "read_device_environment", lambda serial: {"serial": serial, "ro.build.version.sdk": "34", "ro.build.version.release": "14", "ro.build.type": "userdebug", "ro.debuggable": "1", "ro.product.cpu.abi": "x86_64", "ro.hardware": "ranchu", "ro.build.fingerprint": "google/sdk_gphone64_x86_64/emu64x:14/UE1A:userdebug/test-keys"})
    monkeypatch.setattr(cli.mitmproxy_capture, "run_capture_stage",
                        lambda *a, **kw: silent_window())
    cli.run(
        apk=run_setup / "fixture.apk",
        justification="ACADEMIC_TRAINING_TARGET",
        skip_dynamic=True,
        capture_traffic=True,
        device_serial=None,
        target="uncrackable1",
    )

    report_files = sorted((run_setup / "reports").rglob("*.md"))
    assert report_files, "no report written"
    text = report_files[0].read_text(encoding="utf-8")
    assert "- SSL bypassed: True" not in text
    assert "launched by am start" not in text


def test_unhooked_capture_window_is_not_evaluated_at_all(run_setup, monkeypatch):
    """An un-hooked window has no observer in it, so its empty stream is a fact
    about the window rather than about the app - evaluating it could only invent a
    negative, so no second evaluation stage is recorded."""
    def unhooked_window() -> StageResult:
        stage = _hooked_capture_stage()
        # Un-hooked means NO script was loaded. `bypass_arm` is the gate's key
        # (BYPASSAPPLIED1); clearing only `bypass_applied` would no longer express
        # "no observer", now that the arm and the outcome are separate facts.
        stage.evidence["bypass_arm"] = None
        stage.evidence["bypass_applied"] = False
        stage.evidence["frida_messages"] = []
        return stage

    captured = []
    original_print = cli.console.print
    cli.console.print = lambda *a, **kw: captured.append(" ".join(str(x) for x in a))

    monkeypatch.setattr(cli.device, "discover_device", lambda serial: "emulator-5554")
    # ADR-0028: the run now reads the device environment from the same
    # device it just resolved, so a faked device must fake this seam too.
    monkeypatch.setattr(cli.device, "read_device_environment", lambda serial: {"serial": serial, "ro.build.version.sdk": "34", "ro.build.version.release": "14", "ro.build.type": "userdebug", "ro.debuggable": "1", "ro.product.cpu.abi": "x86_64", "ro.hardware": "ranchu", "ro.build.fingerprint": "google/sdk_gphone64_x86_64/emu64x:14/UE1A:userdebug/test-keys"})
    monkeypatch.setattr(cli.mitmproxy_capture, "run_capture_stage",
                        lambda *a, **kw: unhooked_window())
    try:
        cli.run(
            apk=run_setup / "fixture.apk",
            justification="ACADEMIC_TRAINING_TARGET",
            skip_dynamic=True,
            capture_traffic=True,
            device_serial=None,
            target="uncrackable1",
        )
    finally:
        cli.console.print = original_print

    assert not any("success-check (capture window)" in c for c in captured), captured
