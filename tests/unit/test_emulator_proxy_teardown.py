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
import types
import sys
from pathlib import Path
from types import SimpleNamespace

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "scripts"))

# Compile the source rather than importing it: the bytecode cache is keyed on the
# source's size and whole-second mtime, so a same-size edit made in the same second
# - exactly what a mutate-and-restore falsification does - serves stale bytecode,
# and the test then asserts against code that is no longer in the file. That trap
# produced a false failure in a sibling loader (tests/unit/test_gap_hunt_progress
# .py); the same staleness would let a test pass against code that is not there.
_SCRIPT = Path(__file__).resolve().parents[2] / "scripts" / "emulator_proxy.py"
ep = types.ModuleType("emulator_proxy")
ep.__file__ = str(_SCRIPT)
exec(compile(_SCRIPT.read_text(encoding="utf-8"), str(_SCRIPT), "exec"), ep.__dict__)


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


# --- a removal with nothing to remove is the end state, not a failure ---------
#
# `reverse --remove tcp:8081` exits nonzero in two states that need opposite
# reporting: a listener genuinely stuck, and no listener at all. Real output on
# 2026-09-20 (internet mode, which reverses the pass-through port only) printed
# `listener 'tcp:8081' not found` - the second state, counted as a failed step and
# followed by a warning that the device may still route through the Windows
# proxies, which sends the operator to clear a route that is already gone. Only
# `adb reverse --list` separates the two.

def _stub_adb(monkeypatch, *, stuck_removes=(), reversed_ports=()):
    """Answer the teardown's two adb questions by argv: remove this reverse, and list
    the reverses that exist."""
    def fake_run(argv, **k):
        if "reverse" in argv and "--list" in argv:
            return SimpleNamespace(
                returncode=0,
                stdout="".join(f"{ep.SERIAL} tcp:{p} tcp:{p}\n" for p in reversed_ports))
        if "reverse" in argv and "--remove" in argv:
            if argv[argv.index("--remove") + 1] in stuck_removes:
                raise subprocess.CalledProcessError(1, argv)
        return SimpleNamespace(returncode=0)

    monkeypatch.setattr(subprocess, "run", fake_run)


def test_a_port_that_was_never_reversed_is_not_a_teardown_failure(monkeypatch, capsys):
    _stub_windows(monkeypatch)
    _stub_adb(monkeypatch, stuck_removes=(f"tcp:{ep.CAPTURE_PORT}",),
              reversed_ports=(ep.PASS_PORT,))

    ep.down()  # must not raise: nothing is left undone

    out = capsys.readouterr().out
    assert f"tcp:{ep.CAPTURE_PORT} was already absent" in out, out
    assert "teardown incomplete" not in out, out
    assert "may still" not in out, out


def test_a_listener_still_in_the_reverse_list_is_still_a_failure(monkeypatch, capsys):
    """The control: the measured-absent arm must not swallow a listener that is still
    there. The list is the only thing that tells them apart, so this arm keeps its
    exit code - and the third state (adb cannot list at all) stays a failure too,
    which is the `removed nothing` test above."""
    _stub_windows(monkeypatch)
    _stub_adb(monkeypatch, stuck_removes=(f"tcp:{ep.CAPTURE_PORT}",),
              reversed_ports=(ep.PASS_PORT, ep.CAPTURE_PORT))

    try:
        ep.down()
    except SystemExit as exc:
        assert exc.code == 1, exc.code
    else:
        raise AssertionError("a listener still in the reverse list must not exit 0")

    out = capsys.readouterr().out
    assert "teardown incomplete - 1 device step(s) did not succeed" in out, out
    assert f"tcp:{ep.CAPTURE_PORT}" in out, out
    assert "was already absent" not in out, out
