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


def test_synthesize_no_evasion_without_anti_instrumentation():
    # A benign app (no Frida/Substrate probe) must NOT get the evasion base.
    res = synthesize(_cls(Action.ROOT_ONLY, root_ids=["root_su_binary_paths"]), Action.ROOT_ONLY)
    assert "evasion" not in res.applied_hooks
    assert "gum-js-loop" not in res.source


def test_native_recipe_enumerates_ssl_modules_not_just_libssl():
    # Native unpinning must cover the BoringSSL/OpenSSL family (Cronet, Conscrypt),
    # not a hardcoded libssl.so - gRPC-over-Cronet pinning would otherwise be missed.
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["native_ssl_pinning_verify"]), Action.SSL_ONLY)
    assert "Process.enumerateModules" in res.source
    assert "libcronet.so" in res.source
    assert "libconscrypt_jni.so" in res.source


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


def test_cronet_verifier_routes_to_native_verify():
    # Cronet is BoringSSL in libcronet.so - the native module-family verify bypass
    # is its deterministic handle.
    res = synthesize(_cls(Action.SSL_ONLY, ssl_ids=["cronet_cert_verifier"]), Action.SSL_ONLY)
    assert "Process.enumerateModules" in res.source
    assert "libcronet.so" in res.source


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
