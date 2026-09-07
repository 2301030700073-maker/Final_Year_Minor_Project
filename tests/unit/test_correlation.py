from common import Action, CategoryVerdict, ClassificationResult, VerificationResult
from dynamic.correlation import correlate

DETECTED = CategoryVerdict(confidence=0.9, detected=True, evidence=[])
NOT_DETECTED = CategoryVerdict(confidence=0.1, detected=False, evidence=[])
# CORR-COVLIM1: detected=False but coverage_limited=True is "unknown, not
# absent" (ADR-0006) - static declined to certify a negative over a surface it
# could not fully analyze. Distinct from NOT_DETECTED, which is a confident
# negative (surface fully analyzed, nothing found).
COVERAGE_LIMITED = CategoryVerdict(
    confidence=0.1, detected=False, evidence=[], coverage_limited=True
)


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


def test_correlate_root_bypass_on_coverage_limited_verdict_is_not_a_mismatch():
    # CORR-COVLIM1: static was coverage-limited on root (detected=False but
    # coverage_limited=True = "unknown, not absent", ADR-0006) - it declined to
    # certify a negative, never claimed one. Dynamic confirming a bypass there is
    # a FILLED coverage gap, not a static/dynamic disagreement. It must NOT land
    # in mismatches (that would blend a confirmed gap with a real static miss and
    # read as the static engine being wrong when it behaved exactly as designed),
    # and matches stays False (static never predicted the positive - not agreement).
    root = COVERAGE_LIMITED
    ssl = NOT_DETECTED
    classification = ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl)
    verification = VerificationResult(root_bypassed=True, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert result.mismatches == []
    assert len(result.coverage_confirmed) == 1
    assert "coverage-limited" in result.coverage_confirmed[0]
    assert "root-detection" in result.coverage_confirmed[0]


def test_correlate_ssl_bypass_on_coverage_limited_verdict_is_not_a_mismatch():
    # CORR-COVLIM1 SSL mirror: a coverage-limited SSL verdict is "unknown, not
    # absent"; dynamic confirming a bypass fills that gap, it is not a conflict.
    root = NOT_DETECTED
    ssl = COVERAGE_LIMITED
    classification = ClassificationResult(action=Action.NEITHER, root=root, ssl=ssl)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=True, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert result.mismatches == []
    assert len(result.coverage_confirmed) == 1
    assert "coverage-limited" in result.coverage_confirmed[0]
    assert "SSL-pinning" in result.coverage_confirmed[0]


def test_correlate_confident_negative_bypass_stays_a_mismatch_not_coverage_confirmed():
    # Regression guard for CORR-COVLIM1: the coverage-limited relabel must gate
    # STRICTLY on coverage_limited=True. A CONFIDENT negative (fully analyzed,
    # nothing found) that dynamic then contradicts is a REAL static miss and must
    # stay a MISMATCH - never softened to coverage-confirmed, which would hide a
    # genuine false negative behind a "filled gap" label.
    classification = _classification(root_detected=False, ssl_detected=False)
    verification = VerificationResult(root_bypassed=True, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert len(result.mismatches) == 1
    assert "did not predict root-detection" in result.mismatches[0]
    assert result.coverage_confirmed == []


def test_correlate_root_coverage_limited_and_bypass_none_is_unverified_not_match():
    # CORR-COVLIM1 (None mirror): static was coverage-limited on root ("unknown,
    # not absent", ADR-0006) and dynamic could not confirm a bypass (None).
    # Neither engine reached a conclusion, so the honest state is UNVERIFIED
    # (inconclusive), NEVER a MATCH ("agree") - that would blend the coverage-
    # limited tier into a confident agreement the engines never made. The gate is
    # STRICT on coverage_limited: a confident negative + None stays a MATCH (the
    # test above), exactly mirroring the bypass=True coverage_confirmed arm.
    classification = ClassificationResult(action=Action.NEITHER, root=COVERAGE_LIMITED, ssl=NOT_DETECTED)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False            # NOT a false "agree"
    assert result.mismatches == []            # not a conflict either
    assert result.coverage_confirmed == []    # no bypass was confirmed
    assert len(result.unverified) == 1
    assert "coverage-limited on root-detection" in result.unverified[0]
    assert "inconclusive" in result.unverified[0]


def test_correlate_ssl_coverage_limited_and_bypass_none_is_unverified_not_match():
    # CORR-COVLIM1 SSL mirror (None): coverage-limited SSL + inconclusive dynamic
    # is UNVERIFIED, not a fabricated MATCH.
    classification = ClassificationResult(action=Action.NEITHER, root=NOT_DETECTED, ssl=COVERAGE_LIMITED)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is False
    assert result.mismatches == []
    assert result.coverage_confirmed == []
    assert len(result.unverified) == 1
    assert "coverage-limited on SSL-pinning" in result.unverified[0]
