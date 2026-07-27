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


def test_scan_records_correct_line_number(tmp_path):
    (tmp_path / "sub").mkdir()
    file_path = tmp_path / "sub" / "Check.java"
    file_path.write_text("line one\nline two\nString s = \"test-keys\";\n")
    signatures = load_signatures(REPO_ROOT / "config/signatures/root_detection.yaml")

    evidence = scan(tmp_path, signatures)

    matches = [e for e in evidence.root_evidence if e.signature_id == "root_build_tags_test_keys"]
    assert len(matches) == 1
    assert matches[0].line_or_offset == 3
