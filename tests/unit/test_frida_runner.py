"""run_dynamic_stage's graceful-degradation paths - the ones that never touch
a device. Anything that reaches `attach()` is validated by real end-to-end
runs on the reference environment, not a unit test (same split as the rest of
the dynamic side)."""

from common import Action
from dynamic import frida_runner


def test_unknown_target_degrades_to_skipped_instead_of_crashing():
    # Real failure mode this pins down: running the pipeline with an
    # unrecognized --target (e.g. "propertyguru") used to raise a bare
    # KeyError at SCRIPTS_BY_TARGET_ACTION[target], which the except-clause
    # turned into status="failed" and halted the whole run with an unhelpful
    # error. Now it returns skipped with a reason, before any device attach.
    result = frida_runner.run_dynamic_stage(
        device_serial="emulator-5554",
        package_name="com.allproperty.android.consumer.my",
        action=Action.ROOT_ONLY,
        target="propertyguru",
    )

    assert result.status == "skipped"
    reason = result.evidence["reason"]
    assert "propertyguru" in reason
    assert "no bypass script available" in reason
    # must not have tried to attach - otherwise this unit test would need a device
    assert "frida_messages" not in result.evidence


def test_neither_classification_is_skipped_without_target_script_lookup():
    # NEITHER short-circuits before the script lookup - locked in so an
    # unrecognized target can't be reached in the first place for a NEITHER
    # run (the negative-control path must never require a device or a script).
    result = frida_runner.run_dynamic_stage(
        device_serial="emulator-5554",
        package_name="com.example.app",
        action=Action.NEITHER,
        target="completely_unknown_target",
    )

    assert result.status == "skipped"
    assert "NEITHER" in result.evidence["reason"]


def test_hung_frida_attach_fails_loudly_under_deadline(monkeypatch):
    # RESID-6B: a stalled frida-server / hung attach must fail the stage with
    # status="failed" under FRIDA_STAGE_TIMEOUT, not hang the whole pipeline
    # forever. The worker thread blocks past the deadline; the stage returns
    # failed instead of waiting on it.
    import time

    def hanging_attach(*args, **kwargs):
        time.sleep(30)  # blocks the worker far past the (tiny) deadline

    monkeypatch.setattr("dynamic.frida_runner.attach", hanging_attach)
    monkeypatch.setattr("dynamic.frida_runner.FRIDA_STAGE_TIMEOUT", 0.1)

    result = frida_runner.run_dynamic_stage(
        "emulator-5554", "com.example.app", Action.ROOT_ONLY, target="uncrackable1",
    )

    assert result.status == "failed"
    assert "hard timeout" in result.error


def test_ui_action_loop_runs_target_actions_in_order(monkeypatch):
    # RESID-6A: the UI-action loop must run the target's actions in order and
    # must not disturb the Action parameter (previously the loop variable
    # shadowed it). Pins AndroGoat's exact navigation sequence end-to-end with
    # all device interaction mocked so it runs anywhere.
    class _FakeDevice:
        def spawn(self, pkg):
            return 1234

        def resume(self, pid):
            return None

    ui_calls = []

    monkeypatch.setattr(
        "dynamic.frida_runner.attach",
        lambda serial, pkg: (_FakeDevice(), object(), 1234),
    )
    monkeypatch.setattr(
        "dynamic.frida_runner.load_script",
        lambda session, name, on_message=None: None,
    )
    monkeypatch.setattr(
        "dynamic.frida_runner._run_ui_action",
        lambda serial, action: ui_calls.append(action),
    )
    monkeypatch.setattr(
        "dynamic.frida_runner._wait_for_checkpoint",
        lambda messages, seconds: None,
    )

    result = frida_runner.run_dynamic_stage(
        "emulator-5554", "owasp.sat.agoat", Action.SSL_ONLY, target="AndroGoat",
    )

    assert result.status == "success"
    # AndroGoat's exact navigation sequence, in order: reach TrafficActivity,
    # let it draw, then tap the CERTIFICATE PINNING button.
    assert ui_calls == [
        ("am_start", "owasp.sat.agoat/.TrafficActivity"),
        ("sleep", 2.0),
        ("tap", 720, 1251),
    ]


def test_wait_for_checkpoint_returns_early_on_hook_signal(monkeypatch):
    # RESID-6D: as soon as a bypass script signals its hooks are in (a send
    # payload carrying a 'hook' key), the settle wait returns - no blind sleep.
    sleeps = []
    monkeypatch.setattr("dynamic.frida_runner.time.sleep", lambda s: sleeps.append(s))
    monkeypatch.setattr("dynamic.frida_runner.time.monotonic", lambda: 0.0)
    messages = [{"type": "send", "payload": {"hook": "c.a", "forced_result": False}}]

    frida_runner._wait_for_checkpoint(messages, settle_seconds=5)

    assert sleeps == []  # signal already present -> never sleeps


def test_wait_for_checkpoint_burns_full_window_without_signal(monkeypatch):
    # RESID-6D: with no hook signal, the wait degrades to the old settle sleep
    # (same ceiling) - polling the whole window, then giving up.
    clock = {"now": 0.0}
    sleeps = []

    def fake_sleep(s):
        sleeps.append(s)
        clock["now"] += s

    monkeypatch.setattr("dynamic.frida_runner.time.sleep", fake_sleep)
    monkeypatch.setattr("dynamic.frida_runner.time.monotonic", lambda: clock["now"])

    frida_runner._wait_for_checkpoint([], settle_seconds=2.0)  # poll interval 0.25

    assert len(sleeps) >= 7  # polls the full ~2.0s window in 0.25s steps
    assert clock["now"] >= 2.0
