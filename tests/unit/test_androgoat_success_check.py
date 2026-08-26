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


def test_pin_hook_not_fired_is_inconclusive():
    # Loaded-but-never-called hooks send no runtime message - a bare setup is
    # not confirmation.
    result = check.check(
        logcat_output="",
        frida_log=_frida_log(
            {"type": "send", "payload": {"hook": "TrustManagerImpl.verifyChain", "present": False}},
        ),
    )
    assert result.ssl_bypassed is None
    assert "hooks_not_confirmed" in result.evidence_lines


def test_empty_logs_are_inconclusive_not_failure():
    result = check.check(logcat_output="", frida_log="")
    assert result.ssl_bypassed is None
    assert "hooks_not_confirmed" in result.evidence_lines


def test_cross_line_hook_and_marker_does_not_false_positive():
    # RESID-6G: the hook name and the 'bypassed' flag must be on the SAME
    # line. A "not present" message carries the hook name but no flag; a
    # stray 'bypassed' token on a different line must not pair with it.
    frida_log = _frida_log(
        {"type": "send", "payload": {"hook": "OkHttp CertificatePinner.check", "present": False}},
        {"type": "send", "payload": {"unrelated": "stray bypassed token"}},
    )
    result = check.check(logcat_output="", frida_log=frida_log)
    assert result.ssl_bypassed is None
    assert "hooks_not_confirmed" in result.evidence_lines


def test_response_log_alone_is_inconclusive():
    # A "Response" logcat line without the hook firing is bonus only - it must
    # not confirm on its own.
    result = check.check(
        logcat_output="V/Response: <html>owasp.org response</html>",
        frida_log="",
    )
    assert result.ssl_bypassed is None
    assert "response_received" in result.evidence_lines
    assert "hooks_not_confirmed" in result.evidence_lines


def _root_probe_hit_message():
    # Emitted by the synthesized native root envelope when it hides a libc
    # probe of a root artifact (access/stat/exec on /system/bin/su etc.).
    return {
        "type": "send",
        "payload": {"probeHit": "root", "path": "/system/bin/su"},
    }


def test_root_probe_hit_confirms_root_bypass():
    # A root-artifact probe answered-hidden is the app's own root check being
    # defeated - the root counterpart of the pin hook firing. This is what makes
    # an AndroGoat BOTH run confirm root instead of honest-inconclusive.
    result = check.check(
        logcat_output="",
        frida_log=_frida_log(_pin_hook_fired_message(), _root_probe_hit_message()),
    )
    assert result.root_bypassed is True
    assert result.ssl_bypassed is True
    assert "root_probe_hit" in result.evidence_lines


def test_root_probe_hit_without_pin_still_confirms_root_ssl_inconclusive():
    # Root confirmation is independent of the pin hook: a run that only
    # exercised the root check confirms root while SSL stays inconclusive.
    result = check.check(
        logcat_output="",
        frida_log=_frida_log(_root_probe_hit_message()),
    )
    assert result.root_bypassed is True
    assert result.ssl_bypassed is None
    assert "root_probe_hit" in result.evidence_lines


def test_no_root_probe_is_root_inconclusive():
    # No probeHit -> root is None (inconclusive), never a definitive failure.
    result = check.check(
        logcat_output="",
        frida_log=_frida_log(_pin_hook_fired_message()),
    )
    assert result.root_bypassed is None
    assert "root_probe_hit" not in result.evidence_lines


def test_pin_hook_fired_requires_same_line_pair():
    # _pin_hook_fired (RESID-6G): the pin-hook check must be line-coherent - a
    # "not present" line naming the hook must NOT pair with a stray `bypassed`
    # on a different line to claim ssl_bypassed. Both tokens must share one line.
    # Had zero direct coverage.
    from dynamic.success_checks.androgoat import _pin_hook_fired
    assert _pin_hook_fired("hook present\n  ok: bypassed") is False  # split across lines
    assert _pin_hook_fired("OkHttp CertificatePinner.check ... bypassed") is True
    assert _pin_hook_fired("hook not present\nno bypassed here") is False
    assert _pin_hook_fired("") is False


def test_root_probe_hit_confirms_defeated_root_probe():
    # _root_probe_hit: a frida line carrying both `probeHit` and `root` confirms
    # the app's own native root check was exercised AND answered-hidden - the
    # root counterpart of the pin hook firing. Had zero direct coverage.
    from dynamic.success_checks.androgoat import _root_probe_hit
    assert _root_probe_hit("{probeHit: 'root', path: /system/bin/su}") is True
    # tokens split across lines -> not coherent -> no confirmation
    assert _root_probe_hit("probeHit fired\nbut not root") is False
    assert _root_probe_hit("no evidence here") is False
    assert _root_probe_hit("") is False


def test_root_probe_hit_requires_root_typed_value_not_loose_substring():
    # AG-SC1: the old check ("probeHit" in line and "root" in line) over-claimed a
    # confirmed root bypass on ANY line containing both substrings - a frida
    # error/diagnostic naming a probeHit handler and a /root path, or a probeHit of
    # a NON-root type whose path merely contains "root". Root confirmation now
    # requires the probeHit VALUE to be 'root' (the emitter's actual contract).
    from dynamic.success_checks.androgoat import _root_probe_hit
    # error line names probeHit and root but is not a root-typed probeHit -> no confirm
    assert _root_probe_hit(
        "{'type': 'error', 'description': 'probeHit handler failed for /system/xbin, not root'}"
    ) is False
    # a non-root probeHit whose path merely contains 'root' -> no confirm
    assert _root_probe_hit(
        "{'probeHit': 'ssl', 'path': '/data/data/com.rootcheck.app/f'}"
    ) is False
    # the genuine root-typed probeHit, exactly as cli.py logs it (str(message_dict),
    # Python-repr single quotes) -> confirm
    assert _root_probe_hit(
        "{'type': 'send', 'payload': {'probeHit': 'root', 'path': '/system/bin/su'}}"
    ) is True
    # JSON double-quoted form tolerated too (forward-compat) -> confirm
    assert _root_probe_hit('{"probeHit": "root", "path": "/sbin/su"}') is True
