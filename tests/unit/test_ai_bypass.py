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

from ai import build_evidence_bundle, repair_loop, get_client, FakeClient
from ai.repair_loop import RunFeedback


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


def test_get_client_requires_key(monkeypatch):
    monkeypatch.delenv("AI_API_KEY", raising=False)
    try:
        get_client()
        assert False, "expected RuntimeError without AI_API_KEY"
    except RuntimeError as e:
        assert "AI_API_KEY" in str(e)
