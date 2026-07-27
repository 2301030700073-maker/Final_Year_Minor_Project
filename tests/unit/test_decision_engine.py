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


def test_confidence_capped_at_one():
    # StaticEvidence itself is responsible for capping (see signatures.scan);
    # decision_engine just has to not choke on / misclassify an edge value.
    evidence = StaticEvidence(root_confidence=1.0, ssl_confidence=1.0)
    result = classify(evidence)
    assert result.root.confidence == 1.0
    assert result.action == Action.BOTH
