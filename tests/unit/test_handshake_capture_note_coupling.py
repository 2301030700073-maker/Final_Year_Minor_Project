"""_handshake_capture_note (report/generator.py) reconciles the SSL success-check's
observer-only "TLS handshakes completed post-bypass" line against the capture
proxy's decrypted flows: when the Frida observer saw NO handshake yet the proxy
decrypted flows (every one of which REQUIRED a completed handshake through the CA),
the report would otherwise print "no TLS handshake reached" beside decrypted
traffic - a self-contradiction. The note fires ONLY for that specific observer
state, which both the emitter (success_checks/technology.py) and this consumer now
name through the shared common.TLS_HANDSHAKE_NONE_OBSERVED constant so the two can
never drift to different spellings.

These tests give that previously-untested helper direct coverage and pin the
consumer to the shared constant: feeding the live constant must fire the note, and
the emitter's other two documented handshake states must not. Pure function - no
device, no adb, no capture proxy."""

from types import SimpleNamespace

from common import TLS_HANDSHAKE_NONE_OBSERVED
from report.generator import _handshake_capture_note

_KEY = "TLS handshakes completed post-bypass"


def _ver(handshake_line: str):
    """Minimal stand-in for the VerificationResult the report consumes: the note
    reads only .evidence_lines[<the handshakes key>]."""
    return SimpleNamespace(evidence_lines={_KEY: handshake_line})


def test_note_none_when_verification_missing():
    # No dynamic verification ran at all - there is nothing to reconcile.
    assert _handshake_capture_note(None, {"capture_flows": [{"host": "x"}]}) is None


def test_note_fires_on_none_observed_with_decrypted_flows():
    # The contradiction the note exists to close: observer saw none, proxy
    # decrypted flows. Feeding the SHARED constant is the drift guard - if the
    # consumer is ever rewired to a different literal, or the constant is changed
    # without the consumer following, this stops matching and the test fails.
    ver = _ver(TLS_HANDSHAKE_NONE_OBSERVED)
    cap = {"capture_flows": [{"host": "api.example.com"}, {"host": "cdn.example.com"}]}
    note = _handshake_capture_note(ver, cap)
    assert note is not None
    assert "2 flow(s) decrypted" in note              # counts flows, not hosts
    assert "api.example.com" in note and "cdn.example.com" in note
    assert "not promoted" in note                      # a handshake is not a pin-check (ADR-0006)


def test_note_silent_when_observer_saw_a_handshake():
    # Emitter state #1 ("yes ..."): observer and proxy agree, no contradiction.
    ver = _ver("yes (a TLS handshake completed through the neutralized stack)")
    assert _handshake_capture_note(ver, {"capture_flows": [{"host": "x"}]}) is None


def test_note_silent_on_attempted_but_rejected_state():
    # Emitter state #2 ("none completed - ATTEMPTED but rejected"): that line
    # already explains itself and is deliberately NOT the none-observed state, so
    # the reconciliation note must stay silent (it keys on none-observed only).
    ver = _ver(
        "none completed - handshakes were ATTEMPTED but rejected on the cert "
        "trust path (SSL bypass did not neutralize them; see startup-TLS signal)"
    )
    assert _handshake_capture_note(ver, {"capture_flows": [{"host": "x"}]}) is None


def test_note_silent_when_none_observed_but_no_flows():
    # None observed AND no decrypted flows: there is no contradiction to reconcile.
    ver = _ver(TLS_HANDSHAKE_NONE_OBSERVED)
    assert _handshake_capture_note(ver, {"capture_flows": []}) is None


def test_note_host_extraction_is_dict_and_attr_aware():
    # capture_flows rows can be dicts (the capture stage's own shape) or objects;
    # _flow_host must read both, else getattr(dict, 'host') silently blanks hosts.
    ver = _ver(TLS_HANDSHAKE_NONE_OBSERVED)
    flows = [{"host": "d.example.com"}, SimpleNamespace(host="a.example.com")]
    note = _handshake_capture_note(ver, {"capture_flows": flows})
    assert "a.example.com" in note and "d.example.com" in note


def test_note_falls_back_to_capture_hosts_when_flows_lack_host():
    # Flows present but none carry a host: fall back to the summary's host list
    # rather than printing an empty "(hosts: )".
    ver = _ver(TLS_HANDSHAKE_NONE_OBSERVED)
    cap = {"capture_flows": [{"host": ""}], "capture_hosts": ["fallback.example.com"]}
    note = _handshake_capture_note(ver, cap)
    assert note is not None
    assert "fallback.example.com" in note
    assert "1 flow(s) decrypted" in note


def test_note_host_preview_caps_at_five_with_ellipsis():
    # The host preview is bounded so a chatty app does not dump every host inline.
    ver = _ver(TLS_HANDSHAKE_NONE_OBSERVED)
    flows = [{"host": f"h{i}.example.com"} for i in range(7)]
    note = _handshake_capture_note(ver, {"capture_flows": flows})
    assert "..." in note
    assert "7 flow(s) decrypted" in note
