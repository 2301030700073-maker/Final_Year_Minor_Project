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
5. Prefer the least invasive override. For SSL pinning hook the APP's own pinning \
layer, NOT the platform/system trust manager:
   - okhttp3.CertificatePinner.check -> return (accept any pinned host)
   - okhttp3.internal.tls.OkHostnameVerifier.verify -> return true
   - Only if the bundle shows the app implements its OWN X509TrustManager, hook THAT \
class. Do NOT blanket-patch the platform's com.android.org.conscrypt.TrustManagerImpl: \
it is the SYSTEM trust manager (standard cert validation), so a TRUSTED test CA already \
passes with no hook at all, AND it sits on the native TLS handshake path where a bad \
hook CRASHES the app (frida-agent SIGSEGV, or a return-type throw). For root, \
neutralize the specific isDeviceRooted/RootBeer checks found. Do not disable all TLS \
globally unless the bundle shows no specific pinner.
6. RETURN TYPES MUST MATCH, PER OVERLOAD. When you replace a method, your implementation \
must return exactly that overload's declared return type. A mismatch is a RUNTIME crash, \
not a no-op: frida-java-bridge throws "Implementation for <method> expected return value \
compatible with <type>" the first time the app calls it (e.g. a void `return;` for a \
Conscrypt checkServerTrusted/checkTrusted that returns java.util.List). Inspect each \
overload's returnType and return a matching value (void->nothing, boolean->true, \
java.util.List->an empty java.util.ArrayList, etc.). Prefer a helper that passes the \
overload into your implementation factory so it can branch on returnType.
7. Respond with STRICT JSON only, no prose, no markdown fence:
{
  "script": "<full frida js as one string, escaped>",
  "applied_hooks": ["<method or class hooked>"],
  "skipped": ["<class referenced but not present>"],
  "notes": "<one-line rationale>",
  "confidence": "low|medium|high"
}
Your process - do ALL of this before you answer:
1. READ the evidence: enumerate EVERY root check and EVERY SSL-pinning check the app implements.
2. PLAN: for each check, decide the exact class.method to hook and how to guard it.
3. WRITE the script, hooking EVERY detected check for the required action.
4. VERIFY it mentally before returning: every class name must come from the bundle; every
   hook must be guarded; every path must emit exactly one hook_loaded / hook_skipped /
   hook_error; the JSON must be valid and the script must parse.
5. If the device feedback from a previous attempt is given, DIAGNOSE the exact error, fix
   THAT cause (wrong overload, renamed class, return-type mismatch), and never repeat it.
   In particular: "expected return value compatible with <type>" means your replacement
   returned the WRONG type for that overload - fix the return type or drop that hook; and
   a frida-agent SIGSEGV / app crash during a real HTTPS call means you hooked the platform
   Conscrypt TrustManagerImpl in the handshake path - move to the OkHttp CertificatePinner /
   OkHostnameVerifier layer instead. Never keep a hook whose device error shows it kills the
   app; a crashed app is a FAILED attempt, not a partial success.

Be honest: if a detected check lives OUTSIDE the Java stack (WebView/Chromium native TLS,
React-Native/Hermes), say so in 'notes' and list it under 'skipped' - never claim a hook you
cannot install, and never fabricate success.

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
