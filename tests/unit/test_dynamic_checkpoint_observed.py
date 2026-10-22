"""Task #5 regression guard: a dynamic stage that ran but never received the
bypass script's hook-install/evidence signal must be distinguishable from one
that did.

`status="success"` means the stage machinery ran (attach, load, resume, settle)
- it does NOT mean a bypass was observed. Previously `_wait_for_checkpoint`
computed whether a hook-ready/evidence signal arrived and then DISCARDED it, so
a run whose script never signalled readiness looked identical to one that did.
Now the signal is returned, recorded as `bypass_checkpoint_observed` in the
stage evidence, and the report's dynamic row says "no hook-install signal
observed" (instead of the generic "bypass not confirmed") when it was False.
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


def test_checkpoint_returns_true_on_hook_signal(monkeypatch):
    _clock(monkeypatch)
    msgs = [{"type": "send", "payload": {"hook": "c.a"}}]
    assert frida_runner._wait_for_checkpoint(msgs, settle_seconds=5) is True


def test_checkpoint_returns_false_when_window_burns_with_no_signal(monkeypatch):
    _clock(monkeypatch)
    assert frida_runner._wait_for_checkpoint([], settle_seconds=2.0) is False


def test_checkpoint_returns_true_on_evidence_signal(monkeypatch):
    _clock(monkeypatch)
    msgs = [{"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}}]
    assert frida_runner._wait_for_checkpoint(
        msgs, settle_seconds=5, require_evidence=True) is True


def test_success_builder_records_checkpoint_observed():
    for value in (True, False, None):
        res = frida_runner._bypass_success_result(
            1, [], [], "t", 0.0, checkpoint_observed=value,
        )
        assert res.evidence["bypass_checkpoint_observed"] is value
        assert res.status == "success"


def test_report_annotates_a_bare_success_without_hook_signal():
    # Static guard: the dynamic stage row must distinguish "no hook-install
    # signal observed" from the generic "bypass not confirmed".
    src = (
        Path(__file__).resolve().parents[2] / "src" / "report" / "generator.py"
    ).read_text(encoding="utf-8")
    assert "bypass_checkpoint_observed" in src
    assert "no hook-install signal observed" in src
