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
    # M5: a predicted-positive whose dynamic bypass ran but was inconclusive
    # (bypassed=None, RESID-6F) is NOT agreement - matches=True would fabricate
    # a static/dynamic confirmation the evidence never showed.
    classification = _classification(root_detected=True, ssl_detected=False)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert any("inconclusive" in m for m in result.mismatches)


def test_correlate_inconclusive_ssl_verdict_is_not_a_match():
    classification = _classification(root_detected=False, ssl_detected=True)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert any("SSL-pinning" in m and "inconclusive" in m for m in result.mismatches)
