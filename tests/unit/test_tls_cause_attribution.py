"""The TLS-cause claim must match the evidence that licenses it.

_TLS_BLOCK_MARKERS spans two different failures: a certificate-VALIDATION failure
(what the bypass is built to neutralize) and a generic handshake failure. Only
the first supports the report naming a cert-trust rejection. And the note that
reconciles the Frida observer against the capture proxy has to fire on either
"no completed handshake" wording - gating it on one of them disabled it exactly
when the two sources disagreed.
"""

from types import SimpleNamespace

from common import TLS_HANDSHAKE_NONE_OBSERVED, TLS_HANDSHAKE_REJECTED
from dynamic.ui_liveness import _parse_tls_block, _tls_cert_rejection
from report.generator import _handshake_capture_note

PKG, PID = "com.allproperty.android.consumer.my", "1234"

# The line a PropertyGuru run actually logged, which the report rendered as
# "cert trust rejected on Conscrypt/okhttp path". A handshake failure, not a
# certificate rejection.
PG_LINE = (f"09-15 12:04:51.123  {PID}  {PID} E Conscrypt: {PKG} "
           "SSLHandshakeException: Read error: ssl=0x71fb329f5958: "
           "Failure in SSL library, usually a protocol error")
TRUST_LINE = (f"09-15 12:04:51.123  {PID}  {PID} E Conscrypt: {PKG} "
              "java.security.cert.CertPathValidatorException: Trust anchor for "
              "certification path not found.")


def test_generic_handshake_failure_is_not_a_cert_rejection():
    assert _tls_cert_rejection([PG_LINE]) is False


def test_trust_anchor_failure_is_a_cert_rejection():
    assert _tls_cert_rejection([TRUST_LINE]) is True


def test_certpathvalidator_alone_is_a_cert_rejection():
    assert _tls_cert_rejection(["E Conscrypt: CertPathValidatorException"]) is True


def test_splitting_the_markers_did_not_narrow_a_tls_block():
    # The union is what "a TLS block was observed" means, for every existing
    # consumer of tls_blocked.
    assert _parse_tls_block(PG_LINE, PKG, PID) == [PG_LINE.strip()]
    assert _parse_tls_block(TRUST_LINE, PKG, PID) == [TRUST_LINE.strip()]


def _verification(handshake_line):
    return SimpleNamespace(
        evidence_lines={"TLS handshakes completed post-bypass": handshake_line})


FLOWS = {"capture_flows": [{"host": "api.propertyguru.com", "scheme": "https"}]}


def test_note_fires_when_no_handshake_was_observed():
    assert "api.propertyguru.com" in _handshake_capture_note(
        _verification(TLS_HANDSHAKE_NONE_OBSERVED), FLOWS)


def test_note_fires_on_the_rejected_wording_too():
    # The regression: this is the wording the success-check emits when the
    # logcat shows a TLS block, so gating the note on TLS_HANDSHAKE_NONE_OBSERVED
    # alone meant the reconciliation never ran for the runs that needed it.
    assert "api.propertyguru.com" in _handshake_capture_note(
        _verification(TLS_HANDSHAKE_REJECTED), FLOWS)


def test_no_note_when_a_handshake_completed():
    completed = "yes (a TLS handshake completed through the neutralized stack)"
    assert _handshake_capture_note(_verification(completed), FLOWS) is None


def test_note_fires_on_the_third_state_too():
    # Observer saw none AND a TLS failure was logged, but no certificate rejection
    # is established. Decrypted flows still contradict a bare "none observed", so
    # the note must fire here as well.
    from common import TLS_HANDSHAKE_OBSERVER_NONE_TLS_FAILED
    assert "api.propertyguru.com" in _handshake_capture_note(
        _verification(TLS_HANDSHAKE_OBSERVER_NONE_TLS_FAILED), FLOWS)
