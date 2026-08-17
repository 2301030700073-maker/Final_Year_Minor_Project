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
