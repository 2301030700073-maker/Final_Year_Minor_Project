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
    ghidra_decompile,
    load_native_signatures,
    match_native,
    parse_readelf_symbols,
    parse_strings,
    _classify_obfuscated,
    _corpus_contains,
    _is_jni_export,
    _is_stripped,
    _parse_ghidra_functions,
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


def test_parse_readelf_symbols_strips_version_suffix():
    # Versioned imports (`fork@LIBC`, `ptrace@LIBC`) must parse to the bare
    # symbol, or the exact-membership matcher silently misses every imported
    # libc symbol. Verified against UnCrackable-Level2 libfoo.so.
    text = (
        "9: 0000000000000000    18 FUNC    GLOBAL DEFAULT   11 fork@LIBC\n"
        "10: 0000000000001110    16 FUNC    GLOBAL DEFAULT   10 Java_CodeCheck_bar\n"
        "11: 0000000000000000    0  FUNC    GLOBAL DEFAULT  UND ptrace@LIBC\n"
    )
    names = parse_readelf_symbols(text)
    assert "fork" in names and "ptrace" in names
    assert all("@" not in n for n in names)


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


def test_match_native_require_all_needs_every_pattern():
    # AND semantics (native anti-debug combo): a require_all signature fires only
    # when ALL patterns are present, so `ptrace` alone on a benign app that
    # imports libc's ptrace does not fire (ADR-0006 - no false positive).
    sig = NativeSignature(id="native_ptrace_fork_antidebug", category="root", weight=0.5,
                          pattern_type="export_symbol", patterns=["ptrace", "fork"],
                          require_all=True)
    # Only ptrace present (a benign ptrace importer) -> must NOT fire.
    partial = NativeLibrary(abi="arm64-v8a", name="liba.so", exports=["ptrace", "strncmp"])
    assert match_native([partial], [sig]).root_confidence == 0.0
    assert match_native([partial], [sig]).root_evidence == []
    # Both present (the genuine fork-child anti-debug combo) -> fires once.
    full = NativeLibrary(abi="arm64-v8a", name="libb.so",
                         exports=["ptrace", "fork", "getppid", "waitpid"])
    result = match_native([full], [sig])
    assert result.root_confidence == 0.5
    assert len(result.root_evidence) == 1
    assert result.root_evidence[0].matched_text == "ptrace"


def test_match_native_default_is_or_not_and():
    # Default require_all=False keeps historical OR-within-signature semantics:
    # any single pattern present fires (unchanged behavior, regression guard).
    sig = NativeSignature(id="s", category="root", weight=0.4,
                          pattern_type="export_symbol", patterns=["a", "b"])
    lib = NativeLibrary(abi="x86", name="lib.so", exports=["b"])
    result = match_native([lib], [sig])
    assert result.root_confidence == 0.4
    assert result.root_evidence[0].matched_text == "b"


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


def test_parse_ghidra_functions_parses_func_markers():
    # DumpFunctions emits "FUNC <name>" then the multi-line decompiled C body.
    text = (
        "FUNC Java_sg_vantagepoint_CodeCheck_bar\n"
        "void Java_sg_vantagepoint_CodeCheck_bar(void){\n  ptrace(PTRACE_TRACEME,0);\n}\n"
        "FUNC JNI_OnLoad\n"
        "jint JNI_OnLoad(void){\n  return 0x6;\n}\n"
    )
    bodies = _parse_ghidra_functions(text)
    assert len(bodies) == 2
    assert "ptrace" in bodies[0]
    assert "JNI_OnLoad" in bodies[1]


def test_parse_ghidra_functions_empty_on_no_markers():
    assert _parse_ghidra_functions("no FUNC lines here\n") == []


def test_corpus_contains_finds_pattern_in_function_body():
    # A decompiled body is multi-line C: substring search finds a technique call
    # that exact symbol membership would miss (L-M6).
    corpus = ["JNI_OnLoad"]
    bodies = ["foo\nvoid foo(void){ ptrace(PTRACE_TRACEME); fork(); }"]
    assert _corpus_contains(corpus, bodies, "ptrace") is True
    # exact symbol membership still wins first
    assert _corpus_contains(["ptrace"], [], "ptrace") is True
    # embedded_string style (no bodies searched): exact-only, no substring FP
    assert _corpus_contains(["ptrace"], [], "trace") is False


def test_match_native_fires_on_ghidra_function_body():
    # A signature whose pattern is ONLY inside a decompiled body (not an export
    # symbol / embedded string) fires via the function-body corpus, and the
    # Evidence records it as a decompiled-body match (L-M6).
    lib = NativeLibrary(
        abi="arm64-v8a", name="libx.so", ghidra_decompiled=True,
        ghidra_functions=["bar\nvoid bar(void){ ptrace(PTRACE_TRACEME,0); fork(); }"],
    )
    sig = NativeSignature(id="native_ptrace_fork_antidebug", category="root", weight=0.5,
                          pattern_type="export_symbol", patterns=["ptrace"])
    res = match_native([lib], [sig])
    assert res.root_confidence == 0.5
    assert res.root_evidence[0].line_or_offset == "decompiled-body"


def test_ghidra_decompile_ok_false_when_ghidra_absent(tmp_path, monkeypatch):
    # A missing Ghidra install must degrade loudly (ok=False + error), never
    # crash and never falsely certify the lib scanned (principle 3).
    from static import native as native_mod
    monkeypatch.setattr(native_mod, "_find_ghidra_headless", lambda: None)
    ok, bodies, err = native_mod.ghidra_decompile(tmp_path / "lib.so", tmp_path / "o.txt")
    assert ok is False
    assert bodies == []
    assert "ghidra headless not found" in err


def test_compute_degradation_ghidra_lifts_stripped_to_fully_analyzed():
    # A stripped lib that Ghidra genuinely decompiled is scanned at the
    # function-body level -> fully_analyzed, not partial (L-M6).
    lib = NativeLibrary(abi="arm64-v8a", name="lib.so", stripped=True,
                        ghidra_decompiled=True, ghidra_functions=["a\nint a(){return 1;}"])
    assert compute_degradation([lib])["arm64-v8a"] == "fully_analyzed"
    # A FAILED Ghidra run must NOT lift it - ghidra_error set, ghidra_decompiled
    # False keeps the honest partial (ADR-0006).
    lib2 = NativeLibrary(abi="arm64-v8a", name="lib2.so", stripped=True,
                         ghidra_decompiled=False, ghidra_error="timed out")
    assert compute_degradation([lib2])["arm64-v8a"] == "partial"


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
