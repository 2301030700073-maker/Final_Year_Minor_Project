"""Regression guard: `_read_device_lines` must retry a transient non-zero
`adb devices` instead of reporting a healthy device as 'no usable device'.

The WSL2 cold-server race has two halves. The docstring already covered the
'offline' half (a connected device reported as offline right after a server
start). The other half is a non-zero exit ("cannot connect to daemon") while the
server comes up; `check=True` raised that immediately, so every target of the
2026-10-22 sweep died at dynamic setup with "no usable device" against a
perfectly healthy emulator.
"""
import subprocess

from dynamic import device


class _Result:
    def __init__(self, stdout):
        self.stdout = stdout


def _clock(monkeypatch):
    clock = {"now": 0.0}

    def fake_sleep(s):
        clock["now"] += s

    monkeypatch.setattr(device.time, "sleep", fake_sleep)
    monkeypatch.setattr(device.time, "monotonic", lambda: clock["now"])
    return clock


def test_transient_called_process_error_is_retried(monkeypatch):
    _clock(monkeypatch)
    calls = {"n": 0}

    def fake_run(args, **kw):
        calls["n"] += 1
        if calls["n"] == 1:
            raise subprocess.CalledProcessError(
                1, args, output="", stderr="cannot connect to daemon")
        return _Result("List of devices attached\nemulator-5554\tdevice\n")

    monkeypatch.setattr(device.subprocess, "run", fake_run)
    online, offline = device._read_device_lines("/fake/adb", timeout=5)
    assert calls["n"] == 2
    assert online and "emulator-5554" in online[0]
    assert offline == []


def test_persistent_failure_raises_after_the_settle_window(monkeypatch):
    _clock(monkeypatch)

    def fake_run(args, **kw):
        raise subprocess.CalledProcessError(
            1, args, output="", stderr="cannot connect to daemon")

    monkeypatch.setattr(device.subprocess, "run", fake_run)
    try:
        device._read_device_lines("/fake/adb", timeout=2)
    except RuntimeError as exc:
        assert "kept failing" in str(exc)
    else:  # pragma: no cover - the assert below is the real guard
        raise AssertionError("expected RuntimeError after the settle window")
