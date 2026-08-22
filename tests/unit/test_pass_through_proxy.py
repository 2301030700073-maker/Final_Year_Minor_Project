"""Wrapper-contract tests for the pass-through (non-MITM) proxy module.

The pass-through script's pure logic (asyncio CONNECT tunnel, origin-form HTTP
forwarding) is stdlib-only and is validated by a real run on the Windows host -
not mocked (project principle 3). These tests cover the no-tool paths and the
exact powershell launch/stop command shapes, matching test_mitmproxy_capture.py.
"""

import subprocess

import pytest

from dynamic import pass_through_proxy as ptp
from dynamic import device


def test_script_template_is_valid_python_and_handles_connect():
    # The template must be syntactically valid so the Windows host can run it,
    # and it must contain the CONNECT tunnel + origin-form forwarding paths.
    compile(ptp._PASSTHROUGH_SCRIPT, "passthrough.py", "exec")
    assert "CONNECT" in ptp._PASSTHROUGH_SCRIPT
    assert "200 Connection established" in ptp._PASSTHROUGH_SCRIPT
    assert "urlsplit" in ptp._PASSTHROUGH_SCRIPT
    assert "asyncio.start_server" in ptp._PASSTHROUGH_SCRIPT


def test_write_windows_passthrough_writes_script(tmp_path):
    script = tmp_path / "pt.py"
    ptp._write_windows_passthrough(script)
    assert script.read_text() == ptp._PASSTHROUGH_SCRIPT


def test_windows_python_skips_store_stub(monkeypatch):
    # The Microsoft Store stub (WindowsApps) is not a real python; the real
    # install must be chosen.
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        return subprocess.CompletedProcess(
            cmd, 0,
            stdout=("C:\\Users\\x\\AppData\\Local\\Microsoft\\WindowsApps\\python.exe\n"
                    "C:\\Python314\\python.exe\n"))

    monkeypatch.setattr(ptp.subprocess, "run", fake_run)
    assert ptp._windows_python() == "C:\\Python314\\python.exe"


def test_windows_python_none_when_no_python(monkeypatch):
    monkeypatch.setattr(ptp.subprocess, "run",
                        lambda *a, **k: subprocess.CompletedProcess(a[0], 1))
    assert ptp._windows_python() is None


def test_start_windows_passthrough_builds_detached_start_process(monkeypatch):
    # Must use Start-Process without a redirect (a redirect blocks on the
    # long-running child) and pass the script path + port as inline args.
    captured = {}

    def fake_run(cmd, **kwargs):
        captured["cmd"] = cmd
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(ptp.subprocess, "run", fake_run)
    ptp.start_windows_passthrough(
        "C:\\Python314\\python.exe", "C:\\Users\\Public\\p.py", 8080)
    ps = captured["cmd"][-1]
    assert "Start-Process" in ps
    assert "-ArgumentList" in ps
    assert "'C:\\Python314\\python.exe'" in ps
    assert "'C:\\Users\\Public\\p.py'" in ps
    assert "'8080'" in ps
    assert "-RedirectStandardOutput" not in ps


def test_stop_windows_passthrough_targets_only_passthrough(monkeypatch):
    # Stop must filter by command line to the passthrough script, never blanket
    # kill mitmdump.
    captured = {}

    def fake_run(cmd, **kwargs):
        captured["cmd"] = cmd
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(ptp.subprocess, "run", fake_run)
    ptp.stop_windows_passthrough()
    ps = captured["cmd"][-1]
    assert "Get-CimInstance" in ps
    assert "pass_through_proxy" in ps or "passthrough" in ps
    assert "mitmdump" not in ps


def test_is_listening_true_when_port_bound(monkeypatch):
    monkeypatch.setattr(ptp.subprocess, "run",
                        lambda *a, **k: subprocess.CompletedProcess(a[0], 0, stdout="2"))
    assert ptp.is_listening(8080) is True


def test_is_listening_false_when_port_free(monkeypatch):
    monkeypatch.setattr(ptp.subprocess, "run",
                        lambda *a, **k: subprocess.CompletedProcess(a[0], 0, stdout="0"))
    assert ptp.is_listening(8080) is False


def test_ensure_internet_launches_passthrough_when_not_listening(monkeypatch):
    # Internet baseline on WSL2: if the pass-through proxy is not up, it must be
    # launched detached, reversed, and the device proxy pointed at it.
    started = []
    monkeypatch.setattr(ptp, "is_listening", lambda *a, **k: False)
    monkeypatch.setattr(ptp, "_windows_python", lambda: "C:\\Python314\\python.exe")
    monkeypatch.setattr(ptp, "_write_windows_passthrough", lambda path: path)
    monkeypatch.setattr(ptp, "_wait_listening", lambda *a, **k: None)
    monkeypatch.setattr(ptp, "start_windows_passthrough",
                        lambda *a, **k: started.append(a))
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda *a, **k: started.append("proxy"))
    ptp.ensure_internet("emulator-5554", 8080)
    assert started  # the passthrough was launched and the device proxy set


def test_ensure_internet_skips_launch_when_already_listening(monkeypatch):
    # Idempotent: when the pass-through is already up, it is not relaunched, but
    # the device proxy is still (re)asserted so internet is reliable.
    started = []
    monkeypatch.setattr(ptp, "is_listening", lambda *a, **k: True)
    monkeypatch.setattr(ptp, "start_windows_passthrough",
                        lambda *a, **k: started.append("launch"))
    monkeypatch.setattr(device, "adb_reverse", lambda *a, **k: None)
    monkeypatch.setattr(device, "set_http_proxy", lambda *a, **k: started.append("proxy"))
    ptp.ensure_internet("emulator-5554", 8080)
    assert started == ["proxy"]  # no launch, but the proxy is asserted


def test_ensure_internet_raises_when_no_windows_python(monkeypatch):
    # NFR-7: no pass-through proxy means no internet on WSL2 - must fail loudly.
    monkeypatch.setattr(ptp, "is_listening", lambda *a, **k: False)
    monkeypatch.setattr(ptp, "_windows_python", lambda: None)
    with pytest.raises(RuntimeError, match="python.exe"):
        ptp.ensure_internet("emulator-5554", 8080)
