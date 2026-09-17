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
        lambda serial, pkg: (_FakeDevice(), object(), 1234,
                             {"client": "16.7", "server": "16.7"}),
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
        lambda messages, seconds, require_evidence=False, require_both_dimensions=False: None,
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
        return dev, object(), dev.pid, {"client": "16.7", "server": "16.7"}

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
        lambda messages, seconds, require_evidence=False, require_both_dimensions=False: None,
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


def _run_capture_scripts_applied(monkeypatch, action, target, synthesized):
    """Drive run_dynamic_stage through the single-spawn synthesized path and return
    the scripts_applied label list, so a test can assert the label matches what was
    actually loaded (principle 3)."""

    class _FakeDevice:
        def spawn(self, pkg):
            return 1234

        def resume(self, pid):
            return None

    monkeypatch.setattr(
        "dynamic.frida_runner.attach",
        lambda serial, pkg: (_FakeDevice(), object(), 1234,
                             {"client": "16.7", "server": "16.7"}),
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
    monkeypatch.setattr(
        "dynamic.frida_runner._wait_for_checkpoint",
        lambda messages, seconds, require_evidence=False, require_both_dimensions=False: None,
    )
    result = frida_runner.run_dynamic_stage(
        "emulator-5554", "com.example.app", action, target=target,
        synthesized=synthesized,
    )
    return result.evidence["scripts_applied"]


def test_synth_ssl_only_label_omits_root_envelope(monkeypatch):
    # Principle 3: scripts_applied must match what was actually LOADED. The native
    # root envelope (native_su_binary_embedded / root_runtime_exec_su) is appended
    # to the loaded source only for a root-needing action; a synthesized SSL_ONLY
    # run loads the SSL bypass ALONE. Its label must therefore NOT claim the two
    # root-envelope recipes ran - previously the synth label branch appended them
    # whenever synth_source was set, over-claiming two root bypasses on an SSL-only
    # run against a real target with pinning but no root check.
    applied = _run_capture_scripts_applied(
        monkeypatch, Action.SSL_ONLY, "some_real_app",
        {"source": "sslsrc", "applied_hooks": ["custom_ssl_hook"]},
    )
    assert "synthesized" in applied
    assert "custom_ssl_hook" in applied  # the SSL hook that WAS loaded
    assert "synthesized:native_su_binary_embedded" not in applied
    assert "synthesized:root_runtime_exec_su" not in applied


def test_synth_root_only_label_includes_root_envelope(monkeypatch):
    # The companion positive lock: a synthesized ROOT_ONLY run DOES append the
    # native root envelope to the loaded source (frida_runner line 405), so its
    # labels MUST be present. Pins the fix in both directions - SSL_ONLY omits,
    # ROOT_ONLY includes - so a later change cannot silently drop the envelope
    # label on a run that actually loads it.
    applied = _run_capture_scripts_applied(
        monkeypatch, Action.ROOT_ONLY, "some_real_app",
        {"source": "rootsrc", "applied_hooks": []},
    )
    assert "synthesized" in applied
    assert "synthesized:native_su_binary_embedded" in applied
    assert "synthesized:root_runtime_exec_su" in applied


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
        lambda serial, pkg: (_FakeDevice(), object(), 1234,
                             {"client": "16.7", "server": "16.7"}),
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

    def fake_wait(messages, seconds, require_evidence=False, require_both_dimensions=False):
        captured["require_evidence"] = require_evidence

    monkeypatch.setattr(
        "dynamic.frida_runner._wait_for_checkpoint", fake_wait,
    )
    frida_runner.run_dynamic_stage(
        "emulator-5554", "com.example.app", action, target=target,
        synthesized=synthesized,
    )
    return captured.get("require_evidence")


def _run_with_captured_settle(monkeypatch, action, target, synthesized, settle_seconds=5):
    """Drive run_dynamic_stage and capture the settle window it passes to
    _wait_for_checkpoint for the single-spawn path."""
    captured = {}

    class _FakeDevice:
        def spawn(self, pkg):
            return 1234

        def resume(self, pid):
            return None

    monkeypatch.setattr(
        "dynamic.frida_runner.attach",
        lambda serial, pkg: (_FakeDevice(), object(), 1234,
                             {"client": "16.7", "server": "16.7"}),
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

    def fake_wait(messages, seconds, require_evidence=False, require_both_dimensions=False):
        captured["seconds"] = seconds
        captured["require_both_dimensions"] = require_both_dimensions

    monkeypatch.setattr(
        "dynamic.frida_runner._wait_for_checkpoint", fake_wait,
    )
    frida_runner.run_dynamic_stage(
        "emulator-5554", "com.example.app", action, target=target,
        synthesized=synthesized, settle_seconds=settle_seconds,
    )
    return captured


def test_unknown_real_app_gets_bounded_longer_settle(monkeypatch):
    # A real app with no hand-authored script (synthesized bypass) has no UI tap
    # driving its SSL check - the app must boot itself and reach a TLS handshake.
    # The default 5 s settle is too short for a heavy RN app to leave splash, so
    # unknown apps must be granted the bounded longer window or the run ends up
    # SSL=inconclusive with no handshake. This locks that the synthesized path
    # actually receives the extended window.
    captured = _run_with_captured_settle(
        monkeypatch, Action.BOTH, "some_real_app",
        {"source": "x", "applied_hooks": []},
    )
    seconds = captured["seconds"]
    assert seconds == frida_runner._UNKNOWN_TARGET_SETTLE_SECONDS
    assert seconds > 5  # genuinely longer than the known-target default
    # A BOTH synthesized run must also require evidence from BOTH dimensions -
    # the extended window is pointless if the fast root probeHit cuts it short.
    assert captured["require_both_dimensions"] is True


def test_known_target_keeps_short_default_settle(monkeypatch):
    # The settle extension must NOT bleed into the OWASP/AndroGoat targets - they
    # have a hand-authored script and a UI tap that drives the check within
    # seconds, so giving them the long window would slow every validated run for
    # nothing. `synth_source` stays None for a target with a script, so its settle
    # must remain the passed-in default unchanged.
    captured = _run_with_captured_settle(
        monkeypatch, Action.ROOT_ONLY, "uncrackable1",
        None, settle_seconds=5,
    )
    assert captured["seconds"] == 5
    # single-dimension root run must NOT require both dimensions' evidence
    assert captured["require_both_dimensions"] is False


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


def test_unknown_ssl_run_requires_ssl_evidence(monkeypatch):
    # SSL_ONLY loads no root envelope, so it must not hold the stage open for
    # ROOT evidence - but it MUST require SSL evidence. Without it, the wait
    # returns on the hook-install checkpoint before the app's own TLS handshake
    # fires, and the bypassEffect/ssl-handshake - the only SSL-confirmation
    # signal for the technology-level check - is missed (the SSL half of the
    # "all real world apps" fix, symmetric to the root probeHit requirement).
    assert _run_with_captured_require_evidence(
        monkeypatch, Action.SSL_ONLY, "some_real_app",
        {"source": "x", "applied_hooks": []},
    ) is True


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


def test_wait_for_checkpoint_requires_both_dimensions_for_synthesized_both(monkeypatch):
    # A synthesized BOTH run (single spawn, root envelope + SSL hooks) must hold
    # the settle window until BOTH dimensions report evidence. The fast root
    # probeHit must NOT cut the SSL wait short - otherwise SSL is abandoned
    # before the app's own TLS handshake fires, defeating the longer settle
    # window granted to unknown real apps (this is the verified correction to
    # the settle fix: early root evidence was silently discarding the SSL half).
    clock = {"now": 0.0}
    sleeps = []

    def fake_sleep(s):
        sleeps.append(s)
        clock["now"] += s

    monkeypatch.setattr("dynamic.frida_runner.time.sleep", fake_sleep)
    monkeypatch.setattr("dynamic.frida_runner.time.monotonic", lambda: clock["now"])

    # Root probeHit present but no SSL bypassEffect: must keep waiting.
    root_only = [{"type": "send", "payload": {"probeHit": "su"}}]
    frida_runner._wait_for_checkpoint(
        list(root_only), settle_seconds=2.0,
        require_evidence=True, require_both_dimensions=True,
    )
    assert clock["now"] >= 2.0  # root alone is not enough - holds for SSL

    # With BOTH root probeHit and SSL bypassEffect present, returns immediately.
    clock["now"] = 0.0
    both = [
        {"type": "send", "payload": {"probeHit": "su"}},
        {"type": "send", "payload": {"bypassEffect": "ssl-handshake"}},
    ]
    frida_runner._wait_for_checkpoint(
        list(both), settle_seconds=2.0,
        require_evidence=True, require_both_dimensions=True,
    )
    assert clock["now"] == 0.0  # both dimensions confirmed -> returns immediately


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


def test_bypass_success_result_records_liveness_true_for_both_spawn_paths():
    # FR-4.6 (pure): the SUCCESS builder both spawn paths share must always record
    # app_still_running=True - reaching a success result means self-termination was
    # checked and did NOT fire, so the process demonstrably survived the settle
    # window (the mirror of _self_terminated_result, which records
    # app_self_terminated=True). Before this shared builder the two-spawn
    # (AndroGoat) path omitted the key, so its report read "not captured" for a
    # survival it had actually observed, while single-spawn targets reported it.
    two_spawn = frida_runner._bypass_success_result(
        4321, [{"payload": {"hook": "x"}}], ["synthesized"], "AndroGoat", 0.0)
    assert two_spawn.status == "success"
    assert two_spawn.evidence["app_still_running"] is True
    assert two_spawn.evidence["pid"] == 4321
    # the two-spawn path gathers no UI liveness -> honest not-captured, never guessed
    assert two_spawn.evidence["ui_liveness"] is None

    # the single-spawn path passes its real-time UI evidence straight through
    single = frida_runner._bypass_success_result(
        9, [], ["synthesized"], "UnCrackable1", 0.0,
        ui_liveness={"activity_resumed": True, "anr_detected": False})
    assert single.evidence["app_still_running"] is True
    assert single.evidence["ui_liveness"] == {"activity_resumed": True, "anr_detected": False}
