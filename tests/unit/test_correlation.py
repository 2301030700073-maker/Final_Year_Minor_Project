from common import Action, CategoryVerdict, ClassificationResult, VerificationResult
from dynamic.correlation import correlate

DETECTED = CategoryVerdict(confidence=0.9, detected=True, evidence=[])
NOT_DETECTED = CategoryVerdict(confidence=0.1, detected=False, evidence=[])


def _classification(root_detected: bool, ssl_detected: bool) -> ClassificationResult:
    root = DETECTED if root_detected else NOT_DETECTED
    ssl = DETECTED if ssl_detected else NOT_DETECTED
    if root_detected and ssl_detected:
        action = Action.BOTH
    elif root_detected:
        action = Action.ROOT_ONLY
    elif ssl_detected:
        action = Action.SSL_ONLY
    else:
        action = Action.NEITHER
    return ClassificationResult(action=action, root=root, ssl=ssl)


def test_correlate_matches_when_prediction_confirmed():
    classification = _classification(root_detected=True, ssl_detected=False)
    verification = VerificationResult(root_bypassed=True, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is True
    assert result.mismatches == []


def test_correlate_flags_predicted_but_not_confirmed():
    classification = _classification(root_detected=True, ssl_detected=False)
    verification = VerificationResult(root_bypassed=False, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert len(result.mismatches) == 1
    assert "predicted root-detection" in result.mismatches[0]


def test_correlate_flags_confirmed_but_not_predicted():
    classification = _classification(root_detected=False, ssl_detected=False)
    verification = VerificationResult(root_bypassed=True, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert "did not predict root-detection" in result.mismatches[0]


def test_correlate_neither_predicted_nor_confirmed_is_a_match():
    classification = _classification(root_detected=False, ssl_detected=False)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is True


def test_correlate_not_predicted_with_block_signal_anomaly_is_a_mismatch():
    # FR-5 truth table completion: the cell "not predicted + bypass=False" had
    # no explicit arm and fell through silently as agreement. That was wrong -
    # False is not "dynamic found nothing": the success checks set False only in
    # the contradiction branch (hooks confirmed fired AND a block signal
    # observed, uncrackable1.py:81-90), an anomaly they refuse to resolve either
    # way. Surfacing it as a mismatch keeps that anomaly visible rather than
    # swallowing it. (Defensive today - a root bypass runs only when root is
    # predicted - so the cell is unreachable now, but the semantics are locked.)
    classification = _classification(root_detected=False, ssl_detected=False)
    verification = VerificationResult(root_bypassed=False, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert any("block signal" in m for m in result.mismatches)


def test_correlate_inconclusive_dynamic_verdict_is_not_a_match():
    # M5/RESID-6F: a predicted-positive whose dynamic bypass was inconclusive
    # (bypassed=None) is NOT agreement - matches=True would fabricate a
    # static/dynamic confirmation the evidence never showed. It is also NOT a
    # conflict (dynamic never disproved static), so it lands in `unverified`,
    # the third state, never in mismatches.
    classification = _classification(root_detected=True, ssl_detected=False)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert result.mismatches == []
    assert len(result.unverified) == 1
    assert "could not test" in result.unverified[0]


def test_correlate_inconclusive_ssl_verdict_is_not_a_match():
    classification = _classification(root_detected=False, ssl_detected=True)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert result.mismatches == []
    assert len(result.unverified) == 1
    assert "SSL-pinning" in result.unverified[0]
    assert "could not test" in result.unverified[0]


def test_correlate_not_predicted_with_ssl_block_signal_anomaly_is_a_mismatch():
    # Mirror of the root anomaly arm: an SSL False with no static prediction is
    # the contradiction-branch anomaly (hooks fired AND a block signal observed),
    # not agreement - surfacing it as a mismatch keeps it visible instead of
    # swallowing it as agreement-by-non-claim.
    classification = _classification(root_detected=False, ssl_detected=False)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=False, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert any("SSL-pinning block signal" in m for m in result.mismatches)


def test_correlate_predicted_false_still_a_mismatch_not_unverified():
    # Only the inconclusive (None) dynamic verdict is UNVERIFIED. A hard False
    # is a real conflict (dynamic ran the bypass and it did not work) -> stays a
    # MISMATCH, and is never relabeled as an untestable inconclusive.
    classification = _classification(root_detected=True, ssl_detected=False)
    verification = VerificationResult(root_bypassed=False, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert len(result.mismatches) == 1
    assert "did not confirm" in result.mismatches[0]
    assert result.unverified == []


def test_correlate_both_mismatch_and_unverified_keeps_both_and_matches_false():
    # Boundary: when one category genuinely disagrees (root) and the other is
    # simply untestable (ssl), BOTH states must be preserved in one result.
    # matches stays False - a disagreement cannot be papered over by the ssl
    # non-conflict - and the ssl inconclusive is NOT promoted to a mismatch
    # (no conflict occurred there; RESID-6F's third state must not collapse).
    classification = _classification(root_detected=True, ssl_detected=True)
    verification = VerificationResult(root_bypassed=False, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert len(result.mismatches) == 1  # the root disagreement
    assert len(result.unverified) == 1  # the ssl inconclusive, kept separate
    assert "could not test" in result.unverified[0]


def test_correlate_ssl_predicted_but_bypass_not_confirmed_is_a_mismatch():
    # correlation.py:48: the SSL mirror of the root "did not confirm" arm. Static
    # predicted SSL-pinning, dynamic ran the bypass and it did NOT confirm -> a
    # real MISMATCH (never UNVERIFIED, which is reserved for the None inconclusive).
    # Real coverage proved the SSL-did-not-confirm arm untested (root had one).
    classification = _classification(root_detected=False, ssl_detected=True)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=False, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert len(result.mismatches) == 1
    assert "did not confirm" in result.mismatches[0]
    assert result.unverified == []


def test_correlate_ssl_bypass_without_prediction_is_a_mismatch():
    # correlation.py:58-61: dynamic confirmed an SSL bypass yet static predicted
    # none -> a real MISMATCH (dynamic and static genuinely disagree). The root
    # mirror was covered; this SSL arm was uncovered.
    classification = _classification(root_detected=False, ssl_detected=False)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=True, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert len(result.mismatches) == 1
    assert "did not predict SSL-pinning" in result.mismatches[0]
    assert result.unverified == []
