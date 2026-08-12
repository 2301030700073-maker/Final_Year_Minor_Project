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
    # not predicted + bypass is False/None: static said root-detection absent
    # and dynamic found nothing to confirm - agreement, deliberately no mismatch
    # arm. Stated explicitly (rather than falling through silently) so the full
    # truth table is auditable: this cell cannot fabricate a confirmation the
    # evidence never showed, so it is a match, not a conflict.

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
    # not predicted + SSL bypass False/None: agreement, as for root above - the
    # cell is match by design, made explicit so the truth table stays complete.

    return CorrelationResult(matches=len(mismatches) == 0, mismatches=mismatches)
