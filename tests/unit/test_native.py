"""Unit tests for static/native.py - pure parsing/matching only, no toolchain
(NFR-6/NFR-17). The shell-out path (analyze_so/extract_native_libs) is exercised
by the real end-to-end run on the reference environment; here we test the
parsers and matcher against fixture text, which is what the toolchain runs feed."""

from pathlib import Path

import subprocess

import pytest

from common import Evidence
from static.native import (
    NativeLibrary,
    NativeSignature,
    compute_degradation,
    load_native_signatures,
    match_native,
    parse_readelf_symbols,
    parse_strings,
    _classify_obfuscated,
    _is_jni_export,
    _is_stripped,
)


def test_parse_readelf_symbols_extracts_names():
    text = (
        "     1: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS crtbegin.c\n"
        "     9: 0000000000000000    18 FUNC    GLOBAL DEFAULT   11 check_root\n"
        "    10: 0000000000000040    12 FUNC    GLOBAL DEFAULT   11 Java_com_example_MainActivity_nativeInit\n"
        "    11: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT  UND __cxa_finalize\n"
    )
    names = parse_readelf_symbols(text)
    assert "check_root" in names
    assert "Java_com_example_MainActivity_nativeInit" in names


def test_parse_readelf_symbols_empty_on_garbage():
    assert parse_readelf_symbols("not a symbol table\n") == []


def test_parse_strings_splits_lines():
    assert parse_strings("hello\nworld\n") == ["hello", "world"]


def test_is_jni_export_recognizes_java_prefix():
    assert _is_jni_export("Java_com_example_nativeCheck")
    assert not _is_jni_export("check_root")


def test_is_stripped_detects_missing_symtab():
    # readelf -S output without a .symtab => stripped.
    assert _is_stripped(["check_root"], "Section Headers:\n  [ 1] .dynsym\n") is True
    assert _is_stripped(["check_root"], ".symtab\n") is False


def test_classify_obfuscated_low_string_ratio():
    # Many exports, almost no printable strings => obfuscated (Obfuscator-LLVM style).
    exports = [f"sym_{i}" for i in range(20)]
    strings = ["\x01\x02"] * 30  # non-printable bytes don't survive strings anyway
    assert _classify_obfuscated(exports, strings) is True


def test_classify_obfuscated_normal_lib_not_flagged():
    exports = ["check_root", "JNI_OnLoad"]
    strings = ["/system/bin/su", "libc.so", "pinned"]
    assert _classify_obfuscated(exports, strings) is False


def test_match_native_export_symbol_finds_evidence():
    lib = NativeLibrary(abi="arm64-v8a", name="libroot.so", exports=["check_root"])
    sig = NativeSignature(id="native_jni_root_check", category="root", weight=0.5,
                          pattern_type="export_symbol", patterns=["check_root"])
    result = match_native([lib], [sig])
    assert result.root_confidence == 0.5
    assert result.root_evidence[0].signature_id == "native_jni_root_check"
    assert result.root_evidence[0].file == "arm64-v8a/libroot.so"
    assert result.root_evidence[0].matched_text == "check_root"


def test_match_native_embedded_string_finds_evidence():
    lib = NativeLibrary(abi="armeabi-v7a", name="libssl.so", strings=["/system/bin/su", "certificate pinning"])
    sig = NativeSignature(id="native_su_embedded", category="root", weight=0.4,
                          pattern_type="embedded_string", patterns=["/system/bin/su"])
    result = match_native([lib], [sig])
    assert result.root_confidence == 0.4
    assert len(result.root_evidence) == 1


def test_native_su_binary_embedded_exact_membership_and_reachability():
    # Two guarantees on native_su_binary_embedded, both verified against the
    # real corpus:
    #  1. Exact list membership, not substring: a lib whose only "su" strings
    #     are benign substrings (EVP_PKEY_decapsulate, SSL_*_subjects_to_stack)
    #     gets ZERO confidence - bare "su" never FP-matches those.
    #  2. Reachability: analyze_so runs `strings` with default flags (min
    #     printable length 4), so a 2-char exact "su" can never be extracted
    #     from a real .so - keeping a bare "su" pattern would be dead weight.
    #     The signature must NOT carry "su"; it carries "magisk" (7 chars,
    #     reachable, a real systemless-root indicator) and the full paths.
    repo = Path(__file__).resolve().parents[2]
    sig = next(
        s for s in load_native_signatures(repo / "config/signatures/native_detection.yaml")
        if s.id == "native_su_binary_embedded"
    )
    assert "/system/bin/su" in sig.patterns
    assert "/data/adb/magisk" in sig.patterns
    assert "su" not in sig.patterns          # unreachable via strings min-len 4
    assert "magisk" in sig.patterns

    # exact membership: benign substring-only lib -> no match.
    benign = NativeLibrary(
        abi="arm64-v8a", name="libssl.so",
        strings=["EVP_PKEY_decapsulate", "SSL_add_dir_cert_subjects_to_stack", "hello"],
    )
    result = match_native([benign], [sig])
    assert result.root_confidence == 0.0
    assert result.root_evidence == []

    # reachable real signal: a lib embedding the exact "magisk" literal -> matches.
    rooting = NativeLibrary(abi="arm64-v8a", name="librt.so", strings=["magisk", "geteuid"])
    result = match_native([rooting], [sig])
    assert result.root_confidence == 0.4
    assert len(result.root_evidence) == 1


def test_match_native_no_match_zero_confidence():
    lib = NativeLibrary(abi="arm64-v8a", name="libclean.so", exports=["JNI_OnLoad"], strings=["hello"])
    sig = NativeSignature(id="native_jni_root_check", category="root", weight=0.5,
                          pattern_type="export_symbol", patterns=["check_root"])
    result = match_native([lib], [sig])
    assert result.root_confidence == 0.0
    assert result.root_evidence == []


def test_compute_degradation_stripped_is_partial():
    lib = NativeLibrary(abi="arm64-v8a", name="lib.so", stripped=True)
    assert compute_degradation([lib])["arm64-v8a"] == "partial"


def test_compute_degradation_obfuscated_is_partial():
    lib = NativeLibrary(abi="arm64-v8a", name="lib.so", obfuscated=True)
    assert compute_degradation([lib])["arm64-v8a"] == "partial"


def test_compute_degradation_empty_is_unscannable():
    lib = NativeLibrary(abi="x86_64", name="lib.so")
    assert compute_degradation([lib])["x86_64"] == "unscannable"


def test_compute_degradation_healthy_is_fully_analyzed():
    lib = NativeLibrary(abi="arm64-v8a", name="lib.so", exports=["JNI_OnLoad"], strings=["hello"])
    assert compute_degradation([lib])["arm64-v8a"] == "fully_analyzed"


def test_load_native_signatures_rejects_java_only_pattern_type(tmp_path):
    # G3b: a native rule authoring export_symbol|embedded_string only - a Java-only
    # type (string_literal) must fail loudly at load, not silently no-op.
    (tmp_path / "bad.yaml").write_text(
        "- id: bad\n  category: root\n  weight: 0.5\n"
        "  pattern_type: string_literal\n  patterns: [x]\n"
    )
    with pytest.raises(ValueError, match="pattern_type"):
        load_native_signatures(tmp_path / "bad.yaml")


def test_load_native_signatures_accepts_valid():
    sigs = load_native_signatures(Path("config/signatures/native_detection.yaml"))
    assert sigs
    assert all(s.pattern_type in ("export_symbol", "embedded_string") for s in sigs)


def test_compute_degradation_unscannable_tool_failure_is_unscannable():
    # H1/H4: a lib a tool failed on is unscannable, NOT 'stripped' (partial) -
    # misreading it as stripped would let a confident negative slip through.
    lib = NativeLibrary(abi="arm64-v8a", name="lib.so", unscannable=True, scan_error="readelf exited 1")
    assert compute_degradation([lib])["arm64-v8a"] == "unscannable"
    assert lib.scan_error


def test_analyze_so_returns_unscannable_on_tool_failure(tmp_path, monkeypatch):
    # H4: analyze_so must turn a tool non-zero exit into an unscannable lib with
    # a loud error - never a silent empty parse that reads as 'stripped'.
    so = tmp_path / "lib.so"
    so.write_bytes(b"\x7fELF")

    from static import native as native_mod

    def fake_which(name):
        return f"/usr/bin/{name}"

    def fake_run(cmd, **kwargs):
        raise subprocess.TimeoutExpired(cmd=cmd, timeout=60)

    monkeypatch.setattr(native_mod, "_require_tool", fake_which)
    monkeypatch.setattr(native_mod.subprocess, "run", fake_run)

    lib = native_mod.analyze_so(so)

    assert lib.unscannable is True
    assert lib.scan_error is not None


def test_analyze_so_marks_unscannable_on_nonzero_returncode(tmp_path, monkeypatch):
    # H4: a non-zero return code (corrupt .so) must not silently parse as empty
    # stdout -> 'stripped'. It becomes unscannable with the return code surfaced.
    so = tmp_path / "lib.so"
    so.write_bytes(b"\x7fELF not really a shared object")

    from static import native as native_mod

    def fake_which(name):
        return f"/usr/bin/{name}"

    class FakeProc:
        returncode = 1
        stdout = ""

    def fake_run(cmd, **kwargs):
        return FakeProc()

    monkeypatch.setattr(native_mod, "_require_tool", fake_which)
    monkeypatch.setattr(native_mod.subprocess, "run", fake_run)

    lib = native_mod.analyze_so(so)

    assert lib.unscannable is True
    assert "readelf exited 1" in lib.scan_error
