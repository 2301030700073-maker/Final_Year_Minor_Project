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
    # A detected technique with no dedicated hook (e.g. Riru - no clean single
    # hook, unlike native_su_binary_embedded which now routes to the native
    # path-hiding recipe) must still produce a real attempt via the category's
    # universal base - the core L-M2 generalization: never a silent skip.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["riru_framework"]), Action.ROOT_ONLY)
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


def test_synthesize_prepends_evasion_when_anti_instrumentation_detected():
    # A self-protecting app (detected Frida/Substrate probe) must get the evasion
    # base FIRST so the injected agent survives long enough to run the bypass -
    # findings-driven, deterministic, never AI. It is a dedicated (applied) hook.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["frida_detection"]), Action.ROOT_ONLY)
    assert "evasion" in res.applied_hooks
    assert "gum-js-loop" in res.source          # evasion base marker
    # evasion must precede the root bypass so the agent is hidden before the
    # app's anti-instrumentation probe runs.
    assert res.source.index("gum-js-loop") < res.source.index("Java.perform")


def test_synthesize_prepends_evasion_for_native_anti_instrumentation():
    res = synthesize(_cls(Action.BOTH, root_ids=["native_frida_detection"],
                          ssl_ids=["okhttp_certificate_pinner"]), Action.BOTH)
    assert "evasion" in res.applied_hooks
    assert "gum-js-loop" in res.source


def test_evasion_scrubs_maps_raw_reads_not_just_line_readers():
    # The most common native anti-Frida check raw-READs /proc/self/maps (open +
    # read) and scans for the injected agent - which bypasses the getline/fgets
    # line-reader hooks. The evasion base must also track maps fds/FILE*s opened
    # on /proc/self/maps and scrub the same Frida-only tokens from read/fread, so
    # a Dex2C scanner cannot see the agent and kill the bypass.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["native_frida_detection"]), Action.ROOT_ONLY)
    assert "evasion" in res.applied_hooks
    src = res.source
    assert "blankTokens" in src
    assert "MAPS_FDS" in src
    assert "isTrackedProcPath" in src
    assert "'/proc'" in src and "'/maps'" in src
    # raw-read scrub hooks wired
    assert "findExportByName('libc.so', 'read')" in src
    assert "findExportByName('libc.so', 'fread')" in src
    # scrub only ever overwrites the Frida-only tokens with '.' (46), never app state
    assert "arr[i + j] = 46" in src


def test_evasion_tracks_net_tcp_raw_reads_for_port_scan():
    # A native anti-Frida check also raw-READs /proc/net/tcp to find the default
    # agent port - line-based reads were already covered by getline/fgets, but a
    # raw open+read was not, so a port-scan detector could see :27042/:69A2. The
    # same tracked-fd scrub must include /proc/net/tcp (blankTokens already blanks
    # the port tokens).
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["native_frida_detection"]), Action.ROOT_ONLY)
    assert "'/net/tcp'" in res.source
    assert "':27042'" in res.source and "':69A2'" in res.source


def test_synthesize_no_evasion_without_anti_instrumentation():
    # A benign app (no Frida/Substrate probe) must NOT get the evasion base.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["root_su_binary_paths"]), Action.ROOT_ONLY)
    assert "evasion" not in res.applied_hooks
    assert "gum-js-loop" not in res.source


def test_native_recipe_enumerates_ssl_modules_not_just_libssl():
    # Native unpinning must cover the BoringSSL/OpenSSL family wherever it lives,
    # not a hardcoded module-name list. The bypass scans EVERY loaded .so for the
    # verify symbols, so gRPC-over-Cronet (libcronet), Flutter dart:io
    # (libflutter), or a renamed vendored BoringSSL are all covered regardless of
    # which module hosts the app's TLS stack - gRPC/Cronet pinning is never missed.
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["native_ssl_pinning_verify"]), Action.SSL_ONLY)
    assert "Process.enumerateModules" in res.source
    assert ".so" in res.source
    assert "SSL_CTX_set_verify" in res.source
    assert "SSL_CTX_set_cert_verify_callback" in res.source
    assert "SSL_CTX_set_custom_verify" in res.source


def test_conscrypt_recipe_fires_for_its_signature_id():
    # Conscrypt TrustManagerImpl pinning (detected via the verifyChain idiom)
    # must route to the Conscrypt TrustManagerImpl neutralizer.
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["pin_conscrypt_trustmanagerimpl"]), Action.SSL_ONLY)
    assert "TrustManagerImpl" in res.source
    assert "verifyChain" in res.source


def test_okhttp4_and_webview_recipes_fire_for_their_signature_ids():
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["okhttp4_kotlin_certificate_pinner"]), Action.SSL_ONLY)
    assert "okhttp3.CertificatePinner" in res.source
    res2 = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["webview_ssl_error_handler_proceed"]), Action.SSL_ONLY)
    assert "onReceivedSslError" in res2.source
    assert "handler.proceed" in res2.source


def test_ssl_control_aliases_route_to_existing_neutralizers():
    # SSLContext.init-with-TrustManager / custom SSLSocketFactory / HostnameVerifier
    # set are alternate spellings of the same control; they must not fall to the
    # universal base - they route to the existing targeted neutralizers.
    for sid in ["sslcontext_init_with_trustmanager", "custom_sslsocketfactory"]:
        res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=[sid]), Action.SSL_ONLY)
        assert res.strategy == "targeted", sid
        assert "checkServerTrusted" in res.source, sid
    for sid in ["set_default_hostname_verifier", "hostname_verifier_set"]:
        res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=[sid]), Action.SSL_ONLY)
        assert res.strategy == "targeted", sid
        assert "HostnameVerifier" in res.source, sid


def test_trustkit_recipe_fires_for_its_signature_id():
    # TrustKit (banking/fintech pinning lib) must route to the dedicated
    # PinningTrustManager + CertificatePinner neutralizer, not the universal base.
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["trustkit_pinning"]), Action.SSL_ONLY)
    assert res.strategy == "targeted"
    assert "trustkit_pinning" in res.applied_hooks
    assert "PinningTrustManager" in res.source
    assert "verifyChain" in res.source


def test_rn_ssl_pinning_routes_to_certificate_pinner():
    # The React-Native ssl-pinning lib ships an okhttp CertificatePinner - the
    # mapped route must neutralize check(), not fall to universal.
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["rn_ssl_pinning_library"]), Action.SSL_ONLY)
    assert res.strategy == "targeted"
    assert "okhttp3.CertificatePinner" in res.source


def test_targeted_ssl_bypass_carries_pin_check_and_handshake_observers():
    # Fix-1: a fully-covered targeted SSL bypass has NO UNIVERSAL_SSL (no embedded
    # observer), so the synthesizer must append the effect observer - otherwise
    # the SSL-confirmation signals (ssl-pin-check + ssl-handshake) would never
    # fire and an unknown app's confirmed SSL bypass could not be reported. The
    # observer's pin-check hooks must be present on the CertificatePinner path
    # that the targeted recipe itself neutralizes.
    res = synthesize(
        _cls(Action.SSL_ONLY, ssl_ids=["okhttp_certificate_pinner"]), Action.SSL_ONLY
    )
    assert res.strategy == "targeted"
    assert "ssl-pin-check" in res.source
    assert "ssl-handshake" in res.source
    assert "CertificatePinner" in res.source


def test_ssl_observer_covers_custom_trustmanager_interface():
    # A real app often ships its OWN X509TrustManager implementation with the pin
    # check inside checkServerTrusted (banking/fintech), so the okhttp CertificatePinner
    # and platform TrustManagerImpl observer hooks never fire. The generic SSL recipes
    # neutralize javax.net.ssl.X509TrustManager.checkServerTrusted via the interface;
    # the observer must hook the SAME interface so a custom TrustManager's neutralized
    # check returning normally still lights ssl-pin-check - otherwise a custom-TrustManager
    # bypass reports SSL unconfirmed even when it worked (a confirmation blind spot).
    res = synthesize(
        _cls(Action.SSL_ONLY, ssl_ids=["custom_trustmanager_checkservertrusted"]),
        Action.SSL_ONLY,
    )
    assert res.strategy == "targeted"
    assert "javax.net.ssl.X509TrustManager" in res.source
    # the observer's interface wrapper calls through then emits the pin-check signal
    assert "_wrap_xt" in res.source
    assert "checkServerTrusted" in res.source
    assert "ssl-pin-check" in res.source


def test_cronet_verifier_routes_to_native_verify():
    # Cronet is BoringSSL in libcronet.so - the native symbol-scan verify bypass
    # is its deterministic handle (scans all modules, so libcronet is covered
    # wherever it is loaded).
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["cronet_cert_verifier"]), Action.SSL_ONLY)
    assert "Process.enumerateModules" in res.source
    assert "SSL_CTX_set_verify" in res.source


def test_native_bypass_is_symbol_driven_not_name_list_gated():
    # A Flutter (libflutter.so) or Unity (libunity.so) app has NO Java SSL stack
    # and bundles BoringSSL under a name no fixed list could exhaust. The bypass
    # must be driven by the exported verify symbols across ALL loaded modules, not
    # gated on a hardcoded module-name list that a renamed/unknown host would
    # slip past - so a real app's BoringSSL is covered no matter which .so hosts it.
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["native_ssl_pinning_verify"]), Action.SSL_ONLY)
    assert "MODULES = " not in res.source  # no name-list gate
    assert "Process.enumerateModules()" in res.source  # scan every loaded module
    assert "findExportByName(mn, SYMS[k][0])" in res.source  # hook by symbol, per module
    # the family the symbol-scan covers, documented so the coverage intent is explicit
    assert "libflutter" in res.source
    assert "libunity" in res.source
    for sym in ["SSL_CTX_set_verify", "SSL_CTX_set_cert_verify_callback",
                "SSL_CTX_set_custom_verify", "SSL_set_custom_verify"]:
        assert sym in res.source, sym


def test_native_ssl_bypass_emits_custom_verify_hooks():
    # The BoringSSL custom-verify entrypoints remain part of the shared native
    # bypass, exercised by the surviving native SSL signatures (the custom_verify
    # and xamarin_mono_runtime ids are no longer scored signatures - see
    # indicators.py - but the hook bodies still ship inside the native bypass).
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["native_ssl_custom_verify_callback"]), Action.SSL_ONLY)
    assert res.strategy == "targeted"
    assert "SSL_CTX_set_custom_verify" in res.source
    assert "SSL_set_custom_verify" in res.source


def test_native_bypass_observes_handshakes_for_pure_native_hosts():
    # A pure-native app (Flutter dart:io in libflutter.so, Unity libunity.so, or a
    # renamed vendored BoringSSL) has no Java SSL stack, so the Java
    # ConscryptEngineSocket/SSLSocket observer hooks never fire - without a native
    # observation a real completed handshake would report as "none observed" (a
    # false negative). The SSL effect observer must hook SSL_do_handshake across
    # the symbol-scanned modules and emit ssl-handshake on completion. Observation
    # only - it must NOT invent a native pin-check (the platform's own BoringSSL
    # uses the same verify slots, so that would over-claim) - so confirmation is
    # unchanged and the handshake is simply no longer invisible (ADR-0006).
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["native_ssl_custom_verify_callback"]), Action.SSL_ONLY)
    assert "SSL_do_handshake" in res.source
    assert "Process.enumerateModules()" in res.source
    assert "bypassEffect: 'ssl-handshake'" in res.source
    # the native observer is handshake-only: the SSL_do_handshake hook must NOT
    # itself emit a native pin-check (the platform's own BoringSSL uses the same
    # verify slots, so a native pin-check would over-claim). The Java-path
    # pin-check (from CertificatePinner/TrustManagerImpl) is separate and stays.
    handshake_region = res.source[res.source.index("SSL_do_handshake"):]
    assert "'ssl-pin-check'" not in handshake_region


def test_native_root_path_hiding_fires_for_native_su_embedded():
    # native_su_binary_embedded now routes to the libc path-hiding recipe (was the
    # one native root gap - previously it fell to universal). It must hide root
    # artifacts from native access/stat/open/fopen probes.
    res = synthesize(
        _cls(Action.ROOT_ONLY, root_ids=["native_su_binary_embedded"]), Action.ROOT_ONLY
    )
    assert res.strategy == "targeted"
    assert "native_su_binary_embedded" in res.applied_hooks
    assert "libc.so" in res.source
    assert "Interceptor" in res.source
    assert "access" in res.source
    assert "/system/bin/su" in res.source
    assert "openat" in res.source


def test_native_root_path_hiding_covers_statx():
    # A real-world native root check is as likely to probe a root artifact through
    # the modern libc statx primitive as through stat/lstat. The envelope must
    # intercept statx too (path is arg 1, like openat), or an app using it would
    # never produce the probeHit that confirms root - a silent native-root blind
    # spot. Pure observation of a root-artifact path; never a false positive.
    res = synthesize(
        _cls(Action.ROOT_ONLY, root_ids=["native_su_binary_embedded"]), Action.ROOT_ONLY
    )
    assert "hidePathProbe('statx', 1, -1)" in res.source


def test_native_root_path_hiding_covers_faccessat():
    # A real-world native root check can probe a root artifact through faccessat -
    # the *at variant of access - rather than access itself. The envelope must
    # intercept it too (path is arg 1, like openat/statx), or an app using it
    # would never produce the probeHit that confirms root - a silent native-root
    # blind spot. Pure observation of a root-artifact path; never a false positive.
    res = synthesize(
        _cls(Action.ROOT_ONLY, root_ids=["native_su_binary_embedded"]), Action.ROOT_ONLY
    )
    assert "hidePathProbe('faccessat', 1, -1)" in res.source


def test_native_root_exec_blocking_covered_for_su_embedded():
    # A JNI root check can EXECUTE a root binary directly - fork+execve("/system/bin/su")
    # or system("which su") - never touching the Java Runtime.exec/ProcessBuilder the
    # Java recipe covers. The native_su_binary_embedded recipe must also block libc
    # execve (by root-binary basename) and system (by root-binary command reference),
    # emitting the probeHit that confirms root - or those exec probes would be silent.
    res = synthesize(
        _cls(Action.ROOT_ONLY, root_ids=["native_su_binary_embedded"]), Action.ROOT_ONLY
    )
    src = res.source
    assert "'execve'" in src
    assert "'system'" in src
    assert "isRootBin" in src
    assert "which su" in src
    assert "probeHit" in src
    # conservative: only a root-binary basename/reference blocks, never a benign exec
    assert "isRootBin(nbasename(p))" in src


def test_native_jni_root_check_routes_to_native_envelope():
    # native_jni_root_check fires on an exported JNI checkRoot/isRooted symbol even
    # when the .so does not embed su-path strings - so it previously fell to the
    # Java-only universal root, leaving the native probing code unhidden. It must
    # route to the same native envelope (libc path-hiding + exec-blocking) as
    # native_su_binary_embedded, since a detected native JNI root check probes root
    # artifacts somehow.
    res = synthesize(
        _cls(Action.ROOT_ONLY, root_ids=["native_jni_root_check"]), Action.ROOT_ONLY
    )
    assert res.strategy == "targeted"
    assert "native_jni_root_check" in res.applied_hooks
    src = res.source
    assert "hidePathProbe('access'" in src or "hidePathProbe" in src
    assert "'execve'" in src
    assert "probeHit" in src


def test_native_build_props_probe_routes_to_prop_hiding():
    # A native (JNI) test-keys root check reads ro.build.tags / ro.build.type via
    # libc __system_property_get. Previously only the Java Build.TAGS patch
    # existed, so a native build-props check was a silent blind spot. The signature
    # native_build_props_probe must route to _native_build_props_hiding and spoof
    # exactly the two root-indicating prop reads with the production value - and
    # nothing else.
    res = synthesize(
        _cls(Action.ROOT_ONLY, root_ids=["native_build_props_probe"]), Action.ROOT_ONLY
    )
    assert res.strategy == "targeted"
    assert "native_build_props_probe" in res.applied_hooks
    assert "__system_property_get" in res.source
    assert "ro.build.tags" in res.source and "release-keys" in res.source
    assert "ro.build.type" in res.source and "'user'" in res.source
    # ro.build.fingerprint is scrubbed in place (device-specific value, just the
    # test-keys token replaced) - the native counterpart to Build.FINGERPRINT.
    assert "scrubFingerprint" in res.source
    assert "ro.build.fingerprint" in res.source
    assert "test-keys" in res.source and "release-keys" in res.source


def test_root_alias_su_alternate_routes_targeted():
    # su_alternate_binary_paths is the same artifact check under another name; it
    # must route to the targeted su-path patch, not the category universal.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["su_alternate_binary_paths"]), Action.ROOT_ONLY)
    assert res.strategy == "targeted"
    assert "su_alternate_binary_paths" in res.applied_hooks
    assert "/system/bin/su" in res.source


def test_attestation_falls_to_universal_root_honest_boundary():
    # Play Integrity attestation has no clean single hook and is server-verified;
    # the honest deterministic handle is defeating the underlying root evidence
    # via the universal root base - never a fabricated attestation token.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["play_integrity_attestation"]), Action.ROOT_ONLY)
    assert res.strategy == "universal"
    assert res.universal_categories == ["root"]
    assert "play_integrity_attestation" not in res.applied_hooks
    assert "/system/bin/su" in res.source  # universal root neutralizes su paths


def test_mixed_detection_gets_universal_supplement():
    # A detection with one mapped technique (su paths) AND one unmapped
    # (Play Integrity) must run the targeted hook AND the universal root base as a
    # supplement - the unmapped technique must not be silently skipped.
    res = synthesize(
        _cls(Action.ROOT_ONLY, root_ids=["root_su_binary_paths", "play_integrity_attestation"]),
        Action.ROOT_ONLY,
    )
    assert res.strategy == "targeted"
    assert "root_su_binary_paths" in res.applied_hooks
    assert "root" in res.universal_categories
    assert "play_integrity_attestation" not in res.applied_hooks


def test_hostname_verifier_variants_route_always_true():
    # Apache/Boyle abstract verifiers and okhttp hostname set are the same
    # host-check control; they must route to verify-returns-true.
    for sid in ["pin_apache_abstractverifier", "pin_boye_abstractverifier",
                "okhttp_hostname_verifier_set", "pin_worklight_hostname_verifier"]:
        res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=[sid]), Action.SSL_ONLY)
        assert res.strategy == "targeted", sid
        assert "HostnameVerifier" in res.source, sid


def test_trustmanager_family_routes_to_check_server_trusted():
    # Custom X509 key/trust managers and wrapper checkers all funnel into
    # checkServerTrusted - trust-all neutralizes them.
    for sid in ["custom_x509keymanager", "pin_netty_fingerprint_tmf",
                "pin_cwac_netsecurity", "pin_phonegap_ssl_checker",
                "hurlstack_sslsocketfactory", "set_sslsocketfactory"]:
        res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=[sid]), Action.SSL_ONLY)
        assert res.strategy == "targeted", sid
        assert "checkServerTrusted" in res.source, sid


def test_pin_literal_routes_to_certificate_pinner():
    # SHA-1 / SPKI pin strings and addHost pin lists are okhttp CertificatePinner
    # techniques - neutralize check(), not fall to universal.
    for sid in ["sha1_pin_hash_literal", "spki_sha256_pin", "expect_certificate_pin",
                "certificate_pinner_add_host"]:
        res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=[sid]), Action.SSL_ONLY)
        assert res.strategy == "targeted", sid
        assert "okhttp3.CertificatePinner" in res.source, sid


def test_real_world_root_tools_get_path_patches():
    # APatch / KernelSU / BusyBox / LSPosed / LuckyPatcher each leave artifact
    # paths the app probes; each must get a targeted path-patch hook.
    cases = {
        "apatch_binary_paths": "/data/adb/ap",
        "busybox_binary_paths": "/system/xbin/busybox",
        "kernelsu_manager_package": "/data/adb/ksu",
        "lsposed_manager": "/data/adb/lspd",
        "lucky_patcher_root_tool": "LuckyPatcher.apk",
    }
    for sid, path in cases.items():
        res = synthesize(_cls(Action.ROOT_ONLY, root_ids=[sid]), Action.ROOT_ONLY)
        assert res.strategy == "targeted", sid
        assert path in res.source, sid


def test_build_props_probe_routes_to_build_tags():
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["build_props_probe"]), Action.ROOT_ONLY)
    assert res.strategy == "targeted"
    assert "release-keys" in res.source  # Build.TAGS neutralization


def test_universal_path_emits_universal_checkpoint():
    # A technique with no dedicated hook falls to the category universal base -
    # that path must STILL emit a provable "universal:<cat>" checkpoint so the
    # technology hooks-engaged signal is honest, not silently "none".
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["certificate_transparency_verifier"]), Action.SSL_ONLY)
    assert res.strategy == "universal"
    assert 'send({hook: "universal:ssl"})' in res.source
    res2 = synthesize(_cls(Action.ROOT_ONLY, root_ids=["xposed_framework"]), Action.ROOT_ONLY)
    assert res2.strategy == "universal"
    assert 'send({hook: "universal:root"})' in res2.source


def test_synthesize_emits_hook_checkpoints_for_applied_hooks():
    # The technology-level "hooks engaged" signal (success_checks/technology.py)
    # depends on each applied recipe emitting a frida send({hook: <id>})
    # checkpoint - prove the synthesizer actually emits them for the applied ids.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["root_su_binary_paths"]), Action.ROOT_ONLY)
    assert 'send({hook: "root_su_binary_paths"})' in res.source
    res2 = synthesize(_cls(Action.BOTH, root_ids=["root_su_binary_paths"],
                            ssl_ids=["okhttp_certificate_pinner"]), Action.BOTH)
    assert 'send({hook: "okhttp_certificate_pinner"})' in res2.source
    assert 'send({hook: "root_su_binary_paths"})' in res2.source


# --- Fix-1 / Fix-3 / Fix-4 / Fix-5: behavioral effect, native-universal SSL,
#     and predefined-script capability matching (no AI) ------------------------


def test_universal_ssl_includes_native_unpinning_and_effect_observer():
    # Fix-4: the SSL universal now ALWAYS attempts native BoringSSL-family
    # unpinning and observes a completed handshake - so an app that pins natively
    # (BoringSSL, no firing signature) still gets a native unpinning attempt and
    # observable effect evidence, without AI. Deterministic: the native bypass
    # no-ops when the symbol is absent, so this never over-claims.
    res = synthesize(_cls(Action.SSL_ONLY), Action.SSL_ONLY)
    assert "SSL_CTX_set_verify" in res.source
    assert "SSL_CTX_set_custom_verify" in res.source   # BoringSSL custom-verify path
    assert "bypassEffect" in res.source
    assert "ssl-handshake" in res.source


def test_root_recipes_emit_probe_hit_effect_evidence():
    # Fix-3: when the app actually probes a hidden root artifact, the hook emits
    # probeHit evidence - converting an unreachable/flow-triggered root check into
    # observable effect evidence WHEN the flow reaches it, on any app.
    res = synthesize(
        _cls(Action.ROOT_ONLY, root_ids=["native_su_binary_embedded"]), Action.ROOT_ONLY
    )
    assert "probeHit" in res.source
    assert "bypassEffect" not in res.source          # root evidence, not ssl
    res2 = synthesize(_cls(Action.ROOT_ONLY, root_ids=["root_su_binary_paths"]), Action.ROOT_ONLY)
    assert "probeHit" in res2.source


def test_file_patch_hides_canread_canwrite_isdirectory_alongside_exists():
    # A real Java root check probes a root artifact through canRead (su accessible),
    # canWrite (/system rw - a rooted mount), or isDirectory (/data/adb present) just
    # as often as File.exists - previously only exists() was hidden, so those checks
    # slipped past and never emitted the probeHit that confirms root. The shared
    # File patch must hide all four with the same superset membership + probeHit.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["root_su_binary_paths"]), Action.ROOT_ONLY)
    src = res.source
    assert "applyPatch('exists')" in src
    assert "applyPatch('canRead')" in src
    assert "applyPatch('canWrite')" in src
    assert "applyPatch('isDirectory')" in src
    assert "probeHit" in src
    # the patch calls through to the real impl for a non-root path - no infinite loop
    assert "return this[m]();" in src


def test_root_exec_su_covers_which_id_array_and_processbuilder():
    # The exec-based root check does Runtime.exec("su"), Runtime.exec("which su"),
    # Runtime.exec({"/system/bin/su","-c","id"}) (the String[] overload), or
    # new ProcessBuilder("su","-c","id").start(). The recipe must neutralize all
    # four - previously only the single-String exact-"su" form was caught, so
    # which su / array / ProcessBuilder probes were silent (never emitted the
    # probeHit that confirms root). Conservative detector: only root-binary
    # references, never a benign command.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["root_runtime_exec_su"]), Action.ROOT_ONLY)
    assert res.strategy == "targeted"
    src = res.source
    assert "root_runtime_exec_su" in res.applied_hooks
    assert "which su" in src
    assert "Runtime.exec.overload('java.lang.String').implementation" in src
    assert "Runtime.exec.overload('[Ljava.lang.String;').implementation" in src
    assert "ProcessBuilder" in src
    assert "PB.start.implementation" in src
    assert "probeHit" in src
    # a benign command (no root-binary reference) is NOT blocked
    assert "isRootExec" in src


def test_predefined_script_match_reported_by_category():
    # Fix-5: a bypass action is deterministically matched to the predefined
    # universal for its detected categories - the no-AI predefined-script match.
    r = synthesize(_cls(Action.SSL_ONLY), Action.SSL_ONLY)
    assert r.predefined_matched == ["universal-robust-advanced-root--ssl-pinning-bypass"]
    b = synthesize(_cls(Action.BOTH), Action.BOTH)
    assert b.predefined_matched == ["universal-robust-advanced-root--ssl-pinning-bypass"]  # dedup
    n = synthesize(_cls(Action.NEITHER), Action.NEITHER)
    assert n.predefined_matched == []
