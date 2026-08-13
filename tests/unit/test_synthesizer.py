"""Unit tests for the L-M2 deterministic bypass synthesizer - pure, no Frida/
toolchain (NFR-6/NFR-17). synthesize() takes the classification evidence + action
and returns a Frida JS source string. The core L-M2 guarantee tested here: a real
app with detected techniques (or even none specific) always gets a real bypass
attempt, never a silent "skipped, no bypass script available"."""

import pytest

from common import Action, CategoryVerdict, ClassificationResult, Evidence
from dynamic.synthesizer import ROOT_RECIPES, SSL_RECIPES, synthesize


def _cls(action, root_ids=(), ssl_ids=()):
    root_ev = [Evidence(signature_id=i, file="x", line_or_offset=1, matched_text="") for i in root_ids]
    ssl_ev = [Evidence(signature_id=i, file="x", line_or_offset=1, matched_text="") for i in ssl_ids]
    return ClassificationResult(
        action=action,
        root=CategoryVerdict(confidence=0.8 if root_ids else 0.0, detected=bool(root_ids), evidence=root_ev),
        ssl=CategoryVerdict(confidence=0.8 if ssl_ids else 0.0, detected=bool(ssl_ids), evidence=ssl_ev),
    )


def test_synthesize_root_targeted_hook():
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["root_su_binary_paths"]), Action.ROOT_ONLY)
    assert res.strategy == "targeted"
    assert res.root_hook_count >= 1
    assert res.applied_hooks == ["root_su_binary_paths"]
    assert "/system/bin/su" in res.source
    assert "Java.perform" in res.source


def test_synthesize_ssl_targeted_hook():
    res = synthesize(
        _cls(Action.SSL_ONLY, ssl_ids=["custom_trustmanager_checkservertrusted"]), Action.SSL_ONLY
    )
    assert res.strategy == "targeted"
    assert res.ssl_hook_count >= 1
    assert "checkServerTrusted" in res.source


def test_synthesize_both_root_and_ssl():
    res = synthesize(
        _cls(Action.BOTH, root_ids=["root_su_binary_paths"],
             ssl_ids=["hostname_verifier_always_true"]),
        Action.BOTH,
    )
    assert res.root_hook_count >= 1 and res.ssl_hook_count >= 1
    assert "/system/bin/su" in res.source
    assert "HostnameVerifier" in res.source


def test_synthesize_unmapped_technique_falls_back_to_universal():
    # A detected technique with no dedicated hook (e.g. native root detection)
    # must still produce a real attempt via the category's universal base - the
    # core L-M2 generalization: never a silent skip.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["native_su_binary_embedded"]), Action.ROOT_ONLY)
    assert res.strategy == "universal"
    assert res.universal_categories == ["root"]
    assert res.root_hook_count == 1
    assert "Java.perform" in res.source
    assert "/system/bin/su" in res.source  # universal root neutralizes su paths


def test_synthesize_no_evidence_still_attempts_universal():
    res = synthesize(_cls(Action.SSL_ONLY), Action.SSL_ONLY)
    assert res.strategy == "universal"
    assert res.ssl_hook_count == 1
    assert "checkServerTrusted" in res.source


@pytest.mark.parametrize("action", [Action.ROOT_ONLY, Action.SSL_ONLY, Action.BOTH])
def test_synthesize_never_empty_for_bypass_action(action):
    # L-M2 guarantee: any bypass action yields a real script even with no evidence.
    res = synthesize(_cls(action), action)
    assert res.source, f"synthesize must never emit an empty script for {action}"


def test_synthesize_neither_is_empty():
    assert synthesize(_cls(Action.NEITHER), Action.NEITHER).source == ""


def test_all_recipe_hooks_are_well_formed():
    # Every hand-authored hook must be a structurally balanced snippet - a malformed
    # hook would be a silent runtime failure in the Frida session (principle 3).
    for sid, hook in {**ROOT_RECIPES, **SSL_RECIPES}.items():
        assert hook.count("{") == hook.count("}"), f"{sid}: unbalanced braces"
        assert hook.count("(") == hook.count(")"), f"{sid}: unbalanced parens"
        assert "Java.perform" in hook or "Interceptor" in hook, f"{sid}: no hook API call"
