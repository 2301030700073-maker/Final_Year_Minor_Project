from pathlib import Path

from static.signatures import load_signatures, scan

REPO_ROOT = Path(__file__).resolve().parents[2]


def test_load_signatures_reads_real_root_detection_yaml():
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")
    ids = {s.id for s in signatures}
    assert "root_su_binary_paths" in ids
    assert all(s.category == "root" for s in signatures)
    assert all(0 < s.weight <= 1.0 for s in signatures)


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
