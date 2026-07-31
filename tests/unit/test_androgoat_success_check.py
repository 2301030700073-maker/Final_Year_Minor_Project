from dynamic.success_checks.androgoat import AndroGoatSuccessCheck

check = AndroGoatSuccessCheck()


def _frida_log(*messages: dict) -> str:
    """Mirrors cli.py's exact construction: one str(message_dict) per line."""
    return "\n".join(str(m) for m in messages)


def _pin_hook_fired_message():
    # The message ssl_pinning_bypass_v1.js sends from CertificatePinner.check
    # when it actually runs at runtime - the confirmation signal.
    return {
        "type": "send",
        "payload": {"hook": "OkHttp CertificatePinner.check", "hostname": "owasp.org", "bypassed": True},
    }


def test_pin_hook_fired_confirms_ssl_bypass():
    result = check.check(
        logcat_output="",
        frida_log=_frida_log(_pin_hook_fired_message()),
    )
    assert result.ssl_bypassed is True
    assert "hook_fired_certificate_pinner_check" in result.evidence_lines


def test_pin_hook_not_fired_means_not_confirmed():
    # Loaded-but-never-called hooks send no runtime message - a bare setup is
    # not confirmation.
    result = check.check(
        logcat_output="",
        frida_log=_frida_log(
            {"type": "send", "payload": {"hook": "TrustManagerImpl.verifyChain", "present": False}},
        ),
    )
    assert result.ssl_bypassed is False
    assert "hooks_not_confirmed" in result.evidence_lines


def test_empty_logs_never_confirm():
    result = check.check(logcat_output="", frida_log="")
    assert result.ssl_bypassed is False
    assert "hooks_not_confirmed" in result.evidence_lines


def test_response_log_is_bonus_evidence_not_required():
    # A "Response" logcat line without the hook firing is bonus only - it must
    # not confirm on its own.
    result = check.check(
        logcat_output="V/Response: <html>owasp.org response</html>",
        frida_log="",
    )
    assert result.ssl_bypassed is False
    assert "response_received" in result.evidence_lines
    assert "hooks_not_confirmed" in result.evidence_lines
