"""Unit tests for the technology-specific hooks-engaged signal (L-M2).

For an unknown real target (no target-specific SuccessCheck), the synthesized
bypass runs and each applied recipe hook emits a frida send({hook: <id>})
checkpoint. TechnologyHooksEngagedCheck reports which hooks engaged - an honest,
non-app-specific engagement signal. The core guarantee tested here: it NEVER
fabricates a bypass confirmation (root/ssl stay None) - it only reports what the
checkpoint messages actually show."""

from dynamic.success_checks.technology import TechnologyHooksEngagedCheck


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
