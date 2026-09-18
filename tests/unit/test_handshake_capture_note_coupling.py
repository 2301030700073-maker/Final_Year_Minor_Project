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


def test_note_fires_on_attempted_but_rejected_state_too():
    # Emitter state #2 ("none completed - ATTEMPTED but rejected"). This test used
    # to require the note to stay SILENT here, reasoning that the line "already
    # explains itself". A real run disproved that: a PropertyGuru run emitted this
    # exact line and the report rendered it directly above a table of 23 decrypted
    # flows - the contradiction the note exists to reconcile ("every decrypted flow
    # REQUIRED a completed TLS handshake through the CA"). Naming a mechanism is
    # not the same as being consistent with the capture, and the state that
    # contradicts the capture is the one the note is for. The wording stays a
    # literal here because this is the coupling test: it exists to catch drift
    # between the emitter's string and the note's gate.
    ver = _ver(
        "none completed - handshakes were ATTEMPTED but rejected on the cert "
        "trust path (SSL bypass did not neutralize them; see startup-TLS signal)"
    )
    assert "x" in _handshake_capture_note(ver, {"capture_flows": [{"host": "x"}]})


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


def test_note_names_the_capture_windows_own_observer_record():
    # The capture window runs the same observer script as the dynamic stage, in its
    # own launch - so it can be the window where the pin-check/handshake actually
    # fired. Reading its effects only as a silence in the OTHER window's line is how
    # a run that decrypted real flows came to be reported as "the observer recorded
    # none". The note must report what this window's observer saw, not only that the
    # other window's saw nothing.
    ver = _ver(TLS_HANDSHAKE_NONE_OBSERVED)
    cap = {
        "capture_flows": [{"host": "api.example.com"}],
        "capture_observer_ssl_effects": {"ssl-pin-check": 2, "ssl-handshake": 1},
    }
    note = _handshake_capture_note(ver, cap)
    assert "`ssl-pin-check`=2" in note
    assert "`ssl-handshake`=1" in note
    assert "the window the flows above came from" in note
    # Still not a promotion: the tier is the success-check stage's decision, and it
    # ran against the dynamic window before this one opened (ADR-0006).
    assert "not promoted" in note


def test_note_says_so_when_the_capture_windows_observer_was_loaded_and_silent():
    # The mirror: a script WAS loaded into this window and recorded nothing, which
    # means the handshakes behind the flows took a path its hooks do not see. That
    # is a different, weaker statement than "the observer recorded effects here",
    # and the note must not let the two read alike.
    ver = _ver(TLS_HANDSHAKE_NONE_OBSERVED)
    cap = {
        "capture_flows": [{"host": "api.example.com"}],
        "capture_observer_ssl_effects": {},
        "capture_bypass_applied": True,
    }
    note = _handshake_capture_note(ver, cap)
    assert "was loaded and recorded no SSL effect" in note
    assert "the app's own pin-check ran" not in note


def test_note_does_not_claim_a_reading_from_a_window_with_no_observer():
    # The plain am-start arm loads nothing: the app is force-stopped and started
    # fresh with no Frida session, so the message stream the note counts is empty by
    # construction. Rendering that as an observer that "recorded no SSL effect"
    # reports a reading that was never taken, and the clause built on it ("took a
    # path its hooks do not observe") is a conclusion drawn from a probe that was
    # not in the process.
    ver = _ver(TLS_HANDSHAKE_NONE_OBSERVED)
    cap = {
        "capture_flows": [{"host": "api.example.com"}],
        "capture_observer_ssl_effects": {},
        "capture_bypass_applied": False,
    }
    note = _handshake_capture_note(ver, cap)
    assert "No observer script was loaded into this window" in note
    assert "recorded no SSL effect" not in note
