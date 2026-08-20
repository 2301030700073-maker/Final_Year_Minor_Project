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


# Root-artifact paths shared across the file/hook recipes. Mirrors the union the
# Java File.exists patches already use, so a native probe of the same artifacts
# is hidden too - one source for the path list, no drift between layers.
_ROOT_ARTIFACT_PATHS = [
    "/system/bin/su", "/system/xbin/su", "/sbin/su",
    "/system/app/Superuser.apk", "/system/app/SuperSU.apk", "/system/app/Magisk.apk",
    "/data/adb/magisk", "/data/adb/ksu", "/data/adb/kernelsu", "/data/adb/ap",
    "/data/apatch", "/system/xbin/busybox", "/system/bin/busybox",
    "/data/adb/lspd", "/data/adb/modules/lsposed",
]


def _native_root_path_hiding(paths: list[str]) -> str:
    """Hide root artifacts from a native root check that probes them through
    libc (access/stat/lstat/open/openat/fopen) - the JNI equivalent of the Java
    File.exists patch (L-M2, no native root recipe existed). When the path
    argument matches a root artifact, the call returns failure (ENOENT, or NULL
    for fopen) so the native probe believes the artifact is absent. Deterministic;
    try/catch per symbol so a missing libc export degrades silently. Routed via
    native_su_binary_embedded, which already fires only when root paths are
    embedded in native code (low false-positive, ADR-0006)."""
    lit = json.dumps(paths)
    return (
        "var ROOT_PATHS = " + lit + ";\n"
        "function isRootPath(p) {\n"
        "  if (!p) return false;\n"
        "  try {\n"
        "    var s = p.readUtf8String();\n"
        "    for (var i = 0; i < ROOT_PATHS.length; i++) {\n"
        "      if (s === ROOT_PATHS[i] || s.indexOf(ROOT_PATHS[i] + '/') === 0) return true;\n"
        "    }\n"
        "  } catch (e) {}\n"
        "  return false;\n"
        "}\n"
        "function hidePathProbe(fn, pathArg, failRet) {\n"
        "  try {\n"
        "    var a = Module.findExportByName('libc.so', fn);\n"
        "    if (!a) return;\n"
        "    Interceptor.attach(a, {\n"
        "      onEnter: function (args) { this.hide = isRootPath(args[pathArg]); },\n"
        "      onLeave: function (ret) { if (this.hide) ret.replace(ptr(failRet)); }\n"
        "    });\n"
        "  } catch (e) { console.log('[synth] no ' + fn + ' in libc.so'); }\n"
        "}\n"
        "hidePathProbe('access', 0, -1);\n"
        "hidePathProbe('stat', 0, -1);\n"
        "hidePathProbe('lstat', 0, -1);\n"
        "hidePathProbe('open', 0, -1);\n"
        "hidePathProbe('openat', 1, -1);\n"
        "hidePathProbe('fopen', 0, 0);\n"
    )


def _evasion_base() -> str:
    """Hide the Frida agent from a self-protecting app's anti-instrumentation
    probes (Dex2C-2026 anti-Frida evasion, L-M2). At the libc level, blank any
    line read (getline/fgets) that carries a Frida artifact token, and hide the
    default agent port from /proc/net/tcp reads. The tokens ('frida',
    'gum-js-loop', 'linjector', 're.frida.server', 'frida-server',
    'frida-gadget') are Frida-specific - no benign line contains them - so
    blanking by token is safe without tracking the FILE*. Every hook is
    try/catch-guarded so a missing symbol degrades silently; it only ever hides
    Frida evidence, never changes the app's own behavior (ADR-0001)."""
    return (
        "var TOKENS = ['frida', 'gum-js-loop', 'linjector', 're.frida.server', "
        "'frida-server', 'frida-gadget'];\n"
        "function blankIfTainted(line) {\n"
        "  for (var i = 0; i < TOKENS.length; i++) {\n"
        "    if (line.indexOf(TOKENS[i]) !== -1 || line.indexOf(':27042') !== -1 || "
        "line.indexOf(':69A2') !== -1) {\n"
        "      return '\\n';\n"
        "    }\n"
        "  }\n"
        "  return line;\n"
        "}\n"
        "function hookLineReader(fn) {\n"
        "  var p = Module.findExportByName('libc.so', fn);\n"
        "  if (!p) return;\n"
        "  var isGetline = (fn === 'getline');\n"
        "  Interceptor.attach(p, {\n"
        "    onEnter: function (args) { this.arg0 = args[0]; },\n"
        "    onLeave: function (ret) {\n"
        "      if (ret.isNull()) return;\n"
        "      try {\n"
        "        var buf = isGetline ? this.arg0.readPointer() : this.arg0;\n"
        "        var s = buf.readUtf8String();\n"
        "        if (s) buf.writeUtf8String(blankIfTainted(s));\n"
        "      } catch (e) {}\n"
        "    }\n"
        "  });\n"
        "}\n"
        "try { hookLineReader('getline'); } catch (e) { console.log('[evasion] getline hook unavailable'); }\n"
        "try { hookLineReader('fgets'); } catch (e) { console.log('[evasion] fgets hook unavailable'); }\n"
    )


def _native_ssl_pin_bypass() -> str:
    """Native SSL unpinning across the BoringSSL/OpenSSL family - not just
    libssl.so. Real apps ship BoringSSL inside libcronet.so (gRPC/HTTP3) and
    libconscrypt_jni.so (Conscrypt, Android's default provider), so a libssl-only
    hook misses them. Enumerate loaded modules and patch the verify entrypoints
    (SSL_CTX_set_verify -> 0 / accept; SSL_CTX_set_cert_verify_callback ->
    accept-all) in any of the family. Also neutralizes the modern BoringSSL
    custom-verify API (SSL_CTX_set_custom_verify / SSL_set_custom_verify) used by
    Conscrypt/Cronet/Flutter to pin - each returns 1 (accept) so the custom
    verifier is never installed and the pin check is skipped. Deterministic;
    try/catch so an absent module/symbol degrades silently."""
    return (
        "var MODULES = ['libssl.so', 'libcronet.so', 'libconscrypt_jni.so', "
        "'libboringssl.so', 'libssl_openssl.so'];\n"
        "var names = Process.enumerateModules().map(function (m) { return m.name; });\n"
        "for (var i = 0; i < MODULES.length; i++) {\n"
        "  if (names.indexOf(MODULES[i]) === -1) continue;\n"
        "  try {\n"
        "    var sv = Module.findExportByName(MODULES[i], 'SSL_CTX_set_verify');\n"
        "    if (sv) Interceptor.replace(sv, new NativeCallback(function (ctx, mode) { return 0; }, 'int', ['pointer', 'int']));\n"
        "  } catch (e) { console.log('[synth] no SSL_CTX_set_verify in ' + MODULES[i]); }\n"
        "  try {\n"
        "    var cv = Module.findExportByName(MODULES[i], 'SSL_CTX_set_cert_verify_callback');\n"
        "    if (cv) Interceptor.replace(cv, new NativeCallback(function (ctx, cb, a) { return 1; }, 'int', ['pointer', 'pointer', 'pointer']));\n"
        "  } catch (e) { console.log('[synth] no cert_verify_callback in ' + MODULES[i]); }\n"
        "  try {\n"
        "    var cus = Module.findExportByName(MODULES[i], 'SSL_CTX_set_custom_verify');\n"
        "    if (cus) Interceptor.replace(cus, new NativeCallback(function (ctx, mode, cb) { return 1; }, 'int', ['pointer', 'int', 'pointer']));\n"
        "  } catch (e) { console.log('[synth] no SSL_CTX_set_custom_verify in ' + MODULES[i]); }\n"
        "  try {\n"
        "    var cus2 = Module.findExportByName(MODULES[i], 'SSL_set_custom_verify');\n"
        "    if (cus2) Interceptor.replace(cus2, new NativeCallback(function (ssl, mode, cb) { return 1; }, 'int', ['pointer', 'int', 'pointer']));\n"
        "  } catch (e) { console.log('[synth] no SSL_set_custom_verify in ' + MODULES[i]); }\n"
        "}\n"
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
    # Real-world root tooling beyond the classic Magisk/KingUser set: APatch
    # (kernel-patching root), KernelSU manager, BusyBox install, LSPosed, and
    # LuckyPatcher each leave distinct artifact paths the app probes. Each gets
    # its own file-exists patch so the check is neutralized by path, not skipped.
    "apatch_binary_paths": _file_exists_patch(["/data/adb/ap", "/data/adb/apd", "/data/apatch"]),
    "apatch_manager_package": _file_exists_patch(["/data/adb/ap", "/data/adb/apd", "/data/apatch"]),
    "kernelsu_manager_package": _file_exists_patch(["/data/adb/ksu", "/data/adb/kernelsu"]),
    "busybox_binary_paths": _file_exists_patch(["/system/xbin/busybox", "/system/bin/busybox", "/sbin/busybox"]),
    "lsposed_manager": _file_exists_patch(["/data/adb/lspd", "/data/adb/modules/lsposed", "/data/adb/lsposed"]),
    "lucky_patcher_root_tool": _file_exists_patch(
        ["/system/app/LuckyPatcher.apk", "/system/priv-app/LuckyPatcher.apk", "/data/app/lucky.patcher"]
    ),
    # Native root path-hiding (was the one native root gap - zero native root
    # recipes before this): when the app embeds root-artifact paths in native
    # code (native_su_binary_embedded fires, low-FP), hide them from libc
    # access/stat/open/fopen probes so a JNI root check believes the artifact is
    # absent - the native counterpart to the Java File.exists patch above.
    "native_su_binary_embedded": _native_root_path_hiding(_ROOT_ARTIFACT_PATHS),
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
    # Conscrypt (Android's default TLS provider) installs its own
    # com.android.org.conscrypt.TrustManagerImpl rather than the raw
    # javax.net.ssl.X509TrustManager the generic recipes hook. Neutralize its
    # chain-verification entrypoints directly so a Conscrypt-backed app is
    # unpinned without relying on the interface dispatch.
    "pin_conscrypt_trustmanagerimpl": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var TMI = Java.use('com.android.org.conscrypt.TrustManagerImpl');\n"
        "    TMI.checkServerTrusted.implementation = function () {};\n"
        "    TMI.verifyChain.implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] Conscrypt TrustManagerImpl absent'); }\n"
        "});"
    ),
    # OkHttp4 is Kotlin; its CertificatePinner exposes the same check() entrypoints
    # but under Kotlin-compiled overloads. try/catch over both the string+List and
    # string+Certificate forms so whichever the app actually uses is neutralized.
    "okhttp4_kotlin_certificate_pinner": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var CP = Java.use('okhttp3.CertificatePinner');\n"
        "    CP.check.overload('java.lang.String', 'java.security.cert.Certificate').implementation = function () {};\n"
        "    CP.check.overload('java.lang.String', 'java.util.List').implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] okhttp3.CertificatePinner absent'); }\n"
        "});"
    ),
    # A WebView that shows the SSL error dialog via onReceivedSslError still
    # blocks the connection unless the handler is told to proceed. Call
    # handler.proceed() so the cert error is tolerated.
    "webview_ssl_error_handler_proceed": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var WVC = Java.use('android.webkit.WebViewClient');\n"
        "    WVC.onReceivedSslError.implementation = function (view, handler, error) {\n"
        "      handler.proceed();\n"
        "    };\n"
        "  } catch (e) { console.log('[synth] WebViewClient absent'); }\n"
        "});"
    ),
    # TrustKit (com.datatheorem.android.trustkit) is the standard pinning lib in
    # banking/fintech apps. It installs its own PinningTrustManager (a
    # TrustManager) plus an OkHttp CertificatePinner. Neutralize the
    # PinningTrustManager chain check and the okhttp pin check so a TrustKit
    # pinned app is unpinned deterministically.
    "trustkit_pinning": (
        "Java.perform(function () {\n"
        "  try {\n"
        "    var PTM = Java.use('com.datatheorem.android.trustkit.PinningTrustManager');\n"
        "    PTM.checkServerTrusted.implementation = function () {};\n"
        "    PTM.verifyChain.implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] TrustKit PinningTrustManager absent'); }\n"
        "  try {\n"
        "    var CP = Java.use('okhttp3.CertificatePinner');\n"
        "    CP.check.overload('java.lang.String', 'java.security.cert.Certificate').implementation = function () {};\n"
        "    CP.check.overload('java.lang.String', 'java.util.List').implementation = function () {};\n"
        "  } catch (e) { console.log('[synth] okhttp3.CertificatePinner absent'); }\n"
        "});"
    ),
    # Native pinning (BoringSSL/OpenSSL family). _native_ssl_pin_bypass enumerates
    # the loaded modules (libssl / libcronet / libconscrypt_jni / libboringssl)
    # and neutralizes the verify entrypoints in each - covering gRPC-over-Cronet
    # and Conscrypt native pinning, not just libssl.so.
    "native_ssl_pinning_verify": _native_ssl_pin_bypass(),
    "native_pinning_embedded": _native_ssl_pin_bypass(),
    # A native cert-verify callback (SSL_CTX_set_cert_verify_callback) is exactly
    # what _native_ssl_pin_bypass neutralizes (accept-all) - route it there.
    "native_ssl_custom_verify_callback": _native_ssl_pin_bypass(),
}

# Signatures that are alternate spellings of the same SSL-control technique
# route through the existing neutralizers rather than duplicating a hook:
# SSLContext.init-with-TrustManager and a custom SSLSocketFactory both funnel into
# X509TrustManager.checkServerTrusted (trust-all); set_default_hostname_verifier
# and a HostnameVerifier set are the same verify-returns-true neutralization.
SSL_RECIPES["sslcontext_init_with_trustmanager"] = SSL_RECIPES["custom_trustmanager_checkservertrusted"]
SSL_RECIPES["custom_sslsocketfactory"] = SSL_RECIPES["custom_trustmanager_checkservertrusted"]
SSL_RECIPES["set_default_hostname_verifier"] = SSL_RECIPES["hostname_verifier_always_true"]
SSL_RECIPES["hostname_verifier_set"] = SSL_RECIPES["hostname_verifier_always_true"]

# --- Alternate spellings routed to existing proven neutralizers (root) ---------
# Many root signatures are the same artifact/exec checks under different names or
# path variants. Routing them through the matching hook yields a targeted bypass
# instead of the category universal - equivalent coverage, no duplicated body to
# drift. selinux-permissiveness probes and root-cloaking detectors are root checks
# carried out via Runtime.exec, so the exec-su neutralizer is their handle.
ROOT_RECIPES["su_alternate_binary_paths"] = ROOT_RECIPES["root_su_binary_paths"]
ROOT_RECIPES["magisk_alternate_managers"] = ROOT_RECIPES["magisk_su_binary_paths"]
ROOT_RECIPES["magisk_module_dirs"] = ROOT_RECIPES["magisk_denylist_artifacts"]
ROOT_RECIPES["root_tools_library"] = ROOT_RECIPES["root_known_indicator_files"]
ROOT_RECIPES["setenforce_permissive"] = ROOT_RECIPES["root_runtime_exec_su"]
ROOT_RECIPES["selinux_access_probe"] = ROOT_RECIPES["root_runtime_exec_su"]
ROOT_RECIPES["root_cloaking_detection"] = ROOT_RECIPES["root_runtime_exec_su"]
# A build.prop probe (ro.build.tags / ro.build.type) is the same test-keys check
# the build-tags hook already neutralizes - route it there.
ROOT_RECIPES["build_props_probe"] = ROOT_RECIPES["root_build_tags_test_keys"]

# --- Alternate spellings routed to existing proven neutralizers (SSL) ---------
# Custom X509 key/trust managers and wrapper checkers (Netty FingerprintTMF,
# Flutter SSL plugin, CWAC-NetSecurity, PhoneGap/Worklight, Appcelerator) funnel
# into X509TrustManager.checkServerTrusted - trust-all neutralizes them.
for _sid in (
    "custom_x509keymanager",
    "custom_x509extended_trustmanager",
    "certificate_factory_x509",
    "pin_netty_fingerprint_tmf",
    "pin_flutter_http_cert",
    "pin_flutter_sslpinning_plugin",
    "pin_cwac_netsecurity",
    "pin_phonegap_ssl_checker",
    "pin_ibm_worklight",
    "pin_appcelerator_https",
):
    SSL_RECIPES[_sid] = SSL_RECIPES["custom_trustmanager_checkservertrusted"]
# HostnameVerifier-family (Apache/Boyle abstract verifiers, Worklight, okhttp set):
# verify-returns-true neutralizes the host check.
for _sid in (
    "okhttp_hostname_verifier_set",
    "pin_apache_abstractverifier",
    "pin_boye_abstractverifier",
    "pin_worklight_hostname_verifier",
):
    SSL_RECIPES[_sid] = SSL_RECIPES["hostname_verifier_always_true"]
# SSLSocketFactory-family: a custom socket factory (HurlStack, setSSLSocketFactory)
# still installs the trust-all TrustManager underneath.
for _sid in ("hurlstack_sslsocketfactory", "set_sslsocketfactory"):
    SSL_RECIPES[_sid] = SSL_RECIPES["custom_trustmanager_checkservertrusted"]
# React-Native ssl-pinning lib ships a CertificatePinner under okhttp - route it.
SSL_RECIPES["rn_ssl_pinning_library"] = SSL_RECIPES["okhttp_certificate_pinner"]
# Cronet is Chromium/BoringSSL in libcronet.so - the native module-family verify
# bypass (SSL_CTX_set_verify / cert_verify_callback) is its deterministic handle.
SSL_RECIPES["cronet_cert_verifier"] = SSL_RECIPES["native_ssl_pinning_verify"]
SSL_RECIPES["pin_cronet_add_public_key_pins"] = SSL_RECIPES["native_ssl_pinning_verify"]
# Pin-literal signatures (SHA-1 / SPKI-SHA-256 pin strings, addHost pin lists,
# certificate pin expectations) are all okhttp CertificatePinner techniques -
# neutralize check() for each.
for _sid in ("sha1_pin_hash_literal", "spki_sha256_pin", "expect_certificate_pin",
             "certificate_pinner_add_host"):
    SSL_RECIPES[_sid] = SSL_RECIPES["okhttp_certificate_pinner"]

# --- Signatures intentionally left unmapped (honest boundary, not a gap) -------
# These fall to the category universal base when detected - the deterministic
# handle is defeating the underlying signal, never fabricating a result:
#  * server-verified remote device attestation signatures - the only honest
#    bypass is defeating the root evidence the attestation inspects (the universal
#    root base). A locally-faked token would fail server validation and silently
#    lie (principle 3 / ADR-0006). These signatures legitimately DETECT that the
#    app uses attestation (in scope); nothing here defeats its verification (an
#    explicit, documented non-goal).
#  * certificate_transparency_verifier - CT is not pinning; no single hook.
#  * keystore_set_certificate_entry / nsc_user_cert_trust - CA-store trust, not a
#    per-connection pin the app enforces.

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


def _join_script(hooks: list[str], checkpoint_ids: list[str]) -> str:
    checkpoint = "\n".join(f'send({{hook: {json.dumps(h)}}});' for h in checkpoint_ids)
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

    # Anti-instrumentation evasion: when the app is detected as self-protecting
    # (it probes for Frida/Substrate), the injected agent is itself the target -
    # prepend the evasion base so the bypass survives, then the targeted hooks.
    # Findings-driven and conditional: a benign app never gets it. Deterministic.
    anti_instrumentation = {"frida_detection", "cydia_substrate_detection", "native_frida_detection"}
    evasion_hooks: list[str] = []
    if root_ids & anti_instrumentation:
        evasion_hooks.append(_evasion_base())
        applied.append("evasion")

    wants_root = action in (Action.ROOT_ONLY, Action.BOTH)
    wants_ssl = action in (Action.SSL_ONLY, Action.BOTH)

    # Root: apply dedicated hooks for detected root techniques.
    if wants_root and root_ids:
        for tid in sorted(root_ids):
            if tid in ROOT_RECIPES:
                root_hooks.append(ROOT_RECIPES[tid])
                applied.append(tid)
        # Any detected root technique without a dedicated hook (server-verified
        # device attestation, Xposed, Riru - no clean single hook) still gets
        # the universal root base as a SUPPLEMENT to any targeted hooks. Defeating
        # the underlying root evidence is the only honest handle for those; the
        # universal base complements, never replaces, the targeted hooks. This
        # closes the gap where a mixed mapped+unmapped detection previously ran
        # only the mapped hook and silently skipped the rest.
        if not root_hooks or any(tid not in ROOT_RECIPES for tid in root_ids):
            root_hooks.append(UNIVERSAL_ROOT)
            universal.append("root")

    # SSL: apply dedicated hooks for detected ssl techniques.
    if wants_ssl and ssl_ids:
        for tid in sorted(ssl_ids):
            if tid in SSL_RECIPES:
                ssl_hooks.append(SSL_RECIPES[tid])
                applied.append(tid)
        # Same supplement rule: any detected ssl technique without a dedicated
        # hook (CT verifier, CA-store trust) earns the universal SSL base too, so
        # a mixed detection is fully covered, never partially skipped.
        if not ssl_hooks or any(tid not in SSL_RECIPES for tid in ssl_ids):
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

    all_hooks = evasion_hooks + root_hooks + ssl_hooks
    # Checkpoints for the technology-level "hooks engaged" signal cover BOTH the
    # dedicated recipe hooks AND the category universal base (labelled
    # universal:<cat>). Without this, a bypass that only used the universal base
    # would emit no checkpoint and the signal would silently read "none" even
    # though the bypass ran (RS_CertPinning exposed this).
    checkpoint_ids = list(applied) + [f"universal:{c}" for c in universal]
    source = _join_script(all_hooks, checkpoint_ids)

    return SynthesisResult(
        source=source,
        strategy="targeted" if applied else "universal",
        applied_hooks=applied,
        root_hook_count=len(root_hooks),
        ssl_hook_count=len(ssl_hooks),
        universal_categories=universal,
    )
