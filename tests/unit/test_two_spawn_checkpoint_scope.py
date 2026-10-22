"""Finding #7 regression guard: the two-spawn path must not let Phase B's
checkpoint wait return on Phase A's evidence.

The two-spawn flow (AndroGoat BOTH) spawns twice: Phase A drives SSL, Phase B
drives root, and both append to ONE shared `messages` list. `_wait_for_checkpoint`
used to scan that whole list, so Phase B saw Phase A's `bypassEffect` and
returned immediately - its root check had not run yet, so root was reported
inconclusive. `since` scopes each wait to messages appended after its own spawn.
"""
from pathlib import Path

from dynamic import frida_runner


def _clock(monkeypatch):
    clock = {"now": 0.0}

    def fake_sleep(s):
        clock["now"] += s

    monkeypatch.setattr("dynamic.frida_runner.time.sleep", fake_sleep)
    monkeypatch.setattr("dynamic.frida_runner.time.monotonic", lambda: clock["now"])
    return clock


def test_phase_b_does_not_return_on_phase_a_evidence(monkeypatch):
    _clock(monkeypatch)
    # Phase A's SSL evidence is already in the shared list.
    shared = [{"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}}]
    # Without a boundary the wait returns on Phase A's evidence...
    assert frida_runner._wait_for_checkpoint(
        shared, settle_seconds=2.0, require_evidence=True, since=0) is True
    # ...but scoped to Phase B (since=1) it must burn the window and report False.
    assert frida_runner._wait_for_checkpoint(
        shared, settle_seconds=2.0, require_evidence=True, since=1) is False


def test_phase_b_returns_on_its_own_evidence(monkeypatch):
    _clock(monkeypatch)
    shared = [
        {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
        {"type": "send", "payload": {"probeHit": "root"}},
    ]
    assert frida_runner._wait_for_checkpoint(
        shared, settle_seconds=2.0, require_evidence=True, since=1) is True


def test_two_spawn_wiring_passes_the_pre_spawn_boundary():
    src = (Path(__file__).resolve().parents[2] / "src" / "dynamic" / "frida_runner.py").read_text(
        encoding="utf-8")
    assert "since = len(messages)" in src
    assert "require_evidence=True, since=since" in src
