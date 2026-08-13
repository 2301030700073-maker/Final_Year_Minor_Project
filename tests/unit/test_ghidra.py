"""Unit tests for static/native.py's Ghidra integration (L-M6) - pure parsing and
matching only, no Ghidra/toolchain (NFR-6/NFR-17). The toolchain path
(run_ghidra_headless / analyze_so_ghidra) is exercised by the real end-to-end
Ghidra run against a real .so on the reference environment; here we test the
parsers, matcher, and the coverage upgrade against fixture text."""

from static.native import (
    GhidraFunction,
    NativeLibrary,
    NativeSignature,
    compute_degradation,
    match_ghidra_decompile,
    parse_ghidra_decompile,
)

_SIGS = [
    NativeSignature(id="native_jni_root_check", category="root", weight=0.5,
                    pattern_type="export_symbol", patterns=["checkRoot", "isRooted"]),
    NativeSignature(id="native_su_binary_embedded", category="root", weight=0.4,
                    pattern_type="embedded_string",
                    patterns=["/system/bin/su", "/system/xbin/su", "magisk"]),
]


def test_parse_ghidra_decompile_splits_blocks():
    text = (
        "=== FUNC: Java_com_example_check @ 0x1000 ===\n"
        'bool check() { return access("/system/bin/su", F_OK) == 0; }\n'
        "\n"
        "=== FUNC: JNI_OnLoad @ 0x2000 ===\n"
        "void load() { registerNatives(); }\n"
    )
    funcs = parse_ghidra_decompile(text)
    assert len(funcs) == 2
    assert funcs[0].name == "Java_com_example_check"
    assert funcs[0].address == "0x1000"
    assert "/system/bin/su" in funcs[0].body
    assert funcs[1].name == "JNI_OnLoad"
    assert funcs[1].address == "0x2000"


def test_parse_ghidra_decompile_keeps_undecompilable_function():
    # A function Ghidra could not decompile is still present (empty body) - never
    # dropped, so coverage of unrecovered functions is visible, not silent.
    text = (
        "=== FUNC: encrypted_root_check @ 0x3000 ===\n"
        "(no decompilation)\n"
    )
    funcs = parse_ghidra_decompile(text)
    assert len(funcs) == 1
    assert funcs[0].name == "encrypted_root_check"
    assert funcs[0].body == ""


def test_match_ghidra_decompile_finds_root_logic_in_body():
    funcs = [
        GhidraFunction(
            name="Java_com_example_check", address="0x1000",
            body='bool check() { if (access("/system/bin/su", F_OK) == 0) return true; }',
        ),
        GhidraFunction(name="clean", address="0x9000", body="int x = 1; return x;"),
    ]
    result = match_ghidra_decompile(funcs, _SIGS)
    # /system/bin/su in the decompiled body -> native_su_binary_embedded (root, 0.4).
    assert result.root_confidence == 0.4
    assert result.ssl_confidence == 0.0
    assert result.root_evidence[0].signature_id == "native_su_binary_embedded"
    assert result.root_evidence[0].file == "ghidra:Java_com_example_check"
    assert result.root_evidence[0].line_or_offset == "0x1000"
    assert result.root_evidence[0].matched_text == "/system/bin/su"


def test_match_ghidra_decompile_clean_body_zero_confidence():
    funcs = [GhidraFunction(name="clean", address="0x1", body="return 0;")]
    result = match_ghidra_decompile(funcs, _SIGS)
    assert result.root_confidence == 0.0
    assert result.ssl_confidence == 0.0
    assert result.root_evidence == []


def test_match_ghidra_decompile_weight_once_per_signature():
    # Two functions both carrying the su literal -> the signature is credited once.
    funcs = [
        GhidraFunction(name="a", address="0x1", body='access("/system/bin/su", F_OK)'),
        GhidraFunction(name="b", address="0x2", body='access("/system/bin/su", F_OK)'),
    ]
    result = match_ghidra_decompile(funcs, _SIGS)
    assert result.root_confidence == 0.4
    assert len(result.root_evidence) == 1


def test_compute_degradation_ghidra_scanned_upgrades_stripped_to_fully_analyzed():
    # L-M6: a stripped lib Ghidra actually decompiled has been scanned at the
    # code level -> fully_analyzed, not 'partial'.
    lib = NativeLibrary(abi="arm64-v8a", name="lib.so", stripped=True,
                        ghidra_decompiled=True, ghidra_functions=["check"])
    assert compute_degradation([lib])["arm64-v8a"] == "fully_analyzed"


def test_compute_degradation_ghidra_failed_keeps_partial():
    # A failed/missing Ghidra run never falsely certifies scanned - stays partial.
    lib = NativeLibrary(abi="arm64-v8a", name="lib.so", stripped=True,
                        ghidra_error="Ghidra headless timed out", ghidra_decompiled=False)
    assert compute_degradation([lib])["arm64-v8a"] == "partial"
    assert lib.ghidra_error


def test_compute_degradation_ghidra_scanned_upgrades_unscannable():
    # Even a lib readelf/strings failed on can be scanned if Ghidra decompiled it.
    lib = NativeLibrary(abi="x86_64", name="lib.so", unscannable=True,
                        scan_error="readelf exited 1", ghidra_decompiled=True)
    assert compute_degradation([lib])["x86_64"] == "fully_analyzed"
