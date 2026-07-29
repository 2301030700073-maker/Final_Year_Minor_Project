from dynamic.success_checks.uncrackable3 import UnCrackable3SuccessCheck

check = UnCrackable3SuccessCheck()


def _frida_log(*messages: dict) -> str:
    """Mirrors cli.py's exact construction: one str(message_dict) per line."""
    return "\n".join(str(m) for m in messages)


ALL_ROOT_HOOKS_FIRED = _frida_log(
    {"type": "send", "payload": {"hook": "sg.vantagepoint.util.RootDetection", "status": "all three hooked"}},
    {"type": "send", "payload": {"hook": "sg.vantagepoint.util.RootDetection.checkRoot1", "forced_result": False}},
    {"type": "send", "payload": {"hook": "sg.vantagepoint.util.RootDetection.checkRoot2", "forced_result": False}},
    {"type": "send", "payload": {"hook": "sg.vantagepoint.util.RootDetection.checkRoot3", "forced_result": False}},
    {"type": "send", "payload": {"hook": "sg.vantagepoint.util.IntegrityCheck.isDebuggable", "forced_result": False}},
    {"type": "send", "payload": {"hook": "android.os.Debug.isDebuggerConnected", "forced_result": False}},
    {"type": "send", "payload": {"hook": "sg.vantagepoint.uncrackable3.MainActivity.verifyLibs", "neutralized": True}},
)


def test_secret_revealed_alone_without_hook_evidence_is_not_bypassed():
    result = check.check(
        logcat_output="I/System.out: Success! This is the correct secret.",
        frida_log="",
    )
    assert result.root_bypassed is False
    assert "secret_revealed" in result.evidence_lines
    assert "hooks_not_confirmed" in result.evidence_lines


def test_block_signal_present_with_no_hook_evidence_is_not_bypassed():
    result = check.check(
        logcat_output="WindowManager: WIN DEATH: Window{a2fdae2 u0 Rooting or tampering detected.}",
        frida_log="",
    )
    assert result.root_bypassed is False
    assert "block_signal_still_present" in result.evidence_lines


def test_no_hook_confirmation_means_not_bypassed_even_without_block_signal():
    result = check.check(logcat_output="unrelated log line", frida_log="")
    assert result.root_bypassed is False
    assert result.evidence_lines  # never silently empty on a real verdict
    assert "hooks_not_confirmed" in result.evidence_lines


def test_hooks_confirmed_fired_and_no_block_signal_is_bypassed():
    result = check.check(logcat_output="unrelated log line", frida_log=ALL_ROOT_HOOKS_FIRED)
    assert result.root_bypassed is True
    assert result.evidence_lines  # never empty when True
    assert "hook_fired_sg.vantagepoint.util.RootDetection.checkRoot1" in result.evidence_lines
    assert "hook_fired_sg.vantagepoint.util.RootDetection.checkRoot2" in result.evidence_lines
    assert "hook_fired_sg.vantagepoint.util.RootDetection.checkRoot3" in result.evidence_lines


def test_hooks_installed_but_never_fired_is_not_confirmed_bypassed():
    frida_log = _frida_log(
        {"type": "send", "payload": {"hook": "sg.vantagepoint.util.RootDetection", "status": "all three hooked"}}
    )
    result = check.check(logcat_output="unrelated log line", frida_log=frida_log)
    assert result.root_bypassed is False
    assert "hooks_not_confirmed" in result.evidence_lines


def test_partial_hook_firing_is_not_confirmed_bypassed():
    # Only 2 of 3 root-check hooks fired - not sufficient.
    frida_log = _frida_log(
        {"type": "send", "payload": {"hook": "sg.vantagepoint.util.RootDetection.checkRoot1", "forced_result": False}},
        {"type": "send", "payload": {"hook": "sg.vantagepoint.util.RootDetection.checkRoot2", "forced_result": False}},
    )
    result = check.check(logcat_output="unrelated log line", frida_log=frida_log)
    assert result.root_bypassed is False
    assert "hooks_not_confirmed" in result.evidence_lines


def test_contradiction_hooks_fired_and_block_signal_both_present():
    result = check.check(
        logcat_output="WindowManager: WIN DEATH: Window{a2fdae2 u0 Rooting or tampering detected.}",
        frida_log=ALL_ROOT_HOOKS_FIRED,
    )
    assert result.root_bypassed is False
    assert "anomaly" in result.evidence_lines
    assert "block_signal_still_present" in result.evidence_lines
    assert "hook_fired_sg.vantagepoint.util.RootDetection.checkRoot1" in result.evidence_lines  # both signals kept


def test_rooting_or_tampering_block_signal_is_recognized_explicitly():
    result = check.check(
        logcat_output="WindowManager: WIN DEATH: Window{a2fdae2 u0 Rooting or tampering detected.}",
        frida_log="",
    )
    assert "Rooting or tampering detected" in result.evidence_lines["block_signal_still_present"]


def test_debugger_detected_block_signal_is_recognized_explicitly():
    result = check.check(
        logcat_output="WindowManager: WIN DEATH: Window{a2fdae2 u0 Debugger detected!}",
        frida_log=ALL_ROOT_HOOKS_FIRED,
    )
    assert result.root_bypassed is False
    assert "Debugger detected" in result.evidence_lines["block_signal_still_present"]


def test_anti_debug_poll_hook_firing_alone_does_not_flip_verdict_to_bypassed():
    frida_log = _frida_log(
        {"type": "send", "payload": {"hook": "android.os.Debug.isDebuggerConnected", "forced_result": False}},
    )
    result = check.check(logcat_output="unrelated log line", frida_log=frida_log)
    assert result.root_bypassed is False
    assert "hooks_not_confirmed" in result.evidence_lines
    assert "anti_debug_poll_neutralized" in result.evidence_lines


def test_tamper_check_hook_firing_alone_does_not_flip_verdict_to_bypassed():
    # verifyLibs being neutralized is a practical necessity, not root-
    # detection evidence - it must never substitute for the three real
    # root-check hooks in the verdict.
    frida_log = _frida_log(
        {"type": "send", "payload": {"hook": "sg.vantagepoint.uncrackable3.MainActivity.verifyLibs", "neutralized": True}},
    )
    result = check.check(logcat_output="unrelated log line", frida_log=frida_log)
    assert result.root_bypassed is False
    assert "hooks_not_confirmed" in result.evidence_lines
    assert "tamper_check_neutralized" in result.evidence_lines


def test_neutralized_marker_is_recognized_as_a_firing_confirmation():
    # verifyLibs is void - it sends "neutralized", not "forced_result" -
    # _fired_hook_ids must recognize both markers, not just one.
    frida_log = _frida_log(
        {"type": "send", "payload": {"hook": "sg.vantagepoint.uncrackable3.MainActivity.verifyLibs", "neutralized": True}},
    )
    result = check.check(logcat_output="unrelated log line", frida_log=frida_log)
    assert "tamper_check_neutralized" in result.evidence_lines


def test_ssl_bypassed_is_always_none_pending_ssl_stage():
    result = check.check(logcat_output="", frida_log="")
    assert result.ssl_bypassed is None
