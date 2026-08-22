import subprocess

import pytest
from typer.testing import CliRunner

from cli import app

runner = CliRunner()


def _patch_deps(monkeypatch, *, present=True, frida_ok=True):
    """Wire the external seams verify_device_cmd depends on.

    present controls whether ``adb devices`` reports the device online;
    frida_ok controls whether setup_frida_connection succeeds."""
    monkeypatch.setattr("cli.device._require_adb", lambda: "adb")
    devices_body = (
        "List of devices attached\nemulator-5554\tdevice\n"
        if present else "List of devices attached\n\n"
    )

    def fake_run(cmd, **kwargs):
        if cmd[:2] == ["adb", "devices"]:
            return subprocess.CompletedProcess(cmd, 0, stdout=devices_body)
        return subprocess.CompletedProcess(cmd, 0, stdout="")

    monkeypatch.setattr("cli.subprocess.run", fake_run)

    class _FakeFridaDevice:
        def __init__(self, ok):
            self._ok = ok

        def enumerate_processes(self):
            if not self._ok:
                raise RuntimeError("unable to communicate with remote frida-server")
            return ["com.android.systemui"]

    monkeypatch.setattr(
        "cli.device.setup_frida_connection",
        lambda serial: _FakeFridaDevice(frida_ok),
    )


def test_verify_device_ok_reports_ready(monkeypatch):
    _patch_deps(monkeypatch, present=True, frida_ok=True)
    result = runner.invoke(app, ["verify-device"])
    assert result.exit_code == 0, result.output
    assert "device" in result.output and "present" in result.output
    assert "FRIDA_OK" in result.output
    assert "1 process" in result.output


def test_verify_device_device_missing_fails_loudly(monkeypatch):
    _patch_deps(monkeypatch, present=False, frida_ok=True)
    result = runner.invoke(app, ["verify-device"])
    assert result.exit_code == 1
    assert "not online" in result.output


def test_verify_device_frida_failure_fails_loudly(monkeypatch):
    _patch_deps(monkeypatch, present=True, frida_ok=False)
    result = runner.invoke(app, ["verify-device"])
    assert result.exit_code == 1
    assert "Frida connection failed" in result.output


def test_verify_device_adb_daemon_unreachable_shows_stderr_not_boot_advice(monkeypatch):
    # The WSL2 adb relay failure: `adb devices` exits non-zero and writes the real
    # reason to stderr. The old code read only .stdout, so it showed a misleading
    # "(empty)" and the "boot the emulator" advice for what is actually a broken
    # daemon (not a missing emulator). It must now exit non-zero, surface the
    # stderr reason, and name the daemon failure distinctly - honoring the
    # command's documented "always the real reason, never a silent OK" contract.
    monkeypatch.setattr("cli.device._require_adb", lambda: "adb")

    def fake_run(cmd, **kwargs):
        return subprocess.CompletedProcess(
            cmd, 1, stdout="", stderr="error: UtilConnectUnix:524: socket failed",
        )

    monkeypatch.setattr("cli.subprocess.run", fake_run)
    result = runner.invoke(app, ["verify-device"])
    assert result.exit_code == 1
    assert "daemon is unreachable" in result.output
    assert "socket failed" in result.output  # the real stderr reason surfaced
    # must NOT mislabel a daemon failure as a missing-emulator ("not online")
    assert "not online" not in result.output


def test_verify_device_adb_binary_missing_surfaces_reason_not_traceback(monkeypatch):
    # _require_adb raising (adb not installed / PATH issue) must surface a clean
    # reason + exit 1, never a raw traceback - the docstring promises the real
    # reason on ANY failure. Previously _require_adb ran outside any try.
    def _no_adb():
        raise RuntimeError("adb not found on PATH")

    monkeypatch.setattr("cli.device._require_adb", _no_adb)
    result = runner.invoke(app, ["verify-device"])
    assert result.exit_code == 1
    assert "Could not run" in result.output and "adb not found" in result.output
