"""Deterministic classification (FR-3). The sole source of truth for detection - see ADR-0001."""

from __future__ import annotations

from common import Action, CategoryVerdict, ClassificationResult, StaticEvidence

DEFAULT_THRESHOLD = 0.7


def classify(
    static_evidence: StaticEvidence,
    root_threshold: float = DEFAULT_THRESHOLD,
    ssl_threshold: float = DEFAULT_THRESHOLD,
) -> ClassificationResult:
    """Independent per-category detection thresholds (4-3) - root and ssl are
    distinct signal classes and should be tunable/calibrated separately, not
    forced to share one number the way settings.yaml already anticipated."""
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
    )
