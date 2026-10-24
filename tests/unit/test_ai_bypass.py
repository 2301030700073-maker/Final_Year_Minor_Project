"""Tests for the AI augmentation layer (src/ai) using a FakeClient + fake runner.

These verify the generate -> run -> revise loop end-to-end WITHOUT any network
call or device. The real provider (agentrouter / deepseek-v4-flash) is only
exercised at runtime with a real key; here we prove the mechanics are correct
and bounded.
"""

import json
import os
import tempfile
from pathlib import Path

import pytest

from ai import build_evidence_bundle, repair_loop, get_client, FakeClient
from ai.bypass_gen import GeneratedBypass, generate_bypass
from ai.client import _extract_json
from ai.repair_loop import RunFeedback, classify_dynamic_run_once
from ai.select_evidence import EvidenceBundle, SelectedRegion


def _make_decompile_tree(root: Path) -> None:
    """Write a tiny synthetic decompiled tree with detectable root/SSL regions."""
    base = root / "sources" / "com" / "example"
    base.mkdir(parents=True, exist_ok=True)
    (base / "RootCheck.java").write_text(
        "package com.example;\n"
        "public class RootCheck {\n"
        "  public boolean isDeviceRooted() {\n"          # ROOT keyword
        "    return new File('/system/bin/su').exists();\n"  # ROOT keyword
        "  }\n"
        "}\n"
    )
    (base / "Pinning.java").write_text(
        "package com.example;\n"
        "public class Pinning {\n"
        "  void setup(OkHttpClient b) {\n"
        "    b.certificatePinner(new CertificatePinner.Builder().build());\n"  # SSL
        "  }\n"
        "  class TM implements X509TrustManager {\n"      # SSL
        "    public void checkServerTrusted(java.security.cert.X509Certificate[] c, String a) {}\n"  # SSL
        "  }\n"
        "}\n"
    )
    (base / "Noise.java").write_text(
        "package com.example;\npublic class Noise { int x = 1; }\n"
    )


def test_build_evidence_bundle_finds_regions():
    with tempfile.TemporaryDirectory() as td:
        root = Path(td)
        _make_decompile_tree(root)
        bundle = build_evidence_bundle(root, target="com.example")
        assert len(bundle.root_regions) >= 2
        assert len(bundle.ssl_regions) >= 3
        assert "isDeviceRooted" in bundle.keywords_hit
        assert "X509TrustManager" in bundle.keywords_hit
        # The bundle text must be bounded and non-empty.
        text = bundle.to_prompt_text()
        assert "Evidence bundle for target: com.example" in text
        assert bundle.total_chars > 0
        assert bundle.total_chars <= 12000


def test_bypass_gen_rejects_empty_bundle():
    bundle = build_evidence_bundle(Path(tempfile.mkdtemp()), target="empty")
    client = FakeClient()
    # Empty bundle -> ValueError, never a blind generation.
    try:
        from ai.bypass_gen import generate_bypass
        generate_bypass(bundle, client)
        assert False, "expected ValueError for empty bundle"
    except ValueError:
        pass


def test_repair_loop_converges_when_runner_ok():
    with tempfile.TemporaryDirectory() as td:
        root = Path(td)
        _make_decompile_tree(root)
        bundle = build_evidence_bundle(root, target="com.example")
        client = FakeClient()
        calls = {"n": 0}

        def runner(source, hooks):
            calls["n"] += 1
            return RunFeedback(ok=True, messages=["hook_loaded: X509TrustManager.checkServerTrusted ok:true"])

        # save_dir inside the temp tree so the test never pollutes the repo's
        # src/dynamic/scripts/ai_generated/ output location.
        res = repair_loop(bundle, client, run_once=runner, max_iter=5,
                          save_dir=str(root / "out"))
        assert res.converged is True
        assert res.iterations == 1
        assert calls["n"] == 1
        assert res.saved_path and os.path.exists(res.saved_path)
        # Saved script carries the human-review header.
        saved = Path(res.saved_path).read_text()
        assert "AI-GENERATED" in saved and "HUMAN REVIEW REQUIRED" in saved
        # No real API key was consulted.
        assert client.calls  # at least the initial generation call happened


def test_repair_loop_revises_until_ok():
    with tempfile.TemporaryDirectory() as td:
        root = Path(td)
        _make_decompile_tree(root)
        bundle = build_evidence_bundle(root, target="com.example")
        # error_after=2 means the fake script "fails" on iterations 1 and 2, then works.
        client = FakeClient(error_after=2)
        attempts = []

        def runner(source, hooks):
            attempts.append(source)
            if "INJECTED_FAULT" in source:
                return RunFeedback(ok=False, messages=["error: ReferenceError: foo is not defined"])
            return RunFeedback(ok=True, messages=["hook_loaded ok:true"])

        res = repair_loop(bundle, client, run_once=runner, max_iter=5,
                          save_dir=str(root / "out"))
        # It must have iterated past the failing attempts and converged.
        assert res.converged is True
        assert res.iterations >= 3
        assert calls_count(client) >= 3  # 1 gen + >=2 revises
        # The final saved script has no injected fault.
        saved = Path(res.saved_path).read_text()
        assert "INJECTED_FAULT" not in saved


def calls_count(client):
    return len(client.calls)


def test_classify_failed_carries_stage_error_into_feedback():
    """A failed stage must tell the model WHY it failed.

    Regression: notes was the bare string "stage_status=failed", so result.error
    - the only place the attach/hook/timeout cause is recorded - never reached the
    revision prompt. The model therefore had nothing to act on and re-emitted an
    identical script (observed on UnCrackable-2: two iterations, 5372 chars each,
    5 hooks loaded, status=failed both times).
    """
    from types import SimpleNamespace

    result = SimpleNamespace(
        status="failed",
        error="frida attach timed out after 120s",
        evidence={"frida_messages": [
            {"type": "send", "payload": {"type": "hook_loaded", "name": "x"}},
        ]},
    )
    fb = classify_dynamic_run_once(result)
    assert fb.ok is False
    assert "frida attach timed out after 120s" in fb.notes
    assert "hook_loaded=1" in fb.notes


def test_classify_failed_without_error_still_notes_status():
    from types import SimpleNamespace

    result = SimpleNamespace(status="failed", error=None,
                             evidence={"frida_messages": []})
    fb = classify_dynamic_run_once(result)
    assert fb.ok is False
    assert fb.notes == "stage_status=failed"


def test_get_client_requires_key(monkeypatch, tmp_path):
    # "Requires a key" must mean no key ANYWHERE. The http backend now
    # consults the project .env as a fallback (matching the claude-cli
    # backend), so deleting the env var alone no longer models the
    # no-configuration host - run from a directory with no .env in it.
    monkeypatch.delenv("AI_API_KEY", raising=False)
    monkeypatch.chdir(tmp_path)
    monkeypatch.setattr("ai.client._find_project_env", lambda: {})
    try:
        get_client()
        assert False, "expected RuntimeError without AI_API_KEY"
    except RuntimeError as e:
        assert "AI_API_KEY" in str(e)


# --- Audit hardening: pure parsing + seam contract + bounded-loop guarantees ---

def test_extract_json_handles_fences_and_garbage():
    # Plain JSON.
    assert _extract_json('{"a": 1}') == {"a": 1}
    # ```json fenced.
    assert _extract_json('```json\n{"a": 1}\n```') == {"a": 1}
    # Bare ``` fence.
    assert _extract_json('```\n{"a": 2}\n```') == {"a": 2}
    # Prose wrapping a JSON object.
    assert _extract_json('here you go:\n{"a": 3}\n done') == {"a": 3}
    # Genuine garbage must raise, never silently return {}.
    with pytest.raises(ValueError):
        _extract_json("not json at all")


def test_generated_bypass_to_synthesized_locks_frida_runner_seam():
    # frida_runner.run_dynamic_stage reads synthesized["source"] and
    # synthesized.get("applied_hooks", []); this pins the contract so the two
    # modules cannot drift apart silently.
    gb = GeneratedBypass(
        script="Java.perform(function(){});",
        applied_hooks=["X509TrustManager.checkServerTrusted"],
        skipped=[], notes="n", confidence="low",
    )
    synth = gb.to_synthesized()
    assert set(synth.keys()) == {"source", "applied_hooks"}
    assert synth["source"] == gb.script
    assert synth["applied_hooks"] == gb.applied_hooks


def test_generate_bypass_rejects_empty_script_from_model():
    bundle = build_evidence_bundle(_make_decompile_tree_scoped(), target="com.example")

    class EmptyScriptClient:
        def complete_json(self, system, user, *, temperature=0.2):
            return {"script": "", "applied_hooks": [], "skipped": [], "notes": "", "confidence": "low"}

    with pytest.raises(ValueError):
        generate_bypass(bundle, EmptyScriptClient())


def test_repair_loop_is_bounded_when_runner_always_fails():
    with tempfile.TemporaryDirectory() as td:
        root = Path(td)
        _make_decompile_tree(root)
        bundle = build_evidence_bundle(root, target="com.example")
        # error_after=99 -> the fake script never "heals", so the loop must hit
        # max_iter and report failure rather than spinning forever.
        client = FakeClient(error_after=99)

        def runner(source, hooks):
            return RunFeedback(ok=False, messages=["error: boom at runtime"])

        res = repair_loop(
            bundle, client, run_once=runner, max_iter=4, save_dir=str(root / "out")
        )
        assert res.converged is False
        assert res.iterations == 4
        assert len(res.history) == 4
        # The last (still-faulty) script is ALWAYS saved for human review.
        assert res.saved_path and os.path.exists(res.saved_path)


def test_to_prompt_text_truncates_oversized_bundle():
    bundle = EvidenceBundle(target="big")
    snippet = "x" * 80
    for i in range(20):
        bundle.ssl_regions.append(
            SelectedRegion(path="/a/b.java", line=i, snippet=snippet, keyword="pin")
        )
    # Unbounded render (huge cap) gives the full length to compare against.
    full = bundle.to_prompt_text(max_chars=1_000_000)
    capped = bundle.to_prompt_text(max_chars=200)
    # The cap never blows the context: body is cut to the cap, a marker is
    # appended, so total stays at cap + marker overhead.
    assert "truncated" in capped
    assert len(capped) < len(full)
    assert len(capped) <= 200 + len("\n... [bundle truncated to fit context window]")


def _make_decompile_tree_scoped() -> Path:
    """Same synthetic tree as _make_decompile_tree but returns the temp root."""
    root = Path(tempfile.mkdtemp())
    _make_decompile_tree(root)
    return root


# --- defect #1: ai-bypass run_once must read REAL evidence, not a dead callback ---
class _FakeStageResult:
    """Minimal duck-typed stand-in for frida_runner.StageResult."""

    def __init__(self, status: str, frida_messages=None):
        self.status = status
        self.evidence = {"frida_messages": list(frida_messages or [])}


def test_classify_skipped_is_not_ok():
    res = _FakeStageResult("skipped", [])
    fb = classify_dynamic_run_once(res)
    assert fb.ok is False
    assert "skipped" in fb.notes


def test_classify_failed_is_not_ok():
    res = _FakeStageResult("failed", [])
    fb = classify_dynamic_run_once(res)
    assert fb.ok is False
    assert "failed" in fb.notes


def test_classify_success_with_hook_loaded_and_no_errors_is_ok():
    res = _FakeStageResult("success", [
        {"type": "send",
         "payload": {"type": "hook_loaded",
                     "name": "X509TrustManager.checkServerTrusted"}},
    ])
    fb = classify_dynamic_run_once(res)
    assert fb.ok is True


def test_classify_success_without_hook_loaded_is_not_ok():
    # HONESTY: a process can survive the settle window while the generated
    # script's hooks never loaded. The old code collapsed this to ok=True and the
    # repair loop converged on a script that never actually ran cleanly.
    res = _FakeStageResult("success", [
        {"type": "send", "payload": {"type": "probeHit", "root": "answered-false"}},
    ])
    fb = classify_dynamic_run_once(res)
    assert fb.ok is False
    assert fb.notes.endswith("hook_loaded=0; hook_skipped=0; hook_errors=0")


def test_classify_success_with_hook_error_is_not_ok():
    res = _FakeStageResult("success", [
        {"type": "send", "payload": {"type": "hook_loaded", "name": "x"}},
        {"type": "error",
         "description": "TypeError: cannot read property of undefined"},
    ])
    fb = classify_dynamic_run_once(res)
    assert fb.ok is False
    assert "hook_errors=1" in fb.notes


def test_classify_success_with_hook_skipped_does_not_fail():
    # A hook whose target class/method is ABSENT on the device (a different
    # HTTP stack, or an R8-obfuscated app that stripped/renamed it) is a
    # graceful skip, NOT an error. Before the hook_skipped distinction this
    # was a hook_error and failed the whole loop - jerboa / aves / file-manager
    # could not converge even though their other hooks loaded cleanly.
    res = _FakeStageResult("success", [
        {"type": "send", "payload": {"type": "hook_loaded",
                                    "name": "TrustManagerImpl.checkTrusted"}},
        {"type": "send", "payload": {"type": "hook_skipped",
                                    "name": "okhttp3.CertificatePinner",
                                    "reason": "not present"}},
    ])
    fb = classify_dynamic_run_once(res)
    assert fb.ok is True
    assert "hook_skipped=1" in fb.notes


def test_classify_success_with_only_hook_skipped_is_not_ok():
    # Nothing actually loaded -> still not ok, even though nothing errored.
    res = _FakeStageResult("success", [
        {"type": "send", "payload": {"type": "hook_skipped",
                                    "name": "okhttp3.CertificatePinner",
                                    "reason": "not present"}},
    ])
    fb = classify_dynamic_run_once(res)
    assert fb.ok is False
    assert "hook_skipped=1" in fb.notes


def test_classify_success_with_script_error_payload_is_not_ok():
    res = _FakeStageResult("success", [
        {"type": "send", "payload": {"type": "script_error", "error": "boom"}},
    ])
    fb = classify_dynamic_run_once(res)
    assert fb.ok is False


def test_cli_run_once_calls_classify_directly_not_via_module_alias():
    # Regression guard for the name-shadowing bug: ai/__init__.py re-exports the
    # repair_loop *function* (not the submodule), so cli.py's original
    # `return repair_loop.classify_dynamic_run_once(result)` raised
    # AttributeError at the real device step and killed the AI demo. _run_once
    # must call the imported `classify_dynamic_run_once` directly.
    cli_src = (Path(__file__).resolve().parents[2] / "src" / "cli.py").read_text()
    assert "repair_loop.classify_dynamic_run_once" not in cli_src
    assert "classify_dynamic_run_once(result)" in cli_src


def test_system_prompt_encodes_crash_and_capture_lessons():
    # Regression guard for the two real on-device defects fixed by hardening the
    # generator prompt (SYSTEM_PROMPT). Both were reproduced this session:
    #  (1) CRASH - a generated script replaced Conscrypt's
    #      TrustManagerImpl.checkServerTrusted (which RETURNS java.util.List)
    #      with a void no-op; frida-java-bridge threw "Implementation for
    #      checkServerTrusted expected return value compatible with java.util.List"
    #      inside the TLS handshake and killed the app (PropertyGuru "frozen on
    #      login / not responding"). The prompt must (a) forbid blanket-patching
    #      the platform Conscrypt system trust manager and (b) require per-
    #      overload return-type matching, and the repair loop must treat the
    #      frida-agent SIGSEGV as a self-repair signal.
    #  (2) 0-FLOW CAPTURE - a pinner-only generated script left a custom-trust-
    #      store app (PropertyGuru) rejecting the mitmproxy CA, so the capture
    #      got 0 flows. The prompt must MANDATE the permissive SSLContext.init
    #      X509TrustManager catch-all that makes such an app decrypt.
    from ai.bypass_gen import SYSTEM_PROMPT
    # (1a) never blanket-patch the platform Conscrypt system trust manager
    assert "Do NOT blanket-patch the platform's com.android.org.conscrypt.TrustManagerImpl" in SYSTEM_PROMPT
    # (1b) per-overload return-type matching (the exact crash signature)
    assert "RETURN TYPES MUST MATCH, PER OVERLOAD" in SYSTEM_PROMPT
    assert "expected return value compatible with" in SYSTEM_PROMPT
    # (1c) the frida-agent SIGSEGV is a hard self-repair signal
    assert "a frida-agent SIGSEGV / app crash during a real HTTPS call" in SYSTEM_PROMPT
    # (2) always install the permissive SSLContext.init TrustManager catch-all
    assert "ALWAYS also install a permissive X509TrustManager via javax.net.ssl.SSLContext.init" in SYSTEM_PROMPT
    assert "javax.net.ssl.X509TrustManager" in SYSTEM_PROMPT
