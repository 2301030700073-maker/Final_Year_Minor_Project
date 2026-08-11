"""Decision engine test cases per the Phase 1 plan.

'Inconclusive' (FR-3.2) is a report-rendering concept, not a distinct engine
state: any category with detected=False is rendered as Inconclusive by the
report generator regardless of how much partial evidence it carries. These
tests check the underlying detected/confidence/evidence fields directly.
"""

from common import Action, Evidence, StaticEvidence
from static.decision_engine import classify

SOME_EVIDENCE = [Evidence(signature_id="x", file="A.java", line_or_offset=1, matched_text="x")]


def test_true_positive_both():
    evidence = StaticEvidence(root_confidence=0.9, ssl_confidence=0.8)
    result = classify(evidence)
    assert result.action == Action.BOTH
    assert result.root.detected is True
    assert result.ssl.detected is True


def test_true_negative_neither():
    evidence = StaticEvidence()
    result = classify(evidence)
    assert result.action == Action.NEITHER
    assert result.root.detected is False
    assert result.ssl.detected is False


def test_boundary_at_threshold():
    evidence = StaticEvidence(root_confidence=0.70, ssl_confidence=0.0)
    result = classify(evidence)
    assert result.root.detected is True
    assert result.action == Action.ROOT_ONLY


def test_boundary_just_below():
    evidence = StaticEvidence(root_confidence=0.69, ssl_confidence=0.0)
    result = classify(evidence)
    assert result.root.detected is False
    assert result.action == Action.NEITHER


def test_root_only_ssl_evidence_retained():
    evidence = StaticEvidence(
        root_confidence=0.9, ssl_confidence=0.3, ssl_evidence=SOME_EVIDENCE
    )
    result = classify(evidence)
    assert result.action == Action.ROOT_ONLY
    assert result.ssl.detected is False
    assert result.ssl.evidence == SOME_EVIDENCE  # retained even though not detected


def test_per_category_thresholds_are_independent():
    # 4-3: root and ssl no longer share one threshold. At root_threshold=0.8
    # vs ssl_threshold=0.5, a 0.7-root/0.6-ssl evidence set is ssl-only.
    evidence = StaticEvidence(root_confidence=0.7, ssl_confidence=0.6)
    result = classify(evidence, root_threshold=0.8, ssl_threshold=0.5)
    assert result.root.detected is False   # 0.7 < 0.8
    assert result.ssl.detected is True     # 0.6 >= 0.5
    assert result.action == Action.SSL_ONLY
    assert result.root_threshold == 0.8
    assert result.ssl_threshold == 0.5


def test_confidence_capped_at_one():
    # StaticEvidence itself is responsible for capping (see signatures.scan);
    # decision_engine just has to not choke on / misclassify an edge value.
    evidence = StaticEvidence(root_confidence=1.0, ssl_confidence=1.0)
    result = classify(evidence)
    assert result.root.confidence == 1.0
    assert result.action == Action.BOTH


def test_classify_refuses_to_blend_non_deterministic_evidence():
    # principle 2 / ADR-0001: verification_state is the consumer of the
    # evidence tier. A non-deterministic tier (AI-hypothesized) reaching the
    # static classification path would be blended into a deterministic
    # confidence score - exactly what principle 2 forbids. classify() must
    # fail loudly rather than blend.
    import pytest as _pytest
    from common import Evidence as _Evidence

    bad = _Evidence(
        signature_id="ai_hypothesis_root",
        file="A.java", line_or_offset=1, matched_text="root",
        verification_state="ai_hypothesized_unverified",
    )
    evidence = StaticEvidence(root_confidence=0.9, root_evidence=[bad])
    with _pytest.raises(ValueError, match="may only aggregate deterministic_matched"):
        classify(evidence)
