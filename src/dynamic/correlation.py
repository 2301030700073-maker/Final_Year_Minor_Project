"""Static-vs-dynamic correlation (FR-5). Pure comparison logic - unit-testable anywhere."""

from __future__ import annotations

from common import ClassificationResult, CorrelationResult, VerificationResult


def correlate(classification: ClassificationResult, verification: VerificationResult) -> CorrelationResult:
    mismatches = []

    root_predicted = classification.root.detected
    if root_predicted and verification.root_bypassed is False:
        mismatches.append(
            "static analysis predicted root-detection present, but the dynamic bypass did not confirm it"
        )
    if root_predicted and verification.root_bypassed is None:
        # M5: a missing dynamic verdict (not attempted, or ran-but-inconclusive
        # per RESID-6F) is not agreement - matches=True would fabricate a
        # static/dynamic confirmation the evidence never showed. It reads as
        # unverified, so it is surfaced as a mismatch.
        mismatches.append(
            "static analysis predicted root-detection present, but dynamic verification did not confirm a bypass (not attempted or inconclusive)"
        )
    if not root_predicted and verification.root_bypassed:
        mismatches.append(
            "dynamic analysis confirmed a root-detection bypass, but static analysis did not predict root-detection"
        )
    if not root_predicted and verification.root_bypassed is False:
        # False is NOT "dynamic found nothing" - the success checks set False
        # only in the contradiction branch (hooks confirmed fired AND a block
        # signal observed, uncrackable1.py:81-90), an anomaly they refuse to
        # resolve either way. Surfacing it here as a mismatch keeps that
        # anomaly visible instead of swallowing it as agreement. (Reachable
        # only defensively today - a root bypass runs only when root is
        # predicted - so this is future-proofing, not a live path.)
        mismatches.append(
            "dynamic analysis observed a root-detection block signal despite no static prediction of root-detection - anomaly, investigate before trusting either signal"
        )
    # not predicted + bypass None (inconclusive): static said absent, dynamic
    # never confirmed anything - agreement by non-claim, so no mismatch arm.

    ssl_predicted = classification.ssl.detected
    if ssl_predicted and verification.ssl_bypassed is False:
        mismatches.append(
            "static analysis predicted SSL-pinning present, but the dynamic bypass did not confirm it"
        )
    if ssl_predicted and verification.ssl_bypassed is None:
        mismatches.append(
            "static analysis predicted SSL-pinning present, but dynamic verification did not confirm a bypass (not attempted or inconclusive)"
        )
    if not ssl_predicted and verification.ssl_bypassed:
        mismatches.append(
            "dynamic analysis confirmed an SSL-pinning bypass, but static analysis did not predict SSL-pinning"
        )
    # not predicted + SSL bypass None (inconclusive): agreement by non-claim, no
    # mismatch arm. (No current success check sets an SSL False, so that cell is
    # not reached either way.)

    return CorrelationResult(matches=len(mismatches) == 0, mismatches=mismatches)
