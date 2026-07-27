from common import Action, ClassificationResult, CategoryVerdict


def test_classification_result_construction():
    verdict = CategoryVerdict(confidence=0.9, detected=True, evidence=[])
    result = ClassificationResult(
        action=Action.ROOT_ONLY, root=verdict, ssl=verdict, threshold=0.7
    )
    assert result.action == Action.ROOT_ONLY
    assert result.root.confidence == 0.9
