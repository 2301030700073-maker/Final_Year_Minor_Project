"""Teardown and capture-failure lines are claims, and each must carry its own outcome.

`emulator_proxy.py` promises it "fails loudly (NFR-7), never silent", but its three
adb teardown steps were each wrapped in a bare `except Exception: pass` under a
single unqualified success line - so a teardown where nothing was removed still
printed `[ok] reverses removed, proxy cleared`. The capture path had the same shape:
it printed "device restored to pass-through internet proxy" whether or not the
capture stage reached the end of its own finalize, and a device left pointed at the
capture port has no internet at all.
"""

import subprocess
import sys
from pathlib import Path
from types import SimpleNamespace

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "scripts"))

import emulator_proxy as ep  # noqa: E402


def _stub_windows(monkeypatch):
    monkeypatch.setattr(ep, "_adb", lambda: "adb")
    monkeypatch.setattr(ep.mc, "_stop_windows_mitmdump", lambda: None)
    monkeypatch.setattr(ep.ptp, "stop_windows_passthrough", lambda: None)


def test_a_clean_teardown_still_reports_success(monkeypatch, capsys):
    _stub_windows(monkeypatch)
    monkeypatch.setattr(subprocess, "run", lambda *a, **k: SimpleNamespace(returncode=0))

    ep.down()

    out = capsys.readouterr().out
    assert "[ok] reverses removed, proxy cleared, both Windows proxies stopped" in out, out


def test_a_teardown_that_removed_nothing_does_not_report_success(monkeypatch, capsys):
    """The emulator being gone is the ordinary case, and it is exactly when the old
    code printed success - the device still holds both proxy settings."""
    _stub_windows(monkeypatch)

    def failing(*a, **k):
        raise subprocess.CalledProcessError(1, a[0])

    monkeypatch.setattr(subprocess, "run", failing)

    try:
        ep.down()
    except SystemExit as exc:
        assert exc.code == 1, exc.code
    else:
        raise AssertionError("a teardown that failed every step must not exit 0")

    out = capsys.readouterr().out
    assert "[ok] reverses removed" not in out, out
    assert "teardown incomplete - 3 device step(s) did not succeed" in out, out
    assert "tcp:8080" in out and "tcp:8081" in out and "http_proxy" in out, out


def test_a_failed_capture_does_not_claim_the_device_was_restored(monkeypatch, capsys):
    monkeypatch.setattr(ep.mc, "run_capture_stage", lambda *a, **k: SimpleNamespace(
        status="failed", evidence={"reason": "capture window closed with no flows"}))

    ep.capture()

    out = capsys.readouterr().out
    assert "NOT confirmed restored" in out and "emulator_proxy.py internet" in out, out
    assert "device restored to pass-through internet proxy" not in out, out


def test_a_successful_capture_still_reports_the_restore(monkeypatch, capsys):
    monkeypatch.setattr(ep.mc, "run_capture_stage", lambda *a, **k: SimpleNamespace(
        status="success", evidence={"flows_count": 2, "hosts": ["a.example", "b.example"]}))

    ep.capture()

    out = capsys.readouterr().out
    assert "[ok] captured 2 decrypted flows" in out, out
    assert "device restored to pass-through internet proxy" in out, out
