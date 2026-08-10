from pathlib import Path

import pytest

from static.signatures import load_signatures, scan

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
