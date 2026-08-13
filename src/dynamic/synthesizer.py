"""L-M2: deterministic bypass synthesizer.

The dynamic stage used to require a hand-authored Frida script per exact target
(UnCrackable1/2/3, AndroGoat); anything else degraded to "skipped, no bypass
script available" and real apps were never dynamically verified. This module
closes that gap WITHOUT AI: it composes a targeted Frida script from the
techniques the deterministic signature engine already detected in the static
evidence (ADR-0001 - the synthesizer never decides what is present; it only
turns a detected technique into the matching bypass hook). When a technique has
no dedicated hook, or nothing specific is detected, a deterministic universal
base for the category is used so a real attempt still happens - never a silent
skip.

Pure and fixture-testable anywhere: synthesize() takes the classification
evidence + action and returns a Frida JS source string. No Frida/toolchain
required (NFR-6/NFR-17). The generated script is well-formed (each hook is a
self-contained `Java.perform(...)` block) and deterministic.
"""

from __future__ import annotations

import json
from dataclasses import dataclass, field

from common import Action, ClassificationResult

# --- deterministic recipe catalog --------------------------------------------
# Each entry maps a detected technique (the signature_id the static engine can
# emit) to a targeted, hand-authored Frida hook. This is the "auto-detect ->
# generate a targeted script" pattern (APKShield-PT), kept deterministic: the
# static engine's detection is the sole source of truth, the hook catalog is
# versioned hand-authored code, and composition is pure.


def _file_exists_patch(paths: list[str]) -> str:
    """Patch java.io.File.exists to report false for root-artifact paths."""
    lit = json.dumps(paths)
    return (
        "Java.perform(function () {\n"
        "  var File = Java.use('java.io.File');\n"
        f"  var paths = {lit};\n"
        "  File.exists.implementation = function () {\n"
        "    var p = this.getAbsolutePath();\n"
        "    for (var i = 0; i < paths.length; i++) {\n"
        "      if (p === paths[i] || p.indexOf(paths[i] + '/') === 0) return false;\n"
        "    }\n"
        "    return this.exists();\n"
        "  };\n"
        "});"
    )


ROOT_RECIPES: dict[str, str] = {
    "root_su_binary_paths": _file_exists_patch(
        ["/system/bin/su", "/system/xbin/su", "/sbin/su", "/system/app/Superuser.apk"]
    ),
    "root_su_via_path_env_check": _file_exists_patch(
        ["/system/bin/su", "/system/xbin/su", "/sbin/su"]
    ),
    "root_known_indicator_files": _file_exists_patch(
        ["/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su"]
    ),
    "su_management_apps": _file_exists_patch(
        ["/system/app/Superuser.apk", "/system/app/SuperSU.apk", "/system/app/Magisk.apk"]
    ),
    "magisk_su_binary_paths": _file_exists_patch(
        ["/data/adb/magisk", "/data/adb/ksu", "/sbin/.magisk"]
    ),
    "kernelsu_binary_paths": _file_exists_patch(["/data/adb/ksu", "/data/adb/kernelsu"]),
    "magisk_denylist_artifacts": _file_exists_patch(
        ["/data/adb/magisk", "/data/adb/denylist", "/data/adb/post-fs-data.d"]
    ),
    "zygisk_artifact_paths": _file_exists_patch(["/data/adb/modules/zygisk", "/data/adb/zygisk"]),
    # selinux context strings are checked via getprop/file contexts - the
    # file-exists patch is the pragmatic deterministic hook for the artifacts
    # this signature names.
    "magisk_selinux_context": _file_exists_patch(["/data/adb/magisk"]),
    "root_runtime_exec_su": (
        "Java.perform(function () {\n"
        "  var Runtime = Java.use('java.lang.Runtime');\n"
        "  Runtime.exec.overload('java.lang.String').implementation = function (cmd) {\n"
        "    if (cmd === 'su' || cmd.indexOf('su ') === 0) {\n"
        "      console.log('[synth] blocked su exec: ' + cmd);\n"
        "      return null;\n"
        "    }\n"
        "    return this.exec(cmd);\n"
        "  };\n"
        "});"
    ),
    "root_build_tags_test_keys": (
        "Java.perform(function () {\n"
        "  var Build = Java.use('android.os.Build');\n"
        "  Build.TAGS.value = 'release-keys';\n"
        "  Build.FINGERPRINT.value = Build.FINGERPRINT.value.replace(/test-keys/g, 'release-keys');\n"
        "});"
    ),
    "rootbeer_framework": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var RootBeer = Java.use('com.scottyab.rootbeer.RootBeer');\n"
        "    RootBeer.isRooted.implementation = function () { return false; };\n"
        "    RootBeer.isRootedWithBusyBoxCheck.implementation = function () { return false; };\n"
        "  } catch (e) { console.log('[synth] RootBeer class absent'); }\n"
        "});"
    ),
}

SSL_RECIPES: dict[str, str] = {
    "custom_trustmanager_checkservertrusted": (
        "Java.perform(function () {\n"
        "  var TM = Java.use('javax.net.ssl.X509TrustManager');\n"
        "  TM.checkServerTrusted.implementation = function () {};\n"
        "  TM.checkClientTrusted.implementation = function () {};\n"
        "});"
    ),
    "trust_all_x509_checkservertrusted": (
        "Java.perform(function () {\n"
        "  var TM = Java.use('javax.net.ssl.X509TrustManager');\n"
        "  TM.checkServerTrusted.implementation = function () {};\n"
        "  TM.checkClientTrusted.implementation = function () {};\n"
        "});"
    ),
    # NSC <pin-set> / <pin digest> enforce through the framework TrustManager
    # path - neutralizing checkServerTrusted is the deterministic handle for
    # it, since the pin-set itself is not directly Frida-patchable.
    "network_security_config_pinset": (
        "Java.perform(function () {\n"
        "  var TM = Java.use('javax.net.ssl.X509TrustManager');\n"
        "  TM.checkServerTrusted.implementation = function () {};\n"
        "});"
    ),
    "network_security_config_pin_digest": (
        "Java.perform(function () {\n"
        "  var TM = Java.use('javax.net.ssl.X509TrustManager');\n"
        "  TM.checkServerTrusted.implementation = function () {};\n"
        "});"
    ),
    "hostname_verifier_always_true": (
        "Java.perform(function () {\n"
        "  var HV = Java.use('javax.net.ssl.HostnameVerifier');\n"
        "  HV.verify.implementation = function () { return true; };\n"
        "});"
    ),
    "okhttp_certificate_pinner": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var CP = Java.use('okhttp3.CertificatePinner');\n"
        "    CP.check.overload('java.lang.String', 'java.security.cert.Certificate').implementation = function () {};\n"
        "    CP.check.overload('java.lang.String', 'java.util.List').implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] okhttp3.CertificatePinner absent'); }\n"
        "});"
    ),
    "certificate_pin_hash_literal": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var CP = Java.use('okhttp3.CertificatePinner');\n"
        "    CP.check.overload('java.lang.String', 'java.security.cert.Certificate').implementation = function () {};\n"
        "    CP.check.overload('java.lang.String', 'java.util.List').implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] okhttp3.CertificatePinner absent'); }\n"
        "});"
    ),
    # Native pinning (BoringSSL/OpenSSL). Best-effort deterministic hook on the
    # verifier callback; documented as the native counterpart, not a guarantee.
    "native_ssl_pinning_verify": (
        "var m = Process.findModuleByName('libssl.so');\n"
        "if (m) {\n"
        "  var ssl = Module.findExportByName('libssl.so', 'SSL_CTX_set_verify');\n"
        "  if (ssl) Interceptor.replace(ssl, new NativeCallback(function (ctx, mode) { return 0; }, 'int', ['pointer', 'int']));\n"
        "}"
    ),
    "native_pinning_embedded": (
        "var m = Process.findModuleByName('libssl.so');\n"
        "if (m) {\n"
        "  var ssl = Module.findExportByName('libssl.so', 'SSL_CTX_set_verify');\n"
        "  if (ssl) Interceptor.replace(ssl, new NativeCallback(function (ctx, mode) { return 0; }, 'int', ['pointer', 'int']));\n"
        "}"
    ),
}

# Techniques that get no dedicated hook still earn the category's universal
# base when detected, so the app is never silently skipped (principle 3).
ALL_ROOT_TECHNIQUES = set(ROOT_RECIPES)
ALL_SSL_TECHNIQUES = set(SSL_RECIPES)

UNIVERSAL_ROOT = _file_exists_patch(
    ["/system/bin/su", "/system/xbin/su", "/sbin/su",
     "/system/app/Superuser.apk", "/data/adb/magisk", "/data/adb/ksu"]
)
UNIVERSAL_SSL = (
    "Java.perform(function () {\n"
    "  var TM = Java.use('javax.net.ssl.X509TrustManager');\n"
    "  TM.checkServerTrusted.implementation = function () {};\n"
    "  var HV = Java.use('javax.net.ssl.HostnameVerifier');\n"
    "  HV.verify.implementation = function () { return true; };\n"
    "  try {\n"
    "    var CP = Java.use('okhttp3.CertificatePinner');\n"
    "    CP.check.overload('java.lang.String', 'java.security.cert.Certificate').implementation = function () {};\n"
    "    CP.check.overload('java.lang.String', 'java.util.List').implementation = function () {};\n"
    "  } catch (e) {}\n"
    "});"
)


@dataclass
class SynthesisResult:
    """A deterministic synthesized bypass. source is a complete Frida JS string."""

    source: str
    strategy: str                       # "targeted" | "universal"
    applied_hooks: list[str] = field(default_factory=list)  # technique ids that got a dedicated hook
    root_hook_count: int = 0
    ssl_hook_count: int = 0
    universal_categories: list[str] = field(default_factory=list)


def _matched_ids(evidence) -> list[str]:
    return [e.signature_id for e in evidence]


def _join_script(hooks: list[str], applied: list[str]) -> str:
    checkpoint = "\n".join(f'send({{hook: {json.dumps(h)}}});' for h in applied)
    parts = list(hooks)
    if checkpoint:
        parts.append("setTimeout(function () {\n" + checkpoint + "\n}, 200);")
    return "\n\n".join(parts)


def synthesize(classification: ClassificationResult, action: Action) -> SynthesisResult:
    """Compose a deterministic bypass script from the detected techniques.

    Targeted when the static evidence names techniques with dedicated hooks;
    otherwise (or when only category-level detection exists) falls back to the
    deterministic universal base for each relevant category so a real attempt
    always happens. Pure - no I/O, no Frida."""
    if action == Action.NEITHER:
        return SynthesisResult(source="", strategy="universal", universal_categories=["none"])

    root_ids = set(_matched_ids(classification.root.evidence))
    ssl_ids = set(_matched_ids(classification.ssl.evidence))

    root_hooks: list[str] = []
    ssl_hooks: list[str] = []
    applied: list[str] = []
    universal: list[str] = []

    wants_root = action in (Action.ROOT_ONLY, Action.BOTH)
    wants_ssl = action in (Action.SSL_ONLY, Action.BOTH)

    # Root: apply dedicated hooks for detected root techniques.
    if wants_root and root_ids:
        for tid in sorted(root_ids):
            if tid in ROOT_RECIPES:
                root_hooks.append(ROOT_RECIPES[tid])
                applied.append(tid)
        if not root_hooks:
            # Detected root presence but no technique with a dedicated hook -
            # universal root base so the app is attempted, not skipped.
            root_hooks.append(UNIVERSAL_ROOT)
            universal.append("root")

    # SSL: apply dedicated hooks for detected ssl techniques.
    if wants_ssl and ssl_ids:
        for tid in sorted(ssl_ids):
            if tid in SSL_RECIPES:
                ssl_hooks.append(SSL_RECIPES[tid])
                applied.append(tid)
        if not ssl_hooks:
            ssl_hooks.append(UNIVERSAL_SSL)
            universal.append("ssl")

    # Nothing specific detected but the action still demands a bypass - use the
    # category universal so a real attempt happens (the core L-M2 generalization).
    if not root_hooks and not ssl_hooks:
        if wants_root:
            root_hooks.append(UNIVERSAL_ROOT)
            universal.append("root")
        if wants_ssl:
            ssl_hooks.append(UNIVERSAL_SSL)
            universal.append("ssl")

    all_hooks = root_hooks + ssl_hooks
    source = _join_script(all_hooks, applied)

    return SynthesisResult(
        source=source,
        strategy="targeted" if applied else "universal",
        applied_hooks=applied,
        root_hook_count=len(root_hooks),
        ssl_hook_count=len(ssl_hooks),
        universal_categories=universal,
    )
