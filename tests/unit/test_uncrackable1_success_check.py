from dynamic.success_checks.uncrackable1 import UnCrackable1SuccessCheck

check = UnCrackable1SuccessCheck()


def _frida_log(*messages: dict) -> str:
    """Mirrors cli.py's exact construction: one str(message_dict) per line."""
    return "\n".join(str(m) for m in messages)


ALL_ROOT_HOOKS_FIRED = _frida_log(
    {"type": "send", "payload": {"hook": "sg.vantagepoint.a.c", "status": "all three hooked"}},
    {"type": "send", "payload": {"hook": "c.a", "forced_result": False}},
    {"type": "send", "payload": {"hook": "c.b", "forced_result": False}},
    {"type": "send", "payload": {"hook": "c.c", "forced_result": False}},
    {"type": "send", "payload": {"hook": "b.a", "forced_result": False}},
)


def test_secret_revealed_alone_without_hook_evidence_is_inconclusive():
    # Secret text is bonus evidence, never sufficient on its own - it requires
    # a human to type the decrypted secret and click verify, which no
    # automated run does.
    result = check.check(
        logcat_output="I/System.out: Success! This is the secret string.",
        frida_log="",
    )
    assert result.root_bypassed is None
    assert "secret_revealed" in result.evidence_lines
    assert "hooks_not_confirmed" in result.evidence_lines


def test_block_signal_present_with_no_hook_evidence_is_inconclusive():
    result = check.check(
        logcat_output="WindowManager: WIN DEATH: Window{a2fdae2 u0 Root detected!}",
        frida_log="",
    )
    assert result.root_bypassed is None
    assert "block_signal_still_present" in result.evidence_lines


def test_no_hook_confirmation_means_inconclusive_even_without_block_signal():
    # This is the case that was wrong before: absence of a block signal
    # alone used to be treated as sufficient. It isn't - that signal proved
    # racy in real runs (see module docstring).
    result = check.check(logcat_output="unrelated log line", frida_log="")
    assert result.root_bypassed is None
    assert result.evidence_lines  # never silently empty on a real verdict
    assert "hooks_not_confirmed" in result.evidence_lines


def test_hooks_confirmed_fired_and_no_block_signal_is_bypassed():
    result = check.check(logcat_output="unrelated log line", frida_log=ALL_ROOT_HOOKS_FIRED)
    assert result.root_bypassed is True
    assert result.evidence_lines  # never empty when True
    assert "hook_fired_c.a" in result.evidence_lines
    assert "hook_fired_c.b" in result.evidence_lines
    assert "hook_fired_c.c" in result.evidence_lines


def test_hooks_installed_but_never_fired_is_inconclusive():
    # "all three hooked" alone (setup succeeded) without any forced_result
    # message (the app never actually called the methods) isn't sufficient -
    # it fires before the app necessarily runs anything.
    frida_log = _frida_log({"type": "send", "payload": {"hook": "sg.vantagepoint.a.c", "status": "all three hooked"}})
    result = check.check(logcat_output="unrelated log line", frida_log=frida_log)
    assert result.root_bypassed is None
    assert "hooks_not_confirmed" in result.evidence_lines


def test_partial_hook_firing_is_inconclusive():
    # Only 2 of 3 root-check hooks fired - not sufficient.
    frida_log = _frida_log(
        {"type": "send", "payload": {"hook": "c.a", "forced_result": False}},
        {"type": "send", "payload": {"hook": "c.b", "forced_result": False}},
    )
    result = check.check(logcat_output="unrelated log line", frida_log=frida_log)
    assert result.root_bypassed is None
    assert "hooks_not_confirmed" in result.evidence_lines


def test_contradiction_hooks_fired_and_block_signal_both_present():
    # The actual scenario observed in real runs (run_41b90136.json vs
    # run_02c310ba.json): identical hook-fired evidence to a confirmed-True
    # run, but a block signal also present - a logcat race, not proof either
    # way. Must not be silently resolved in favor of either signal.
    result = check.check(
        logcat_output="WindowManager: WIN DEATH: Window{a2fdae2 u0 Root detected!}",
        frida_log=ALL_ROOT_HOOKS_FIRED,
    )
    assert result.root_bypassed is False
    assert "anomaly" in result.evidence_lines
    assert "block_signal_still_present" in result.evidence_lines
    assert "hook_fired_c.a" in result.evidence_lines  # both signals kept, not dropped


def test_ssl_bypassed_is_always_none_pending_step_0():
    result = check.check(logcat_output="", frida_log="")
    assert result.ssl_bypassed is None
