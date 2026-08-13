"""Unit tests for L-M3 mapping.txt deobfuscation (the `chimera` pattern).

Obfuscation renames app identifiers (MainActivity -> a), so original-name
signatures can silently miss renamed code. When the app bundles its R8/ProGuard
mapping.txt, deobfuscate restores obfuscated identifiers to originals so the
deterministic matcher can hit them. Pure and fixture-testable - no toolchain.
"""

from pathlib import Path

from static.deobfuscate import (
    MappingTable,
    deobfuscate_source,
    find_mapping_file,
    parse_mapping,
)

_MAPPING = """\
com.example.MainActivity -> com.example.a:
    void onCreate(android.os.Bundle) -> b
    5:5:void onResume():12:12 -> c
    int mSecret -> d
com.example.util.CertHelper -> com.example.util.z:
    void verifyPinning() -> e
"""


def test_parse_mapping_handles_all_line_kinds():
    t = parse_mapping(_MAPPING)
    assert t.obfuscated_to_original["a"] == "MainActivity"
    assert t.obfuscated_to_original["b"] == "onCreate"
    assert t.obfuscated_to_original["c"] == "onResume"  # ranged method form
    assert t.obfuscated_to_original["d"] == "mSecret"   # field form
    assert t.obfuscated_to_original["z"] == "CertHelper"  # second class
    assert t.obfuscated_to_original["e"] == "verifyPinning"


def test_parse_mapping_skips_junk_and_comments():
    t = parse_mapping("# proguard mapping\n\nnot a valid line\n\ncom.x.Y -> com.x.a:\n")
    assert t.obfuscated_to_original["a"] == "Y"


def test_deobfuscate_source_restores_original_names():
    src = "void a() { new com.example.util.e(); int v = this.d; }"
    out = deobfuscate_source(src, parse_mapping(_MAPPING))
    assert "void a()" not in out        # a was a mapped class name -> MainActivity
    assert "com.example.util.e()" not in out  # e (method) -> verifyPinning
    assert "this.d" not in out           # d (field) -> mSecret


def test_deobfuscate_source_no_mapping_unchanged():
    src = "int a = 1;"
    assert deobfuscate_source(src, MappingTable()) == src


def test_deobfuscate_source_longest_first_no_prefix_shadow():
    # A mapped name that is a prefix of another mapped name must not shadow it.
    t = parse_mapping("com.x.Alpha -> com.x.aa:\ncom.x.AlphaLong -> com.x.a:\n")
    # aa (longer) -> Alpha; a (shorter) -> AlphaLong. Longest-first ordering
    # must restore "aa" to "Alpha" and "a" to "AlphaLong" correctly.
    out = deobfuscate_source("aa a", t)
    assert out == "Alpha AlphaLong"


def test_find_mapping_file_locates_bundled_mapping(tmp_path):
    assets = tmp_path / "assets"
    assets.mkdir(parents=True)
    (assets / "mapping.txt").write_text(_MAPPING)
    found = find_mapping_file(tmp_path)
    assert found is not None and found.name == "mapping.txt"


def test_find_mapping_file_none_when_absent(tmp_path):
    assert find_mapping_file(tmp_path) is None


def test_scan_uses_deobfuscated_view_to_match_renamed_code(tmp_path):
    from static.signatures import Signature, scan

    # An app-specific signature referencing the app's ORIGINAL cert-handling
    # class. The obfuscator renamed it to `a`, so the original-name pattern can
    # only hit the deobfuscated view that restores com.example.a ->
    # com.example.CertActivity. (Library/framework signatures like TrustKit are
    # NOT obfuscated and need no mapping - this demonstrates the genuine case
    # where deobfuscation changes detection.)
    sig = Signature(
        id="app_cert_activity", category="ssl", weight=0.5,
        pattern_type="class_reference",
        patterns=["com.example.CertActivity"], evidence_type="source",
    )
    mapping_txt = "com.example.CertActivity -> com.example.a:\n"
    (tmp_path / "a.java").write_text("class com.example.a { void c() {} }\n")

    ev_without = scan(tmp_path, [sig])
    assert "app_cert_activity" not in {e.signature_id for e in ev_without.ssl_evidence}

    ev_with = scan(tmp_path, [sig], mapping=parse_mapping(mapping_txt))
    assert "app_cert_activity" in {e.signature_id for e in ev_with.ssl_evidence}
