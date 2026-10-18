from pathlib import Path

import pytest

from static.signatures import _line_matches, load_signatures, scan

REPO_ROOT = Path(__file__).resolve().parents[2]


def test_load_signatures_rejects_unknown_category_loudly(tmp_path):
    # 4-2: a mistyped category ("Root" instead of "root") used to silently
    # no-op - scan() matches neither branch, so the signature was dead and
    # detection silently weaker. Must fail loudly at load instead.
    (tmp_path / "bad.yaml").write_text(
        "---\n"
        "- id: mistyped\n"
        "  category: Root\n"
        "  weight: 0.5\n"
        "  pattern_type: string_literal\n"
        "  patterns: [x]\n"
        "  evidence_type: bytecode_string\n"
    )
    with pytest.raises(ValueError, match="invalid category"):
        load_signatures(tmp_path / "bad.yaml")


def test_load_signatures_reads_real_root_detection_yaml():
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    ids = {s.id for s in signatures}
    assert "root_su_binary_paths" in ids
    assert all(s.category == "root" for s in signatures)
    assert all(0 < s.weight <= 1.0 for s in signatures)


def test_nsc_debug_overrides_matches_real_xml_not_plain_text(tmp_path):
    # Precision fix (PropertyGuru confident false positive). nsc_debug_overrides
    # used to match the BARE words "base-config" / "debug-overrides" /
    # "cleartextTrafficPermitted" as plain substrings, so any plain-text APK
    # asset that merely contained one of those words scored SSL-pinning evidence
    # with no Network Security Config behind it. PropertyGuru's
    # assets/sentry-external-modules.txt (a Sentry module listing) matched on the
    # word "base-config". The patterns are now anchored to real NSC XML syntax
    # ("<base-config", "<debug-overrides", 'cleartextTrafficPermitted="'), which
    # still matches every genuine apktool-decoded NSC document.
    signatures = load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")

    good = tmp_path / "good" / "res" / "xml"
    good.mkdir(parents=True)
    (good / "network_security_config.xml").write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        "<network-security-config>\n"
        '    <base-config cleartextTrafficPermitted="false">\n'
        '        <trust-anchors><certificates src="system" /></trust-anchors>\n'
        "    </base-config>\n"
        "    <debug-overrides>\n"
        '        <trust-anchors><certificates src="user" /></trust-anchors>\n'
        "    </debug-overrides>\n"
        "</network-security-config>\n",
        encoding="utf-8",
    )
    ev_good = scan(tmp_path / "good", signatures)
    assert any(e.signature_id == "nsc_debug_overrides" for e in ev_good.ssl_evidence)

    bad = tmp_path / "bad" / "assets"
    bad.mkdir(parents=True)
    (bad / "sentry-external-modules.txt").write_text(
        "base-config\ndebug-overrides\ncleartextTrafficPermitted\nsome.other.module\n",
        encoding="utf-8",
    )
    ev_bad = scan(tmp_path / "bad", signatures)
    assert not any(e.signature_id == "nsc_debug_overrides" for e in ev_bad.ssl_evidence)


def test_collect_files_excludes_cfr_summary_but_keeps_java_and_assets(tmp_path):
    # Precision fix (PropertyGuru confident false positive). CFR emits a
    # top-level summary.txt index listing every class it decompiled. Because .txt
    # is a scanned suffix (for genuine plain-text APK assets), that decompiler
    # metadata was being fed to the code/config signatures - custom_pkix_trust_
    # anchor matched the token "CertPathValidator" inside the class list, a pure
    # false positive with no app code behind it. The .java CFR actually produces
    # must still be scanned, and a real APK asset named summary.txt (under
    # assets/) must still be scanned - only the decompiler's own index is cut.
    from static.signatures import _collect_files

    cfr = tmp_path / "cfr"
    (cfr / "com" / "app").mkdir(parents=True)
    (cfr / "summary.txt").write_text("Decompiled classes: CertPathValidator\n", encoding="utf-8")
    (cfr / "com" / "app" / "Real.java").write_text("class Real {}\n", encoding="utf-8")
    (tmp_path / "assets").mkdir()
    (tmp_path / "assets" / "summary.txt").write_text("release notes\n", encoding="utf-8")

    # (a) whole analysis dir as scan root: cfr/summary.txt sits one level down
    got = {p.relative_to(tmp_path).as_posix() for p, _ in _collect_files([tmp_path])}
    assert "cfr/com/app/Real.java" in got    # CFR .java still scanned
    assert "assets/summary.txt" in got       # real plain-text asset still scanned
    assert "cfr/summary.txt" not in got      # decompiler index excluded

    # (b) the cfr output dir itself as scan root: summary.txt sits at its top
    got_top = {p.relative_to(cfr).as_posix() for p, _ in _collect_files([cfr])}
    assert "com/app/Real.java" in got_top
    assert "summary.txt" not in got_top


def test_braze_appboy_recognized_as_bundled_sdk():
    # Precision fix (PropertyGuru confident false positive). The Braze engagement
    # SDK (current package com.braze, legacy com.appboy) ships its own
    # SSLContext/SSLSocketFactory plumbing (com/braze/communication/*.java). With
    # Braze absent from the vendor taxonomy that code counted as the app's own,
    # so its generic TLS plumbing scored app-owned SSL-pinning evidence. Braze is
    # now a recognized bundled SDK; its code is excluded from the app's detection
    # surface, while an app whose OWN package legitimately began with com.braze
    # would still keep its own subtree app-owned (Bug-B parity).
    from common import is_known_third_party, is_third_party_file

    assert is_known_third_party("com.braze.communication.f")
    assert is_known_third_party("com.appboy.ui.AppboyFeedActivity")
    assert is_third_party_file(
        "com.braze.communication.g", app_package="com.allproperty.android.consumer.my"
    )
    # the analyzed app's own code is never misattributed to Braze
    assert not is_third_party_file(
        "com.allproperty.android.consumer.my.MainActivity",
        app_package="com.allproperty.android.consumer.my",
    )


def test_volley_recognized_as_bundled_sdk():
    # Precision fix (RS_vapour SSL false positive). Volley's HurlStack calls
    # setSSLSocketFactory as part of its own HTTP transport plumbing. Every
    # HurlStack/setSSLSocketFactory match in that target lived under
    # com/android/volley with no SSL/TLS code at all under the app's own
    # com/redshift namespace - library plumbing, not the app configuring
    # pinning. Volley is now a recognized bundled SDK.
    from common import is_known_third_party, is_third_party_file

    assert is_known_third_party("com.android.volley.toolbox.HurlStack")
    assert is_third_party_file(
        "com.android.volley.toolbox.HurlStack",
        app_package="com.redshift.rs_vapourtraining",
    )
    assert not is_third_party_file(
        "com.redshift.rs_vapourtraining.MainActivity",
        app_package="com.redshift.rs_vapourtraining",
    )


def test_no_single_signature_can_self_trigger_detection():
    """Structural anti-false-positive invariant (verified 2026-08-27).

    Detection fires at root/ssl_confidence >= DEFAULT_THRESHOLD, and confidence
    is the (capped) SUM of matched signature weights. If any single signature
    carried weight >= DEFAULT_THRESHOLD it could alone trip DETECTED - so one
    stray match on a benign app would be a false positive with no corroboration.
    The corpus is deliberately built so even the strongest indicators
    (CertificatePinner.Builder, <pin-set>, the RootBeer class) top out at 0.50:
    a DETECTED verdict always requires at least two independent signals. This is
    the structural defense the ktor/apollo presence-marker false positive (see
    test_ssl_library_presence_signals_cannot_alone_detect) slipped past by
    SUMMING two low-specificity markers to exactly the threshold.

    This pins that invariant across both shipped corpora. It is a
    conscious-decision gate, not a ban: if a genuinely unambiguous future
    signature ever warrants weight >= threshold, this assertion must be updated
    deliberately, with justification - never relaxed silently, which is exactly
    the review friction an over-confident single signature should meet.

    UPDATED 2026-10-06, deliberately and with justification - the case this gate
    was written to force a decision on. `root_su_search_directories` is the corpus's
    ONE decisive signature, and it earned it by MEASUREMENT rather than by
    argument: the bare-directory form occurs in exactly two code sites in the whole
    corpus, the pattern deliberately excludes the one that is NOT a root check
    (Telegram's EmuDetector uses "/system/bin/"), and making it decisive changes
    exactly 7 reports corpus-wide - all of them RS_Vapour, whose ground truth is
    root: true and whose NEITHER the calibration report already names a KNOWN MISS.
    Every other signature must still cap below the threshold; this list is the
    exception register, so a second entry is a deliberate act, not a drift."""
    from static.decision_engine import DEFAULT_THRESHOLD

    # The exception register. Adding an entry here is a deliberate design act.
    DECISIVE_BY_MEASUREMENT = {"root_su_search_directories"}

    for yaml_name in ("root_detection.yaml", "ssl_pinning.yaml"):
        sigs = load_signatures(REPO_ROOT / "config/signatures" / yaml_name)
        offenders = [(s.id, s.weight) for s in sigs
                     if s.weight >= DEFAULT_THRESHOLD
                     and s.id not in DECISIVE_BY_MEASUREMENT]
        assert not offenders, (
            f"{yaml_name}: signature(s) {offenders} carry weight >= the "
            f"{DEFAULT_THRESHOLD} detection threshold and could alone trigger a "
            f"DETECTED verdict with no corroboration - the single-match false-"
            f"positive shape. Cap at < {DEFAULT_THRESHOLD} so detection needs "
            f">= 2 independent signals, or update this gate deliberately."
        )
        # And the register must not rot: every registered exception has to actually
        # be decisive, or the register is hiding a signature that no longer earns it.
        for s in sigs:
            if s.id in DECISIVE_BY_MEASUREMENT:
                assert s.weight >= DEFAULT_THRESHOLD, (
                    f"{s.id} is registered as decisive-by-measurement but no longer "
                    f"reaches the threshold ({s.weight} < {DEFAULT_THRESHOLD})"
                )


def test_root_corpus_includes_magisk_kernelsu_zygisk_era_signatures():
    # Phase 4 web-grounded expansion: the seven original signatures describe
    # the 2015 SuperSU root model. A 2026 root-detection engine must also probe
    # Magisk (systemless), KernelSU, and Zygisk artifacts. Pin the new IDs so
    # the corpus can't silently regress to pre-Magisk coverage.
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    ids = {s.id for s in signatures}
    assert "magisk_su_binary_paths" in ids
    assert "magisk_selinux_context" in ids
    assert "kernelsu_binary_paths" in ids
    assert "zygisk_artifact_paths" in ids
    assert "magisk_denylist_artifacts" in ids
    # The dominant 2026 manager must sit alongside the SuperSU-era managers.
    su_apps = next(s for s in signatures if s.id == "su_management_apps")
    assert "com.topjohnwu.magisk" in su_apps.patterns


def test_root_corpus_includes_hook_detection_and_owasp_package_list():
    # 2026 web-grounded expansion: the corpus previously covered Xposed/LSPosed/
    # Riru but had NO Frida or Cydia Substrate detection - the instrumentation
    # hook-detection surface real apps probe alongside root - and the OWASP-MSTG
    # `detectRootManagementApps` list was missing Koushik Dutta's classic
    # Superuser package. Pin the new IDs and literals so the corpus can't
    # silently regress to pre-hook-detection coverage.
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    ids = {s.id for s in signatures}
    assert "frida_detection" in ids
    assert "cydia_substrate_detection" in ids

    frida = next(s for s in signatures if s.id == "frida_detection")
    assert "frida-server" in frida.patterns
    assert "gum-js-loop" in frida.patterns  # the /proc/self/maps thread trace
    substrate = next(s for s in signatures if s.id == "cydia_substrate_detection")
    assert "com.saurik.substrate" in substrate.patterns
    assert "libsubstrate.so" in substrate.patterns

    su_apps = next(s for s in signatures if s.id == "su_management_apps")
    assert "com.koushikdutta.superuser" in su_apps.patterns


def test_scan_matches_frida_detection_and_not_benign(tmp_path):
    # A real anti-Frida probe (scanning /proc/self/maps for the gum-js-loop
    # thread / the frida-gadget) surfaces as root evidence; a benign use of the
    # word "frida" (e.g. "frida" as a name/telemetry) must NOT match, because the
    # signature uses Frida-specific artifact literals, not the bare token.
    (tmp_path / "MainActivity.java").write_text(
        "public class MainActivity {\n"
        "    boolean antiFrida() {\n"
        "        String maps = readFile(\"/proc/self/maps\");\n"
        "        return maps.contains(\"gum-js-loop\") || maps.contains(\"frida-gadget\");\n"
        "    }\n"
        "}\n",
        encoding="utf-8",
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, signatures)
    assert any(e.signature_id == "frida_detection" for e in evidence.root_evidence)

    # benign: "frida" as a plain token, no Frida artifact literal
    (tmp_path / "MainActivity.java").write_text(
        "public class MainActivity {\n"
        "    String name = \"frida\";\n"  # bare token - no frida-server/gadget/gum
        "}\n",
        encoding="utf-8",
    )
    evidence = scan(tmp_path, signatures)
    assert not any(e.signature_id == "frida_detection" for e in evidence.root_evidence)


def test_root_corpus_includes_boot_integrity_and_play_integrity_verdicts():
    # A3 corpus-currency + boot-integrity: the corpus must pin the Play Integrity
    # verdict tokens apps actually compare (MEETS_DEVICE_INTEGRITY etc.) and the
    # boot-integrity property probes (ro.boot.verifiedbootstate) that catch an
    # unlocked/rooted device at the boot layer - neither existed before.
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    ids = {s.id for s in signatures}
    assert "boot_integrity_probe" in ids
    boot = next(s for s in signatures if s.id == "boot_integrity_probe")
    assert "ro.boot.verifiedbootstate" in boot.patterns
    assert "ro.boot.vbmeta.device_state" in boot.patterns

    play = next(s for s in signatures if s.id == "play_integrity_attestation")
    assert "MEETS_DEVICE_INTEGRITY" in play.patterns
    assert "MEETS_STRONG_INTEGRITY" in play.patterns
    assert "DEVICE_INTEGRITY" in play.patterns

    # The Standard/Application Integrity request flow is a distinct API surface
    # (2026 corpus-currency): an app gates on StandardIntegrityManager via
    # requestStandardIntegrityToken()/prepareIntegrityToken() rather than the
    # classic requestIntegrityToken(). Presence of these tokens is evidence the
    # app genuinely asks for Play Integrity attestation, never vendor-excluded.
    std = next(s for s in signatures if s.id == "play_integrity_standard_attestation")
    assert "StandardIntegrityManager" in std.patterns
    assert "requestStandardIntegrityToken" in std.patterns
    assert "prepareIntegrityToken" in std.patterns
    assert "com.google.android.play.core.integrity.StandardIntegrityManager" in std.patterns


def test_scan_matches_play_integrity_standard_api_and_not_benign(tmp_path):
    # A Standard-Integrity token surfaces as root evidence; a bare "integrity"
    # or "token" reference that is not a Standard-integrity API must not.
    (tmp_path / "MainActivity.java").write_text(
        "public class MainActivity {\n"
        "    void gate() { StandardIntegrityManager m = manager(); }\n"
        "    void req() { m.requestStandardIntegrityToken(request); }\n"
        "}\n",
        encoding="utf-8",
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, signatures)
    assert any(
        e.signature_id == "play_integrity_standard_attestation"
        for e in evidence.root_evidence
    )

    (tmp_path / "MainActivity.java").write_text(
        "public class MainActivity {\n"
        "    String token = getOAuthToken();\n"  # benign - not Standard integrity
        "}\n",
        encoding="utf-8",
    )
    evidence = scan(tmp_path, signatures)
    assert not any(
        e.signature_id == "play_integrity_standard_attestation"
        for e in evidence.root_evidence
    )


def test_scan_matches_root_cloaking_detection_and_not_benign(tmp_path):
    # An app probing for a root-hiding framework (MagiskHide/Shamiko/RootCloak)
    # is itself root-aware - the token is a distinctive framework name. A bare
    # generic "hide" reference (low-signal, deliberately excluded) must not fire.
    (tmp_path / "RootCheck.java").write_text(
        "public class RootCheck {\n"
        "    boolean cloaked() { return probe(\"Shamiko\") || probe(\"MagiskHide\"); }\n"
        "}\n",
        encoding="utf-8",
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, signatures)
    assert any(
        e.signature_id == "root_cloaking_detection"
        for e in evidence.root_evidence
    )

    (tmp_path / "RootCheck.java").write_text(
        "public class RootCheck {\n"
        "    boolean hide = true;  // bare generic word - no framework name\n"
        "}\n",
        encoding="utf-8",
    )
    evidence = scan(tmp_path, signatures)
    assert not any(
        e.signature_id == "root_cloaking_detection"
        for e in evidence.root_evidence
    )


def test_scan_matches_boot_integrity_probe_and_not_benign(tmp_path):
    # An unlocked-bootloader probe (reading ro.boot.verifiedbootstate) surfaces as
    # root evidence; a benign reference to "boot" or "integrity" alone must not.
    (tmp_path / "MainActivity.java").write_text(
        "public class MainActivity {\n"
        "    String state() { return getprop(\"ro.boot.verifiedbootstate\"); }\n"
        "}\n",
        encoding="utf-8",
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, signatures)
    assert any(e.signature_id == "boot_integrity_probe" for e in evidence.root_evidence)

    (tmp_path / "MainActivity.java").write_text(
        "public class MainActivity {\n"
        "    boolean integrity = true;\n"  # bare tokens - no property literal
        "}\n",
        encoding="utf-8",
    )
    evidence = scan(tmp_path, signatures)
    assert not any(e.signature_id == "boot_integrity_probe" for e in evidence.root_evidence)


def test_scan_records_capped_signature_match_count(tmp_path):
    # RESID-4F observability: when a signature matches > MAX_EVIDENCE_PER_SIGNATURE
    # (50) times, scan() must retain the 50-row cap BUT also record the true total
    # in evidence.capped_counts, so the report can state "matched 300x, showing
    # first 50" instead of silently implying 50 is the whole match set.
    sigfile = tmp_path / "sig.yaml"
    sigfile.write_text(
        "---\n"
        "- id: root_su_binary_paths\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['/system/bin/su']\n"
        "  evidence_type: bytecode_string\n"
    )
    src = tmp_path / "src"
    src.mkdir()
    (src / "Main.java").write_text("\n".join("/system/bin/su" for _ in range(60)) + "\n")

    evidence = scan(src, load_signatures(sigfile))

    assert len(evidence.root_evidence) == 50  # cap retained
    assert evidence.capped_counts == {"root_su_binary_paths": 60}  # true total recorded


def test_load_signatures_reads_real_ssl_pinning_yaml():
    signatures = load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")
    ids = {s.id for s in signatures}
    assert "okhttp_certificate_pinner" in ids
    assert all(s.category == "ssl" for s in signatures)


def test_scan_matches_string_literal_and_regex_and_accumulates_weight(tmp_path):
    (tmp_path / "MainActivity.java").write_text(
        "public class MainActivity {\n"
        "    void check() {\n"
        "        if (new File(\"/system/bin/su\").exists()) { fail(); }\n"
        "        Runtime.getRuntime().exec(\"which su\");\n"
        "    }\n"
        "}\n"
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")

    evidence = scan(tmp_path, signatures)

    assert evidence.root_confidence > 0
    matched_ids = {e.signature_id for e in evidence.root_evidence}
    assert "root_su_binary_paths" in matched_ids
    assert "root_runtime_exec_su" in matched_ids
    # rootbeer/su-management signatures shouldn't fire against unrelated code
    assert "rootbeer_framework" not in matched_ids


def test_scan_no_matches_gives_zero_confidence_and_no_evidence(tmp_path):
    (tmp_path / "Unrelated.java").write_text("public class Unrelated { void noop() {} }\n")
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")

    evidence = scan(tmp_path, signatures)

    assert evidence.root_confidence == 0
    assert evidence.root_evidence == []
    assert evidence.scanned_file_count == 1  # RESID-4C


def test_load_signatures_rejects_invalid_regex_loudly(tmp_path):
    # RESID-4B: an authoring error in a regex (unclosed group) must fail at
    # load, before any APK is touched - not re.error mid-scan.
    bad = tmp_path / "bad.yaml"
    bad.write_text(
        "- id: broken\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: regex\n"
        "  patterns:\n"
        "    - '(unclosed'\n",
        encoding="utf-8",
    )

    with pytest.raises(ValueError, match="invalid regex"):
        load_signatures(bad)


def test_scan_counts_files_and_accumulates_weight_once_per_signature(tmp_path):
    # RESID-4A/4C: the inverted loop must (a) still add weight once per matched
    # signature even when the same signature matches on multiple lines, and
    # (b) record the real scanned file count.
    sig_yaml = tmp_path / "sigs.yaml"
    sig_yaml.write_text(
        "- id: root_su\n"
        "  category: root\n"
        "  weight: 0.8\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['/system/bin/su']\n"
        "  evidence_type: root\n",
        encoding="utf-8",
    )
    two_lines = tmp_path / "Main.java"
    two_lines.write_text(
        "String a = \"/system/bin/su\";\n"
        "String b = \"/system/bin/su\";\n",
        encoding="utf-8",
    )
    (tmp_path / "Other.java").write_text("class Other {}\n")

    evidence = scan(tmp_path, load_signatures(sig_yaml))

    assert evidence.scanned_file_count == 2  # the two .java files, .yaml excluded
    assert evidence.root_confidence == 0.8   # weight added once, not per line
    assert len(evidence.root_evidence) == 2  # but every matching line is recorded


def test_scan_caps_evidence_per_signature_but_keeps_weight(tmp_path):
    # RESID-4F: a signature that matches thousands of lines (e.g. a shared
    # literal across bundled library files) must not produce one Evidence row
    # per match - the report/DB would drown in near-identical rows. Cap the
    # recorded matches while still crediting the weight exactly once.
    sig_yaml = tmp_path / "sigs.yaml"
    sig_yaml.write_text(
        "- id: root_su\n"
        "  category: root\n"
        "  weight: 0.8\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['/system/bin/su']\n"
        "  evidence_type: root\n",
        encoding="utf-8",
    )
    many = tmp_path / "Many.java"
    many.write_text("String s = \"/system/bin/su\";\n" * 200, encoding="utf-8")

    evidence = scan(tmp_path, load_signatures(sig_yaml))

    assert evidence.root_confidence == 0.8  # weight added once, not per line
    assert len(evidence.root_evidence) == 50  # capped at MAX_EVIDENCE_PER_SIGNATURE


def test_scan_reads_each_file_only_once(tmp_path, monkeypatch):
    # RESID-4A: the inverted loop must read each file exactly once regardless of
    # signature count - not once per signature (N sigs x M files full-file reads).
    # Patch read_text to count calls and assert it equals the file count, not
    # files x signatures. The .yaml signature file is excluded by suffix, so only
    # the two .java files are read.
    (tmp_path / "A.java").write_text('String s = "/system/bin/su";\n', encoding="utf-8")
    (tmp_path / "B.java").write_text('String t = "/system/bin/su";\n', encoding="utf-8")
    sig_yaml = tmp_path / "sigs.yaml"
    sig_yaml.write_text(
        "- id: root_su\n"
        "  category: root\n"
        "  weight: 0.8\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['/system/bin/su']\n"
        "  evidence_type: root\n",
        encoding="utf-8",
    )
    signatures = load_signatures(sig_yaml)

    calls = {"n": 0}
    real_read_text = Path.read_text

    def counting_read_text(self, *args, **kwargs):
        calls["n"] += 1
        return real_read_text(self, *args, **kwargs)

    monkeypatch.setattr(Path, "read_text", counting_read_text)

    evidence = scan(tmp_path, signatures)

    assert calls["n"] == 2  # A.java + B.java, each read once
    assert evidence.root_confidence == 0.8


def test_scan_matches_real_uncrackable1_root_detection_code(tmp_path):
    """Regression test using the actual decompiled UnCrackable1 source
    (sg/vantagepoint/a/c.java), pulled from a real collaborator run and
    quoted verbatim - not a synthetic approximation. Before
    root_su_via_path_env_check / root_known_indicator_files were added,
    this scored only 0.20 (test-keys alone) against real UnCrackable1,
    well under threshold. This test locks in that the fix actually
    clears 0.7 against the real code, not just a hand-crafted sample."""
    (tmp_path / "c.java").write_text(
        "public class c {\n"
        "    public static boolean a() {\n"
        "        for (String str : System.getenv(\"PATH\").split(\":\")) {\n"
        "            if (new File(str, \"su\").exists()) { return true; }\n"
        "        }\n"
        "        return false;\n"
        "    }\n"
        "    public static boolean b() {\n"
        "        String str = Build.TAGS;\n"
        "        return str != null && str.contains(\"test-keys\");\n"
        "    }\n"
        "    public static boolean c() {\n"
        "        for (String str : new String[]{\"/system/app/Superuser.apk\", \"/system/xbin/daemonsu\",\n"
        "            \"/system/etc/init.d/99SuperSUDaemon\", \"/system/bin/.ext/.su\", \"/system/etc/.has_su_daemon\",\n"
        "            \"/system/etc/.installed_su_daemon\", \"/dev/com.koushikdutta.superuser.daemon/\"}) {\n"
        "            if (new File(str).exists()) { return true; }\n"
        "        }\n"
        "        return false;\n"
        "    }\n"
        "}\n"
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")

    evidence = scan(tmp_path, signatures)

    assert evidence.root_confidence >= 0.7, (
        f"real UnCrackable1 root-detection code only scored {evidence.root_confidence}, "
        f"below the 0.7 threshold - would still misclassify as NEITHER"
    )
    matched_ids = {e.signature_id for e in evidence.root_evidence}
    assert "root_build_tags_test_keys" in matched_ids
    assert "root_su_via_path_env_check" in matched_ids
    assert "root_known_indicator_files" in matched_ids
    # the old literal-path signature correctly still doesn't fire - this app
    # never has the literal string "/system/bin/su" in its bytecode
    assert "root_su_binary_paths" not in matched_ids


def test_scan_matches_real_uncrackable2_root_detection_code(tmp_path):
    """Regression test using the actual decompiled UnCrackable2 source
    (sg/vantagepoint/a/b.java), quoted verbatim from a real local jadx run -
    not a synthetic approximation. The three checks are byte-for-byte
    identical to Level 1's c.java, just under a different class name. Locks
    in that the existing signatures need zero changes to cover a second
    target, since matching here is content-based, not tied to any class
    name."""
    (tmp_path / "b.java").write_text(
        "package sg.vantagepoint.a;\n"
        "\n"
        "import android.os.Build;\n"
        "import java.io.File;\n"
        "\n"
        "public class b {\n"
        "    public static boolean a() {\n"
        "        for (String str : System.getenv(\"PATH\").split(\":\")) {\n"
        "            if (new File(str, \"su\").exists()) {\n"
        "                return true;\n"
        "            }\n"
        "        }\n"
        "        return false;\n"
        "    }\n"
        "\n"
        "    public static boolean b() {\n"
        "        String str = Build.TAGS;\n"
        "        return str != null && str.contains(\"test-keys\");\n"
        "    }\n"
        "\n"
        "    public static boolean c() {\n"
        "        for (String str : new String[]{\"/system/app/Superuser.apk\", \"/system/xbin/daemonsu\", \"/system/etc/init.d/99SuperSUDaemon\", \"/system/bin/.ext/.su\", \"/system/etc/.has_su_daemon\", \"/system/etc/.installed_su_daemon\", \"/dev/com.koushikdutta.superuser.daemon/\"}) {\n"
        "            if (new File(str).exists()) {\n"
        "                return true;\n"
        "            }\n"
        "        }\n"
        "        return false;\n"
        "    }\n"
        "}\n"
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")

    evidence = scan(tmp_path, signatures)

    assert evidence.root_confidence >= 0.7, (
        f"real UnCrackable2 root-detection code only scored {evidence.root_confidence}, "
        f"below the 0.7 threshold - existing signatures don't actually generalize"
    )
    matched_ids = {e.signature_id for e in evidence.root_evidence}
    assert "root_build_tags_test_keys" in matched_ids
    assert "root_su_via_path_env_check" in matched_ids
    assert "root_known_indicator_files" in matched_ids


def test_scan_matches_real_uncrackable3_root_detection_code(tmp_path):
    """Regression test using the actual decompiled UnCrackable3 source
    (sg/vantagepoint/util/RootDetection.java), quoted verbatim from a real
    local jadx run - not a synthetic approximation. The three checks are
    byte-for-byte identical to Level 1's c.java/Level 2's b.java, just
    renamed to checkRoot1/checkRoot2/checkRoot3 in a plain utility class.
    Locks in that the existing signatures need zero changes to cover a
    third target."""
    (tmp_path / "RootDetection.java").write_text(
        "package sg.vantagepoint.util;\n"
        "\n"
        "import android.os.Build;\n"
        "import java.io.File;\n"
        "\n"
        "public class RootDetection {\n"
        "    public static boolean checkRoot1() {\n"
        "        for (String str : System.getenv(\"PATH\").split(\":\")) {\n"
        "            if (new File(str, \"su\").exists()) {\n"
        "                return true;\n"
        "            }\n"
        "        }\n"
        "        return false;\n"
        "    }\n"
        "\n"
        "    public static boolean checkRoot2() {\n"
        "        String str = Build.TAGS;\n"
        "        return str != null && str.contains(\"test-keys\");\n"
        "    }\n"
        "\n"
        "    public static boolean checkRoot3() {\n"
        "        for (String str : new String[]{\"/system/app/Superuser.apk\", \"/system/xbin/daemonsu\", \"/system/etc/init.d/99SuperSUDaemon\", \"/system/bin/.ext/.su\", \"/system/etc/.has_su_daemon\", \"/system/etc/.installed_su_daemon\", \"/dev/com.koushikdutta.superuser.daemon/\"}) {\n"
        "            if (new File(str).exists()) {\n"
        "                return true;\n"
        "            }\n"
        "        }\n"
        "        return false;\n"
        "    }\n"
        "}\n"
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")

    evidence = scan(tmp_path, signatures)

    assert evidence.root_confidence >= 0.7, (
        f"real UnCrackable3 root-detection code only scored {evidence.root_confidence}, "
        f"below the 0.7 threshold - existing signatures don't actually generalize"
    )
    matched_ids = {e.signature_id for e in evidence.root_evidence}
    assert "root_build_tags_test_keys" in matched_ids
    assert "root_su_via_path_env_check" in matched_ids
    assert "root_known_indicator_files" in matched_ids


def test_scan_records_correct_line_number(tmp_path):
    (tmp_path / "sub").mkdir()
    file_path = tmp_path / "sub" / "Check.java"
    file_path.write_text("line one\nline two\nString s = \"test-keys\";\n")
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")

    evidence = scan(tmp_path, signatures)

    matches = [e for e in evidence.root_evidence if e.signature_id == "root_build_tags_test_keys"]
    assert len(matches) == 1
    assert matches[0].line_or_offset == 3


def test_scan_no_longer_matches_okhttps_own_library_internals(tmp_path):
    """Regression test locking in the fix for a real false positive: a real
    production app (PropertyGuru) scored SSL confidence 0.90 purely from
    okhttp_certificate_pinner/custom_trustmanager_checkservertrusted
    matching OkHttp's OWN bundled library source, not app-level pinning
    code. Lines quoted verbatim from the real decompiled evidence -
    CertificatePinner.java:75 (a jadx-generated comment referencing the
    class's own fully-qualified name) and OkHttpClient.java (X509TrustManager
    used only as a field/parameter type, never `implements`)."""
    (tmp_path / "CertificatePinner.java").write_text(
        "        check$okhttp(hostname, new Function0<List<? extends X509Certificate>>() { "
        "// from class: okhttp3.CertificatePinner$check$1\n"
    )
    (tmp_path / "OkHttpClient.java").write_text(
        "    private final X509TrustManager x509TrustManager;\n"
        "    public final X509TrustManager getX509TrustManager() {\n"
        "        return this.x509TrustManager;\n"
        "    }\n"
    )
    (tmp_path / "AndroidCertificateChainCleaner.java").write_text(
        "            List<X509Certificate> checkServerTrusted = this.x509TrustManagerExtensions."
        "checkServerTrusted((X509Certificate[]) chain.toArray(new X509Certificate[0]), \"RSA\", hostname);\n"
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")

    evidence = scan(tmp_path, signatures)

    assert evidence.ssl_confidence == 0
    assert evidence.ssl_evidence == []


def test_scan_still_matches_genuine_certificate_pinner_configuration(tmp_path):
    # The fix must not throw out real positives - actual pin configuration
    # (the Builder() construction call an app makes to set real pins) still
    # has to match.
    (tmp_path / "NetworkModule.java").write_text(
        "        CertificatePinner pinner = new CertificatePinner.Builder()\n"
        "            .add(\"example.com\", \"sha256/AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=\")\n"
        "            .build();\n"
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")

    evidence = scan(tmp_path, signatures)

    matched_ids = {e.signature_id for e in evidence.ssl_evidence}
    assert "okhttp_certificate_pinner" in matched_ids
    assert "certificate_pin_hash_literal" in matched_ids
    assert evidence.ssl_confidence >= 0.7  # a genuine, fully-configured pinning setup clears threshold


def test_scan_matches_network_security_config_pinning(tmp_path):
    """Lock in the NSC pin-format gap (the definitive, framework-enforced
    mechanism the old hash signature ignored). A real res/xml/
    network_security_config.xml <pin-set> with SHA-256 pin digests must clear
    the 0.7 threshold - the exact format RS_CertPinning uses (ground-truth
    ssl:true). Mirrors the OkHttp case above for the NSC path. Line quoted
    verbatim from RS_CertPinning's real decompiled config."""
    xml_dir = tmp_path / "res" / "xml"
    xml_dir.mkdir(parents=True)
    (xml_dir / "network_security_config.xml").write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<network-security-config>\n'
        '    <domain-config cleartextTrafficPermitted="false">\n'
        '        <domain includeSubdomains="true">redshift.co.za</domain>\n'
        '        <pin-set expiration="2022-12-12">\n'
        '            <pin digest="SHA-256">I5BOcK7tESNS+BBUyECFrINDAEmtrUjoo/YVT539mP0=</pin>\n'
        '        </pin-set>\n'
        '    </domain-config>\n'
        '</network-security-config>\n'
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")

    evidence = scan(tmp_path, signatures)

    matched_ids = {e.signature_id for e in evidence.ssl_evidence}
    assert "network_security_config_pinset" in matched_ids
    assert "network_security_config_pin_digest" in matched_ids
    assert evidence.ssl_confidence >= 0.7


def test_scan_still_matches_genuine_custom_trustmanager_implementation(tmp_path):
    (tmp_path / "PinningTrustManager.java").write_text(
        "public class PinningTrustManager implements X509TrustManager {\n"
        "    public void checkServerTrusted(X509Certificate[] chain, String authType) {}\n"
        "}\n"
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")

    evidence = scan(tmp_path, signatures)

    matched_ids = {e.signature_id for e in evidence.ssl_evidence}
    assert "custom_trustmanager_checkservertrusted" in matched_ids


def test_scan_counts_unreadable_files_separately(tmp_path, monkeypatch):
    # RESID-4G: an unreadable candidate was silently dropped while
    # scanned_file_count still counted it as scanned - a NEITHER from a
    # half-read corpus looked like a full scan. It must be counted separately
    # so coverage/reporting can treat the scan as degraded, not certified-clean.
    # chmod(0) is NOT used to trigger the OSError: the test runner runs as root
    # (WSL), where chmod-000 still allows reading, so the file would be read
    # fine and the guard never fire. Instead monkeypatch Path.read_text to raise
    # OSError for exactly the blocked file - deterministic regardless of uid.
    good = tmp_path / "Good.java"
    good.write_text("public class Good {}\n")
    blocked = tmp_path / "Blocked.java"
    blocked.write_text("public class Blocked {}\n")

    from pathlib import Path

    real_read_text = Path.read_text

    def flaky_read_text(self, *args, **kwargs):
        if self.name == "Blocked.java":
            raise OSError("simulated unreadable file")
        return real_read_text(self, *args, **kwargs)

    monkeypatch.setattr(Path, "read_text", flaky_read_text)

    sig = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, sig)

    assert evidence.scanned_file_count == 2           # both files walked
    assert evidence.unreadable_file_count == 1        # Blocked.java surfaced, not hidden
    # Finding J: the count is honest but must also be actionable - the offending
    # file's path (relative to the root) is carried so the report/console can
    # name it instead of leaving a reviewer unable to tell which file to inspect.
    assert evidence.unreadable_files == ["Blocked.java"]


def test_scan_skips_apktool_original_binary_archival_subtree(tmp_path, monkeypatch):
    # Real-app finding (verified on InsecureBankv2 / UnCrackable1 / PropertyGuru):
    # every run reported "1 candidate file(s) could not be read:
    # original/AndroidManifest.xml". apktool's `original/` subtree is its archival
    # of the *untouched binary* resources - that AndroidManifest.xml is Android
    # binary XML, not text - so read_text(utf-8) raised UnicodeDecodeError on
    # every scan. That false "degraded scan" CAUTION drowned out genuine OSError
    # surfacing (RESID-4G). The archival subtree must be excluded from collection:
    # a binary resource is not a source candidate by construction, and the decoded
    # manifest/resources live at the apktool root and under res/ anyway.
    decoded_manifest = tmp_path / "AndroidManifest.xml"
    decoded_manifest.write_text("<manifest><application><pin-set/></application></manifest>\n")
    arch = tmp_path / "original" / "AndroidManifest.xml"
    arch.parent.mkdir(parents=True)
    arch.write_bytes(b"\x03\x00\x08\x00" + b"\x00" * 64)  # Android binary XML magic

    from static.signatures import scan

    sig = load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")
    evidence = scan(tmp_path, sig)

    assert evidence.scanned_file_count == 1        # only the decoded manifest walked
    assert evidence.unreadable_file_count == 0     # binary archival not surfaced as a failure
    assert evidence.unreadable_files == []


def _advancing_monotonic(step):
    """A fake ``time.monotonic`` that advances by ``step`` seconds on EVERY call, so a
    budget guard measuring any interval observes at least ``step`` elapsed -
    deterministically, on every platform. The ReDoS-budget tests below previously
    zeroed the budget and relied on real ``time.monotonic()`` yielding a strictly
    positive elapsed; on a coarse-clock OS (Windows, ~15 ms resolution) a trivial scan
    rounds elapsed to exactly ``0.0``, so ``0.0 > 0.0`` is false and the guard never
    fires - a platform-dependent test of the clock, not of the guard. Simulating time
    exercises the guard's real comparison directly and removes the wall-clock
    dependency (audit finding C1)."""
    t = 0.0

    def monotonic():
        nonlocal t
        t += step
        return t

    return monotonic


def test_scan_raises_loudly_on_regex_backtracking_budget(tmp_path, monkeypatch):
    # Drive the per-line ReDoS budget guard by SIMULATED time - advance the clock by
    # more than one budget per read - instead of a zeroed budget plus real wall-clock.
    # The first measured interval then exceeds the (real) budget on every platform and
    # the guard fires, proving the guard logic independent of clock resolution or
    # regex linearity.
    import static.signatures as sig_mod
    monkeypatch.setattr(
        sig_mod.time, "monotonic",
        _advancing_monotonic(sig_mod.LINE_MATCH_BUDGET_SECONDS + 1.0),
    )
    (tmp_path / "Main.java").write_text("public class Main { void m() {} }\n")

    bad = tmp_path / "bad.yaml"
    bad.write_text(
        "- id: slow\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: regex\n"
        "  patterns:\n"
        "    - '.*'\n"
        "  evidence_type: bytecode_string\n",
        encoding="utf-8",
    )
    sigs = load_signatures(bad)

    # New honest message names both possible causes and reports the line length
    # (the discriminator); assert the guard still fires loudly and surfaces the
    # line length, independent of regex linearity.
    with pytest.raises(TimeoutError, match=r"\(\d+ chars\)"):
        scan(tmp_path, sigs)


def test_scan_per_line_budget_message_does_not_misattribute_to_linear_signature(tmp_path, monkeypatch):
    # Principle 3 / honesty: the per-line ReDoS budget is CUMULATIVE across all
    # signatures on one line, so it can trip from the aggregate cost over a very
    # long line (a minified .js/.bundle is one multi-MB line, and those suffixes
    # are scanned) with NO regex backtracking at all. The message must not then
    # assert the signature that happened to run last "is catastrophically
    # backtracking (ReDoS)" - here that signature is a trivial string_literal
    # that cannot backtrack and is not even a regex. It must still fail loud, name
    # BOTH causes, and report the line length (the discriminator). Reproduced
    # against the shipped code before the fix: the old message falsely blamed this
    # innocent linear signature and told the operator to linearize a non-regex.
    import static.signatures as sig_mod
    monkeypatch.setattr(
        sig_mod.time, "monotonic",
        _advancing_monotonic(sig_mod.LINE_MATCH_BUDGET_SECONDS + 1.0),
    )
    # PERF-3 (LITPREF): the literal gate skips a string_literal signature on a line
    # that cannot contain its pattern, so the per-line budget is only exercised for
    # literals that could actually match. Put the pattern on the line so the gate
    # fires and _line_matches (and therefore the budget check at signatures.py:850)
    # still runs for this innocent linear signature - the scenario the test guards.
    (tmp_path / "Main.java").write_text("class A { String su = \"x\"; }\n")

    innocent = tmp_path / "innocent.yaml"
    innocent.write_text(
        "- id: innocent_linear_marker\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: string_literal\n"
        "  patterns:\n"
        "    - 'su'\n"
        "  evidence_type: bytecode_string\n",
        encoding="utf-8",
    )
    sigs = load_signatures(innocent)

    with pytest.raises(TimeoutError) as excinfo:
        scan(tmp_path, sigs)
    msg = str(excinfo.value)
    assert "is catastrophically backtracking" not in msg     # no false specific-cause claim
    assert "chars)" in msg                                    # line length surfaced
    assert "either" in msg and "unusually long line" in msg   # both causes named
    assert "innocent_linear_marker" in msg                    # named as executing, not blamed


def test_scan_raises_loudly_on_multiline_regex_backtracking_budget(tmp_path, monkeypatch):
    # The MULTILINE path has its own ReDoS budget guard (the whole-text pass in
    # signatures.scan(), distinct from the per-line guard the sibling tests above
    # exercise). A multiline regex signature routes past the per-line loop to the
    # whole-text pass, where a simulated over-budget interval must raise TimeoutError
    # naming the multiline path specifically. Fail-loud (NFR-1), never silent. Driven
    # by simulated time (see _advancing_monotonic) so it fires on every platform.
    import static.signatures as sig_mod
    monkeypatch.setattr(
        sig_mod.time, "monotonic",
        _advancing_monotonic(sig_mod.LINE_MATCH_BUDGET_SECONDS + 1.0),
    )
    (tmp_path / "Main.java").write_text("public class Main { void m() {} }\n")

    bad = tmp_path / "bad.yaml"
    bad.write_text(
        "- id: slow_multi\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: regex\n"
        "  multiline: true\n"
        "  patterns:\n"
        "    - '.*'\n"
        "  evidence_type: bytecode_string\n",
        encoding="utf-8",
    )
    sigs = load_signatures(bad)

    with pytest.raises(TimeoutError, match="multiline matching"):
        scan(tmp_path, sigs)


def test_root_runtime_exec_su_regex_is_linear():
    # ReDoS regression: the former 'Runtime\.getRuntime\(\)\.exec\(.*su.*\)'
    # backtracked quadratically on a long line of su tokens with no closing
    # paren (verified 10-47s). The linearized form must not hang. Directly
    # matches the corpus regex against a hostile input and bounds the time.
    import re
    import time
    sigs = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    pat = next(s.patterns[0] for s in sigs if s.id == "root_runtime_exec_su")

    hostile = "Runtime.getRuntime().exec(" + "su " * 120000 + "x" * 200
    start = time.monotonic()
    re.search(pat, hostile)
    elapsed = time.monotonic() - start
    assert elapsed < 1.0, f"root_runtime_exec_su backtracks catastrophically: {elapsed:.2f}s"


def test_root_runtime_exec_su_matches_every_real_corpus_form():
    # An adversarial audit claimed the ReDoS-linearized exec-su regex silently
    # regressed to a false negative and proposed exec\(\s*"[^"]*su as the fix.
    # Both are wrong, and locked here: the CURRENT pattern matches every real
    # decompiled form (the command-slot and all three array-slot forms below),
    # while the proposed replacement drops the array forms (leading token is
    # 'new', not a quote). This pins the real coverage so a future
    # "improvement" that regresses it fails loudly instead of silently
    # weakening native-app root detection.
    sigs = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    sig = next(s for s in sigs if s.id == "root_runtime_exec_su")
    real_forms = [
        'Runtime.getRuntime().exec("su"',
        'Runtime.getRuntime().exec("su -c id"',
        'Runtime.getRuntime().exec(new String[]{"su", "ls /data/data/"}',
        'Runtime.getRuntime().exec(new String[]{"/system/bin/which", "su"}',
        'Runtime.getRuntime().exec(new String[]{"which", "su"}',
    ]
    for form in real_forms:
        assert _line_matches(form, sig) is not None, f"current pattern missed real form: {form}"


def test_scan_counts_decode_dropped_files_as_unreadable(tmp_path):
    # errors="ignore" was a second silent partial-read path: a file with
    # malformed bytes was read with the bad bytes stripped while still counted
    # as fully scanned. scan() now reads strict and counts a file that cannot
    # fully decode as unreadable, the same as an OSError - so a NEITHER built
    # over stripped files is flagged, not certified clean.
    good = tmp_path / "Good.java"
    good.write_text("public class Good {}\n")
    malformed = tmp_path / "Malformed.java"
    malformed.write_bytes(b"public class Bad { \xff\xfe }\n")  # 0xFF is invalid UTF-8

    sig = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, sig)

    assert evidence.scanned_file_count == 2            # both files walked
    assert evidence.unreadable_file_count == 1         # Malformed.java surfaced, not stripped
    # Finding J: the decode-failure path names the file too.
    assert evidence.unreadable_files == ["Malformed.java"]


def _write_sig(tmp_path, body):
    """Write one inline signature YAML (defaults: case_sensitive=True,
    multiline=False) and load it. Used by the L-M9 tests below."""
    (tmp_path / "sigs.yaml").write_text("---\n" + body + "\n", encoding="utf-8")
    return load_signatures(tmp_path / "sigs.yaml")


def test_scan_case_insensitive_regex_matches_mixed_case_variant(tmp_path):
    # L-M9 (S5/G10): a case-insensitive regex must catch a mixed-case variant
    # of a known technique that the case-sensitive default silently misses.
    # The existing corpus regexes are case-sensitive by default - this is the
    # opt-in escape hatch that catches "Test-Keys"/"Su" without changing any
    # calibrated confidence.
    sigs = _write_sig(
        tmp_path,
        "- id: root_build_tags\n"
        "  category: root\n"
        "  weight: 0.6\n"
        "  pattern_type: regex\n"
        "  patterns: ['Build\\.TAGS.*test-keys']\n"
        "  evidence_type: bytecode_string\n"
        "  case_sensitive: false\n",
    )
    (tmp_path / "Main.java").write_text('String t = Build.TAGS.contains("TeSt-KeYs");\n')

    evidence = scan(tmp_path, sigs)

    matched = [e for e in evidence.root_evidence if e.signature_id == "root_build_tags"]
    assert len(matched) == 1
    assert "TeSt-KeYs" in matched[0].matched_text
    assert evidence.root_confidence == 0.6


def test_scan_case_insensitive_string_literal_matches_mixed_case(tmp_path):
    # L-M9: the same opt-in applies to string_literal/class_reference patterns
    # (folded-case comparison), so a literal that real code ships in a different
    # case - e.g. "Su" instead of "su" in a path check - stops escaping.
    sigs = _write_sig(
        tmp_path,
        "- id: root_su_binary\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['/system/bin/su']\n"
        "  evidence_type: bytecode_string\n"
        "  case_sensitive: false\n",
    )
    (tmp_path / "Main.java").write_text('new File("/system/bin/SU").exists();\n')

    evidence = scan(tmp_path, sigs)

    assert evidence.root_confidence == 0.5
    assert {e.signature_id for e in evidence.root_evidence} == {"root_su_binary"}


def test_scan_case_sensitive_default_still_misses_mixed_case(tmp_path):
    # Guard against regression: WITHOUT case_sensitive: false, the default must
    # keep today's exact behavior - a mixed-case literal does NOT match. This
    # pins that opting a signature in is a deliberate, explicit change, never
    # something that happens by default to existing calibrated confidence.
    sigs = _write_sig(
        tmp_path,
        "- id: root_su_binary\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['/system/bin/su']\n"
        "  evidence_type: bytecode_string\n",
    )
    (tmp_path / "Main.java").write_text('new File("/system/bin/SU").exists();\n')

    evidence = scan(tmp_path, sigs)

    assert evidence.root_confidence == 0
    assert evidence.root_evidence == []


def test_scan_multiline_regex_matches_span_line_variant_with_line_number(tmp_path):
    # L-M9: a regex that spans lines (a declaration or call wrapped by the
    # decompiler / formatter) can never match any single line. With multiline:
    # true the pattern runs against the whole file text under DOTALL, and the
    # recorded Evidence row points at the line where the match starts.
    sigs = _write_sig(
        tmp_path,
        "- id: root_exec_su\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: regex\n"
        "  patterns: ['Runtime\\.getRuntime\\(\\)\\s*\\.exec\\(\\s*\"[^\"]*su']\n"
        "  evidence_type: bytecode_string\n"
        "  multiline: true\n",
    )
    # The call spans two lines - a single-line scan sees neither the exec( nor
    # the "su" token together.
    (tmp_path / "Main.java").write_text(
        "import android.os.*;\n"
        "void check() {\n"
        "    Runtime.getRuntime()\n"
        "        .exec(\"su -c id\");\n"
        "}\n"
    )

    evidence = scan(tmp_path, sigs)

    matched = [e for e in evidence.root_evidence if e.signature_id == "root_exec_su"]
    assert len(matched) == 1
    assert matched[0].line_or_offset == 3  # where the match begins (the Runtime.getRuntime() line)
    assert evidence.root_confidence == 0.5


def test_load_signatures_rejects_non_bool_case_sensitive_loudly(tmp_path):
    # L-M9: a YAML typo (case_sensitive: "true" as a string) must fail at load,
    # not truthy-silently flip detection behavior at scan time.
    (tmp_path / "bad.yaml").write_text(
        "- id: bad\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['x']\n"
        "  evidence_type: bytecode_string\n"
        "  case_sensitive: 'true'\n",
        encoding="utf-8",
    )
    with pytest.raises(ValueError, match="case_sensitive"):
        load_signatures(tmp_path / "bad.yaml")


def test_load_signatures_rejects_multiline_on_non_regex_loudly(tmp_path):
    # L-M9: multiline matching only exists for regex. Allowing it on a
    # string_literal/class_reference would be a silent no-op (that path has no
    # whole-text mode), so it must be rejected at load like any other bad field.
    (tmp_path / "bad.yaml").write_text(
        "- id: bad\n"
        "  category: root\n"
        "  weight: 0.5\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['x']\n"
        "  evidence_type: bytecode_string\n"
        "  multiline: true\n",
        encoding="utf-8",
    )
    with pytest.raises(ValueError, match="multiline"):
        load_signatures(tmp_path / "bad.yaml")


def test_scan_evidence_carries_deterministic_verification_state(tmp_path):
    # principle 2 / ADR-0001: every finding carries its verification tier. All
    # evidence from this deterministic engine is deterministic_matched by
    # construction - it must be stamped on the row, never left untyped, so a
    # report/consumer cannot blend it with an AI-hypothesized finding.
    (tmp_path / "Root.java").write_text('Runtime.getRuntime().exec("su -c id")\n')
    sigs = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, sigs)

    assert evidence.root_evidence
    for e in evidence.root_evidence:
        assert e.verification_state == "deterministic_matched"


def test_scan_includes_smali_as_a_scanned_surface(tmp_path):
    # L-M3 (S1): apktool's .smali is the fallback evidence layer that survives
    # even when jadx's .java decompile is partial (PropertyGuru). Root-detection
    # string constants appear in smali as const-strings, and the scan must walk
    # them - previously .smali was excluded from SCANNED_SUFFIXES, so this
    # evidence surface was walked (apktool output was already a scan root) but
    # ignored. Verify a .smali const-string is scanned and credited.
    sig_yaml = tmp_path / "sigs.yaml"
    sig_yaml.write_text(
        "- id: root_su\n"
        "  category: root\n"
        "  weight: 0.8\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['/system/bin/su']\n"
        "  evidence_type: root\n",
        encoding="utf-8",
    )
    (tmp_path / "Main.smali").write_text(
        '.class public Lcom/example/Main;\n'
        'const-string v0, "/system/bin/su"\n',
        encoding="utf-8",
    )

    evidence = scan(tmp_path, load_signatures(sig_yaml))

    assert evidence.root_confidence == 0.8  # smali evidence credited
    assert len(evidence.root_evidence) == 1
    assert evidence.root_evidence[0].file == "Main.smali"
    assert evidence.scanned_file_count == 1  # the .smali file was walked


def test_java_regex_signatures_do_not_false_positive_on_smali(tmp_path):
    # L-M3 (S1): adding .smali to SCANNED_SUFFIXES must be strictly additive -
    # Java-oriented regex signatures must not misfire against smali's structured
    # syntax (;->, $Builder, Ljavax/net/ssl/...;). Use the REAL signature files
    # (not hand-rolled regexes) against the exact smali spellings of the Java
    # code the patterns legitimately target: the OkHttp pinner as a class ref,
    # the TrustManager as `.implements`, the runtime exec as an invoke-static.
    # The fixture deliberately omits root path const-strings (which smali SHOULD
    # catch) so a nonzero score here would mean a genuine java-regex false positive.
    root_sigs = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    ssl_sigs = load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")

    (tmp_path / "A.smali").write_text(
        '.class public Lokhttp3/CertificatePinner$Builder;\n'
        '.implements Ljavax/net/ssl/X509TrustManager;\n'
        'invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;\n'
        'invoke-virtual {v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;\n',
        encoding="utf-8",
    )

    evidence_root = scan(tmp_path, root_sigs)
    evidence_ssl = scan(tmp_path, ssl_sigs)

    # None of the java regex signatures fire on smali syntax - adding .smali to
    # SCANNED_SUFFIXES is additive, not a new false-positive source.
    assert evidence_root.root_confidence == 0.0
    assert evidence_root.root_evidence == []
    assert evidence_ssl.ssl_confidence == 0.0
    assert evidence_ssl.ssl_evidence == []


def test_ssl_trust_all_and_hostname_bypass_signatures_fire_on_java(tmp_path):
    # L-M5: the two new SSL signatures (trust_all_x509_checkservertrusted,
    # hostname_verifier_always_true) must detect the canonical trust-all bypass
    # pair in real decompiled Java - and use the L-M9 multiline + case-insensitive
    # flags (which L-M5 noted were available but unused) since the decompiler
    # splits the signature and body across lines.
    ssl_sigs = load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")
    ids = {s.id for s in ssl_sigs}
    assert "trust_all_x509_checkservertrusted" in ids
    assert "hostname_verifier_always_true" in ids

    (tmp_path / "TrustAll.java").write_text(
        "TrustManager tm = new X509TrustManager() {\n"
        "    public void checkServerTrusted(X509Certificate[] chain,\n"
        "            String authType) throws CertificateException {\n"
        "    }\n"
        "    public java.security.cert.X509Certificate[] getAcceptedIssuers() { return new X509Certificate[0]; }\n"
        "};\n",
        encoding="utf-8",
    )
    (tmp_path / "HostBypass.java").write_text(
        "HostnameVerifier hv = new HostnameVerifier() {\n"
        "    public Boolean verify(String hostname, SSLSession session) {\n"
        "        return true;\n"
        "    }\n"
        "};\n",
        encoding="utf-8",
    )

    evidence = scan(tmp_path, ssl_sigs)

    matched = {e.signature_id for e in evidence.ssl_evidence}
    assert "trust_all_x509_checkservertrusted" in matched
    assert "hostname_verifier_always_true" in matched
    # `Boolean` (boxed, capital B) and the split lines prove the case-insensitive
    # + multiline flags are actually doing work, not just defaulted.
    assert evidence.ssl_confidence >= 0.35


def test_ssl_new_signatures_do_not_fire_on_well_formed_tls_code(tmp_path):
    # L-M5 false-positive guard: an empty checkServerTrusted body and an
    # unconditional-return-true verify are the bypasses - well-formed TLS code
    # that actually validates must NOT match them.
    ssl_sigs = load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")

    (tmp_path / "Good.java").write_text(
        "public void checkServerTrusted(X509Certificate[] chain, String authType) {\n"
        "    validate(chain, authType);\n"
        "}\n",
        encoding="utf-8",
    )
    (tmp_path / "GoodVerify.java").write_text(
        "public boolean verify(String hostname, SSLSession session) {\n"
        "    return hostname.equals(expected);\n"
        "}\n",
        encoding="utf-8",
    )

    evidence = scan(tmp_path, ssl_sigs)

    matched = {e.signature_id for e in evidence.ssl_evidence}
    assert "trust_all_x509_checkservertrusted" not in matched  # body not empty
    assert "hostname_verifier_always_true" not in matched       # verify not unconditional-true


def test_scan_offheap_sqlite_xref_is_complete_beyond_inmemory_cap(tmp_path):
    # L-M1 (off-heap xref): when sqlite_path is given, scan() persists EVERY
    # match to a SQLite evidence table - complete and queryable off-heap - while
    # the in-memory list stays capped at MAX_EVIDENCE_PER_SIGNATURE. A signature
    # matching 100 lines must yield 100 sqlite rows but only 50 in-memory rows.
    import sqlite3
    from static.signatures import MAX_EVIDENCE_PER_SIGNATURE

    sig_yaml = tmp_path / "sigs.yaml"
    sig_yaml.write_text(
        "- id: root_su\n"
        "  category: root\n"
        "  weight: 0.8\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['/system/bin/su']\n"
        "  evidence_type: root\n",
        encoding="utf-8",
    )
    (tmp_path / "Many.java").write_text("String s = \"/system/bin/su\";\n" * 100, encoding="utf-8")
    db = tmp_path / "xref.sqlite"

    evidence = scan(tmp_path, load_signatures(sig_yaml), sqlite_path=db)

    con = sqlite3.connect(db)
    (row_count,) = con.execute("SELECT COUNT(*) FROM evidence").fetchone()
    (root_rows,) = con.execute(
        "SELECT COUNT(*) FROM evidence WHERE category='root' AND signature_id='root_su'"
    ).fetchone()
    con.close()
    assert root_rows == 100        # complete off-heap index, uncapped
    assert row_count == 100
    assert len(evidence.root_evidence) == MAX_EVIDENCE_PER_SIGNATURE  # in-memory stays capped
    assert evidence.root_confidence == 0.8  # confidence unaffected by the xref


def test_scan_matches_hybrid_asset_suffixes(tmp_path):
    # Gap closure: the SCANNED_SUFFIXES expansion to hybrid/asset files
    # (.js/.jsbundle/.bundle/.json/.properties/.txt) is exercised here so RN /
    # Flutter-style assets are PROVABLY scanned and matched, not just declared in
    # the tuple. is_known_third_party(None)=False means an asset file (no
    # sources//smali/ namespace) is kept and scanned - that is exactly what
    # surfaces inlined root/SSL checks from bundled JS / config. .yaml stays
    # excluded, proving the filter is an allow-list, not a broadened everything.
    sig_yaml = tmp_path / "sigs.yaml"
    sig_yaml.write_text(
        "- id: root_su\n"
        "  category: root\n"
        "  weight: 0.6\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['/system/bin/su']\n"
        "  evidence_type: root\n"
        "- id: ssl_pinner\n"
        "  category: ssl\n"
        "  weight: 0.6\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['CertificatePinner']\n"
        "  evidence_type: ssl\n",
        encoding="utf-8",
    )
    (tmp_path / "index.android.jsbundle").write_text(
        "if (fs.existsSync('/system/bin/su')) { root = true; }\n"
        "const ok = new CertificatePinner.Builder().build();\n",
        encoding="utf-8",
    )
    (tmp_path / "config.properties").write_text("su_path=/system/bin/su\n")
    (tmp_path / "settings.json").write_text('{"pinning":"CertificatePinner"}\n')
    (tmp_path / "notes.txt").write_text("check /system/bin/su here\n")
    (tmp_path / "meta.yaml").write_text("root: /system/bin/su\n", encoding="utf-8")

    evidence = scan(tmp_path, load_signatures(sig_yaml))

    # the four hybrid/asset files are scanned; .yaml (and the .yaml sig file) remain excluded
    assert evidence.scanned_file_count == 4
    assert evidence.root_confidence == 0.6   # weight once per signature, not per file
    assert evidence.ssl_confidence == 0.6
    matched_files = {e.file for e in evidence.root_evidence + evidence.ssl_evidence}
    assert any(f.endswith(".jsbundle") for f in matched_files)
    assert any(f.endswith(".json") or f.endswith(".properties") for f in matched_files)
    assert any(f.endswith(".txt") for f in matched_files)


def test_scan_matches_webview_html_container(tmp_path):
    # Gap A2: WebView containers hold inlined <script> root/SSL checks. .html/.htm
    # are in SCANNED_SUFFIXES, so an assets/index.html is PROVABLY scanned and
    # matched (not just declared). An asset file has no sources//smali/ namespace
    # (is_known_third_party(None)=False), so it is kept and its inlined check
    # surfaces.
    sig_yaml = tmp_path / "sigs.yaml"
    sig_yaml.write_text(
        "- id: root_su\n"
        "  category: root\n"
        "  weight: 0.6\n"
        "  pattern_type: string_literal\n"
        "  patterns: ['/system/bin/su']\n"
        "  evidence_type: root\n",
        encoding="utf-8",
    )
    (tmp_path / "index.html").write_text(
        "<html><script>\n"
        "if (checkSu('/system/bin/su')) { /* rooted */ }\n"
        "</script></html>\n",
        encoding="utf-8",
    )
    (tmp_path / "index.htm").write_text(
        "<script>if (busybox('/system/bin/su')) { /* rooted */ }</script>\n",
        encoding="utf-8",
    )

    evidence = scan(tmp_path, load_signatures(sig_yaml))

    assert evidence.scanned_file_count == 2
    assert evidence.root_confidence == 0.6  # weight once per signature, not per file
    matched_files = {e.file for e in evidence.root_evidence}
    assert any(f.endswith(".html") for f in matched_files)
    assert any(f.endswith(".htm") for f in matched_files)


def test_scan_marks_unattributed_indicator_category(tmp_path):
    # Boundary-1: a file with root-DETECTION-shaped code (isRooted()) that
    # matches NO root signature => root lands in unattributed_indicators, so
    # coverage can mark it "unknown, not absent" instead of a silent clean.
    from static.indicators import find_indicator_categories

    (tmp_path / "RootGuard.java").write_text(
        "public class RootGuard {\n"
        "    boolean isRooted() { return detectRoot(); }\n"
        "}\n"
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, signatures)

    # isRooted()/detectRoot() are indicator idioms, none of which is a signature.
    assert find_indicator_categories(
        (tmp_path / "RootGuard.java").read_text()
    ) == {"root"}
    assert evidence.root_confidence == 0.0       # no signature matched
    assert evidence.root_evidence == []
    assert evidence.unattributed_indicators == {"root": True}


def test_scan_no_unattributed_indicator_when_signature_matches(tmp_path):
    # When a recognized root signature fires, the category is MATCHED - its
    # indicators belong to a known technique, so it must NOT be unattributed.
    (tmp_path / "RootCheck.java").write_text(
        "public class RootCheck {\n"
        "    boolean isRooted() { return new File(\"/system/bin/su\").exists(); }\n"
        "}\n"
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, signatures)
    assert evidence.root_confidence > 0
    assert "root" not in evidence.unattributed_indicators


def test_scan_clean_file_has_no_unattributed_indicators(tmp_path):
    (tmp_path / "Main.java").write_text("public class Main { int x = 1; }\n")
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, signatures)
    assert evidence.unattributed_indicators == {}


def test_scan_matches_emulator_detection_and_not_benign(tmp_path):
    # A real emulator-detection probe - checking Build.HARDWARE for the
    # goldfish emulator or the ro.kernel.qemu system property - surfaces as root
    # evidence; a benign device-ID read that never touches an emulator-specific
    # value must NOT match (the signature uses emulator-only literals, not the
    # bare Build.FINGERPRINT/MODEL read by analytics).
    (tmp_path / "EmulatorCheck.java").write_text(
        "public class EmulatorCheck {\n"
        "    boolean isEmulator() {\n"
        "        String hw = android.os.Build.HARDWARE;\n"
        "        return hw.contains(\"goldfish\") || hw.contains(\"sdk_gphone\");\n"
        "    }\n"
        "    boolean qemu() { return Build.getProp(\"ro.kernel.qemu\") != null; }\n"
        "}\n",
        encoding="utf-8",
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, signatures)
    assert any(e.signature_id == "emulator_detection" for e in evidence.root_evidence)

    # benign: reads Build.FINGERPRINT / Build.MODEL for analytics, no emulator
    # value and no Build.HARDWARE probe. Overwrite the SAME file so the detection
    # sample is replaced, not coexisting (scan reads the whole dir).
    (tmp_path / "EmulatorCheck.java").write_text(
        "public class EmulatorCheck {\n"
        "    String id() { return android.os.Build.FINGERPRINT + android.os.Build.MODEL; }\n"
        "}\n",
        encoding="utf-8",
    )
    evidence = scan(tmp_path, signatures)
    assert not any(e.signature_id == "emulator_detection" for e in evidence.root_evidence)


def test_scan_does_not_match_emulator_detection_on_a_bare_build_hardware_read(tmp_path):
    # HARDWARE-GENERIC1. `Build.HARDWARE` is a bare Build.<FIELD> read, and the
    # matcher sees the constant without ever seeing what the app compares it to.
    # The real shapes that fired this signature in the stored corpus are exactly
    # this one: Coil's SvgUtils (SVG feature detection) and CameraX's quirk
    # classes (camera workarounds against a device model name) - the only 2 runs
    # where Build.HARDWARE was the sole matching literal, both in third-party
    # code with no emulator check anywhere in the app. The pattern is gone; this
    # fixture is what says so. The model name below is a real device codename,
    # not an emulator one, deliberately: naming an emulator is still the signal
    # (see emulator_market_artifacts' `ranchu`), reading a build field is not.
    (tmp_path / "Quirk.java").write_text(
        "public class Quirk {\n"
        "    static boolean isAffected() {\n"
        "        String hw = android.os.Build.HARDWARE;\n"
        "        return hw.equals(\"samsungexynos9810\") || hw.startsWith(\"qcom\");\n"
        "    }\n"
        "}\n",
        encoding="utf-8",
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, signatures)
    assert not any(e.signature_id == "emulator_detection" for e in evidence.root_evidence)


def test_scan_matches_build_props_probe_and_not_benign(tmp_path):
    # A real build-props probe reads ro.debuggable / ro.build.fingerprint to
    # fingerprint a debug build; a benign string that merely mentions a property
    # name in prose must not fire as detection.
    (tmp_path / "BuildCheck.java").write_text(
        "public class BuildCheck {\n"
        "    boolean debuggable() {\n"
        "        return \"1\".equals(Build.getProp(\"ro.debuggable\"));\n"
        "    }\n"
        "}\n",
        encoding="utf-8",
    )
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    evidence = scan(tmp_path, signatures)
    assert any(e.signature_id == "build_props_probe" for e in evidence.root_evidence)

    # benign: no ro.* property read, only a generic log line. Overwrite the SAME
    # file so the detection sample is replaced, not coexisting.
    (tmp_path / "BuildCheck.java").write_text(
        "public class BuildCheck { void log() { android.util.Log.d(\"t\", \"secure build\"); } }\n",
        encoding="utf-8",
    )
    evidence = scan(tmp_path, signatures)
    assert not any(e.signature_id == "build_props_probe" for e in evidence.root_evidence)


def test_every_root_and_ssl_signature_has_a_signal():
    # Corpus-level dead-signature check (Batch D): every id in the real
    # root_detection + ssl_pinning YAML must carry at least one non-empty pattern
    # - an id whose patterns are all empty strings can never fire (dead weight
    # that silently overclaims detection surface). Loader already rejects a
    # missing patterns list, so this guards the subtler all-empty case and pins
    # the corpus's real ids, so a renamed/removed signature fails here loudly.
    for yaml_name in ("root_detection.yaml", "ssl_pinning.yaml"):
        sigs = load_signatures(REPO_ROOT / "config" / "signatures" / yaml_name)
        assert sigs, f"{yaml_name} must not be empty"
        ids = {s.id for s in sigs}
        assert len(ids) == len(sigs), f"{yaml_name} has duplicate ids"
        for sig in sigs:
            assert sig.patterns, f"{yaml_name} id '{sig.id}' has empty patterns"
            assert all(isinstance(p, str) and p.strip() for p in sig.patterns), \
                f"{yaml_name} id '{sig.id}' has a blank pattern"


def test_load_signatures_rejects_out_of_range_weight_loudly(tmp_path):
    # A weight outside [0,1] would silently skew the decision engine's scoring.
    (tmp_path / "bad.yaml").write_text(
        "---\n"
        "- id: w\n  category: root\n  weight: 5\n  pattern_type: string_literal\n"
        "  patterns: [x]\n  evidence_type: bytecode_string\n"
    )
    with pytest.raises(ValueError, match="invalid weight"):
        load_signatures(tmp_path / "bad.yaml")


def test_load_signatures_rejects_unknown_pattern_type_loudly(tmp_path):
    # A mistyped pattern_type would silently never match any source pattern.
    (tmp_path / "bad.yaml").write_text(
        "---\n"
        "- id: p\n  category: root\n  weight: 0.5\n  pattern_type: bogus\n"
        "  patterns: [x]\n  evidence_type: bytecode_string\n"
    )
    with pytest.raises(ValueError, match="invalid pattern_type"):
        load_signatures(tmp_path / "bad.yaml")


def test_load_signatures_rejects_missing_patterns_loudly(tmp_path):
    # A signature with no patterns is dead - reject it rather than load a no-op.
    (tmp_path / "bad.yaml").write_text(
        "---\n"
        "- id: n\n  category: root\n  weight: 0.5\n  pattern_type: string_literal\n"
        "  evidence_type: bytecode_string\n"
    )
    with pytest.raises(ValueError, match="no patterns"):
        load_signatures(tmp_path / "bad.yaml")


def test_load_signatures_rejects_non_bool_flag_loudly(tmp_path):
    # L-M9: a string "true" instead of a bool must fail loudly at load - not
    # truthy-silently change detection behavior at scan time.
    (tmp_path / "bad.yaml").write_text(
        "---\n"
        "- id: b\n  category: root\n  weight: 0.5\n  pattern_type: string_literal\n"
        "  patterns: [x]\n  evidence_type: bytecode_string\n  case_sensitive: 'true'\n"
    )
    with pytest.raises(ValueError, match="must be a boolean"):
        load_signatures(tmp_path / "bad.yaml")


def test_collect_files_skips_original_and_non_scanned(tmp_path):
    # _collect_files: walks a corpus returning (file, root) pairs, skipping any
    # `original/` component (apktool's binary-resource archive - reading it would
    # raise a guaranteed UnicodeDecodeError and surface a false degraded-scan
    # signal, RESID-4G) and any non-scanned suffix. Had zero direct coverage.
    from static.signatures import _collect_files
    root = tmp_path / "jadx"
    src = root / "sources" / "com" / "x"
    src.mkdir(parents=True)
    (src / "A.java").write_text("")
    (src / "B.java").write_text("")
    (src / "notes.txt").write_text("")
    orig = root / "original"
    orig.mkdir(parents=True)
    (orig / "AndroidManifest.xml").write_text("binary")
    (orig / "D.java").write_text("")

    pairs = _collect_files([root])
    paths = [p.relative_to(root).as_posix() for p, _ in pairs]
    assert "sources/com/x/A.java" in paths
    assert "sources/com/x/B.java" in paths
    assert "notes.txt" not in paths
    assert all("original" not in p for p in paths)  # never a source candidate


def test_validate_signature_entry_accepts_wellformed(tmp_path):
    # _validate_signature_entry: the load-time gate that rejects signatures
    # which would otherwise silently no-op or crash scan. A well-formed entry
    # must pass through untouched (ADR-0001/principle 3: fail loudly at load,
    # never silently weaker). Had zero coverage.
    from static.signatures import _validate_signature_entry
    entry = {"id": "root_su_path", "category": "root", "weight": 0.7,
             "pattern_type": "string_literal", "patterns": ["/system/bin/su"]}
    _validate_signature_entry(entry, Path("sig.yaml"))  # no raise


def test_validate_signature_entry_rejects_each_invalid_field(tmp_path):
    from pathlib import Path
    from static.signatures import _validate_signature_entry
    p = Path("sig.yaml")
    cases = [
        ({**{"id": "x", "category": "root", "weight": 0.5, "pattern_type": "regex",
             "patterns": ["su"]}, "category": "Root"}, "invalid category"),
        ({**{"id": "x", "category": "root", "weight": 0.5, "pattern_type": "regex",
             "patterns": ["su"]}, "weight": 1.5}, "invalid weight"),
        ({**{"id": "x", "category": "root", "weight": 0.5, "pattern_type": "regex",
             "patterns": ["su"]}, "weight": None}, "invalid weight"),
        ({**{"id": "x", "category": "root", "weight": 0.5, "pattern_type": "regex",
             "patterns": ["su"]}, "pattern_type": "magic"}, "invalid pattern_type"),
        ({"id": "x", "category": "root", "weight": 0.5, "pattern_type": "regex",
          "patterns": []}, "no patterns"),
        ({"id": "x", "category": "root", "weight": 0.5, "pattern_type": "regex",
          "patterns": ["su"], "case_sensitive": "true"}, "must be a boolean"),
        ({"id": "x", "category": "root", "weight": 0.5, "pattern_type": "string_literal",
          "patterns": ["su"], "multiline": True}, "multiline"),
        ({"id": "x", "category": "root", "weight": 0.5, "pattern_type": "regex",
          "patterns": ["(unclosed"]}, "invalid regex"),
    ]
    for entry, needle in cases:
        with pytest.raises(ValueError, match=needle):
            _validate_signature_entry(entry, p)


def test_is_binary_detects_nul_and_degrades_on_unreadable(tmp_path):
    # _is_binary: a NUL byte in the first chunk is the reliable binary signal -
    # text (Java/XML/JS/JSON) never carries one, binary assets (Hermes bundles,
    # .bin.properties) do. It gates skipping non-sources BEFORE a strict UTF-8
    # read so they don't drown real decode failures in degradation noise
    # (RESID-4G). An unreadable file is NOT silently 'binary' - it degrades to
    # False so the read_text path surfaces it as the authoritative degradation.
    # Had zero coverage.
    from static.signatures import _is_binary

    bin_f = tmp_path / "b.jsbundle"
    bin_f.write_bytes(b"\x1c\x00\x00\x00\x00")  # NUL in first chunk
    assert _is_binary(bin_f) is True

    txt = tmp_path / "a.java"
    txt.write_text("public class A { }\n", encoding="utf-8")
    assert _is_binary(txt) is False

    # NUL beyond the probe window does NOT count (keeps big text files safe)
    big = tmp_path / "big.txt"
    big.write_bytes(b"A" * 100000 + b"\x00")
    assert _is_binary(big) is False

    assert _is_binary(tmp_path / "missing.bin") is False  # OSError -> False


def test_line_matches_unknown_pattern_type_raises_loudly():
    # signatures.py:178-179: an unrecognized pattern_type must raise loudly
    # (principle 3 - never silently no-op), never return None as if it had
    # matched or missed. Real coverage proved the raise branch untested.
    from static.signatures import Signature
    sig = Signature(id="x", category="root", weight=0.5,
                    pattern_type="bogus_pattern_type", patterns=["a"],
                    evidence_type="source")
    with pytest.raises(ValueError):
        _line_matches("a", sig)


def test_scan_skips_binary_suffix_file_before_text_read(tmp_path):
    # signatures.py:301-302: a SCANNED_SUFFIX file that is actually binary (NUL
    # in its probe window) is skipped BEFORE the strict UTF-8 read, so it is
    # never mislabeled as degraded text (RESID-4G). It still counts as scanned.
    from static.signatures import Signature, scan
    (tmp_path / "bundle.properties").write_bytes(b"\x00\x00\x1f\xbc\x0c\x00" + b"payload")
    (tmp_path / "A.java").write_text("public class A {}\n")
    sig = Signature(id="s", category="root", weight=0.5, pattern_type="regex",
                    patterns=["payload"], evidence_type="source")
    ev = scan(tmp_path, [sig])
    assert ev.scanned_file_count == 2      # both files were walked
    assert ev.unreadable_file_count == 0   # the binary was skipped, not degraded


def test_scan_latin1_fallback_for_properties_file(tmp_path):
    # signatures.py:313-315: a .properties file with non-UTF-8 bytes is spec'd
    # ISO-8859-1 (Properties.load default), so a strict-UTF-8 decode failure
    # falls back to latin-1 instead of being counted degraded - and the decoded
    # text still matches signatures. A non-.properties UTF-8 failure re-raises
    # and IS counted degraded.
    from static.signatures import Signature, scan
    (tmp_path / "strings.properties").write_bytes(b"check=\xff" + b"/system/bin/su")
    sig = Signature(id="su", category="root", weight=0.5, pattern_type="regex",
                    patterns=["/system/bin/su"], evidence_type="source")
    ev = scan(tmp_path, [sig])
    assert any(e.signature_id == "su" for e in ev.root_evidence)
    assert ev.unreadable_file_count == 0   # latin-1 read succeeded, not degraded


def test_scan_skips_third_party_file_matching_pass(tmp_path):
    # signatures.py:396-397: a bundled-SDK file (recognized vendor namespace)
    # has its WHOLE matching pass skipped - the _record guard would discard
    # every hit anyway, so scanning it is wasted work. Coverage still counts it.
    from static.signatures import Signature, scan
    gms = tmp_path / "com" / "google" / "android" / "gms"
    gms.mkdir(parents=True)
    (gms / "X.java").write_text('String p = "/system/bin/su";\n')
    sig = Signature(id="su", category="root", weight=0.5, pattern_type="regex",
                    patterns=["/system/bin/su"], evidence_type="source")
    ev = scan(tmp_path, [sig])
    assert ev.scanned_file_count == 1
    assert ev.root_evidence == []      # the third-party hit was excluded
    assert ev.unreadable_file_count == 0


def test_scan_keeps_app_owned_file_under_vendor_prefix(tmp_path):
    # Bug-B regression (confident FALSE NEGATIVE): an app whose OWN package sits
    # under a recognized vendor prefix - Cash App is com.squareup.cash, a Google
    # first-party app is com.google.android.apps.* - must have its own source
    # files SCANNED, not excluded as a bundled SDK. The primary scan historically
    # applied a bare is_known_third_party() with no app-package override (unlike
    # the DEX scan and report attribution), so such an app's own SSL/root logic -
    # e.g. a custom X509TrustManager the DEX string scan cannot recover from
    # constants - vanished from the scan while java coverage still read
    # fully_analyzed: a confident NEITHER over the app's own unscanned code.
    from static.signatures import Signature, scan
    appdir = tmp_path / "com" / "squareup" / "cash"
    appdir.mkdir(parents=True)
    (appdir / "Pinning.java").write_text("class C implements X509TrustManager {}\n")
    sig = Signature(id="tm", category="ssl", weight=0.5, pattern_type="regex",
                    patterns=["implements X509TrustManager"], evidence_type="source")

    # No app package known -> historical behavior preserved exactly: com.squareup
    # is a vendor prefix, so with nothing to prove app-ownership the file is
    # excluded (the safe default reduces to the old is_known_third_party check).
    assert scan(tmp_path, [sig]).ssl_evidence == []

    # With the app's own package supplied, the file is app-owned and scanned.
    ev = scan(tmp_path, [sig], app_package="com.squareup.cash")
    assert [e.signature_id for e in ev.ssl_evidence] == ["tm"]
    assert ev.scanned_file_count == 1


def test_scan_still_excludes_genuine_vendor_under_app_package(tmp_path):
    # The fix must not OVER-loosen: with the app package supplied, a genuine
    # bundled-SDK file whose namespace is a vendor NOT under the app package is
    # still excluded (a GMS X509TrustManager is not the app's own logic - the
    # original GAP-1 false positive this exclusion exists to prevent).
    from static.signatures import Signature, scan
    gms = tmp_path / "com" / "google" / "android" / "gms"
    gms.mkdir(parents=True)
    (gms / "X.java").write_text('String p = "/system/bin/su";\n')
    sig = Signature(id="su", category="root", weight=0.5, pattern_type="regex",
                    patterns=["/system/bin/su"], evidence_type="source")
    ev = scan(tmp_path, [sig], app_package="com.squareup.cash")
    assert ev.root_evidence == []       # genuine GMS vendor file still excluded
    assert ev.scanned_file_count == 1


def test_is_third_party_file_bugb_semantics():
    # The shared definition both scanners and report attribution agree on.
    from common import is_third_party_file
    # App-owned under a vendor prefix -> NOT third party (Bug B).
    assert is_third_party_file("com.squareup.cash", "com.squareup.cash") is False
    assert is_third_party_file("com.squareup.cash.ui", "com.squareup.cash") is False
    # Genuine vendor, not under the app package -> third party.
    assert is_third_party_file("com.google.android.gms", "com.squareup.cash") is True
    # No/empty app package -> reduces to the plain vendor check (historical).
    assert is_third_party_file("com.squareup.cash", None) is True
    assert is_third_party_file("com.squareup.cash", "") is True
    # An unknown namespace is never asserted third party (could be app code).
    assert is_third_party_file("sg.vantagepoint.a", "sg.vantagepoint") is False
    assert is_third_party_file("com.myapp", None) is False


def test_2026_corpus_broadening_additions_loaded():
    # 2026 broadening: resetprop/Magisk-hide + rw-system + hardware key
    # attestation (root); Cash-App Paraphrase + Ktor + dart:io SecurityContext
    # (ssl). Pin the new ids and require their representative marker so the
    # corpus can't silently regress to pre-2026 coverage. The native addition
    # is validated by test_native.py's own load of native_detection.yaml.
    root_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")}
    for sig_id, marker in {
        "root_resetprop_magisk": "resetprop",
        "rw_system_mount_check": "/proc/mounts",
        "hardware_key_attestation": "android:attest",
    }.items():
        assert sig_id in root_sigs, f"missing root sig {sig_id}"
        assert marker in root_sigs[sig_id].patterns, (sig_id, marker)

    ssl_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")}
    for sig_id, marker in {
        "pin_cash_paraphrase": "app.cash.paraphrase",
        "ktor_tls_pinning": "io.ktor.client.engine",
        "flutter_dart_io_securitycontext": "badCertificateCallback",
    }.items():
        assert sig_id in ssl_sigs, f"missing ssl sig {sig_id}"
        assert marker in ssl_sigs[sig_id].patterns, (sig_id, marker)


def test_2026_corpus_broadening_round2_additions_loaded():
    # Round 2: TrustKit/NSC edge, Apollo/GraphQL+OkHttp, emulator markets,
    # overlayfs root, PKIX custom-CA, and native Magisk-init/mount hide layers.
    root_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")}
    for sig_id, marker in {
        "emulator_market_artifacts": "com.genymotion",
        "overlayfs_system": "overlayfs",
    }.items():
        assert sig_id in root_sigs, f"missing root sig {sig_id}"
        assert marker in root_sigs[sig_id].patterns, (sig_id, marker)

    ssl_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")}
    for sig_id, marker in {
        "trustkit_android_api": "TrustKitBuilder",
        "nsc_debug_overrides": "<debug-overrides",
        "apollo_graphql_okhttp": "com.apollographql.apollo.ApolloClient",
        "custom_pkix_trust_anchor": "setTrustAnchors",
    }.items():
        assert sig_id in ssl_sigs, f"missing ssl sig {sig_id}"
        assert marker in ssl_sigs[sig_id].patterns, (sig_id, marker)


def test_2026_corpus_broadening_round3_webgrounded_additions_loaded():
    # Round 3 (web-grounded): daemon-socket + zygisk-maps + SELinux-policy probes,
    # root-SDK frameworks (root), TrustKit runtime validator (ssl). Native analog
    # validated by test_native.py's load.
    root_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")}
    for sig_id, marker in {
        "magisk_daemon_socket_scan": "@magisk_service",
        "zygisk_process_maps_scan": "/proc/self/maps",
        "selinux_policy_probe_magisk_ksu": "ksu_file:s0",
        "rootguard_flutter_shield_framework": "flutter_shield",
    }.items():
        assert sig_id in root_sigs, f"missing root sig {sig_id}"
        assert marker in root_sigs[sig_id].patterns, (sig_id, marker)

    ssl_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")}
    assert "trustkit_tsession_pinning_validator" in ssl_sigs
    assert "TSKPinningValidator" in ssl_sigs["trustkit_tsession_pinning_validator"].patterns


def test_ssl_library_presence_signals_cannot_alone_detect():
    """Regression guard for the jerboa false positive (verified 2026-08-27).

    ktor_tls_pinning + apollo_graphql_okhttp are HTTP-client *presence* signals,
    not pinning *configuration*. Before the fix they weighted 0.4 + 0.3 = 0.70 -
    exactly the SSL threshold - so a benign Lemmy client (jerboa) that merely uses
    Ktor + OkHttp for ordinary HTTPS scored SSL-pinning DETECTED. They are now a
    weak 'networking-surface present' tier that cannot alone cross the threshold,
    while the strong pinning-API tier (a real CertificatePinner / NSC <pin-set>)
    still crosses it - so the fix removes the false positive without creating a
    false negative. Confidence aggregates as min(1.0, sum(weights)) (signatures.py);
    threshold = 0.7 (decision_engine.DEFAULT_THRESHOLD).
    """
    THRESHOLD = 0.7  # decision_engine.DEFAULT_THRESHOLD
    ssl = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")}

    # The exact set that fired on jerboa - HTTP-client presence only - must no
    # longer be able to reach DETECTED on its own.
    presence_only = ssl["ktor_tls_pinning"].weight + ssl["apollo_graphql_okhttp"].weight
    assert presence_only < THRESHOLD, (
        f"library-presence signals sum to {presence_only} >= {THRESHOLD}: a plain "
        f"networked app would falsely read SSL-pinning DETECTED (jerboa regression)"
    )

    # The bare OkHttp variable token that matched every OkHttp user is gone.
    assert "okHttpClient" not in ssl["apollo_graphql_okhttp"].patterns

    # A genuine pinning app must still cross the threshold via the strong tier,
    # so the tightening above cannot manufacture a false negative.
    strong_pinning = (
        ssl["okhttp_certificate_pinner"].weight
        + ssl["network_security_config_pinset"].weight
    )
    assert strong_pinning >= THRESHOLD, (
        f"strong pinning-API tier sums to {strong_pinning} < {THRESHOLD}: real "
        f"pinning could be missed"
    )


def test_2026_corpus_broadening_round4_additions_loaded():
    # Round 4 (web-grounded): Play Integrity remediation (root; the Standard
    # flow itself is already covered by play_integrity_standard_attestation, so
    # only the genuinely-new remediation-dialog markers were added), modern RN
    # pinning ecosystem + OkHttp wiring (ssl).
    root_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")}
    for sig_id, marker in {
        "play_integrity_remediation_dialog": "GET_STRONG_INTEGRITY",
    }.items():
        assert sig_id in root_sigs, f"missing root sig {sig_id}"
        assert marker in root_sigs[sig_id].patterns, (sig_id, marker)

    ssl_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/ssl_pinning.yaml")}
    for sig_id, marker in {
        "rn_ssl_pinning_ecosystem": "react-native-ssl-pinning-guard",
        "rn_okhttp_client_factory_pinning": "NetworkingModule",
    }.items():
        assert sig_id in ssl_sigs, f"missing ssl sig {sig_id}"
        assert marker in ssl_sigs[sig_id].patterns, (sig_id, marker)


def test_supath_harvest1_missing_su_literals_extend_existing_signature(tmp_path):
    # SUPATH-HARVEST1. Every su-shaped path literal actually present in the
    # analysed corpus was harvested from decoded DEX and diffed against this
    # file's lists; ten occur for real and these two were the only misses, both
    # standard RootBeer/Sentry `suPaths` entries seen in app-owned detection code
    # (AndroGoat RootDetectionActivity) as well as vendor RootCheckers.
    root_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")}
    sig = root_sigs["su_alternate_binary_paths"]
    assert "/system/bin/failsafe/su" in sig.patterns
    assert "/system/sd/xbin/su" in sig.patterns
    # Recall-only: they extend an EXISTING id, so no new weight enters any
    # confidence sum and the anti-FP invariant (no single signature >= the 0.70
    # threshold) is untouched.
    assert sig.weight == 0.3
    assert not [s for s in root_sigs.values() if "failsafe" in s.id or "sd_xbin" in s.id]
    # And they are reachable through the scanner, not merely present in YAML.
    src = tmp_path / "sources" / "com" / "app"
    src.mkdir(parents=True)
    (src / "RootCheck.java").write_text(
        'boolean r = new File("/system/bin/failsafe/su").exists()\n'
        '    || new File("/system/sd/xbin/su").exists();\n'
    )
    evidence = scan([tmp_path], [sig], app_package="com.app")
    assert {e.matched_text for e in evidence.root_evidence} == {
        "/system/bin/failsafe/su",
        "/system/sd/xbin/su",
    }


def test_evidence_default_provenance_is_unspecified():
    # G11: Evidence built without an explicit provenance defaults to
    # "unspecified" - the new field is backward-compatible, never required, so
    # older callers/fixtures/stored rows stay valid.
    from common import Evidence
    e = Evidence(signature_id="x", file="A.java", line_or_offset=1, matched_text="su")
    assert e.evidence_type == "unspecified"


def test_scan_stamps_evidence_type_from_signature(tmp_path):
    # G11: the emitted Evidence carries the driving signature's evidence_type
    # (forensic provenance - a distinct axis from pattern_type). Before this,
    # evidence_type was parsed from YAML and never propagated: a dead field.
    from static.signatures import Signature
    sig = Signature(id="t_root_su", category="root", weight=0.5,
                    pattern_type="regex", patterns=["/system/bin/su"],
                    evidence_type="bytecode_string")
    (tmp_path / "M.java").write_text('String s = "/system/bin/su";\n', encoding="utf-8")
    evidence = scan(tmp_path, [sig])
    hits = [e for e in evidence.root_evidence if e.signature_id == "t_root_su"]
    assert hits, "signature did not match"
    assert all(e.evidence_type == "bytecode_string" for e in hits)


def test_emu_recall1_missing_emulator_values_close_measured_false_negative(tmp_path):
    """EMU-RECALL1. A MEASURED false negative, not a theoretical one.

    InsecureBankv2 (ground truth `root: true`) carries a real, app-owned
    `checkIfDeviceIsEmulator()` in com/android/insecurebankv2/PostLogin.java, but
    it is built from emulator values `emulator_detection` did not list - and NONE
    of that signature's seven original patterns exists anywhere in that APK's DEX.
    So a genuine emulator probe in the app's own class scored zero and the run
    landed root=0.60 on `java/native/manifest/js = fully_analyzed` with
    `unknown_uncovered: []`: a fully-covered, confidently-wrong NEITHER, 0.10
    under threshold, which showed up as Tier-2 root recall 0.80.

    Each added literal was verified in a real APK before being added, not taken
    from an emulator-detection article: `google_sdk`, `Genymotion` and
    "Android SDK built for x86" are exact DEX string constants in
    APK_Test/InsecureBankv2.apk whose get_xref_from() resolves to
    Lcom/android/insecurebankv2/PostLogin; - the app's OWN class, so this is not
    bundled-SDK plumbing - and `ranchu` (QEMU's modern machine type, successor to
    the already-listed `goldfish`) and `vbox86` (Genymotion's VirtualBox ABI,
    shipping as `vbox86p`) are real literals in aves' app-owned defpackage
    classes.
    """
    from static.decision_engine import classify

    root_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")}
    sig = root_sigs["emulator_detection"]
    for pattern in ("google_sdk", "Genymotion", "Android SDK built for x86",
                    "ranchu", "vbox86"):
        assert pattern in sig.patterns, pattern
    # Recall-only, and that is the whole point: they extend an EXISTING id, so no
    # new weight enters any confidence sum. Weight untouched at 0.25 and still far
    # under the 0.70 threshold, so the anti-FP invariant holds - this signature
    # can never decide a verdict alone.
    assert sig.weight == 0.25
    assert not [s for s in root_sigs.values() if "genymotion" in s.id or "google_sdk" in s.id]
    # No padding: real product names that do NOT appear in app-owned code anywhere
    # in the analysed corpus stay out, and `nox`/`memu` would be FP-prone besides.
    for unverified in ("emu64", "bluestacks", "nox", "ldplayer", "memu",
                       "windows_subsystem"):
        assert not [p for p in sig.patterns if unverified in p.lower()], unverified

    # End-to-end through the real scorer, on PostLogin.java's three real idioms.
    src = tmp_path / "sources" / "com" / "android" / "insecurebankv2"
    src.mkdir(parents=True)
    (src / "PostLogin.java").write_text(
        'private Boolean checkIfDeviceIsEmulator() {\n'
        '    if (Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Android SDK built for x86")\n'
        '            || Build.MANUFACTURER.contains("Genymotion")) { return true; }\n'
        '    return false;\n'
        '}\n'
        'void showRootStatus() {\n'
        '    boolean isrooted = doesSuperuserApkExist("/system/app/Superuser.apk") || doesSUexist();\n'
        '}\n'
        'private boolean doesSUexist() {\n'
        '    process = Runtime.getRuntime().exec(new String[]{"/system/bin/which", "su"});\n'
        '}\n'
        'private boolean doesSuperuserApkExist(String s) {\n'
        '    File rootFile = new File("/system/app/Superuser.apk");\n'
        '    return Boolean.valueOf(rootFile.exists()).booleanValue();\n'
        '}\n',
        encoding="utf-8",
    )
    evidence = scan([tmp_path], list(root_sigs.values()),
                    app_package="com.android.insecurebankv2")
    matched = {e.signature_id for e in evidence.root_evidence}
    assert "emulator_detection" in matched
    # The two signatures that already fired on the real run are still the other
    # contributors - the fix adds recall, it does not replace existing evidence.
    assert {"root_known_indicator_files", "root_runtime_exec_su"} <= matched

    result = classify(evidence)
    assert result.root.detected is True, (result.root.confidence, sorted(matched))
    assert result.root.confidence >= 0.70

    # And the new patterns are load-bearing for THIS verdict: drop this one
    # signature id and the same corpus falls back under the threshold, which is
    # exactly the 0.60 the real run reported.
    without = sum(
        {root_sigs[i].weight for i in matched if i != "emulator_detection"}
    )
    assert without < 0.70, without


def test_sudir1_bare_su_search_directories_are_matched_and_non_colliding(tmp_path):
    """SUDIR1. The most-copied root check on the internet was invisible here.

    A hardcoded array of su SEARCH DIRECTORIES walked with the binary name
    concatenated on at runtime - `for (String where : places) if (new File(where +
    binaryName).exists())`, `isRooted() { return findBinary("su"); }` - leaves only
    bare directories with a trailing slash plus a standalone "su" in the bytecode.
    Every su-path signature needs a FULL path literal and
    root_su_via_path_env_check needs the two-arg `new File(dir, "su")` form, so
    this idiom matched nothing.

    Measured, not theoretical: RS_Vapour (com.redshift.rs_vapourtraining) scored
    root 0.00 while its own Login.java gates login on isRooted() and Toasts
    "Phone is rooted, Please uninstall application.". DEX-verified in
    APK_Test/RS_Vapour.apk - all eight directory literals and the standalone "su"
    are exact string constants whose get_xref_from() resolves to
    Lcom/redshift/rs_vapourtraining/Login;, the app's OWN class, while
    "/system/bin/su", "/system/xbin/su", "/sbin/su", "/data/local/xbin/su",
    "/system/app/Superuser.apk", "test-keys" and "magisk" are all absent. The
    same blind spot had also produced a wrong ground-truth label (that APK was
    registered root:false by a verification that grepped full su paths); the
    CORRECTED entry in config/ground_truth.yaml is pinned by
    test_calibration_report's ground-truth tests.
    """
    from static.decision_engine import classify

    root_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")}
    sig = root_sigs["root_su_search_directories"]
    # DECISIVE BY MEASUREMENT, 2026-10-06 - deliberately no longer 0.3.
    # At 0.3 this signature FIRED and the threshold DISCARDED it, so RS_Vapour was
    # reported NEITHER while config/ground_truth.yaml records root: true and the
    # calibration report names it a KNOWN MISS. It is allowed to be decisive only
    # because its false-positive record is measured: the bare-directory form occurs
    # in exactly two code sites in the whole corpus, the pattern excludes the one
    # that is not a root check (Telegram's EmuDetector uses "/system/bin/"), and
    # making it decisive changes exactly 7 reports corpus-wide - all RS_Vapour.
    from static.decision_engine import DEFAULT_THRESHOLD
    assert sig.weight >= DEFAULT_THRESHOLD, (
        "this signature is registered as decisive-by-measurement; if its weight "
        "drops below the threshold the exception register must be updated too"
    )
    assert sig.pattern_type == "regex"
    # No padding: only directories actually present in a real APK's app-owned
    # detection code are listed. These three are standard RootBeer suPaths entries
    # but occur zero times in bare-directory form anywhere in the analysed corpus.
    joined = " ".join(sig.patterns)
    for unverified in ("/su/bin/", "/system/bin/.ext/", "/system/usr/we-need-root/"):
        assert unverified not in joined, unverified
    # Deliberately excluded as too generic to attribute to a su-binary probe:
    # "/system/bin/" is Telegram's org/telegram/messenger/EmuDetector (emulator
    # detection, would be mislabeled), and all three occur only INSIDE RS_Vapour's
    # own array, so excluding them costs zero recall.
    for generic in ("/system/bin/", "/sbin/", "/data/local/"):
        assert rf"{generic}(?![\w.])" not in sig.patterns, generic

    # The load-bearing property. string_literal matching is substring-based, so a
    # bare "/system/xbin/" pattern would also match "/system/xbin/daemonsu"
    # (root_known_indicator_files), "/system/xbin/busybox" (busybox_binary_paths)
    # and "/system/xbin/sudo" (su_alternate_binary_paths) - three OTHER signature
    # ids. Confidence sums distinct ids, so that would silently inflate every
    # already-detected app by 0.3 for one technique counted twice. The (?![\w.])
    # boundary requires the literal to END at the directory slash. Do NOT "simplify"
    # this to a string_literal list: it is a cross-signature double-count bug, not
    # a style preference.
    for owned_elsewhere in ('    - "/system/xbin/daemonsu"',
                            'new File("/system/xbin/busybox")',
                            '"/system/xbin/sudo"',
                            '"/system/xbin/su"',
                            '"/data/local/xbin/su"',
                            'new File("/system/bin/failsafe/su")'):
        assert _line_matches(owned_elsewhere, sig) is None, owned_elsewhere
    # Works on all three scan surfaces, not just jadx/CFR Java: apktool smali
    # const-string, and a raw DEX string with nothing around it at all.
    for surface in ('const-string v0, "/system/xbin/"', "/system/xbin/"):
        assert _line_matches(surface, sig) == "/system/xbin/", surface

    # End-to-end through the real scorer, on Login.java's actual code.
    src = tmp_path / "sources" / "com" / "redshift" / "rs_vapourtraining"
    src.mkdir(parents=True)
    (src / "Login.java").write_text(
        'public static boolean findBinary(String binaryName) {\n'
        '    String[] places = {"/sbin/", "/system/bin/", "/system/xbin/", '
        '"/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", '
        '"/system/bin/failsafe/", "/data/local/"};\n'
        '    for (String where : places) {\n'
        '        if (new File(where + binaryName).exists()) {\n'
        '            return true;\n'
        '        }\n'
        '    }\n'
        '    return false;\n'
        '}\n'
        'private static boolean isRooted() {\n'
        '    return findBinary("su");\n'
        '}\n',
        encoding="utf-8",
    )
    evidence = scan([tmp_path], list(root_sigs.values()),
                    app_package="com.redshift.rs_vapourtraining")
    matched = {e.signature_id for e in evidence.root_evidence}
    assert matched == {"root_su_search_directories"}, sorted(matched)
    assert all(e.verification_state == "deterministic_matched"
               for e in evidence.root_evidence)

    # OVERRIDDEN 2026-10-06, explicitly and at the owner's direction.
    #
    # What this block USED to say, kept because it is the record of what changed:
    # "The honest bound, pinned so nobody 'finishes' this fix by inflating it. ...
    # one matched signature at 0.3 cannot reach the 0.70 threshold - no single
    # signature may ever carry >= 0.70 (the structural anti-FP invariant) ... the
    # verdict stays NEITHER ... It remains a measured false negative against the
    # corrected ground truth, and saying so is the point."
    #
    # That position was internally consistent but it accepted a KNOWN false
    # negative on an app whose ground truth is root: true. The owner's call was
    # that a measured false negative is not an acceptable output when the fix is
    # provably collateral-free, and the measurement backs that:
    #   - the bare-directory form occurs in exactly two code sites corpus-wide;
    #   - the pattern excludes the non-root-check one (Telegram's EmuDetector);
    #   - making it decisive changes exactly 7 reports, all RS_Vapour.
    # So the signature is now decisive and RS_Vapour IS detected. The invariant
    # survives for every other signature - see
    # test_no_single_signature_can_self_trigger_detection's exception register.
    #
    # If this override is ever reversed, restore the 0.3 weight in
    # config/signatures/root_detection.yaml and the empty-list assertions here and
    # in the two invariant gates - the three sites move together.
    result = classify(evidence)
    assert result.root.confidence >= 0.70
    assert result.root.detected is True, (
        "RS_Vapour's textbook app-owned su-path-walk must now be DETECTED - its "
        "ground truth is root: true and this was a measured false negative"
    )
    assert result.root.coverage_limited is False
    assert result.ssl.confidence == 0.0



def test_execrecv1_cached_runtime_receiver_exec_su_matched_on_the_same_signature_id(tmp_path):
    # EXEC-RECV1 (measured 2026-09-03). root_runtime_exec_su hard-required the
    # INLINE receiver `Runtime.getRuntime().exec(`, so a Runtime cached in a
    # field or local was invisible. Sentry's shipped RootChecker does exactly
    # that: `private final Runtime runtime` injected as Runtime.getRuntime(),
    # then `this.runtime.exec(new String[]{"/system/xbin/which", "su"})`. Of the
    # four techniques in that purpose-built root checker, only this exec probe
    # scored nothing - and only because of how the receiver was spelled.
    # DEX-verified: "/system/xbin/which" and the RootChecker class descriptor
    # are both string constants in the shipped classes5.dex of the analyzed APK.
    from static.decision_engine import classify
    from static.signatures import _line_matches, load_signatures, scan

    root_sigs = {s.id: s for s in load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")}
    sig = root_sigs["root_runtime_exec_su"]

    # An ADDED PATTERN on the existing id, never a new id: confidence sums
    # DISTINCT ids, so a new id would double-count this one technique in every
    # app that already matches the inline form.
    assert sig.weight == 0.3
    assert sig.pattern_type == "regex"
    assert len(sig.patterns) == 2, sig.patterns
    assert r'Runtime\.getRuntime\(\)\.exec\([^)]*su' in sig.patterns  # the original stays

    # Every form measured in the real corpus, plus the two receiver spellings
    # that motivated the fix. The first line is verbatim from the decompiled
    # Sentry RootChecker.
    for real in (
        'Process processExec = this.runtime.exec(new String[]{"/system/xbin/which", "su"});',
        'var4_7 = this.runtime.exec(new String[]{"/system/xbin/which", "su"});',
        'Runtime.getRuntime().exec(new String[]{"/system/bin/which", "su"});',
        'Runtime.getRuntime().exec(new String[]{"su", "ls /data/data/"});',
        'Runtime.getRuntime().exec("su");',
        'Process p = rt.exec("su -c id");',
    ):
        assert _line_matches(real, sig) is not None, real

    # FP bound, by measurement not assertion: across every *.java in the
    # decompiled corpus EVERY `.exec(` whose args contain "su" is a root check
    # (14 hits, 0 FPs), so the receiver carries no discriminating power. What
    # keeps that true is the quote+boundary - su must be a QUOTED command token.
    # A bare [^)]*su would match every line below.
    for benign in (
        'db.exec("subscribe");',
        'x.exec("summary of su");',
        'sh.exec("success");',
        'this.engine.exec(pattern);',
        'runtime.exec(new String[]{"ping", "-c", "1"});',
    ):
        assert _line_matches(benign, sig) is None, benign

    # End-to-end, and the load-bearing anti-double-count property: a class using
    # BOTH receiver spellings is still ONE technique worth 0.3 total, not 0.6.
    src = tmp_path / "sources" / "com" / "example" / "app"
    src.mkdir(parents=True)
    (src / "RootChecker.java").write_text(
        'private final Runtime runtime;\n'
        'private boolean checkSUExist() {\n'
        '    Process processExec = this.runtime.exec(new String[]{"/system/xbin/which", "su"});\n'
        '    return new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine() != null;\n'
        '}\n'
        'private boolean alsoInline() {\n'
        '    return Runtime.getRuntime().exec("su") != null;\n'
        '}\n',
        encoding="utf-8",
    )
    evidence = scan([tmp_path], list(root_sigs.values()), app_package="com.example.app")
    matched = {e.signature_id for e in evidence.root_evidence}
    assert matched == {"root_runtime_exec_su"}, sorted(matched)
    result = classify(evidence)
    assert result.root.confidence == 0.3   # one id, counted once
    assert result.root.detected is False   # and one technique still cannot reach 0.70
    # Corpus invariant, with the one measured exception (see the exception register
    # in test_no_single_signature_can_self_trigger_detection). Everything else must
    # still cap below the threshold so a DETECTED verdict needs corroboration.
    assert [s.id for s in root_sigs.values() if s.weight >= 0.70] == [
        "root_su_search_directories"
    ]


# ---------------------------------------------------------------- MULTILINE-BUDGET1
# The per-line budget (LINE_MATCH_BUDGET_SECONDS) was applied to the multiline pass,
# which matches the WHOLE FILE rather than one line. Its own comment justifies the
# value with "a legitimate source line never approaches this" - a premise that does
# not hold for a whole file. Measured 2026-10-06 on a real app (jerboa): jadx emitted
# LookAndFeelScreenKt.java at 249 MB / 479,480 lines, and a signature that matches
# NOTHING in it (zero `getInstance(` occurrences) took 1.1s, tripping the 1.0s budget
# and halting the entire scan on a misdiagnosis of "catastrophically backtracking".

def test_multiline_budget_scales_with_input_size():
    from static.signatures import (LINE_MATCH_BUDGET_SECONDS,
                                   multiline_match_budget)
    big = multiline_match_budget(249_434_338)   # the measured jerboa file
    assert big > LINE_MATCH_BUDGET_SECONDS, (
        "a whole-file match must get more than the per-line budget"
    )
    assert big >= 1.1, (
        f"the budget must clear the 1.1s a LINEAR pass over 249 MB costs; got {big}"
    )


def test_multiline_budget_keeps_its_floor_on_small_inputs():
    # The guard must keep its teeth: a ReDoS on a small file is still caught fast.
    from static.signatures import (LINE_MATCH_BUDGET_SECONDS,
                                   multiline_match_budget)
    assert multiline_match_budget(0) == LINE_MATCH_BUDGET_SECONDS
    assert multiline_match_budget(1_000) == LINE_MATCH_BUDGET_SECONDS
    assert multiline_match_budget(1_000_000) == LINE_MATCH_BUDGET_SECONDS


def test_multiline_budget_is_monotonic():
    from static.signatures import multiline_match_budget
    sizes = [0, 10_000, 1_000_000, 50_000_000, 100_000_000, 500_000_000]
    budgets = [multiline_match_budget(n) for n in sizes]
    assert budgets == sorted(budgets), budgets


def test_a_linear_multiline_signature_over_a_large_file_does_not_halt(tmp_path):
    """THE REGRESSION. A file big enough to blow the per-line budget, matched by a
    bounded linear regex that finds nothing, must scan cleanly - not raise."""
    from static.signatures import scan

    # ~6 MB of code with no match, which is over the 1.0s floor's comfort zone once
    # the pattern is applied but far under the scaled budget.
    (tmp_path / "Big.java").write_text(
        "public class Big {\n" + ("    int x = 0;\n" * 400_000) + "}\n",
        encoding="utf-8",
    )
    sigs = load_signatures(REPO_ROOT / "config" / "signatures" / "ssl_pinning.yaml")
    sigs = list(sigs.values()) if isinstance(sigs, dict) else list(sigs)
    multiline = [s for s in sigs if s.multiline]
    assert multiline, "expected at least one multiline signature to exercise"
    # Must not raise TimeoutError.
    evidence = scan([tmp_path], multiline, app_package="com.example.app")
    assert evidence is not None


# ---------------------------------------------------------------- LINE-BUDGET-SCALE1
# M14: the per-line budget was a flat 1.0s while it bounds a CUMULATIVE loop
# (one line x every single-line signature), so its cost is (signatures x chars).
# A minified .js/.bundle/.json - all in SCANNED_SUFFIXES - is one multi-MB line,
# and the aggregate cost of a legitimate linear pass over it tripped TimeoutError
# and aborted the run. The budget now scales with that work, exactly as the
# multiline budget above scales with file size.

def test_line_budget_scales_with_line_length_and_signature_count():
    from static.signatures import LINE_MATCH_BUDGET_SECONDS, line_match_budget
    # A 2 MB minified line against 100 signatures: ~200 MB of matching work.
    big = line_match_budget(2_000_000, 100)
    assert big > LINE_MATCH_BUDGET_SECONDS, (
        "a long line must get more than the flat per-line budget"
    )
    # Same line, same signatures: the budget is the work divided by the rate.
    assert big == pytest.approx(2_000_000 * 100 / 50_000_000)


def test_line_budget_keeps_its_floor_on_small_lines():
    # The guard must keep its teeth: a ReDoS on an ordinary line still trips at 1.0s.
    from static.signatures import LINE_MATCH_BUDGET_SECONDS, line_match_budget
    assert line_match_budget(0, 1) == LINE_MATCH_BUDGET_SECONDS
    assert line_match_budget(40, 100) == LINE_MATCH_BUDGET_SECONDS   # 4 KB of work
    assert line_match_budget(1_000_000, 1) == LINE_MATCH_BUDGET_SECONDS


def test_line_budget_is_monotonic_in_both_dimensions():
    from static.signatures import line_match_budget
    assert [line_match_budget(n, 10) for n in (0, 1_000, 1_000_000, 50_000_000)] == sorted(
        line_match_budget(n, 10) for n in (0, 1_000, 1_000_000, 50_000_000)
    )
    assert [line_match_budget(1_000_000, n) for n in (1, 10, 100)] == sorted(
        line_match_budget(1_000_000, n) for n in (1, 10, 100)
    )


def test_a_long_minified_line_over_many_signatures_does_not_halt(tmp_path, monkeypatch):
    """THE M14 REGRESSION. One multi-MB line matched against 100 signatures must
    scan cleanly. Driven by simulated time (see _advancing_monotonic) so the
    aggregate cost is deterministic: the clock advances 0.02s per read, so the
    cumulative loop reaches ~2.0s on this line - over the old flat 1.0s budget,
    under the scaled one (100 x 2 MB / 50 MB/s = 4.0s). Before the fix this
    raised TimeoutError and aborted the scan of a legitimate bundle."""
    import static.signatures as sig_mod
    from static.signatures import Signature

    monkeypatch.setattr(sig_mod.time, "monotonic", _advancing_monotonic(0.02))
    (tmp_path / "index.android.bundle").write_text("a" * 2_000_000, encoding="utf-8")

    sigs = [
        Signature(
            id=f"bulk_{i}", category="root", weight=0.0, pattern_type="regex",
            patterns=["zzz_no_match"], evidence_type="bytecode_string",
        )
        for i in range(100)
    ]

    evidence = sig_mod.scan([tmp_path], sigs, app_package="com.example.app")

    assert evidence is not None
    assert evidence.root_evidence == []   # nothing matched; the point is it did not halt
