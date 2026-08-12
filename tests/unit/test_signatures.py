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


def test_scan_raises_loudly_on_regex_backtracking_budget(tmp_path, monkeypatch):
    # ReDoS backstop (NFR-1 fail-loud): a catastrophically-backtracking regex
    # must halt the scan with a loud TimeoutError, not hang it silently. We
    # force the budget to ~0 so a merely-slow (not even adversarial) line trips
    # it - proving the guard fires, independent of regex linearity.
    import static.signatures as sig_mod
    monkeypatch.setattr(sig_mod, "LINE_MATCH_BUDGET_SECONDS", 0.0)
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

    with pytest.raises(TimeoutError, match="catastrophically backtracking"):
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
