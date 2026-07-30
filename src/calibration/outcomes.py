"""The correctness-critical bucket definitions for the two-tier calibration
design (ADR-0006, FR-9). Get this file wrong and the whole "measured, not
asserted" claim is unsound regardless of what the report layer does with
it - so this stays deliberately small, pure, and separately tested one
bucket at a time.

Why two tiers, not one: using the pipeline's own dynamic-verification
outcome (`bypassed`) as ground truth has a structural blind spot. Dynamic
bypass is only ever attempted for a category the static side already
predicted positive (see dynamic/frida_runner.py's NEITHER short-circuit) -
so `bypassed` can never populate a false negative, and a "not confirmed"
result doesn't distinguish "wasn't really there" from "the bypass
technique just failed" (the exact ambiguity dynamic/success_checks/
uncrackable1.py's docstring documents fighting off once already, when
absence-of-block-signal alone was tried as a success signal and proved
unreliable).

Tier 1 (this module's Tier1Outcome) answers "is today's bypass technique
working," using only the pipeline's own runs - no external ground truth
needed, but structurally unable to prove absence.

Tier 2 (Tier2Outcome) answers "is the static verdict actually correct,"
built from the *static* `detected` field against an independently-sourced
ground-truth registry (config/ground_truth.yaml) - never from `bypassed`.
Building Tier 2 from `bypassed` instead would collapse it into Tier 1 (it
could still never populate FN or reliable TN) and defeat the entire
reason for maintaining a registry.
"""

from __future__ import annotations

from enum import Enum


class Tier1Outcome(str, Enum):
    NOT_APPLICABLE = "not_applicable"  # not predicted detected - the structural blind spot itself
    UNVERIFIED = "unverified"           # predicted detected, dynamic verification didn't run this run
    CONFIRMED = "confirmed"             # predicted detected, dynamic bypass empirically confirmed it
    NOT_CONFIRMED = "not_confirmed"     # predicted detected, dynamic ran but didn't confirm - NEVER "false_positive"


class Tier2Outcome(str, Enum):
    NO_GROUND_TRUTH = "no_ground_truth"    # this apk/category has no independently-established answer yet
    TRUE_POSITIVE = "true_positive"
    FALSE_POSITIVE = "false_positive"
    FALSE_NEGATIVE = "false_negative"       # only reachable through the registry, never through live pipeline data
    TRUE_NEGATIVE = "true_negative"


def classify_tier1(detected: bool, bypassed: bool | None) -> Tier1Outcome:
    if not detected:
        return Tier1Outcome.NOT_APPLICABLE
    if bypassed is None:
        return Tier1Outcome.UNVERIFIED
    return Tier1Outcome.CONFIRMED if bypassed else Tier1Outcome.NOT_CONFIRMED


def classify_tier2(detected: bool, ground_truth: bool | None) -> Tier2Outcome:
    if ground_truth is None:
        return Tier2Outcome.NO_GROUND_TRUTH
    if detected and ground_truth:
        return Tier2Outcome.TRUE_POSITIVE
    if detected and not ground_truth:
        return Tier2Outcome.FALSE_POSITIVE
    if not detected and ground_truth:
        return Tier2Outcome.FALSE_NEGATIVE
    return Tier2Outcome.TRUE_NEGATIVE
