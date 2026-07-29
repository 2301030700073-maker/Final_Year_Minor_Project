from dynamic.success_checks.uncrackable1 import UnCrackable1SuccessCheck

check = UnCrackable1SuccessCheck()


def test_secret_revealed_without_block_signal_is_bypassed():
    result = check.check(
        logcat_output="I/System.out: Success! This is the secret string.",
        frida_log="",
    )
    assert result.root_bypassed is True
    assert "secret_revealed" in result.evidence_lines


def test_block_signal_present_means_not_bypassed_even_if_secret_seen():
    result = check.check(
        logcat_output="WindowManager: WIN DEATH: Window{a2fdae2 u0 Root detected!}",
        frida_log="",
    )
    assert result.root_bypassed is False
    assert "block_signal_still_present" in result.evidence_lines


def test_no_block_signal_means_bypass_succeeded():
    result = check.check(logcat_output="unrelated log line", frida_log="")
    assert result.root_bypassed is True
    assert result.evidence_lines == {}


def test_ssl_bypassed_is_always_none_pending_step_0():
    result = check.check(logcat_output="", frida_log="")
    assert result.ssl_bypassed is None
