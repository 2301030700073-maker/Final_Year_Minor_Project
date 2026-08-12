"""Deterministic classification (FR-3). The sole source of truth for detection - see ADR-0001."""

from __future__ import annotations

from common import Action, CategoryVerdict, ClassificationResult, Evidence, StaticEvidence

DEFAULT_THRESHOLD = 0.7


def _assert_homogeneous_deterministic(evidence: list[Evidence]) -> None:
    """Reject any non-deterministic evidence tier before it can be blended into
    a static confidence score (principle 2 / ADR-0001)."""
    for e in evidence:
        if e.verification_state != "deterministic_matched":
            raise ValueError(
                f"evidence '{e.signature_id}' has tier '{e.verification_state}' "
                f"in the static classification path - a static confidence may "
                f"only aggregate deterministic_matched evidence (principle 2 / "
                f"ADR-0001); a non-deterministic tier must stay out of the "
                f"blend until independently verified."
            )


def classify(
    static_evidence: StaticEvidence,
    root_threshold: float = DEFAULT_THRESHOLD,
    ssl_threshold: float = DEFAULT_THRESHOLD,
) -> ClassificationResult:
    """Independent per-category detection thresholds (4-3) - root and ssl are
    distinct signal classes and should be tunable/calibrated separately, not
    forced to share one number the way settings.yaml already anticipated."""
    # principle 2 / ADR-0001: a static classification may only be built from
    # deterministic_matched evidence. This is the consumer that makes
    # Evidence.verification_state non-decorative - if any AI-hypothesized or
    # dynamically-typed tier ever reaches classify(), aggregating it into a
    # single confidence score would blend tiers, exactly what principle 2
    # forbids. Fail loudly rather than blend. (All current evidence is
    # deterministic by construction, so this is a forward guard, not a path
    # that fires on the present corpus.)
    _assert_homogeneous_deterministic(static_evidence.root_evidence)
    _assert_homogeneous_deterministic(static_evidence.ssl_evidence)

    root_detected = static_evidence.root_confidence >= root_threshold
    ssl_detected = static_evidence.ssl_confidence >= ssl_threshold

    root = CategoryVerdict(
        confidence=static_evidence.root_confidence,
        detected=root_detected,
        evidence=static_evidence.root_evidence,
    )
    ssl = CategoryVerdict(
        confidence=static_evidence.ssl_confidence,
        detected=ssl_detected,
        evidence=static_evidence.ssl_evidence,
    )

    if root_detected and ssl_detected:
        action = Action.BOTH
    elif root_detected:
        action = Action.ROOT_ONLY
    elif ssl_detected:
        action = Action.SSL_ONLY
    else:
        action = Action.NEITHER

    return ClassificationResult(
        action=action, root=root, ssl=ssl,
        root_threshold=root_threshold, ssl_threshold=ssl_threshold,
        scanned_file_count=static_evidence.scanned_file_count,
        unreadable_file_count=static_evidence.unreadable_file_count,
        # RESID-4F observability: carry the capped-signature counts through so
        # the report can state how many matches a signature actually produced.
        evidence_capped_counts=static_evidence.capped_counts,
    )
