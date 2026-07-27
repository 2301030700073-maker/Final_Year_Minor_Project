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
    return ClassificationResult(action=action, root=root, ssl=ssl, threshold=0.7)


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
