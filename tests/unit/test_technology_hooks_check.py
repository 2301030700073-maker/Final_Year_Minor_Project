"""Unit tests for the technology-specific hooks-engaged signal (L-M2).

For an unknown real target (no target-specific SuccessCheck), the synthesized
bypass runs and each applied recipe hook emits a frida send({hook: <id>})
checkpoint. TechnologyHooksEngagedCheck reports which hooks engaged - an honest,
non-app-specific engagement signal. The core guarantee tested here: it NEVER
fabricates a bypass confirmation (root/ssl stay None) - it only reports what the
checkpoint messages actually show."""

from dynamic.success_checks.technology import (
    TechnologyHooksEngagedCheck,
    liveness_evidence_lines,
)


def test_reports_engaged_hooks_from_checkpoint_messages():
    msgs = [
        {"type": "send", "payload": {"hook": "okhttp_certificate_pinner"}},
        {"type": "send", "payload": {"hook": "hostname_verifier_always_true"}},
        {"type": "send", "payload": {"hook": "okhttp_certificate_pinner"}},  # dedup
        {"type": "error", "description": "x"},   # non-send ignored
        "not a dict",                            # malformed ignored
    ]
    v = TechnologyHooksEngagedCheck().check(msgs)
    assert v.root_bypassed is None and v.ssl_bypassed is None  # never a fake pass
    assert (
        v.evidence_lines["bypass hooks engaged"]
        == "okhttp_certificate_pinner, hostname_verifier_always_true"
    )


def test_no_checkpoint_means_not_engaged():
    # A status-only checkpoint (legacy script style) has no "hook" key - the
    # technology check must not mistake it for an engaged recipe hook.
    v = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"status": "all hooked"}}]
    )
    assert v.evidence_lines["bypass hooks engaged"] == "none (no hook checkpoint observed)"


def test_none_and_empty_messages_are_safe():
    for msgs in (None, []):
        v = TechnologyHooksEngagedCheck().check(msgs)
        assert v.root_bypassed is None and v.ssl_bypassed is None
        assert v.evidence_lines["bypass hooks engaged"].startswith("none")
        assert "(none captured)" in v.evidence_lines["frida messages observed"]


def test_surfaces_bounded_auditable_message_sample():
    # The report must be able to distinguish "hooks genuinely didn't engage"
    # from "the capture was empty" - so the check surfaces what it actually saw.
    v = TechnologyHooksEngagedCheck().check(
        [{"type": "log", "payload": "[OK] lib.stat replaced"}]
    )
    sample = v.evidence_lines["frida messages observed"]
    assert "1 total" in sample
    assert "[OK] lib.stat replaced" in sample
    # a hook checkpoint is summarized with its id
    v2 = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"hook": "universal:ssl"}}]
    )
    assert "hook:universal:ssl" in v2.evidence_lines["frida messages observed"]


def test_vendored_universal_console_markers_count_as_engagement():
    # The vendored universal reports native-hook engagement via console.log
    # lines routed into the capture (console handler). The check must count
    # those as engagement evidence - distinct from a synthesized checkpoint.
    v = TechnologyHooksEngagedCheck().check([
        {"type": "log", "payload": "[OK] [ROOT] libc.stat native"},
        {"type": "log", "payload": "[OK] [SSL] libssl.SSL_CTX_set_cert_cb native"},
    ])
    engaged = v.evidence_lines["bypass hooks engaged"]
    assert "vendor:native-root" in engaged
    assert "vendor:native-ssl" in engaged
    assert v.root_bypassed is None and v.ssl_bypassed is None  # still not a fake pass


def test_plain_log_without_marker_is_not_engagement():
    # A non-engagement log line must not light up the signal.
    v = TechnologyHooksEngagedCheck().check(
        [{"type": "log", "payload": "something unrelated"}]
    )
    assert v.evidence_lines["bypass hooks engaged"].startswith("none")


def test_message_sample_is_capped_and_truncated():
    msgs = [{"type": "log", "payload": f"line {i}"} for i in range(50)]
    v = TechnologyHooksEngagedCheck().check(msgs)
    sample = v.evidence_lines["frida messages observed"]
    assert "50 total" in sample
    assert sample.count("log:") <= 8  # bounded, never a full dump
    long = TechnologyHooksEngagedCheck().check(
        [{"type": "log", "payload": "x" * 500}]
    )
    assert "…" in long.evidence_lines["frida messages observed"]


def test_surfaces_probe_hit_and_bypass_effect_evidence():
    # Fix-1/Fix-3: behavioral-effect evidence (a root artifact probe answered
    # false, a TLS handshake completing post-bypass) is surfaced - stronger than
    # "hooks attached".
    msgs = [
        {"type": "send", "payload": {"probeHit": "root", "path": "/system/bin/su"}},
        {"type": "send", "payload": {"bypassEffect": "ssl-handshake"}},
    ]
    v = TechnologyHooksEngagedCheck().check(msgs)
    # ROOT is confirmed: the app's own root-check probed a root artifact and was
    # answered-false - its root logic received the not-rooted result.
    assert v.root_bypassed is True
    # SSL is NOT confirmed here: a handshake alone is not a pin-bypass (a
    # non-pinned app also completes one; no pin-check was observed).
    assert v.ssl_bypassed is None
    assert "/system/bin/su" in v.evidence_lines["root artifact probes answered-false"]
    assert "TLS handshake completed" in v.evidence_lines["TLS handshakes completed post-bypass"]


def test_handshake_line_not_polluted_by_pin_check_only():
    # The "TLS handshakes completed post-bypass" line reports ONLY the handshake
    # observation. A real app whose only effect is the pin-check (ssl-pin-check,
    # no completed handshake) must NOT be reported under a "handshakes completed"
    # heading - previously the line joined every bypassEffect, so a pin-check-only
    # run read "TLS handshakes completed: ssl-pin-check", a mislabeled line.
    v = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}}]
    )
    assert v.evidence_lines["TLS handshakes completed post-bypass"] == \
        "none observed (no TLS handshake reached during the run)"
    assert "ssl-pin-check" not in v.evidence_lines["TLS handshakes completed post-bypass"]


def test_root_confirmed_on_observed_probe_hit():
    # Fix-1: the app's own root-check probed a root artifact and was answered-false
    # (probeHit). On the rooted test device that probe would otherwise have
    # returned rooted - so the probeHit IS the app's root check being defeated and
    # root_bypassed is confirmed. A run with no root probe stays inconclusive
    # (None), never a fabricated pass.
    v = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"probeHit": "root", "path": "/data/adb/magisk"}}]
    )
    assert v.root_bypassed is True
    assert "/data/adb/magisk" in v.evidence_lines["root artifact probes answered-false"]
    assert "root logic received the not-rooted result" in \
        v.evidence_lines["root bypass confirmation basis"]
    # no root probe -> root not confirmed (flow-triggered check may not have fired)
    v2 = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"bypassEffect": "ssl-handshake"}}]
    )
    assert v2.root_bypassed is None
    v3 = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"hook": "root_su_binary_paths"}}]
    )
    assert v3.root_bypassed is None  # engagement alone, no probe observed


def test_non_root_probe_hit_does_not_confirm_root():
    # Decider-owns-its-guard (parallels AG-SC1 for the AndroGoat check): ROOT is
    # confirmed ONLY by a root-VALUED probeHit. Every probeHit the synthesizer
    # emits today is 'root', but the confirmation must not RELY on that
    # cross-module invariant - a probeHit of some OTHER type (a future
    # emulator/debugger probe recipe) must NOT promote root_bypassed, or an
    # unrelated probe would silently over-claim a confirmed root bypass. Same
    # probeHit-VALUE precision androgoat.py's _ROOT_PROBE_RE already enforces.
    v = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"probeHit": "emulator", "path": "qemu"}}]
    )
    assert v.root_bypassed is None  # a non-root probe must not confirm root
    assert "none observed" in v.evidence_lines["root artifact probes answered-false"]
    # A root-valued probe alongside a non-root one still confirms root, and the
    # root-artifact line names ONLY the root probe (the non-root probe is not
    # mislabeled as a root artifact).
    v2 = TechnologyHooksEngagedCheck().check([
        {"type": "send", "payload": {"probeHit": "emulator", "path": "qemu"}},
        {"type": "send", "payload": {"probeHit": "root", "path": "/sbin/su"}},
    ])
    assert v2.root_bypassed is True
    assert "/sbin/su" in v2.evidence_lines["root artifact probes answered-false"]
    assert "qemu" not in v2.evidence_lines["root artifact probes answered-false"]


def test_ssl_confirmed_only_when_pin_check_and_handshake_both_observed():
    # Fix-1: the app's own Java pin-check ran without rejecting (ssl-pin-check)
    # AND a handshake completed (ssl-handshake) - its pin logic demonstrably
    # accepted a connection it would otherwise reject. That is the deterministic
    # confirmation the SSL bypass worked for that connection. Only BOTH together
    # promote; a pin-check alone (no completed connection) stays effect evidence.
    both = [
        {"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}},
        {"type": "send", "payload": {"bypassEffect": "ssl-handshake"}},
    ]
    v = TechnologyHooksEngagedCheck().check(both)
    assert v.ssl_bypassed is True          # confirmed, app's own pin logic accepted
    assert v.root_bypassed is None          # no root probe in these messages - unconfirmed
    assert "accepted a connection" in v.evidence_lines["SSL bypass confirmation basis"]
    # pin-check alone is not confirmation - no completed connection proves it.
    v1 = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"bypassEffect": "ssl-pin-check"}}]
    )
    assert v1.ssl_bypassed is None
    # handshake alone is not confirmation (a non-pinned app also completes one).
    v2 = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"bypassEffect": "ssl-handshake"}}]
    )
    assert v2.ssl_bypassed is None
    # no effect observed is reported honestly, not as a pass
    v2 = TechnologyHooksEngagedCheck().check([{"type": "send", "payload": {"hook": "x"}}])
    assert "none observed" in v2.evidence_lines["root artifact probes answered-false"]
    assert "none observed" in v2.evidence_lines["TLS handshakes completed post-bypass"]


def test_app_still_running_surfaced_when_captured():
    # FR-4.6 liveness: when the dynamic stage records the app survived the
    # settle window, the report states it explicitly - a bypass claim is backed
    # by "app still running", not left implied.
    v = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"hook": "okhttp_certificate_pinner"}}],
        app_still_running=True,
    )
    assert v.evidence_lines["app still running after bypass"].startswith("True")


def test_app_still_running_false_is_surfaced_not_claimed():
    # If the app self-terminated (False), the report says so loudly and never
    # lets a hooks-engaged signal read as a usable bypass.
    v = TechnologyHooksEngagedCheck().check(
        [{"type": "send", "payload": {"hook": "okhttp_certificate_pinner"}}],
        app_still_running=False,
    )
    assert "False" in v.evidence_lines["app still running after bypass"]
    assert "self-terminated" in v.evidence_lines["app still running after bypass"]


def test_app_still_running_not_captured_is_honest():
    # When liveness was not recorded, the report says so rather than guessing.
    v = TechnologyHooksEngagedCheck().check([])
    assert "not captured" in v.evidence_lines["app still running after bypass"]


def test_tls_line_crossrefs_tls_block_signal():
    """When the startup-TLS signal fired, the line must not imply no TLS activity.
    A generic handshake failure does not license naming the certificate cause, so
    the line cross-references the signal and leaves the mechanism unattributed -
    the bare none-observed wording asserts no TLS activity at all and is what must
    not be used here (ADR-0006)."""
    from common import TLS_HANDSHAKE_OBSERVER_NONE_TLS_FAILED
    check = TechnologyHooksEngagedCheck()
    r = check.check([], ui_liveness={"tls_blocked": True})
    line = r.evidence_lines["TLS handshakes completed post-bypass"]
    assert line == TLS_HANDSHAKE_OBSERVER_NONE_TLS_FAILED
    assert "startup-tls signal" in line.lower()
    assert "cert trust" not in line.lower()          # no unattributed mechanism
    assert "attempted but rejected" not in line.lower()


def test_tls_line_names_cert_rejection_only_on_cert_evidence():
    # The mirror of the test above: when the logcat DOES carry a certificate
    # rejection, the report names it - that is the case the wording is for.
    from common import TLS_HANDSHAKE_REJECTED
    check = TechnologyHooksEngagedCheck()
    r = check.check([], ui_liveness={"tls_blocked": True, "tls_cert_rejected": True})
    assert r.evidence_lines["TLS handshakes completed post-bypass"] == TLS_HANDSHAKE_REJECTED


def test_tls_line_plain_when_no_tls_block():
    from common import VerificationResult
    check = TechnologyHooksEngagedCheck()
    r = check.check([], ui_liveness={"tls_blocked": False})
    line = r.evidence_lines["TLS handshakes completed post-bypass"]
    assert "none observed (no TLS handshake reached" in line


def test_liveness_evidence_lines_renders_true_state():
    """Shared helper: a healthy target's report states liveness + a real
    UI-responsiveness summary, and 'not captured' when the tool was absent."""
    r = liveness_evidence_lines(
        True, {"activity_resumed": True, "window_focused": True,
               "anr_detected": False, "clickable_nodes": 1, "screen_state": "interactive"}
    )
    assert "True" in r["app still running after bypass"]
    assert any("UI responsiveness" in k for k in r)
    r2 = liveness_evidence_lines(None, None)
    assert "not captured" in r2["app still running after bypass"]
    assert "not captured" in r2["App UI responsiveness (live, real device data)"]


def test_ui_liveness_covers_uncommon_evidence_branches():
    # technology.py:80, 94-95, 108, 114, 117: the _fmt non-bool fallthrough, the
    # tls_blocked block-line quote (with >90-char truncation), the visible
    # text-node count, the stuck-on-splash label, and the _errors surfacing -
    # none exercised by the healthy-UI sibling test. All reachable, all pure.
    from dynamic.success_checks.technology import _summarize_ui_liveness
    s = _summarize_ui_liveness({
        "window_focused": "some-state",       # non-None non-bool -> :{val} (80)
        "tls_blocked": True,
        "tls_block_lines": ["x" * 120],       # truncated quote (94-95)
        "text_node_count": 12,                # visible text nodes (108)
        "screen_state": "splash/loading",     # stuck-on-splash label (114)
        "_errors": ["boom", "bang"],          # error surfacing (117)
    })
    assert "window focused:some-state" in s
    assert "startup TLS blocked:yes" in s
    assert "- " in s
    assert ("x" * 120) not in s              # the >90-char line was truncated
    assert "visible text nodes:12" in s
    assert "did NOT advance" in s            # splash/loading not a usable-app claim
    assert "boom" in s and "bang" in s


def test_rendered_content_widget_surfaced_and_auditable_against_splash_verdict():
    # rendered_content (ui_liveness._parse_rendered_content) was computed, stored,
    # and never shown. It is the structural signal separating an RN/Flutter surface
    # DRAWING content from an empty frame - so it must be surfaced to make the
    # screen_state verdict auditable. The key honest case: a conservative
    # "splash/loading" verdict (minimal text, 0 clickables) coexisting with real
    # rendered content widgets - the RN image-heavy screen. The qualifier appears,
    # AND it must NOT overturn the splash verdict (report-only; overriding it would
    # push toward overstating liveness, the dangerous direction).
    from dynamic.success_checks.technology import _summarize_ui_liveness
    s = _summarize_ui_liveness({
        "screen_state": "splash/loading (no interactive widgets, minimal text) - NOT an interactive page",
        "clickable_nodes": 0,
        "text_node_count": 1,
        "rendered_content": True,
    })
    assert "content widget beyond bare layout root:yes" in s
    # the conservative splash verdict still stands - the qualifier corroborates,
    # never overturns it.
    assert "did NOT advance" in s
    assert "splash/loading" in s


def test_rendered_content_false_and_not_captured_are_honest():
    # False -> an explicit ":no" (a bare frame, no content widget beyond the root).
    # None / absent -> the line is OMITTED, never guessed: on a failed dump
    # screen_state already reads "not captured", so a fabricated yes/no here would
    # be a signal the run never observed (ADR-0006, this module's honesty contract).
    from dynamic.success_checks.technology import _summarize_ui_liveness
    s_false = _summarize_ui_liveness({"rendered_content": False, "text_node_count": 5})
    assert "content widget beyond bare layout root:no" in s_false
    s_none = _summarize_ui_liveness({"rendered_content": None, "screen_state": "not captured (uiautomator dump failed)"})
    assert "content widget beyond bare layout root" not in s_none
    s_absent = _summarize_ui_liveness({"screen_state": "interactive"})
    assert "content widget beyond bare layout root" not in s_absent


def test_anr_cause_named_when_ui_frozen():
    # Symmetric to the startup-TLS quote: when the UI thread froze (anr_detected),
    # the summary must NAME the captured ANR / input-dispatch cause, not just
    # report a bare "ANR/frozen-UI:yes". anr_lines are captured for exactly this;
    # dropping them left the report naming the SSL cause but never the ANR one.
    from dynamic.success_checks.technology import _summarize_ui_liveness
    anr_line = ("09-08 12:00:00.123  1234  1250 E ActivityManager: ANR in "
                "com.example.app: Input dispatching timed out (Waiting to send "
                "non-key event to the focused window)")
    s = _summarize_ui_liveness({"anr_detected": True, "anr_lines": [anr_line]})
    assert "ANR/frozen-UI:yes" in s
    assert "ANR cause - " in s
    # the message tail is named (not just the yes flag)...
    assert "Input dispatching timed out" in s
    # ...and the >90-char line was tail-quoted, dropping the timestamp/pid head.
    assert anr_line not in s
    assert "09-08 12:00:00.123" not in s


def test_no_anr_cause_when_not_frozen():
    # Strict gate: a live (un-frozen) UI reports "ANR/frozen-UI:no" and NO cause.
    from dynamic.success_checks.technology import _summarize_ui_liveness
    s = _summarize_ui_liveness({"anr_detected": False, "anr_lines": []})
    assert "ANR/frozen-UI:no" in s
    assert "ANR cause" not in s


def test_no_anr_cause_fabricated_when_no_lines_captured():
    # Strict gate: frozen, but the scan captured no ANR line (a logcat race or an
    # unrecognized format) -> report the yes flag, never fabricate a cause quote.
    from dynamic.success_checks.technology import _summarize_ui_liveness
    s = _summarize_ui_liveness({"anr_detected": True, "anr_lines": []})
    assert "ANR/frozen-UI:yes" in s
    assert "ANR cause" not in s


def test_summarize_handles_untyped_payload():
    # technology.py:140: a payload that is neither dict, str, nor None (an int)
    # renders its type name honestly instead of crashing - and the non-dict
    # message arm (125-126) is confirmed alongside.
    from dynamic.success_checks.technology import _summarize
    assert _summarize("raw log") == "malformed:str"
    # A send() carrying a bare int payload falls to the type-name branch.
    assert _summarize({"type": "send", "payload": 42}) == "send:int"


def test_summarize_renders_script_error_detail_not_error_null():
    # An uncaught Frida {type:error} message carries its detail at the TOP level
    # (description/fileName/lineNumber), NOT in a payload - so the payload branch
    # rendered it "error:null" and hid the crash reason. This bounded, auditable
    # sample exists to make "hooks engaged" auditable (distinguish a real "none"
    # from an empty capture); a crashed bypass is WHY it reads "none", so the
    # sample must name it. Wording comes from the shared describer (common),
    # matching the report hooks-audit and the capture caveat.
    from dynamic.success_checks.technology import _summarize
    out = _summarize({"type": "error", "description": "ReferenceError: Java is not defined",
                      "fileName": "pin.js", "lineNumber": 12})
    assert out == "error:ReferenceError: Java is not defined (pin.js:12)"
    assert "error:null" not in out
    # a bare error with no description still names itself, never blanks
    assert _summarize({"type": "error"}) == "error:unspecified Frida script error"
