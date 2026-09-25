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


def test_correlate_ssl_predicted_and_confirmed_is_a_match():
    # The SSL mirror of test_correlate_matches_when_prediction_confirmed (the root
    # happy path). The primary real-world SSL outcome - static detected pinning AND
    # dynamic confirmed the bypass - is genuine agreement (a deterministic_matched +
    # dynamically_confirmed finding), so NO arm fires and matches stays True. Root's
    # happy path was locked; this SSL one was not, so a future change wrongly adding
    # an arm on (ssl_predicted and ssl_bypassed is True) would flag the main SSL
    # success as a mismatch/unverified with no test to catch it.
    classification = _classification(root_detected=False, ssl_detected=True)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=True, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is True
    assert result.mismatches == []
    assert result.unverified == []
    assert result.coverage_confirmed == []


def test_correlate_both_predicted_and_confirmed_is_a_match():
    # The strongest confirmed case: BOTH categories detected statically AND both
    # bypasses dynamically confirmed. Both fall through with no arm firing -> a
    # clean full MATCH. This is the only test exercising two simultaneous positive-
    # and-confirmed categories (test 1 pairs root-confirmed with an ssl non-claim;
    # the ssl test above pairs ssl-confirmed with a root non-claim).
    classification = _classification(root_detected=True, ssl_detected=True)
    verification = VerificationResult(root_bypassed=True, ssl_bypassed=True, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matches is True
    assert result.mismatches == []
    assert result.unverified == []
    assert result.coverage_confirmed == []


# -- ADR-0031: agreement is recorded per category, never left as an empty list --


def test_a_confirmed_bypass_is_recorded_as_a_per_category_match():
    # UnCrackable Level 1, 2026-09-25: root predicted and confirmed, ssl
    # coverage-limited and untested. The section rendered UNVERIFIED - the ssl
    # state - and said nothing at all about root, which had agreed on the
    # strongest evidence the pipeline produces.
    classification = ClassificationResult(
        action=Action.ROOT_ONLY, root=DETECTED, ssl=COVERAGE_LIMITED
    )
    verification = VerificationResult(root_bypassed=True, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert len(result.matched) == 1
    assert "root-detection" in result.matched[0]
    assert "confirmed it" in result.matched[0]
    # The rest of the record is unmoved: ssl is still the inconclusive category,
    # and no run-level agreement is fabricated.
    assert len(result.unverified) == 1 and "SSL-pinning" in result.unverified[0]
    assert result.mismatches == [] and result.coverage_confirmed == []
    assert result.matches is False


def test_agreement_by_non_claim_is_recorded_but_never_as_a_confirmed_absence():
    # Neither category predicted, coverage complete, dynamic no contrary finding.
    # `bypassed is None` is ALSO the state of a category the dynamic stage never
    # attempted (a bypass runs only for a predicted category) or ran without
    # reaching (RESID-6F), so the sentence must not claim dynamic confirmed
    # anything - that would be a fresh instance of the class this ADR fixes.
    classification = _classification(root_detected=False, ssl_detected=False)
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert len(result.matched) == 2
    for entry in result.matched:
        assert "no contrary finding" in entry
        assert "non-claim" in entry
        assert "not a confirmed absence" in entry
    assert result.matches is True
    assert result.mismatches == [] and result.unverified == []


def test_a_coverage_limited_negative_is_never_recorded_as_agreement():
    # The sibling cell: same (False, None) shape, but coverage was incomplete, so
    # static declined to certify the negative. The gate is the coverage flag, not
    # the bypass value - this must land in unverified, never in matched.
    classification = ClassificationResult(
        action=Action.NEITHER, root=COVERAGE_LIMITED, ssl=COVERAGE_LIMITED
    )
    verification = VerificationResult(root_bypassed=None, ssl_bypassed=None, evidence_lines={})

    result = correlate(classification, verification)

    assert result.matched == []
    assert len(result.unverified) == 2
    assert result.matches is False


def test_a_mismatch_leaves_the_agreeing_category_in_matched():
    # Per-category, not per-run: root agreed and ssl disagreed, so the record
    # carries both rather than the run-level MISMATCH verdict hiding the
    # agreement - the same defect from the other side.
    classification = _classification(root_detected=True, ssl_detected=True)
    verification = VerificationResult(root_bypassed=True, ssl_bypassed=False, evidence_lines={})

    result = correlate(classification, verification)

    assert len(result.matched) == 1 and "root-detection" in result.matched[0]
    assert len(result.mismatches) == 1 and "SSL-pinning" in result.mismatches[0]
    assert result.matches is False


def test_every_category_lands_in_exactly_one_list_across_the_whole_table():
    # The ADR-0031 completeness property, swept over all 81 cells of the table
    # (3 verdict shapes x 3 verdict shapes x 3 root bypass values x 3 ssl bypass
    # values): each category is named by EXACTLY ONE of the four lists. Before
    # this ADR the two agreement cells wrote nothing, which is what made "agreed"
    # and "never looked at" the same bytes; the sweep is what keeps a future arm
    # from silently double-writing or dropping a category.
    verdicts = [NOT_DETECTED, COVERAGE_LIMITED, DETECTED]
    for root_v in verdicts:
        for ssl_v in verdicts:
            for rb in (True, False, None):
                for sb in (True, False, None):
                    cls = ClassificationResult(
                        action=Action.NEITHER, root=root_v, ssl=ssl_v
                    )
                    ver = VerificationResult(
                        root_bypassed=rb, ssl_bypassed=sb, evidence_lines={}
                    )
                    result = correlate(cls, ver)
                    lists = {
                        "mismatches": result.mismatches,
                        "unverified": result.unverified,
                        "coverage_confirmed": result.coverage_confirmed,
                        "matched": result.matched,
                    }
                    where = {}
                    for name, entries in lists.items():
                        for entry in entries:
                            for cat, token in (("root", "root-detection"), ("ssl", "SSL-pinning")):
                                if token in entry:
                                    where.setdefault(cat, []).append(name)
                    cell = (root_v.detected, root_v.coverage_limited, rb,
                            ssl_v.detected, ssl_v.coverage_limited, sb)
                    assert sorted(where) == ["root", "ssl"], (cell, where)
                    for cat, names in where.items():
                        assert len(names) == 1, (cell, cat, names)


def test_regenerated_correlation_carries_the_agreement_and_never_guesses_one():
    # REGEN-FIELDLOSS1: a field the reconstructor does not read is a field a
    # regenerated report silently loses - and a row stored before the field
    # existed reports [] rather than a fabricated agreement.
    from cli import _correlation_from_json

    stored = {
        "matches": False,
        "mismatches": [],
        "unverified": ["static analysis was coverage-limited on SSL-pinning"],
        "coverage_confirmed": [],
        "matched": ["static analysis predicted root-detection present and the dynamic bypass confirmed it"],
    }
    rebuilt = _correlation_from_json(stored)
    assert rebuilt.matched == stored["matched"]
    assert rebuilt.unverified == stored["unverified"]
    legacy = {k: v for k, v in stored.items() if k != "matched"}
    assert _correlation_from_json(legacy).matched == []
