"""Unit tests for static/native.py - pure parsing/matching only, no toolchain
(NFR-6/NFR-17). The shell-out path (analyze_so/extract_native_libs) is exercised
by the real end-to-end run on the reference environment; here we test the
parsers and matcher against fixture text, which is what the toolchain runs feed."""

from pathlib import Path

import subprocess

import pytest

from static.native import (
    NativeLibrary,
    NativeSignature,
    compute_degradation,
    find_external_native_loads,
    load_native_signatures,
    match_native,
    parse_nm_symbols,
    parse_readelf_symbols,
    parse_strings,
    security_triggers,
    unaccounted_native_loads,
    _classify_obfuscated,
    _clone_lib_for_path,
    _corpus_contains,
    _has_jni_surface,
    _has_native_security_signal,
    _is_jni_export,
    _is_stripped,
    _parse_ghidra_functions,
    _recover_body_calls,
    _should_decompile_body,
    group_identical_so_files,
)

REPO_ROOT = Path(__file__).resolve().parents[2]


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


def test_parse_nm_symbols_parses_the_nm_dash_d_format():
    # `nm -D` (the fallback dynamic-symbol source when pyelftools is unavailable)
    # emits `value type name` for defined symbols and a blank-value `type name`
    # for undefined imports - a WHOLLY different shape from readelf -Ws. Feeding
    # nm output to parse_readelf_symbols parsed NOTHING, so the fallback silently
    # yielded [] on every host and `exports = dyn_exports or exports` always kept
    # the readelf -Ws .symtab list instead of the intended dynamic table (a silent
    # failure, principle 3, and a corpus inconsistent with the pyelftools path).
    nm_out = (
        "0000000000001234 T Java_com_x_MainActivity_isRooted\n"
        "                 U ptrace\n"
        "0000000000005678 T SSL_CTX_set_verify\n"
        "                 U fork@LIBC\n"        # version suffix must be stripped
        "0000000000009abc W __cxa_finalize\n"
    )
    names = parse_nm_symbols(nm_out)
    assert "Java_com_x_MainActivity_isRooted" in names
    assert "SSL_CTX_set_verify" in names
    assert "ptrace" in names and "fork" in names   # imports captured, @-suffix gone
    assert all("@" not in n for n in names)


def test_parse_nm_symbols_empty_on_garbage_and_on_readelf_format():
    # Robust to non-nm text, and it must NOT accidentally parse a readelf -Ws
    # line (whose trailing token is the name but whose leading `N:` column is not
    # an nm value/type pair) as a symbol - the two parsers stay format-specific.
    assert parse_nm_symbols("not a symbol table\n") == []
    readelf_line = "     9: 0000000000000000    18 FUNC    GLOBAL DEFAULT   11 check_root\n"
    assert parse_nm_symbols(readelf_line) == []


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


def test_classify_obfuscated_empty_exports_is_false():
    # native.py:278-279: a lib with no exports at all cannot be called obfuscated
    # (there is nothing to mangle) - returns False, never a False-positive
    # obfuscated claim. Real coverage proved this empty branch untested; the
    # sibling tests always pass a non-empty export list.
    assert _classify_obfuscated([], ["anything"]) is False
    assert _classify_obfuscated([], []) is False


def test_classify_obfuscated_few_real_strings_relative_to_exports():
    # The production-shaped case the ratio exists for, and a regression guard on
    # the denominator. `strings` runs with its default -n 4, so every string it
    # emits is >= 4 chars - a printable/len(strings) ratio is then a constant 1.0
    # that can never fall below 0.1, i.e. the branch was DEAD against real tool
    # output. Measured PER EXPORT the signal is live: 40 exports with a single
    # real (>= 4-char) plaintext string -> 1/40 = 0.025 < 0.1 -> obfuscated. The
    # old len(strings) denominator returned 1/1 = 1.0 here and missed it.
    exports = [f"sym_{i}" for i in range(40)]
    strings = ["libc.so"]  # one genuine >= 4-char embedded string, as `strings` emits
    assert _classify_obfuscated(exports, strings) is True


def test_classify_obfuscated_string_rich_lib_not_flagged_even_with_many_exports():
    # The safe direction is preserved: a normal lib with a healthy plaintext-string
    # yield is NOT flagged even with many exports - 12 exports, 50 readable strings
    # -> 50/12 is far above the threshold, and none of the exports are pure-hex
    # mangled, so neither obfuscation signal fires.
    exports = [f"fn_{i}" for i in range(12)]
    strings = [f"message_number_{i}" for i in range(50)]
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


def test_native_signature_yaml_no_longer_scores_stripped_boringssl_ids():
    # Production BoringSSL/Mono strip these symbols (verified on Netflix
    # libcronet.so), so the custom-verify and xamarin ids must NOT be scored
    # signatures - they live in the indicator layer instead (test_indicators.py).
    sigs = load_native_signatures(Path("config/signatures/native_detection.yaml"))
    ids = {s.id for s in sigs}
    assert "native_boringssl_custom_verify" not in ids
    assert "xamarin_mono_runtime" not in ids


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


def test_native_build_props_probe_exact_membership_and_reachability():
    # native_build_props_probe: a native test-keys root check embeds the build-props
    # names it reads through libc __system_property_get. Same exact-membership +
    # reachability guarantees as native_su_binary_embedded: the names must be > the
    # strings-layer min length (4) so they are reachable, and matching is exact list
    # membership, so a benign embedded prop name (e.g. a substring like "ro.build")
    # never FP-matches a signature that keys on the full literal.
    repo = Path(__file__).resolve().parents[2]
    sig = next(
        s for s in load_native_signatures(repo / "config/signatures/native_detection.yaml")
        if s.id == "native_build_props_probe"
    )
    assert sig.category == "root"
    assert "ro.build.tags" in sig.patterns
    assert "ro.build.type" in sig.patterns
    assert all(len(p) > 4 for p in sig.patterns)   # reachable via strings min-len 4

    # exact membership: a lib embedding only a shorter/partial prop string -> no match.
    benign = NativeLibrary(
        abi="arm64-v8a", name="libnative.so",
        strings=["ro.build.display.id", "ro.hardware", "hello"],
    )
    result = match_native([benign], [sig])
    assert result.root_confidence == 0.0
    assert result.root_evidence == []

    # reachable real signal: a lib embedding the exact ro.build.tags literal -> matches.
    rooting = NativeLibrary(abi="arm64-v8a", name="libcheck.so", strings=["ro.build.tags"])
    result = match_native([rooting], [sig])
    assert result.root_confidence == 0.4
    assert len(result.root_evidence) == 1


def test_native_frida_detection_exact_membership_and_not_benign():
    # native_frida_detection (2026, native anti-instrumentation). Same two
    # guarantees as native_su_binary_embedded:
    #  1. Exact membership, not substring: a lib whose strings merely contain
    #     "frida" inside a longer token (e.g. a debug symbol "frida_config") gets
    #     ZERO confidence - bare-substring never FP-matches.
    #  2. A lib embedding an exact Frida artifact literal (frida-server, gum-js-
    #     loop, linjector) does match - structurally distinctive anti-instrumenta-
    #     tion probes (ADR-0006).
    repo = Path(__file__).resolve().parents[2]
    sig = next(
        s for s in load_native_signatures(repo / "config/signatures/native_detection.yaml")
        if s.id == "native_frida_detection"
    )
    assert "frida-server" in sig.patterns
    assert "gum-js-loop" in sig.patterns
    assert "linjector" in sig.patterns

    # benign: only a longer token containing "frida" as a substring - exact
    # membership means it never matches the standalone Frida artifact literals.
    benign = NativeLibrary(
        abi="arm64-v8a", name="libanalytics.so",
        strings=["frida_config", "afridaconf", "hello"],
    )
    result = match_native([benign], [sig])
    assert result.root_confidence == 0.0
    assert result.root_evidence == []

    # real signal: a lib that scans /proc/self/maps for the frida-server
    # binary name or the gum-js-loop thread marker.
    probing = NativeLibrary(
        abi="arm64-v8a", name="libnativeso.so",
        strings=["frida-server", "gum-js-loop"],
    )
    result = match_native([probing], [sig])
    assert result.root_confidence == 0.4
    assert len(result.root_evidence) == 1


def test_match_native_no_match_zero_confidence():
    lib = NativeLibrary(abi="arm64-v8a", name="libclean.so", exports=["JNI_OnLoad"], strings=["hello"])
    sig = NativeSignature(id="native_jni_root_check", category="root", weight=0.5,
                          pattern_type="export_symbol", patterns=["check_root"])
    result = match_native([lib], [sig])
    assert result.root_confidence == 0.0
    assert result.root_evidence == []


def test_match_native_marks_unattributed_native_root_indicator():
    # Boundary-2: an app-owned lib carrying a runtime-state idiom (/sbin/su) that
    # matches NO native signature surfaces as an unattributed root indicator -
    # the native-side analog of the Java boundary-1 scan. The category must not
    # certify a confident native negative (ADR-0006).
    lib = NativeLibrary(
        abi="arm64-v8a", name="libnativecheck.so",
        exports=["JNI_OnLoad"], strings=["/sbin/su", "hello"],
    )
    result = match_native([lib], [])
    assert result.unattributed_indicators == {"root": True}


def test_match_native_unattributed_ssl_indicator():
    # A lib reading the system CA store signals native TLS-validation logic with
    # no native SSL signature -> ssl is unattributed.
    lib = NativeLibrary(
        abi="arm64-v8a", name="libtls.so", strings=["/system/etc/security/cacerts"],
    )
    result = match_native([lib], [])
    assert result.unattributed_indicators == {"ssl": True}


def test_match_native_unattributed_ssl_hostname_verify_indicator():
    # A lib setting the expected server hostname (X509_VERIFY_PARAM_set1_host /
    # SSL_set1_host) signals native hostname-verification logic. Like
    # SSL_CTX_set_verify, these anchors are present in ordinary correct TLS clients,
    # so they are NEVER scored as pinning - only flagged as an unknown native TLS
    # capability (coverage-limited, ADR-0006) so a native clean never over-claims.
    lib = NativeLibrary(
        abi="arm64-v8a", name="libboringtls.so",
        exports=["JNI_OnLoad"], strings=["X509_VERIFY_PARAM_set1_host", "hello"],
    )
    result = match_native([lib], [])
    assert result.unattributed_indicators == {"ssl": True}

    lib2 = NativeLibrary(
        abi="arm64-v8a", name="libssl.so",
        exports=["JNI_OnLoad"], strings=["SSL_set1_host", "hello"],
    )
    result2 = match_native([lib2], [])
    assert result2.unattributed_indicators == {"ssl": True}


def test_match_native_unattributed_ssl_indicator_from_body_calls_only():
    # A lib that STATICALLY LINKS BoringSSL calls SSL_CTX_set_verify as a
    # defined-internal function - hidden, absent from .dynsym exports and strings,
    # recovered ONLY by the capstone body-call pass (body_calls) on a Ghidra-less
    # machine. That verify symbol is an INDICATOR-only anchor (never a scored
    # signature), so match_native never attributes it; the Boundary-2 net is the
    # sole thing that can surface it as coverage-limited. It must read body_calls -
    # the SAME body surface match_native's pattern search reads - or an entire
    # native TLS-validation implementation escapes the safety net and the SSL
    # category over-claims a confident negative (ADR-0006).
    lib = NativeLibrary(
        abi="arm64-v8a", name="libapp.so",
        exports=["JNI_OnLoad"], strings=["hello"],
        body_calls=["SSL_CTX_set_verify", "memcpy"],
    )
    result = match_native([lib], [])
    assert result.unattributed_indicators == {"ssl": True}


def test_match_native_no_unattributed_when_signature_matches_category():
    # Boundary-2: when a native signature already matched the category, the
    # indicator is NOT unattributed (the technique is recognized, not unknown).
    lib = NativeLibrary(
        abi="arm64-v8a", name="libnativecheck.so",
        exports=["JNI_OnLoad"], strings=["/sbin/su"],
    )
    sig = NativeSignature(id="native_su_binary_embedded", category="root", weight=0.4,
                          pattern_type="embedded_string", patterns=["/sbin/su"])
    result = match_native([lib], [sig])
    assert result.root_confidence == 0.4
    assert result.unattributed_indicators == {}  # root matched -> not unattributed


def test_match_native_third_party_lib_indicators_excluded():
    # Boundary-2: a bundled SDK native lib (libsentry.so) does its own root check;
    # its indicators must NOT surface as the app's own unknown detection - the
    # native analog of the Java _third_party_file exclusion.
    lib = NativeLibrary(
        abi="arm64-v8a", name="libsentry.so", strings=["/sbin/su"],
    )
    result = match_native([lib], [])
    assert result.unattributed_indicators == {}
    # an unknown (app-owned) lib with the same idiom still surfaces it
    lib2 = NativeLibrary(abi="arm64-v8a", name="libappcheck.so", strings=["/sbin/su"])
    result2 = match_native([lib2], [])
    assert result2.unattributed_indicators == {"root": True}


def test_match_native_clean_lib_no_unattributed_indicators():
    lib = NativeLibrary(
        abi="arm64-v8a", name="libclean.so",
        exports=["JNI_OnLoad"], strings=["hello world"],
    )
    result = match_native([lib], [])
    assert result.unattributed_indicators == {}


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


def test_match_native_resolves_ptrace_fork_combo_via_recovered_body():
    # Gap-1 end-to-end at the pure level: a STRIPPED lib with NO Java_* export
    # imports `ptrace` but hides `fork` inside a function body. The broadened
    # gate (_should_decompile_body) fires on the ptrace security signal -> Ghidra
    # recovers the body -> the require_all ptrace+fork combo is confirmed via the
    # decompiled body. Before the fix this lib was symbol-level-only: require_all
    # failed on the missing visible `fork` AND no Java_* export ever triggered
    # decompilation, so the anti-debug technique was completely missed.
    lib = NativeLibrary(
        abi="arm64-v8a", name="libfoo.so",
        exports=["ptrace", "getppid"],          # ptrace visible, fork hidden
        stripped=True, ghidra_decompiled=True,
        ghidra_functions=["anti_debug\nvoid anti_debug(void){ pid_t p=fork(); ptrace(PTRACE_TRACEME); }"],
    )
    sig = NativeSignature(id="native_ptrace_fork_antidebug", category="root", weight=0.5,
                          pattern_type="export_symbol", patterns=["ptrace", "fork"], require_all=True)
    res = match_native([lib], [sig])
    # The require_all combo FIRES - the missing visible `fork` is confirmed via
    # the recovered body. Evidence anchors on the visible `ptrace` export
    # (patterns[0]), which is what actually triggered the gate.
    assert res.root_confidence == 0.5
    assert res.root_evidence[0].matched_text == "ptrace"
    # And the gate that got this lib decompiled fires on the ptrace signal alone
    # (no Java_* export present) - the Gap-1 blind spot is closed.
    assert _should_decompile_body(lib.stripped, lib.obfuscated, lib.jni_exports,
                                  lib.exports, lib.strings, {"ptrace", "fork"}) is True


def test_ghidra_decompile_ok_false_when_ghidra_absent(tmp_path, monkeypatch):
    # A missing Ghidra install must degrade loudly (ok=False + error), never
    # crash and never falsely certify the lib scanned (principle 3).
    from static import native as native_mod
    monkeypatch.setattr(native_mod, "_find_ghidra_headless", lambda: None)
    ok, bodies, truncated, err = native_mod.ghidra_decompile(tmp_path / "lib.so", tmp_path / "o.txt")
    assert ok is False
    assert bodies == []
    assert truncated is False
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


def test_compute_degradation_stripped_but_body_scanned_is_fully_analyzed():
    # Fix-2: capstone genuinely disassembled the stripped lib's code (complete
    # instruction-level scan of its call surface + embedded strings) and it is
    # NOT obfuscated or packed - root/SSL detection is call+string based, so the
    # whole detection surface was examined. The honest "scanned" claim Ghidra
    # makes, achieved machine-independently - a stripped lib whose code was read
    # reads fully_analyzed, not the old blanket partial.
    lib = NativeLibrary(
        abi="arm64-v8a", name="lib.so", stripped=True,
        body_scanned=True, body_calls=["ptrace", "fork", "getppid"],
    )
    assert compute_degradation([lib])["arm64-v8a"] == "fully_analyzed"


def test_compute_degradation_body_scanned_but_obfuscated_is_partial():
    # Fix-2 honest boundary: even a fully-disassembled lib stays partial when it
    # is obfuscated or packed - inline/encrypted logic is a genuine limit a call
    # surface cannot see through, so a confident negative over it is never
    # certified (ADR-0006). body_scanned alone never upgrades these.
    for kw in ({"obfuscated": True}, {"packed": True, "packer": "UPX"}):
        lib = NativeLibrary(abi="arm64-v8a", name="lib.so", stripped=True,
                            body_scanned=True, **kw)
        assert compute_degradation([lib])["arm64-v8a"] == "partial"


def test_compute_degradation_obfuscated_is_partial():
    lib = NativeLibrary(abi="arm64-v8a", name="lib.so", obfuscated=True)
    assert compute_degradation([lib])["arm64-v8a"] == "partial"


def test_compute_degradation_upx_packed_is_partial():
    # Gap-4: a UPX-packed lib we could not unpack reads partial (the real code is
    # hidden behind the stub), never clean - matching Gap-2's packed->java=partial.
    lib = NativeLibrary(abi="arm64-v8a", name="lib.so", packed=True, packer="UPX")
    assert compute_degradation([lib])["arm64-v8a"] == "partial"


def test_strip_truncation_sentinel_detects_and_cleans():
    # Item #3 / time: when the per-lib Ghidra cap is hit, the script appends the
    # sentinel; it must be detected (truncated=True) and stripped so it never
    # pollutes a function body or the matching corpus.
    from static import native as native_mod
    raw = "FUNC f\nint f(){return 1;}\n" + native_mod._GHIDRA_TRUNCATED_SENTINEL + " 1500\n"
    cleaned, truncated = native_mod._strip_truncation_sentinel(raw)
    assert truncated is True
    assert native_mod._GHIDRA_TRUNCATED_SENTINEL not in cleaned
    assert "FUNC f" in cleaned  # real bodies survive the strip
    # A normal (uncapped) dump has no sentinel.
    clean2, trunc2 = native_mod._strip_truncation_sentinel("FUNC g\nint g(){}\n")
    assert trunc2 is False and clean2 == "FUNC g\nint g(){}\n"


def test_compute_degradation_truncated_ghidra_is_partial_not_fully_analyzed():
    # Item #3 / time: a lib whose Ghidra body-dump hit the cap was only PARTIALLY
    # decompiled - the unexamined tail could hold a technique, so it reads
    # `partial` (coverage-limited, ADR-0006), NEVER fully_analyzed over the
    # unexamined tail. This is the honest bound that lets the cap cut time on
    # giant RN libs without silently certifying an unexamined surface as scanned.
    full = NativeLibrary(abi="arm64-v8a", name="lib.so", stripped=True,
                         ghidra_decompiled=True, ghidra_functions=["a\nint a(){}"],
                         ghidra_truncated=False)
    assert compute_degradation([full])["arm64-v8a"] == "fully_analyzed"
    truncated = NativeLibrary(abi="arm64-v8a", name="librnskia.so", stripped=True,
                              ghidra_decompiled=True, ghidra_functions=["a\nint a(){}"],
                              ghidra_truncated=True)
    assert compute_degradation([truncated])["arm64-v8a"] == "partial"


def test_compute_degradation_empty_is_unscannable():
    lib = NativeLibrary(abi="x86_64", name="lib.so")
    assert compute_degradation([lib])["x86_64"] == "unscannable"


def test_compute_degradation_healthy_is_fully_analyzed():
    lib = NativeLibrary(abi="arm64-v8a", name="lib.so", exports=["JNI_OnLoad"], strings=["hello"])
    assert compute_degradation([lib])["arm64-v8a"] == "fully_analyzed"


def test_compute_degradation_worst_wins_within_abi_partial_not_masked():
    # Two libs in ONE ABI: a stripped (partial) lib and a healthy one. Old
    # last-write-wins let whichever lib was processed LAST set the ABI state, so a
    # healthy lib analyzed after a stripped one falsely certified the ABI
    # fully_analyzed - a confident negative over the unexamined stripped lib
    # (ADR-0006). In a single-ABI app (arm64-only) there is no other ABI for
    # native_coverage's cross-ABI _min_coverage to drag it down, so the masking is
    # live. Worst-wins keeps the ABI partial regardless of order.
    stripped = NativeLibrary(abi="arm64-v8a", name="liba_stripped.so", stripped=True)
    healthy = NativeLibrary(abi="arm64-v8a", name="libz_healthy.so", exports=["foo"], strings=["hello"])
    assert compute_degradation([stripped, healthy])["arm64-v8a"] == "partial"
    assert compute_degradation([healthy, stripped])["arm64-v8a"] == "partial"


def test_compute_degradation_worst_wins_within_abi_unscannable_not_masked():
    # unscannable is the worst state (a tool failed - we read nothing) and must
    # never be masked by a healthy sibling in the same ABI, in either order.
    unscannable = NativeLibrary(abi="arm64-v8a", name="liba.so", unscannable=True, scan_error="readelf exited 1")
    healthy = NativeLibrary(abi="arm64-v8a", name="libz.so", exports=["foo"], strings=["hello"])
    assert compute_degradation([unscannable, healthy])["arm64-v8a"] == "unscannable"
    assert compute_degradation([healthy, unscannable])["arm64-v8a"] == "unscannable"


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

    # WINBINUTILS1: readelf/nm/strings are resolved with shutil.which now
    # (they are optional - the pyelftools path runs first), so pin `which`
    # to simulate the reference host having them.
    monkeypatch.setattr(native_mod.shutil, "which", fake_which)
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

    # WINBINUTILS1: readelf/nm/strings are resolved with shutil.which now
    # (they are optional - the pyelftools path runs first), so pin `which`
    # to simulate the reference host having them.
    monkeypatch.setattr(native_mod.shutil, "which", fake_which)
    monkeypatch.setattr(native_mod.subprocess, "run", fake_run)

    lib = native_mod.analyze_so(so)

    assert lib.unscannable is True
    assert "readelf exited 1" in lib.scan_error


def test_match_native_fires_from_exports_even_when_gate_skips_body():
    # Regression for the Ghidra JNI gate (native.py analyze_so): detection must
    # NEVER depend on body-decompilation - a technique in a lib's EXPORT corpus
    # (readelf -Ws includes imports) must fire from exports alone, even when
    # ghidra_functions is empty. (Since Gap-5 a JNI_OnLoad lib IS decompiled, but
    # a lib Ghidra simply failed on - ghidra_error set, empty bodies - must still
    # be detected from its symbols; the two sources are independent.) Verified
    # against real PG libs (sentry's ptrace import is symbol-caught).
    sig = NativeSignature(id="native_ptrace_fork_antidebug", category="root", weight=0.5,
                          pattern_type="export_symbol", patterns=["ptrace", "fork"],
                          require_all=True)
    lib = NativeLibrary(
        abi="arm64-v8a", name="libfoo.so",
        exports=["JNI_OnLoad", "ptrace", "fork"],  # technique symbol-visible
        jni_exports=[],  # no Java_* -> the gate skips body-decompilation
        stripped=True,
        ghidra_functions=[],  # what the gate-skipped lib looks like to the matcher
    )
    result = match_native([lib], [sig])
    assert any(e.signature_id == "native_ptrace_fork_antidebug" for e in result.root_evidence)
    assert result.root_confidence == pytest.approx(0.5)


def test_try_read_dynsym_pyelftools_parses_real_so():
    # Limitation-8 fix: pyelftools reads a real .so's .dynsym in pure Python, no
    # host binutils, so a lib for which the host readelf/nm lacks a BFD target
    # still parses (arch-agnostic). This exercises the helper against an actual
    # installed C-extension .so - the exact kind of real ELF analyze_so consumes.
    import sys
    from static.native import _pyelftools_has_symtab, _try_read_dynsym_pyelftools

    sp = Path(sys.prefix) / "lib" / f"python{sys.version_info.major}.{sys.version_info.minor}" / "site-packages"
    so = next(sp.rglob("*.so"), None)
    if so is None:
        pytest.skip("no real .so in site-packages to parse")
    syms = _try_read_dynsym_pyelftools(so)
    assert syms is not None and syms, f"pyelftools failed to read dynsym of {so}"
    assert all(isinstance(s, str) and s for s in syms)
    # A glibc-linked .so imports libc symbols; elftools strips `@LIBC` version
    # suffixes, so the raw names must be clean (the same guarantee the readelf
    # tokenizer provides, so match_native's exact-membership still fires).
    assert all("@" not in s for s in syms)
    # .symtab presence check runs on the same file without erroring.
    assert _pyelftools_has_symtab(so) is not None


def test_compute_degradation_gate_skipped_lib_is_partial():
    # A stripped lib the JNI gate deliberately did NOT body-decompile must be
    # honest: `partial` (bodies unexamined -> no confident native negative), never
    # `fully_analyzed` (would overclaim, ADR-0006) and never `unscannable` (we
    # DID read its symbols/strings). Locks in the coverage bound PG reports.
    lib = NativeLibrary(
        abi="arm64-v8a", name="librn.so",
        exports=["JNI_OnLoad"], strings=["app"],
        stripped=True, ghidra_decompiled=False,
    )
    cov = compute_degradation([lib])
    assert cov["arm64-v8a"] == "partial"


# --- Gap-1: native body-decompilation gate (stripped, no-Java_* blind spot) ---

def test_security_triggers_union_of_all_patterns():
    sigs = [
        NativeSignature(id="a", category="root", weight=0.5, pattern_type="export_symbol",
                        patterns=["ptrace", "fork"], require_all=True),
        NativeSignature(id="b", category="ssl", weight=0.5, pattern_type="embedded_string",
                        patterns=["pin_cert_sha256"]),
    ]
    assert security_triggers(sigs) == {"ptrace", "fork", "pin_cert_sha256"}


def test_has_native_security_signal_true_on_overlap():
    # A stripped lib importing `ptrace` but NOT `fork` overlaps the corpus -> it
    # is a body-decompilation candidate even with no Java_* export. Overlap is
    # EXACT membership, mirroring match_native's exact embedded_string semantics
    # (a substring rule would over-trigger on benign `supersu`-style tokens).
    assert _has_native_security_signal(["ptrace"], [], {"ptrace", "fork"}) is True
    assert _has_native_security_signal([], ["/system/xbin/su"], {"/system/xbin/su"}) is True


def test_has_jni_surface_detects_full_surface():
    # Gap-5: the JNI surface is Java_* exports OR the JNI_OnLoad/OnUnload
    # dynamic-registration entry points - not Java_* alone.
    assert _has_jni_surface(["Java_foo", "helper"]) is True
    assert _has_jni_surface(["JNI_OnLoad"]) is True
    assert _has_jni_surface(["JNI_OnUnload"]) is True
    assert _has_jni_surface(["app_helper", "sqrt"]) is False
    assert _has_jni_surface([]) is False


def test_has_native_security_signal_false_when_no_overlap():
    assert _has_native_security_signal(["JNI_OnLoad"], ["app"], {"ptrace", "fork"}) is False
    assert _has_native_security_signal(["ptrace"], [], set()) is False


def test_should_decompile_body_fires_on_signal_without_jni_export():
    # Gap-1 core: a STRIPPED lib with a security signal (ptrace, part of the
    # require_all anti-debug combo) but NO Java_* export must be decompiled - the
    # hidden `fork` in a body is what resolves the combo. Before this gate it was
    # symbol-level-only and the technique was never recovered.
    assert _should_decompile_body(True, False, [], ["ptrace"], [], {"ptrace", "fork"}) is True


def test_should_decompile_body_fires_on_jni_onload_surface():
    # Gap-5: a stripped lib that defines JNI_OnLoad (even with NO Java_* export
    # and NO corpus signal) has a JNI registration surface Java can call - its
    # bodies may hold a dynamically-registered root/SSL check, so it MUST be
    # body-decompiled, not left symbol-level-only (the pre-Gap-5 blind spot).
    assert _should_decompile_body(True, False, [], ["JNI_OnLoad"], ["app"], {"ptrace", "fork"}) is True


def test_should_decompile_body_skips_no_jni_surface_and_no_signal():
    # The performance guard is kept: a stripped lib with neither a JNI surface
    # (no Java_*, no JNI_OnLoad) nor a security signal (benign infra like
    # libjsi/libc++) skips decompilation.
    assert _should_decompile_body(True, False, [], ["app_helper"], ["app"], {"ptrace", "fork"}) is False


def test_should_decompile_body_fires_on_unattributed_native_indicator():
    # Boundary #3: a stripped lib with NO JNI surface and NO native-signature
    # signal but carrying an UNRECOGNIZED detection idiom (/sbin/su - an
    # indicator, not a signature pattern) was previously left partial-unexamined.
    # The indicator now drives the gate, so its body is decompiled and a hidden
    # root check is actually examined instead of staying a blind spot.
    assert _should_decompile_body(True, False, [], [], ["/sbin/su"], {"ptrace", "fork"}) is True
    # The native SSL indicator (OpenSSL verify control) also drives the gate.
    assert _should_decompile_body(True, False, [], ["SSL_CTX_set_verify"], [], {"ptrace", "fork"}) is True
    # A benign stripped lib with no detection idiom still skips (guard kept).
    assert _should_decompile_body(True, False, [], ["app_helper"], ["hello"], {"ptrace", "fork"}) is False


def test_should_decompile_body_keeps_jni_export_trigger():
    # Historical behavior preserved: a stripped lib exposing a Java_* JNI export
    # (in its export corpus, of which jni_exports is a subset) is decompiled even
    # if its corpus happens not to overlap the signature set.
    assert _should_decompile_body(True, False, ["Java_foo"], ["Java_foo"], [], {"ptrace", "fork"}) is True


def test_should_decompile_body_skips_healthy_unstripped():
    # A fully-symbolized (unstripped) lib needs no body decompilation - symbols
    # already expose the technique.
    assert _should_decompile_body(False, False, ["Java_foo"], ["check_root"], [], {"check_root"}) is False


def test_should_decompile_body_fires_on_obfuscated_with_signal():
    assert _should_decompile_body(False, True, [], ["ptrace"], [], {"ptrace", "fork"}) is True


# --- boundary #4: System.load/loadLibrary targets and unaccounted loads ---


def test_find_external_native_loads_loadlibrary(tmp_path):
    f = tmp_path / "A.java"
    f.write_text(
        'class A { static { System.loadLibrary("crypto"); }\n'
        'void x() { System.loadLibrary("rootcheck"); } }'
    )
    targets = find_external_native_loads([f])
    assert "crypto" in targets and "rootcheck" in targets


def test_find_external_native_loads_load_abs_and_assets(tmp_path):
    f = tmp_path / "A.java"
    f.write_text(
        'System.load("/data/local/tmp/evil.so");\n'
        'System.load("assets/native/x.so");\n'
        'notASystem.load("skip");'
    )
    # The `System.load` (absolute path) and `System.load("assets/...")` targets
    # are caught; a bare `load(...)` on another receiver is not a System load.
    targets = find_external_native_loads([f])
    assert "/data/local/tmp/evil.so" in targets
    assert "assets/native/x.so" in targets
    assert "skip" not in targets


def test_find_external_native_loads_empty_when_none(tmp_path):
    f = tmp_path / "A.java"
    f.write_text("class A { int x = 1; }")
    assert find_external_native_loads([f]) == []


def test_find_external_native_loads_skips_unreadable(tmp_path):
    assert find_external_native_loads([tmp_path / "missing.java"]) == []


def test_unaccounted_native_loads_loadlibrary_name_mapping():
    # loadLibrary("foo") -> libfoo.so; covered if that basename was analyzed.
    analyzed = {"libcrypto.so", "librootcheck.so"}
    assert unaccounted_native_loads(["crypto", "rootcheck"], analyzed) == []
    assert unaccounted_native_loads(["crypto", "missing"], analyzed) == ["missing"]


def test_unaccounted_native_loads_abs_path_uses_basename():
    # An absolute-path load maps to its exact basename ("evil.so"): accounted
    # only if a lib of that name was extracted+analyzed (an assets/ or standalone
    # .so, not libfoo.so under lib/<abi>/).
    assert unaccounted_native_loads(["/data/local/tmp/evil.so"], {"evil.so"}) == []
    # A load target with no corresponding analyzed .so is unaccounted.
    assert unaccounted_native_loads(["/data/local/tmp/other.so"], {"evil.so"}) == [
        "/data/local/tmp/other.so"
    ]


def test_unaccounted_native_loads_already_dot_so():
    analyzed = {"x.so"}
    assert unaccounted_native_loads(["assets/native/x.so"], analyzed) == []
    assert unaccounted_native_loads(["assets/native/y.so"], analyzed) == [
        "assets/native/y.so"
    ]


def test_unaccounted_native_loads_empty():
    assert unaccounted_native_loads([], set()) == []
    # A loadLibrary("libfoo") that already starts with lib is not double-prefixed.
    assert unaccounted_native_loads(["libfoo"], {"libfoo.so"}) == []


def test_unaccounted_native_loads_dedups_repeated_target():
    # The same target loaded from several call sites (e.g. loadLibrary("log") in
    # many RN modules) is one unexamined surface, not N - the report shows it
    # once. Order is preserved and the first occurrence wins.
    assert unaccounted_native_loads(["log", "log"], set()) == ["log"]
    assert unaccounted_native_loads(["log", "ssl", "log", "crypto"], set()) == [
        "log",
        "ssl",
        "crypto",
    ]
    # Dedup collapses only exact repeats; genuinely distinct targets are kept.
    assert unaccounted_native_loads(["a", "b", "a"], {"libz.so"}) == ["a", "b"]


# --- Fix 3: SHA-256 byte-dedup -----------------------------------------------

def _write_so(tmp_path, name, data):
    p = tmp_path / name
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_bytes(data)
    return p


def test_group_identical_so_files_dedups_same_bytes(tmp_path):
    a = _write_so(tmp_path, "arm64-v8a/libfoo.so", b"\x7fELF-A")
    b = _write_so(tmp_path, "arm64-v8a/libbar.so", b"\x7fELF-A")  # identical bytes
    c = _write_so(tmp_path, "x86_64/libfoo.so", b"\x7fELF-B")     # different bytes
    groups = group_identical_so_files([a, b, c])
    assert len(groups) == 2
    digests = [g[0] for g in groups]
    assert digests[0] != digests[1]
    # identical-byte paths share a group (order preserved: [a, b])
    group_a = next(g for g in groups if g[0] == digests[0])
    assert set(group_a[1]) == {a, b}
    # different-byte path is its own group
    group_c = next(g for g in groups if g[0] == digests[1])
    assert group_c[1] == [c]


def test_group_identical_so_files_preserves_individual_digests(tmp_path):
    a = _write_so(tmp_path, "arm64-v8a/libfoo.so", b"\x7fELF-A")
    b = _write_so(tmp_path, "arm64-v8a/libbar.so", b"\x7fELF-A")
    groups = group_identical_so_files([a, b])
    assert len(groups) == 1
    digest, paths = groups[0]
    assert len(paths) == 2
    # each member's own streamed digest equals the group key
    from common import sha256_file
    for p in paths:
        assert sha256_file(p) == digest


def test_group_identical_so_files_empty_and_singleton(tmp_path):
    assert group_identical_so_files([]) == []
    a = _write_so(tmp_path, "arm64-v8a/libfoo.so", b"\x7fELF-A")
    groups = group_identical_so_files([a])
    assert len(groups) == 1
    assert groups[0][1] == [a]


def test_clone_lib_for_path_overrides_abi_and_name(tmp_path):
    base = NativeLibrary(abi="arm64-v8a", name="libfoo.so", sha256="abc123",
                         exports=["check_root"], stripped=True,
                         jni_onload=True, ghidra_functions=["int check_root(void)"])
    other = _write_so(tmp_path, "x86_64/libbar.so", b"\x7fELF")
    cloned = _clone_lib_for_path(base, other)
    assert cloned.abi == "x86_64"
    assert cloned.name == "libbar.so"
    assert cloned.sha256 == "abc123"          # identity preserved
    assert cloned.exports == base.exports     # analysis fields shared
    assert cloned.stripped is True
    assert cloned.jni_onload is True
    assert cloned.ghidra_functions == base.ghidra_functions


def test_clone_lib_for_path_unknown_abi(tmp_path):
    base = NativeLibrary(abi="arm64-v8a", name="libfoo.so")
    other = _write_so(tmp_path, "weird/libbar.so", b"\x7fELF")
    assert _clone_lib_for_path(base, other).abi == "unknown"


# --- native-analysis disk cache (analyze_so cache_dir) -----------------------
# The uncached analyze_so body needs a real .so + toolchain, so these tests pin
# the pure cache-contract instead: lossless round-trip, and correct invalidation
# on a version change or a security-trigger change (a stale entry must read as a
# miss, never serve old analysis - ADR-0002 no-silent-staleness).


def test_native_analyze_cache_round_trip_lossless(tmp_path):
    from static.native import _ANALYZE_CACHE_VERSION, _load_analyze_cache, _save_analyze_cache
    lib = NativeLibrary(
        abi="arm64-v8a", name="libroot.so", exports=["check_root", "strncmp"],
        strings=["/system/bin/su", "magisk"], stripped=True, obfuscated=False,
        jni_onload=True, ghidra_functions=["int check_root(void) { return 1; }"],
        ghidra_decompiled=True, ghidra_error=None, ghidra_truncated=False,
        sha256="feedbeef",
    )
    cache_dir = tmp_path / "natcache"
    _save_analyze_cache(cache_dir, "feedbeef", _ANALYZE_CACHE_VERSION, "check_root", lib)
    loaded = _load_analyze_cache(cache_dir, "feedbeef", _ANALYZE_CACHE_VERSION, "check_root")
    assert loaded is not None
    assert loaded == lib  # dataclass equality - the cache is lossless


def test_native_analyze_cache_stale_version_is_a_miss(tmp_path):
    from static.native import _load_analyze_cache, _save_analyze_cache
    lib = NativeLibrary(abi="arm64-v8a", name="libroot.so")
    cache_dir = tmp_path / "natcache"
    _save_analyze_cache(cache_dir, "deadbeef", "native-analyze-v1", "sigA", lib)
    # A bump to v2 (analysis logic / toolchain change) must NOT serve the v1 entry.
    assert _load_analyze_cache(cache_dir, "deadbeef", "native-analyze-v2", "sigA") is None


def test_native_analyze_cache_trigger_change_is_a_miss(tmp_path):
    from static.native import _load_analyze_cache, _save_analyze_cache
    lib = NativeLibrary(abi="arm64-v8a", name="libroot.so")
    cache_dir = tmp_path / "natcache"
    _save_analyze_cache(cache_dir, "cafebabe", "native-analyze-v1", "check_root", lib)
    # A different security-trigger set means the Ghidra body gate could have
    # decompiled different functions - the entry must not be served.
    assert _load_analyze_cache(cache_dir, "cafebabe", "native-analyze-v1", "other_sig") is None


def test_analyze_so_ghidra_last_resort_recovers_tool_failure(tmp_path, monkeypatch):
    # The Ghidra last-resort: when the symbol layer (pyelftools/readelf/nm/
    # strings) raises NativeToolError, analyze_so must NOT immediately certify the
    # lib `unscannable` - it tries Ghidra as a last resort. If Ghidra recovers
    # function bodies, the lib is scanned (not a silent lower bound), and
    # compute_degradation lifts it to fully_analyzed. Without the last-resort this
    # lib was abandoned to `unscannable` - recoverable data dropped.
    so = tmp_path / "lib.so"
    so.write_bytes(b"\x7fELF opaque")

    from static import native as native_mod

    def fake_run(cmd, **kwargs):
        raise subprocess.TimeoutExpired(cmd=cmd, timeout=60)  # symbol layer fails

    # WINBINUTILS1: pin the optional-binutils lookup so readelf/nm/strings
    # resolve as they would on the reference host.
    monkeypatch.setattr(native_mod.shutil, "which", lambda name: f"/usr/bin/{name}")
    monkeypatch.setattr(native_mod.subprocess, "run", fake_run)
    monkeypatch.setattr(
        native_mod, "ghidra_decompile",
        lambda p, out: (True, ["int check_root(void) { return 1; }"], False, None),
    )

    lib = native_mod.analyze_so(so)

    assert lib.unscannable is False        # recovered, not abandoned
    assert lib.ghidra_decompiled is True
    assert lib.ghidra_functions            # bodies recovered by Ghidra
    assert compute_degradation([lib])[lib.abi] == "fully_analyzed"


def test_analyze_so_ghidra_last_resort_falls_back_to_unscannable_when_ghidra_fails(tmp_path, monkeypatch):
    # The honest negative: if Ghidra ALSO fails to read the lib (returns no
    # bodies), analyze_so must still certify it `unscannable` - never a silent
    # partial or a false clean. The last-resort only lifts the lib when Ghidra
    # genuinely recovers code.
    so = tmp_path / "lib.so"
    so.write_bytes(b"\x7fELF opaque")

    from static import native as native_mod

    def fake_run(cmd, **kwargs):
        raise subprocess.TimeoutExpired(cmd=cmd, timeout=60)

    # WINBINUTILS1: pin the optional-binutils lookup so readelf/nm/strings
    # resolve as they would on the reference host.
    monkeypatch.setattr(native_mod.shutil, "which", lambda name: f"/usr/bin/{name}")
    monkeypatch.setattr(native_mod.subprocess, "run", fake_run)
    monkeypatch.setattr(
        native_mod, "ghidra_decompile",
        lambda p, out: (False, [], False, "ghidra could not read it"),
    )

    lib = native_mod.analyze_so(so)

    assert lib.unscannable is True
    assert lib.scan_error is not None
    assert compute_degradation([lib])[lib.abi] == "unscannable"


def test_every_native_signature_has_reachable_signal():
    # Corpus-level dead-signature check for the native corpus (Batch D). Every id
    # must carry a non-empty pattern, and every embedded_string pattern must be
    # >=4 chars - the `strings` extraction bound (min printable length 4 in
    # analyze_so) means a shorter literal can never be recovered from a real .so,
    # so it would be unreachable dead weight (same ADR-0006 discipline as
    # native_su_binary_embedded). This pins the real native ids so a renamed or
    # unreachable signature fails here loudly.
    sigs = load_native_signatures(REPO_ROOT / "config" / "signatures" / "native_detection.yaml")
    assert sigs
    ids = {s.id for s in sigs}
    assert len(ids) == len(sigs), "native_detection.yaml has duplicate ids"
    for sig in sigs:
        assert sig.patterns, f"native id '{sig.id}' has empty patterns"
        for p in sig.patterns:
            assert isinstance(p, str) and p.strip(), f"native id '{sig.id}' has a blank pattern"
            if sig.pattern_type == "embedded_string":
                assert len(p) >= 4, (
                    f"native id '{sig.id}' embedded_string pattern '{p}' is <4 chars - "
                    "unreachable under the strings min-printable-length-4 extraction bound"
                )


def test_native_ssl_pinning_verify_matches_and_not_benign():
    # native_ssl_pinning_verify (category ssl, export_symbol): a lib exporting a
    # certificate-pinning verify symbol fires ssl evidence; a benign lib exporting
    # only generic crypto symbols does not (exact export membership, ADR-0006).
    sig = next(
        s for s in load_native_signatures(REPO_ROOT / "config" / "signatures" / "native_detection.yaml")
        if s.id == "native_ssl_pinning_verify"
    )
    pinning = NativeLibrary(
        abi="arm64-v8a", name="libpinning.so",
        exports=["checkCertificatePinning", "verify_certificate"],
    )
    result = match_native([pinning], [sig])
    assert result.ssl_confidence == 0.5
    assert any(e.signature_id == "native_ssl_pinning_verify" for e in result.ssl_evidence)

    benign = NativeLibrary(abi="arm64-v8a", name="libssl.so", exports=["SSL_read", "SSL_write"])
    result = match_native([benign], [sig])
    assert result.ssl_confidence == 0.0
    assert result.ssl_evidence == []


def test_native_ssl_custom_verify_callback_matches_and_not_benign():
    # native_ssl_custom_verify_callback (category ssl, export_symbol): the
    # canonical OpenSSL native-pinning idiom SSL_CTX_set_cert_verify_callback.
    # A lib importing it (readelf -Ws includes imports, match_native matches the
    # export corpus) is an unambiguous native pinning hook; a lib importing only
    # the generic verify setters (not scored - see the YAML) must not fire.
    sig = next(
        s for s in load_native_signatures(REPO_ROOT / "config" / "signatures" / "native_detection.yaml")
        if s.id == "native_ssl_custom_verify_callback"
    )
    hooked = NativeLibrary(
        abi="arm64-v8a", name="libpinning.so",
        exports=["SSL_CTX_set_cert_verify_callback"],
    )
    result = match_native([hooked], [sig])
    assert result.ssl_confidence == 0.4
    assert any(e.signature_id == "native_ssl_custom_verify_callback" for e in result.ssl_evidence)

    # generic verify setter that the YAML deliberately does NOT score (SSL_VERIFY_NONE)
    benign = NativeLibrary(
        abi="arm64-v8a", name="libssl.so",
        exports=["SSL_CTX_set_verify", "SSL_set_verify"],
    )
    result = match_native([benign], [sig])
    assert result.ssl_confidence == 0.0
    assert result.ssl_evidence == []


# --- parallel Ghidra decompilation (analyze_so_many + per-.so project dir) ---
# The parallelism is a pure orchestrator over analyze_so, so these tests are
# fixture-testable anywhere by monkeypatching analyze_so - no readelf/Ghidra.
# The per-.so Ghidra project dir (_ghidra_project_dir) is the correctness
# prerequisite: concurrent analyze_so passes must never write one shared dir.

def test_ghidra_project_dir_is_per_so(tmp_path):
    from static import native as native_mod
    a = native_mod._ghidra_project_dir(tmp_path / "liba.so")
    b = native_mod._ghidra_project_dir(tmp_path / "libb.so")
    assert a != b
    assert a.name == "_ghidra_proj_liba"
    assert a.parent == tmp_path


def test_analyze_so_many_preserves_order(monkeypatch):
    from static import native as native_mod
    from pathlib import Path
    seen = []

    def fake(p, security_triggers=None, cache_dir=None):
        seen.append(p.name)
        return native_mod.NativeLibrary(abi="x", name=p.name)

    monkeypatch.setattr(native_mod, "analyze_so", fake)
    paths = [Path(f"/tmp/lib{i}.so") for i in range(5)]
    out = native_mod.analyze_so_many(paths, max_workers=3)
    # analyze_so_many must return results in input order. That is the contract.
    assert [o.name for o in out] == [f"lib{i}.so" for i in range(5)]
    # Invocation order is NOT part of the contract: ThreadPoolExecutor.map
    # schedules tasks as workers free up, so `seen` may interleave. Assert the
    # set was covered exactly once instead of asserting a specific sequence.
    assert sorted(seen) == sorted(f"lib{i}.so" for i in range(5))
    assert len(seen) == 5


def test_analyze_so_many_bounds_concurrency(monkeypatch):
    import time
    from static import native as native_mod
    from pathlib import Path
    state = {"active": 0, "peak": 0}

    def fake(p, security_triggers=None, cache_dir=None):
        state["active"] += 1
        state["peak"] = max(state["peak"], state["active"])
        time.sleep(0.03)
        state["active"] -= 1
        return native_mod.NativeLibrary(abi="x", name=p.name)

    monkeypatch.setattr(native_mod, "analyze_so", fake)
    paths = [Path(f"/tmp/lib{i}.so") for i in range(6)]
    native_mod.analyze_so_many(paths, max_workers=3)
    assert state["peak"] <= 3


def test_analyze_so_many_max_workers_1_is_serial(monkeypatch):
    import time
    from static import native as native_mod
    from pathlib import Path
    state = {"active": 0, "peak": 0}

    def fake(p, security_triggers=None, cache_dir=None):
        state["active"] += 1
        state["peak"] = max(state["peak"], state["active"])
        time.sleep(0.01)
        state["active"] -= 1
        return native_mod.NativeLibrary(abi="x", name=p.name)

    monkeypatch.setattr(native_mod, "analyze_so", fake)
    paths = [Path(f"/tmp/lib{i}.so") for i in range(4)]
    native_mod.analyze_so_many(paths, max_workers=1)
    assert state["peak"] == 1


def test_analyze_so_many_empty_input():
    from static import native as native_mod
    assert native_mod.analyze_so_many([]) == []


def test_match_native_resolves_combo_via_capstone_body_calls():
    # Fix-2: a STRIPPED lib whose anti-debug `fork` call is recovered by the
    # capstone body-call pass (body_calls) - not visible as an export - still
    # fires the require_all ptrace+fork combo via the recovered call surface,
    # machine-independently (no Ghidra needed on this machine).
    lib = NativeLibrary(
        abi="arm64-v8a", name="libfoo.so",
        exports=["ptrace", "getppid"],          # ptrace visible, fork hidden in a call
        stripped=True,
        body_calls=["fork", "waitpid", "getppid"],   # recovered by capstone
    )
    sig = NativeSignature(id="native_ptrace_fork_antidebug", category="root", weight=0.5,
                          pattern_type="export_symbol", patterns=["ptrace", "fork"], require_all=True)
    res = match_native([lib], [sig])
    assert res.root_confidence == 0.5
    assert res.root_evidence[0].matched_text == "ptrace"


def test_recover_body_calls_graceful_on_non_elf(tmp_path):
    # Fix-2: a non-ELF / unreadable file returns (False, []) ("code not scanned"),
    # never raises - the caller reads that as not-recovered, not proof of absence.
    f = tmp_path / "notelf.txt"
    f.write_text("hello world not an elf")
    assert _recover_body_calls(f) == (False, [])
    assert _recover_body_calls(str(f)) == (False, [])   # also tolerates a str path


def test_native_entry_validation_rejects_bad_branches():
    # _validate_native_entry rejects a native signature that would silently
    # no-op or skew detection (same hazard class as the Java-side validator).
    # It had zero direct coverage.
    from pathlib import Path

    from static.native import _validate_native_entry

    p = Path("native.yaml")
    good = {"id": "x", "category": "root", "weight": 0.5, "pattern_type": "export_symbol", "patterns": ["y"], "require_all": True}

    def _raises(bad, needle):
        try:
            _validate_native_entry(bad, p)
        except ValueError as e:
            assert needle in str(e), e
            return
        raise AssertionError(f"expected ValueError with '{needle}'")

    _raises({**good, "category": "Root"}, "invalid category")
    _raises({**good, "weight": 5}, "invalid weight")
    _raises({**good, "weight": "0.5"}, "invalid weight")   # non-number
    _raises({**good, "pattern_type": "bogus"}, "invalid pattern_type")
    _raises({**good, "patterns": []}, "no patterns")
    _raises({**good, "require_all": "true"}, "must be a boolean")  # string typo
    _validate_native_entry(good, p)  # valid entry does not raise


def test_trigger_key_deterministic_sorted():
    # _trigger_key: deterministic cache-key for the security-trigger set - the
    # Ghidra body gate depends on which signature patterns are present, so a lib
    # analyzed under one corpus must never be served from a cache built under
    # another. None/empty -> "<none>"; a set is sorted so order never varies the
    # key. Had zero direct coverage.
    from static.native import _trigger_key
    assert _trigger_key(None) == "<none>"
    assert _trigger_key(set()) == "<none>"
    assert _trigger_key({"ssl_verify", "root_su"}) == "root_su,ssl_verify"
    assert _trigger_key({"b", "a", "c"}) == "a,b,c"


def test_run_tool_returns_stdout_and_raises_on_failure(monkeypatch):
    # native._run_tool: a tool's stdout is returned on success; a timeout or
    # non-zero exit raises NativeToolError (a corrupt/hung .so must surface as
    # unscannable, NEVER as a silent empty parse - H1/H4, principle 3). This
    # wrapper-contract test mocks subprocess.run, not the tool's result. Had zero
    # coverage.
    import subprocess as _sp
    from static.native import _run_tool, NativeToolError

    # success -> stdout
    monkeypatch.setattr(_sp, "run", lambda *a, **k: _sp.CompletedProcess(
        a[0], 0, stdout="FUNC checkRoot\nFUNC isRooted\n", stderr=""))
    assert _run_tool(["readelf", "-Ws", "lib.so"], 30, "readelf") == "FUNC checkRoot\nFUNC isRooted\n"

    # non-zero exit -> loud NativeToolError, not an empty string
    monkeypatch.setattr(_sp, "run", lambda *a, **k: _sp.CompletedProcess(
        a[0], 3, stdout="", stderr="boom"))
    with pytest.raises(NativeToolError, match="exited 3"):
        _run_tool(["readelf", "-Ws", "lib.so"], 30, "readelf")

    # timeout -> loud NativeToolError naming the tool and the 30s budget
    def timeout_run(*a, **k):
        raise _sp.TimeoutExpired(a[0], timeout=k.get("timeout"))
    monkeypatch.setattr(_sp, "run", timeout_run)
    with pytest.raises(NativeToolError, match="timed out after 30s"):
        _run_tool(["ghidra", "lib.so"], 30, "ghidra")


# --- G9: Ghidra toolchain version folded into the native analyze-cache key ------


def test_ghidra_fingerprint_reads_version_from_install_path(monkeypatch):
    # The pinned tools/ghidra/ghidra_<ver>/ segment is the version token - read it
    # straight from the discovered analyzeHeadless path, no extra subprocess.
    from static import native as native_mod
    monkeypatch.setattr(
        native_mod, "_find_ghidra_headless",
        lambda: "/opt/tools/ghidra/ghidra_11.3.2_PUBLIC/support/analyzeHeadless",
    )
    assert native_mod._ghidra_fingerprint() == "ghidra_11.3.2_PUBLIC"


def test_ghidra_fingerprint_absent_is_a_distinct_token(monkeypatch):
    # No Ghidra is itself a fingerprint: a no-body-decomp result must never be
    # served from a cache entry built when Ghidra was present, or vice versa.
    from static import native as native_mod
    monkeypatch.setattr(native_mod, "_find_ghidra_headless", lambda: None)
    assert native_mod._ghidra_fingerprint() == "no-ghidra"


def test_analyze_cache_version_composes_logic_tag_and_tool_fingerprint(monkeypatch):
    from static import native as native_mod
    monkeypatch.setattr(
        native_mod, "_find_ghidra_headless",
        lambda: "/opt/tools/ghidra/ghidra_11.4_PUBLIC/support/analyzeHeadless",
    )
    version = native_mod._analyze_cache_version()
    assert version.startswith(native_mod._ANALYZE_CACHE_VERSION)
    assert "ghidra_11.4_PUBLIC" in version


def test_analyze_so_threads_ghidra_fingerprint_into_cache_key(monkeypatch, tmp_path):
    # G9 wiring: analyze_so must key BOTH the cache load and the cache save on the
    # fingerprinted version, so a Ghidra upgrade auto-invalidates stale entries
    # instead of silently serving results a different decompiler version produced.
    from static import native as native_mod
    so = tmp_path / "libx.so"
    so.write_bytes(b"\x7fELF fake native lib bytes")
    captured = {}

    def fake_load(cache_dir, so_hash, version, trigger_key):
        captured["load_version"] = version
        return None  # force a miss so the uncached path + save both run

    def fake_save(cache_dir, so_hash, version, trigger_key, lib):
        captured["save_version"] = version

    monkeypatch.setattr(native_mod, "_analyze_so_uncached", lambda p, t=None: "LIB")
    monkeypatch.setattr(native_mod, "_load_analyze_cache", fake_load)
    monkeypatch.setattr(native_mod, "_save_analyze_cache", fake_save)
    monkeypatch.setattr(
        native_mod, "_find_ghidra_headless",
        lambda: "/opt/tools/ghidra/ghidra_11.9_PUBLIC/support/analyzeHeadless",
    )

    result = native_mod.analyze_so(so, cache_dir=tmp_path / "cache")
    assert result == "LIB"
    assert "ghidra_11.9_PUBLIC" in captured["load_version"]
    # load and save MUST agree, or a write under one key could never be read back
    assert captured["save_version"] == captured["load_version"]
