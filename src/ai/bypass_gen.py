"""Bypass generation: evidence bundle -> candidate Frida script (structured).

The generator does NOT write the verdict, the report, or anything in the
analysis path. It produces a *candidate* Frida script plus a structured record
of what it tried to hook, so the repair loop (``repair_loop``) can run the script
on the emulator, capture which hooks actually loaded / threw, and feed that back.

The system prompt explicitly requires the model to instrument the script with
error-reporting send()/console.log calls per hook and a top-level try/catch, so
a generated script that throws at runtime is *observable* instead of silently
dead. That is the whole point of the user's "add debug so the AI knows where the
errors happen" requirement.
"""

from __future__ import annotations

import json
from dataclasses import dataclass
from typing import Any

from .client import ChatClient, FakeClient, ClaudeCliClient
from .select_evidence import EvidenceBundle


SYSTEM_PROMPT = """You are a specialist in Android runtime instrumentation for \
authorized security training. You are given a compact evidence bundle extracted \
from ONE target APK: the exact decompiled locations where that app implements \
its own root detection and/or SSL certificate-pinning checks. Your job is to \
write a Frida script that neutralizes ONLY those detected checks so the app runs \
and its network traffic can be observed on an authorized test device/emulator.

Hard constraints:
1. Write a single Frida JavaScript script wrapped in Java.perform(function(){...}).
2. For EVERY hook you install, GUARD it by first checking the target class/method
exists on the device (e.g. Java.enumerateLoadedClasses, or a try around the
class lookup) and emit exactly one structured line:
   - target PRESENT and hooked: send({type:'hook_loaded', name:'<method>', ok:true})
   - target ABSENT (different HTTP stack, or R8 stripped/renamed it):
     send({type:'hook_skipped', name:'<class>', reason:'not present on device'}) and
     MOVE ON - this is NOT an error. A hook that does not apply to this app is not a
     failure, and treating it as one fails the whole run.
   - target present but the hook THREW: send({type:'hook_error', name:'<method>', error:String(e)})
3. Wrap the whole body in a top-level try/catch that sends \
{type:'script_error', error:String(e)} before rethrowing.
4. Hook ONLY the methods/classes present in the evidence bundle. Do NOT invent \
class names not listed. If a class is not present on the device, emit \
hook_skipped (NOT hook_error) and list it under 'skipped'.
5. Prefer the least invasive override: for SSL pinning, neutralize \
X509TrustManager.checkServerTrusted / TrustManagerImpl and OkHttp \
CertificatePinner.check; for root, neutralize the specific isDeviceRooted/RootBeer \
checks found. Do not disable all TLS globally unless the bundle shows no \
specific pinner.
6. Respond with STRICT JSON only, no prose, no markdown fence:
{
  "script": "<full frida js as one string, escaped>",
  "applied_hooks": ["<method or class hooked>"],
  "skipped": ["<class referenced but not present>"],
  "notes": "<one-line rationale>",
  "confidence": "low|medium|high"
}
Return JSON only."""


@dataclass
class GeneratedBypass:
    script: str
    applied_hooks: list[str]
    skipped: list[str]
    notes: str
    confidence: str

    def to_synthesized(self) -> dict[str, Any]:
        """Shape accepted by frida_runner.run_dynamic_stage(synthesized=...)."""
        return {"source": self.script, "applied_hooks": self.applied_hooks}


def _action_text(action: str) -> str:
    return {
        "ROOT_ONLY": "ROOT detection only",
        "SSL_ONLY": "SSL certificate pinning only",
        "BOTH": "BOTH root detection and SSL certificate pinning",
    }.get(action, action)


def generate_bypass(
    bundle: EvidenceBundle,
    client: ChatClient | FakeClient | ClaudeCliClient,
    action: str = "BOTH",
) -> GeneratedBypass:
    """Generate a candidate bypass from an evidence bundle.

    Raises ValueError if the model returns malformed JSON or an empty script.
    """
    if bundle.is_empty():
        raise ValueError(
            "evidence bundle is empty - no root/SSL-pinning regions were found. "
            "The app may not implement detectable checks, or the decompile output "
            "was not provided. Refusing to generate a script from nothing."
        )

    user_prompt = (
        f"Target action required: {_action_text(action)}.\n\n"
        f"{bundle.to_prompt_text()}\n\n"
        "Write the Frida script now. JSON only."
    )

    data = client.complete_json(SYSTEM_PROMPT, user_prompt, temperature=0.2)

    script = (data.get("script") or "").strip()
    if not script:
        raise ValueError(f"model returned an empty script: {data!r}")

    return GeneratedBypass(
        script=script,
        applied_hooks=list(data.get("applied_hooks") or []),
        skipped=list(data.get("skipped") or []),
        notes=str(data.get("notes") or ""),
        confidence=str(data.get("confidence") or "low"),
    )
