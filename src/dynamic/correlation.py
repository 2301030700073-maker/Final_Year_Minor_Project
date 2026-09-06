"""Static-vs-dynamic correlation (FR-5). Pure comparison logic - unit-testable anywhere."""

from __future__ import annotations

from common import ClassificationResult, CorrelationResult, VerificationResult


def correlate(classification: ClassificationResult, verification: VerificationResult) -> CorrelationResult:
    mismatches = []
    unverified = []
    coverage_confirmed = []

    root_predicted = classification.root.detected
    if root_predicted and verification.root_bypassed is False:
        mismatches.append(
            "static analysis predicted root-detection present, but the dynamic bypass did not confirm it"
        )
    if root_predicted and verification.root_bypassed is None:
        # M5: a missing dynamic verdict (not attempted, or ran-but-inconclusive
        # per RESID-6F) is not agreement - matches=True would fabricate a
        # static/dynamic confirmation the evidence never showed. It is also not
        # a conflict: dynamic simply could not test the check (e.g. an app that
        # never reached its root logic), so it is surfaced as UNVERIFIED - a
        # distinct third state, never a MISMATCH that implies static and dynamic
        # disagreed.
        unverified.append(
            "static analysis predicted root-detection present, but dynamic verification could not test a bypass (not attempted or inconclusive)"
        )
    if not root_predicted and verification.root_bypassed:
        if classification.root.coverage_limited:
            # CORR-COVLIM1: static did not CLAIM root-detection was absent - it
            # was coverage-limited ("unknown, not absent", ADR-0006), declining to
            # certify a negative over a surface it could not fully analyze. Dynamic
            # then confirmed a bypass in that gap. That is a confirmed coverage gap,
            # not a static/dynamic disagreement - filing it under mismatches would
            # blend it with a real static miss and read as the static engine being
            # wrong when it behaved exactly as designed.
            coverage_confirmed.append(
                "dynamic analysis confirmed a root-detection bypass in a category whose "
                "static verdict was coverage-limited (unknown, not absent) - dynamic filled "
                "a gap static explicitly declined to certify, not a static/dynamic disagreement"
            )
        else:
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
        # Same RESID-6F completion as root: not agreement, not a conflict -
        # dynamic could not exercise the app's SSL pin logic (e.g. the app was
        # stuck before reaching it), so it is UNVERIFIED, not a MISMATCH.
        unverified.append(
            "static analysis predicted SSL-pinning present, but dynamic verification could not test a bypass (not attempted or inconclusive)"
        )
    if not ssl_predicted and verification.ssl_bypassed:
        if classification.ssl.coverage_limited:
            # CORR-COVLIM1 (SSL mirror): a coverage-limited SSL verdict is "unknown,
            # not absent" - static declined to certify a negative over a surface it
            # could not fully analyze (bundled TLS in a Dart/packed/native region).
            # Dynamic confirming a bypass there is a filled coverage gap, not a
            # disagreement; keep it out of the mismatch tally.
            coverage_confirmed.append(
                "dynamic analysis confirmed an SSL-pinning bypass in a category whose "
                "static verdict was coverage-limited (unknown, not absent) - dynamic filled "
                "a gap static explicitly declined to certify, not a static/dynamic disagreement"
            )
        else:
            mismatches.append(
                "dynamic analysis confirmed an SSL-pinning bypass, but static analysis did not predict SSL-pinning"
            )
    if not ssl_predicted and verification.ssl_bypassed is False:
        # Mirror of the root arm above: False is NOT "dynamic found nothing" - a
        # success check sets an SSL False only in the contradiction branch (hooks
        # fired AND a block signal observed), an anomaly it refuses to resolve
        # either way. Surfacing it here as a mismatch keeps that anomaly visible
        # instead of swallowing it as agreement. (Defensive today - no current
        # SSL success check sets False - but symmetric with the root cell so a
        # future SSL False is never silently treated as agreement.)
        mismatches.append(
            "dynamic analysis observed an SSL-pinning block signal despite no static prediction of SSL-pinning - anomaly, investigate before trusting either signal"
        )
    # not predicted + SSL bypass None (inconclusive): agreement by non-claim, no
    # mismatch arm.

    # matches is True ONLY on full agreement. Neither an unverified prediction
    # (RESID-6F - static predicted, dynamic could not test) nor a coverage-
    # confirmed gap (CORR-COVLIM1 - dynamic confirmed a bypass static was
    # coverage-limited on) is agreement: in both, static and dynamic never made
    # the same positive claim, so matches stays False, never fabricated. Both are
    # also distinct from a MISMATCH (a real conflict), so each keeps its own list
    # and neither pollutes the mismatch tally.
    return CorrelationResult(
        matches=len(mismatches) == 0 and len(unverified) == 0 and len(coverage_confirmed) == 0,
        mismatches=mismatches, unverified=unverified,
        coverage_confirmed=coverage_confirmed,
    )
