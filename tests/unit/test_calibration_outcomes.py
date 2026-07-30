from calibration.outcomes import Tier1Outcome, Tier2Outcome, classify_tier1, classify_tier2


def test_tier1_not_applicable_when_not_detected():
    assert classify_tier1(detected=False, bypassed=None) == Tier1Outcome.NOT_APPLICABLE


def test_tier1_unverified_when_detected_but_dynamic_never_ran():
    assert classify_tier1(detected=True, bypassed=None) == Tier1Outcome.UNVERIFIED


def test_tier1_confirmed_when_bypass_succeeded():
    assert classify_tier1(detected=True, bypassed=True) == Tier1Outcome.CONFIRMED


def test_tier1_not_confirmed_never_called_false_positive():
    # The whole point of the two-tier split: this is ambiguous between
    # "wasn't really there" and "the bypass technique just failed" - it
    # must never be relabeled false_positive, matching the exact mistake
    # dynamic/success_checks/uncrackable1.py's docstring documents fighting
    # off once already (absence-of-block-signal proved unreliable).
    result = classify_tier1(detected=True, bypassed=False)
    assert result == Tier1Outcome.NOT_CONFIRMED
    assert result != Tier2Outcome.FALSE_POSITIVE


def test_tier2_no_ground_truth_when_registry_has_no_answer():
    assert classify_tier2(detected=True, ground_truth=None) == Tier2Outcome.NO_GROUND_TRUTH
    assert classify_tier2(detected=False, ground_truth=None) == Tier2Outcome.NO_GROUND_TRUTH


def test_tier2_true_positive():
    assert classify_tier2(detected=True, ground_truth=True) == Tier2Outcome.TRUE_POSITIVE


def test_tier2_false_positive():
    assert classify_tier2(detected=True, ground_truth=False) == Tier2Outcome.FALSE_POSITIVE


def test_tier2_false_negative_only_reachable_through_registry():
    # This is the literal empirical proof the two-tier design closes the
    # blind spot it claims to close - a false negative can ONLY come from
    # the independently-sourced registry, never from the pipeline's own
    # bypassed field (dynamic bypass is never even attempted when detected
    # is False, so bypassed alone could never produce this case).
    assert classify_tier2(detected=False, ground_truth=True) == Tier2Outcome.FALSE_NEGATIVE


def test_tier2_true_negative():
    assert classify_tier2(detected=False, ground_truth=False) == Tier2Outcome.TRUE_NEGATIVE
