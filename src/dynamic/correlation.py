"""Static-vs-dynamic correlation (FR-5). Pure comparison logic - unit-testable anywhere."""

from __future__ import annotations

from common import ClassificationResult, CorrelationResult, VerificationResult


def correlate(classification: ClassificationResult, verification: VerificationResult) -> CorrelationResult:
    mismatches = []
    unverified = []
    coverage_confirmed = []
    matched = []

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
    if not root_predicted and verification.root_bypassed is None and classification.root.coverage_limited:
        # CORR-COVLIM1 (None mirror): static was coverage-limited on root
        # ("unknown, not absent", ADR-0006) - it did NOT certify absence - and
        # dynamic could not confirm a bypass either, so neither engine reached a
        # conclusion. With no arm here it would fall through to a clean MATCH
        # ("static and dynamic agree") - a FALSE agreement, the coverage-limited
        # mirror of the RESID-6F false conflict, blending an uncertified negative
        # into a confident MATCH, which ADR-0006 forbids. Surface it as UNVERIFIED
        # so matches stays False and the headline names the real inconclusive state.
        unverified.append(
            "static analysis was coverage-limited on root-detection (unknown, not absent) and "
            "dynamic verification could not confirm a bypass either - neither engine could certify "
            "this category, so it is inconclusive, not an agreement"
        )
    # ADR-0031: the two agreement cells, which before this ADR were represented
    # only by the ABSENCE of entries - and an empty list is indistinguishable
    # from a category nothing looked at.
    if root_predicted and verification.root_bypassed:
        # The confirmation case: static predicted root and the dynamic bypass
        # confirmed it. No arm in this block tests this cell (every one tests
        # False or None), so a run whose root agreed wrote nothing about it. On
        # UnCrackable Level 1 (2026-09-25) the section rendered UNVERIFIED - the
        # ssl state - with no mention of root, which had agreed on the strongest
        # evidence the pipeline produces.
        matched.append(
            "static analysis predicted root-detection present and the dynamic bypass confirmed it - the two engines agree"
        )
    if (not root_predicted and verification.root_bypassed is None
            and not classification.root.coverage_limited):
        # Not predicted + CONFIDENT negative + bypass None: static certified the
        # absence and dynamic made no contrary finding - agreement by non-claim
        # (both point to "not present"). It is NOT a confirmed absence: `bypassed
        # is None` covers a category the dynamic stage never attempted (a bypass
        # runs only for a predicted one) as well as one it ran without reaching
        # (RESID-6F), so this sentence must never say dynamic confirmed anything.
        matched.append(
            "static analysis found no root-detection and dynamic verification made no contrary finding - agreement by non-claim, not a confirmed absence"
        )

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
    if not ssl_predicted and verification.ssl_bypassed is None and classification.ssl.coverage_limited:
        # CORR-COVLIM1 SSL mirror (None): static was coverage-limited on SSL
        # ("unknown, not absent") and dynamic could not confirm a bypass either -
        # neither engine certified the category. Falling through to MATCH would
        # read as "static and dynamic agree", a false agreement over an
        # uncertified negative (ADR-0006); surface it as UNVERIFIED instead.
        unverified.append(
            "static analysis was coverage-limited on SSL-pinning (unknown, not absent) and "
            "dynamic verification could not confirm a bypass either - neither engine could certify "
            "this category, so it is inconclusive, not an agreement"
        )
    # ADR-0031: the SSL mirror of the two agreement cells above.
    if ssl_predicted and verification.ssl_bypassed:
        matched.append(
            "static analysis predicted SSL-pinning present and the dynamic bypass confirmed it - the two engines agree"
        )
    if (not ssl_predicted and verification.ssl_bypassed is None
            and not classification.ssl.coverage_limited):
        # Same non-claim cell as root: see the note there - the wording must not
        # claim a confirmed absence, because `bypassed is None` is also the state
        # of a category dynamic never attempted.
        matched.append(
            "static analysis found no SSL-pinning and dynamic verification made no contrary finding - agreement by non-claim, not a confirmed absence"
        )

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
        coverage_confirmed=coverage_confirmed, matched=matched,
    )
