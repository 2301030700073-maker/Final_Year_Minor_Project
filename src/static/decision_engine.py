"""Deterministic classification (FR-3). The sole source of truth for detection - see ADR-0001."""

from __future__ import annotations

from common import Action, CategoryVerdict, ClassificationResult, StaticEvidence

DEFAULT_THRESHOLD = 0.7


def classify(static_evidence: StaticEvidence, threshold: float = DEFAULT_THRESHOLD) -> ClassificationResult:
    root_detected = static_evidence.root_confidence >= threshold
    ssl_detected = static_evidence.ssl_confidence >= threshold

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

    return ClassificationResult(action=action, root=root, ssl=ssl, threshold=threshold)
