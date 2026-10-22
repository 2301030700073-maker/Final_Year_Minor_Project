"""Finding #9 regression guard: capture `success` must not imply the TARGET's
traffic was captured when the flows belong to other uids.

`status="success"` means decrypted flows were captured (flows_count > 0), not
that they were the target app's. The uid attribution (ADR-0012) distinguishes
them. `_success_attribution_note` returns the attribution and, when the target's
uid did NOT reach the proxy, a note the stage-notes channel renders - so a bare
`success` never implies the target's pinning was defeated.
"""
from dynamic.mitmproxy_capture import _success_attribution_note


def test_false_attribution_records_false_and_note():
    attributed, note = _success_attribution_note({"reached": False}, 3)
    assert attributed is False
    assert note is not None
    assert "did NOT reach the proxy" in note
    assert "3 decrypted flow(s)" in note


def test_true_attribution_records_true_without_note():
    attributed, note = _success_attribution_note({"reached": True}, 2)
    assert attributed is True
    assert note is None


def test_unmeasured_attribution_records_none_without_note():
    assert _success_attribution_note({"reached": None}, 1) == (None, None)
    assert _success_attribution_note(None, 1) == (None, None)
