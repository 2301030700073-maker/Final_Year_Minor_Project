"""run_dynamic_stage's graceful-degradation paths - the ones that never touch
a device. Anything that reaches `attach()` is validated by real end-to-end
runs on the reference environment, not a unit test (same split as the rest of
the dynamic side).

FR-4.6 self-termination detection is pure logic (no device) and so is unit
tested here too.
"""

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
        lambda messages, seconds, require_evidence=False: None,
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


def test_both_androgoat_runs_two_spawns_one_per_dimension(monkeypatch):
    # AndroGoat's two button-triggered checks (SSL pinning in TrafficActivity,
    # root in RootDetectionActivity) are mutually exclusive in a single
    # navigation, so a BOTH run must spawn once per dimension rather than drive a
    # combined sequence. This pins the split: two attach() calls, the first
    # exercising the SSL sequence (with the SSL script + native root envelope
    # loaded), the second exercising the root sequence (envelope only). Messages
    # from both accumulate into one stage evidence so the success check sees both
    # the pin-hook firing and the root probeHit.
    class _FakeDevice:
        def __init__(self):
            self.pid = 1000

        def spawn(self, pkg):
            return self.pid

        def resume(self, pid):
            return None

    device_a, device_b = _FakeDevice(), _FakeDevice()
    attach_calls = []
    loaded_src = []
    ui_calls = []

    def fake_attach(serial, pkg):
        attach_calls.append(pkg)
        dev = device_a if len(attach_calls) == 1 else device_b
        return dev, object(), dev.pid

    monkeypatch.setattr("dynamic.frida_runner.attach", fake_attach)
    monkeypatch.setattr(
        "dynamic.frida_runner.load_script_source",
        lambda session, src, on_message=None: loaded_src.append(src),
    )
    monkeypatch.setattr(
        "dynamic.frida_runner._run_ui_action",
        lambda serial, action: ui_calls.append(action),
    )
    monkeypatch.setattr(
        "dynamic.frida_runner._wait_for_checkpoint",
        lambda messages, seconds, require_evidence=False: None,
    )

    result = frida_runner.run_dynamic_stage(
        "emulator-5554", "owasp.sat.agoat", Action.BOTH, target="AndroGoat",
        synthesized={"source": "root", "applied_hooks": []},
    )

    assert result.status == "success"
    # two spawns: SSL dimension first, root dimension second
    assert attach_calls == ["owasp.sat.agoat", "owasp.sat.agoat"]
    # SSL spawn loads the hand-authored SSL script + native envelope as one source;
    # root spawn loads just the envelope. Both carry the envelope markers.
    assert "CertificatePinner" in loaded_src[0]
    assert "Interceptor" in loaded_src[0] and "probeHit" in loaded_src[0]
    assert "Interceptor" in loaded_src[1] and "probeHit" in loaded_src[1]
    # UI: SSL dimension (pinning tap) first, root dimension (CHECK ROOT) second
    assert [a[1] for a in ui_calls if a[0] == "am_start"] == [
        "owasp.sat.agoat/.TrafficActivity",
        "owasp.sat.agoat/.RootDetectionActivity",
    ]
    assert ui_calls[-1] == ("tap", 720, 993)
    assert ("tap", 720, 1251) in ui_calls
    assert "synthesized:native_su_binary_embedded" in result.evidence["scripts_applied"]
    assert "synthesized:root_runtime_exec_su" in result.evidence["scripts_applied"]


def _run_with_captured_require_evidence(monkeypatch, action, target, synthesized):
    """Drive run_dynamic_stage and capture the require_evidence it passes to
    _wait_for_checkpoint for the single-spawn path."""
    captured = {}

    class _FakeDevice:
        def spawn(self, pkg):
            return 1234

        def resume(self, pid):
            return None

    monkeypatch.setattr(
        "dynamic.frida_runner.attach",
        lambda serial, pkg: (_FakeDevice(), object(), 1234),
    )
    monkeypatch.setattr(
        "dynamic.frida_runner.load_script",
        lambda session, name, on_message=None: None,
    )
    monkeypatch.setattr(
        "dynamic.frida_runner.load_script_source",
        lambda session, src, on_message=None: None,
    )
    monkeypatch.setattr("dynamic.frida_runner._run_ui_action", lambda serial, a: None)
    monkeypatch.setattr("dynamic.frida_runner.time.sleep", lambda s: None)

    def fake_wait(messages, seconds, require_evidence=False):
        captured["require_evidence"] = require_evidence

    monkeypatch.setattr(
        "dynamic.frida_runner._wait_for_checkpoint", fake_wait,
    )
    frida_runner.run_dynamic_stage(
        "emulator-5554", "com.example.app", action, target=target,
        synthesized=synthesized,
    )
    return captured.get("require_evidence")


def test_unknown_root_run_requires_root_evidence(monkeypatch):
    # The synthesized path appends the native root envelope for a ROOT_ONLY run.
    # The wait must require root evidence (probeHit) so a real-world app's root
    # check - which fires on its own schedule, after the SSL hooks report in - is
    # not missed because the wait returned early on the first hook-install
    # checkpoint. This is the "all real world apps" version of the AndroGoat
    # UI-triggered root check: the envelope only confirms root if we let the
    # app's root check actually run and report the probeHit.
    assert _run_with_captured_require_evidence(
        monkeypatch, Action.ROOT_ONLY, "some_real_app",
        {"source": "x", "applied_hooks": []},
    ) is True


def test_unknown_ssl_run_does_not_wait_for_root_evidence(monkeypatch):
    # SSL_ONLY loads no root envelope, so it must not hold the stage open for
    # root evidence - it waits only on its UI/checkpoint signal.
    assert _run_with_captured_require_evidence(
        monkeypatch, Action.SSL_ONLY, "some_real_app",
        {"source": "x", "applied_hooks": []},
    ) is False


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


def test_wait_for_checkpoint_requires_evidence_when_ui_driven(monkeypatch):
    # UI-triggered flows (AndroGoat root/pinning): the hook-install checkpoint
    # fires at resume but the app's bypass EVIDENCE arrives only after the tap.
    # require_evidence=True must NOT return on a hook-only message - it must keep
    # polling until probeHit/bypassEffect appears (or the window burns).
    clock = {"now": 0.0}
    sleeps = []

    def fake_sleep(s):
        sleeps.append(s)
        clock["now"] += s

    monkeypatch.setattr("dynamic.frida_runner.time.sleep", fake_sleep)
    monkeypatch.setattr("dynamic.frida_runner.time.monotonic", lambda: clock["now"])

    # Only a hook checkpoint present: with require_evidence, we must NOT return.
    hook_only = [{"type": "send", "payload": {"hook": "okhttp_certificate_pinner"}}]
    frida_runner._wait_for_checkpoint(
        list(hook_only), settle_seconds=2.0, require_evidence=True,
    )
    assert clock["now"] >= 2.0  # burned the full window - hook alone isn't enough


def test_wait_for_checkpoint_evidence_arrives_early(monkeypatch):
    # With the app's bypass evidence present, require_evidence returns immediately.
    sleeps = []
    monkeypatch.setattr("dynamic.frida_runner.time.sleep", lambda s: sleeps.append(s))
    monkeypatch.setattr("dynamic.frida_runner.time.monotonic", lambda: 0.0)
    msgs = [
        {"type": "send", "payload": {"hook": "okhttp_certificate_pinner"}},
        {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
    ]
    frida_runner._wait_for_checkpoint(msgs, settle_seconds=5, require_evidence=True)
    assert sleeps == []  # evidence present -> never sleeps


# ---------------------------------------------------------------------------
# FR-4.6: self-termination detection (pure logic)
# ---------------------------------------------------------------------------

from dynamic.frida_runner import _process_is_alive, classify_self_termination


def test_classify_self_termination_true_when_process_dead():
    # A spawned process that is gone after the settle window self-terminated.
    assert classify_self_termination(False) is True


def test_classify_self_termination_false_when_process_alive():
    # An alive process means the bypass survived - not a self-termination.
    assert classify_self_termination(True) is False


class ProcessNotFoundError(Exception):
    pass


class _FakeAliveDevice:
    def get_process(self, pid):
        return {"pid": pid}


class _FakeDeadDevice:
    def get_process(self, pid):
        raise ProcessNotFoundError("process not found")


class _FakeTransientErrorDevice:
    def get_process(self, pid):
        raise RuntimeError("transient frida/device error")


def test_process_is_alive_is_conservative():
    # alive -> alive
    assert _process_is_alive(_FakeAliveDevice(), 1) is True
    # genuinely gone (ProcessNotFoundError) -> dead -> self-termination signal
    assert _process_is_alive(_FakeDeadDevice(), 1) is False
    # a transient frida/device error is NOT evidence of self-termination, so it
    # must be treated as alive rather than false-flagging a healthy target.
    assert _process_is_alive(_FakeTransientErrorDevice(), 1) is True


def test_ui_actions_for_is_action_aware():
    # AndroGoat's root detection is button-triggered in RootDetectionActivity and
    # SSL pinning in TrafficActivity. _ui_actions_for returns a SINGLE dimension's
    # sequence. A BOTH run is NOT driven by a combined sequence here: the two
    # checks are mutually exclusive in one navigation (whichever runs second in
    # the same process never fires - live-verified), so the dynamic stage splits
    # BOTH into two fresh spawns, one per dimension (see run_dynamic_stage /
    # _run_two_spawns), each driven by its own single-dimension sequence. Root
    # confirmation comes from the synthesized native root envelope's probeHit,
    # SSL from the pin-hook firing.
    agoat_root = ("am_start", "owasp.sat.agoat/.RootDetectionActivity")
    agoat_ssl = ("am_start", "owasp.sat.agoat/.TrafficActivity")

    ssl_actions = frida_runner._ui_actions_for("AndroGoat", Action.SSL_ONLY)
    assert ssl_actions[0] == agoat_ssl and ssl_actions[-1] == ("tap", 720, 1251)
    assert ("tap", 720, 993) not in ssl_actions  # no root tap for SSL-only

    root_actions = frida_runner._ui_actions_for("AndroGoat", Action.ROOT_ONLY)
    assert root_actions[0] == agoat_root and root_actions[-1] == ("tap", 720, 993)
    assert ("tap", 720, 1251) not in root_actions  # no pinning tap for root-only

    # Unknown targets fall back to the static UI_ACTIONS_BY_TARGET (empty list).
    assert frida_runner._ui_actions_for("UnCrackable1", Action.BOTH) == []
