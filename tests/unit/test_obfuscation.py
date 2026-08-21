"""Unit tests for static/obfuscation.py - deterministic obfuscation-level
detection (G7). Pure module: feed class-name lists / fixture files, get the level."""

from pathlib import Path

from static.obfuscation import detect_obfuscation_level, obfuscation_from_names


def test_clear_when_no_single_char_names():
    names = ["MainActivity", "HttpClient", "CertificatePinningChecker", "RootDetection"]
    assert obfuscation_from_names(names) == "clear"


def test_excludes_universal_android_resource_class_R():
    # `R` (and `R$id`, `R$layout`, ...) is the generated Android resource class,
    # present in EVERY app and always a single char - it is never an obfuscation
    # signal, so counting it inflates the minified ratio and mislabels clear
    # apps as heavy (C1/G7). Verified against real output: UnCrackable-Level1
    # decompiles to `R, a, c, b, a, MainActivity`; `R` must not count toward
    # the minified ratio (the a/b/c helpers genuinely are R8-renamed, so that
    # app correctly stays heavy either way).
    assert obfuscation_from_names(["MainActivity", "R", "HomeActivity"]) == "clear"
    assert obfuscation_from_names(["MainActivity", "R$id", "R$layout", "HomeActivity"]) == "clear"
    # Genuine minified helpers still trip heavy once R is excluded.
    assert obfuscation_from_names(["a", "b", "c", "R", "MainActivity"]) == "heavy"


def test_class_simple_names_skips_resource_class_and_its_flattened_inner(tmp_path):
    # jadx flattens R's nested resource classes into declarations inside R.java
    # (e.g. `public static final class id`, `class layout`). These are standard
    # Android generated resource inner classes, never obfuscation - if counted,
    # a short resource name like `id` inflates the minified ratio and can
    # mislabel a clear app as heavy. Verified against real output: UnCrackable1's
    # R.java yields `dimen, id, is, layout, menu, mipmap, string, style`, all of
    # which must contribute nothing to the obfuscation signal.
    from static.obfuscation import _class_simple_names

    r_java = tmp_path / "R.java"
    r_java.write_text(
        "package com.app;\n"
        "public final class R {\n"
        "    public static final class id { public static final int home = 0x7f070000; }\n"
        "    public static final class layout { public static final int main = 0x7f0a0000; }\n"
        "}\n"
    )
    main = tmp_path / "MainActivity.java"
    main.write_text("public class MainActivity {}\n")
    helper = tmp_path / "a.java"
    helper.write_text("public class a {}\n")

    names = _class_simple_names([r_java, main, helper])
    assert names == ["MainActivity", "a"]   # R.java contributes nothing, incl. id/layout


def test_heavy_when_mostly_single_char():
    names = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "MainActivity"]
    assert obfuscation_from_names(names) == "heavy"


def test_light_at_intermediate_ratio():
    # 2 single-char out of 12 = 0.166, between 0.10 and 0.40 => light.
    names = ["a", "b", "MainActivity", "HttpClient", "Foo", "Bar", "Baz",
             "Qux", "Quux", "Corge", "Grault", "Garply"]
    assert obfuscation_from_names(names) == "light"


def test_empty_corpus_is_clear():
    # Empty corpus -> clear (the coverage contract separately bounds a low-corpus
    # Java surface via decompile_completeness).
    assert obfuscation_from_names([]) == "clear"


def test_detect_obfuscation_level_walks_files(tmp_path):
    # A fixture directory of heavily-minified .java files -> heavy.
    for name in ("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "MainActivity"):
        (tmp_path / f"{name}.java").write_text(f"public class {name} {{}}\n")
    assert detect_obfuscation_level(list(tmp_path.glob("*.java"))) == "heavy"


def test_heavy_when_many_two_char_names():
    # H6: real R8 uses two-char names (aa, ab) - single-char-only missed these,
    # so the heavy guard never fired on the population it targets.
    names = ["aa", "ab", "ac", "ad", "ae", "af", "ag", "ah", "ai", "aj", "MainActivity"]
    assert obfuscation_from_names(names) == "heavy"


def test_heavy_when_many_dollar_inner_names():
    # H6: R8 inner classes are `a$a` (three chars, contains `$`) - these were
    # invisible to a length-only single-char count.
    names = ["a$a", "a$b", "a$c", "a$d", "a$e", "a$f", "a$g", "a$h", "a$i", "a$j", "MainActivity"]
    assert obfuscation_from_names(names) == "heavy"


def test_class_simple_names_allows_dollar_identifiers(tmp_path):
    # H6: isidentifier() rejects the `$` in `a$b`; class-name extraction must
    # still capture R8 flattened inner classes so they feed the ratio.
    (tmp_path / "a.java").write_text("public class a$a {}\n")
    (tmp_path / "b.java").write_text("public class b {}\n")
    (tmp_path / "MainActivity.java").write_text("public class MainActivity {}\n")

    names = []
    from static.obfuscation import _class_simple_names
    names = _class_simple_names(list(tmp_path.glob("*.java")))

    assert "a$a" in names


def test_inner_class_name_with_long_outer_not_minified():
    # C1: `Cache$urls$1` is a normal inner/anonymous-class marker in a clear app,
    # NOT R8 minification - a bare `$` must not be counted. Only a short outer
    # segment (true R8 `a$a`) is a minification signal.
    names = ["Cache$urls$1", "Cache", "MainActivity", "HttpClient", "Foo", "Bar",
             "Baz", "Qux", "Quux", "Corge", "Grault", "Garply"]
    assert obfuscation_from_names(names) == "clear"


def test_inner_class_with_short_outer_is_minified():
    # True R8 flattened inner: outer `a` (short) + `$` => counted as minified,
    # raising the ratio (2/12 = 0.166 => light) where a bare-$ rule would also
    # count it - the contrast with the long-outer test shows the outer check
    # distinguishes them.
    names = ["a$a", "a$b", "MainActivity", "HttpClient", "Foo", "Bar",
             "Baz", "Qux", "Quux", "Corge", "Grault", "Garply"]
    assert obfuscation_from_names(names) == "light"


def test_string_encryption_fingerprint_detected():
    # R8 string-encryption decryptor shape: a single-arg `new String(<array>)`
    # AND a char[]/int[] initialized with a long run of NUMERIC literals (the
    # hidden string's bytes as ints/hex). This is the literal-hiding pattern G7
    # (class-name ratio) cannot see, which is the gap limitation-4 addresses.
    from static.obfuscation import _has_string_encryption
    text = (
        "private static String d() {\n"
        "    int[] a = {99, 104, 101, 99, 107, 95, 114, 111, 111, 116, 0, 0, 0};\n"
        "    return new String(a);\n"
        "}\n"
    )
    assert _has_string_encryption(text) is True


def test_string_encryption_false_on_charset_decode():
    # The common `new String(bytes, "UTF-8")` charset decode is a single-arg
    # `new String(...)` but takes a two-arg ctor - the regex requires the
    # single-arg `new String(<array>)` decryptor, so this benign idiom must NOT
    # be mislabeled as encryption (over-firing to heavy is the safe direction,
    # but a semantic false label on normal code is avoided, ADR-0006).
    from static.obfuscation import _has_string_encryption
    text = 'byte[] b = in.readAllBytes(); return new String(b, "UTF-8");\n'
    assert _has_string_encryption(text) is False


def test_string_encryption_requires_numeric_run():
    # A single-arg `new String(...)` over a char[] built from CHAR literals
    # (`{'h','i'}`) is ordinary initializer code, not R8-encrypted data - R8
    # encodes hidden strings as NUMERIC literals. Requiring >=8 numerics keeps
    # this common shape out (ADR-0006: honest partial beats a semantic FP).
    from static.obfuscation import _has_string_encryption
    text = "char[] c = {'h','e','l','l','o'}; return new String(c);\n"
    assert _has_string_encryption(text) is False


def test_any_string_encryption_walks_files(tmp_path):
    # One file among many carries the fingerprint -> whole corpus escalates.
    from static.obfuscation import _any_string_encryption
    (tmp_path / "MainActivity.java").write_text("public class MainActivity {}\n")
    (tmp_path / "a.java").write_text(
        "public class a {\n"
        "  int[] k = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120};\n"
        "  String s = new String(k);\n"
        "}\n"
    )
    assert _any_string_encryption(list(tmp_path.glob("*.java"))) is True


def test_any_string_encryption_false_with_clear_names(tmp_path):
    # Clear names AND no fingerprint -> clear, confirming the fingerprint is the
    # only thing that escalates here.
    from static.obfuscation import _any_string_encryption
    (tmp_path / "MainActivity.java").write_text("public class MainActivity {}\n")
    assert _any_string_encryption(list(tmp_path.glob("*.java"))) is False


def test_detect_obfuscation_level_escalates_on_string_encryption(tmp_path):
    # Limitation-4 honesty: an app with CLEAR class names but R8 string
    # encryption must read `heavy` (-> Java surface partial, N1/G-C). Class-name
    # ratio alone would certify it fully_analyzed despite hidden literals; the
    # string-encryption fingerprint closes that gap.
    (tmp_path / "MainActivity.java").write_text(
        "public class MainActivity {\n"
        "  int[] k = {99,104,101,99,107,95,114,111,111,116,0,0,0,0,0};\n"
        "  private String dec() { return new String(k); }\n"
        "}\n"
    )
    (tmp_path / "HttpClient.java").write_text("public class HttpClient {}\n")
    assert detect_obfuscation_level(list(tmp_path.glob("*.java"))) == "heavy"


def test_string_encryption_true_on_dynamic_bitfield_decryptor():
    # Boundary #4: the real PropertyGuru gms/ads shape (zzaik.java) - a single-arg
    # `new String(cArr)` over an expression-BUILT char[] whose elements are
    # `(char)(((x >> N) & M) + B)` base-N field extractors. These ARE string
    # decryption: each char is rebuilt at runtime from a shift/mask/offset, so
    # the hidden string eludes the signature corpus. The encoded char is NOT a
    # recoverable standalone literal (pure-Python _fold_int returns None) - the
    # honest boundary is to DETECT the decryptor shape and force the surface to
    # partial, never certify a clean fully_analyzed over hidden literals
    # (ADR-0006). This is the distinction the old bare-`\d+` FP-fix got right
    # (don't count digits inside arithmetic) now sharpened: a real decryptor
    # SHAPE is encryption, a benign expression is not.
    from static.obfuscation import _has_string_encryption
    text = (
        "char[] cArr = {(char) (((iZzt2 >> 10) & 31) + 96),"
        "                 (char) (((iZzt2 >> 5) & 31) + 96),"
        "                 (char) ((iZzt2 & 31) + 96)};\n"
        "return new String(cArr);\n"
    )
    assert _has_string_encryption(text) is True


def test_string_encryption_true_on_dynamic_xor_decryptor():
    # Boundary #4 XOR-stream family (appsflyer AFf1cSDK shape): elements rebuilt
    # as `(char)(x ^ K)`. Also a runtime string decryptor - detected as
    # encryption so the surface reads partial, though the value is unrecoverable.
    from static.obfuscation import _has_string_encryption
    text = (
        "char[] b = {(char) (k ^ 0x1F), (char) (k ^ 0x3C), (char) (k ^ 0x57)};\n"
        "return new String(b);\n"
    )
    assert _has_string_encryption(text) is True


def test_string_encryption_true_on_runtime_xor_loop():
    # Boundary #4 runtime XOR-loop shape (appsflyer AFf1cSDK): a string is
    # decrypted in place via `arr[i] = (char)(arr[i] ^ key)` in a loop, then
    # handed to a single-arg `new String(arr)`. This shape has NO `{...}`
    # initializer - the array is runtime-sized and mutated - so it needs its own
    # detector. The value is unrecoverable statically; the honest boundary is to
    # detect the in-place XOR decode and force the surface to partial.
    from static.obfuscation import _has_string_encryption
    text = (
        "char[] b = s.toCharArray();\n"
        "for (int i = 0; i < b.length; i++) { b[i] = (char) (b[i] ^ i8); }\n"
        "return new String(b);\n"
    )
    assert _has_string_encryption(text) is True


def test_string_encryption_false_on_benign_inplace_loop():
    # FP guard for the loop shape: an in-place loop over a char[] with ordinary
    # arithmetic (`b[i] = (char)(b[i] + 1)`) is NOT an XOR decryptor - no `^`
    # - so it must stay clean. And an XOR loop WITHOUT a single-arg new String
    # is not a detected decryptor (the ctor gate keeps unrelated crypto code
    # from being labeled string-encryption, ADR-0006).
    from static.obfuscation import _has_string_encryption
    no_xor = (
        "char[] b = s.toCharArray();\n"
        "for (int i = 0; i < b.length; i++) { b[i] = (char) (b[i] + 1); }\n"
        "return new String(b);\n"
    )
    assert _has_string_encryption(no_xor) is False
    xor_no_ctor = "for (int i = 0; i < a.length; i++) { a[i] = (char) (a[i] ^ a[i]); }\n"
    assert _has_string_encryption(xor_no_ctor) is False


def test_string_encryption_false_on_benign_expression_built_array():
    # FP guard kept from the original regression: a single-arg `new String(...)`
    # over an expression-built char[] whose elements are ORDINARY arithmetic
    # (`(char)(i + j)`, `(char)(k / 2)`) - NOT a shift/mask bitfield or an XOR -
    # is normal code, not string decryption. Only a real decryptor shape fires
    # (ADR-0006: never a semantic false label; honest partial beats a false heavy).
    from static.obfuscation import _has_string_encryption
    text = (
        "char[] c = {(char) (i + j), (char) (k / 2), (char) (m * 3)};\n"
        "return new String(c);\n"
    )
    assert _has_string_encryption(text) is False


def test_dynamic_decryptor_requires_new_string_gate():
    # The bitfield expression WITHOUT a single-arg `new String(...)` is not a
    # detected decryptor - the ctor gate keeps unrelated bit-manipulation code
    # (flag packing, color encoding) from being labeled encryption.
    from static.obfuscation import _has_string_encryption
    text = "char[] c = {(char) (((iZzt2 >> 10) & 31) + 96)};\n"
    assert _has_string_encryption(text) is False


def test_detect_obfuscation_level_escalates_on_dynamic_decryptor(tmp_path):
    # Boundary #4 end-to-end: CLEAR class names but a dynamic bitfield string
    # decryptor must read `heavy` (-> Java surface partial, N1/G-C). Without the
    # dynamic-decryptor detection this app's hidden strings would certify
    # fully_analyzed and its clean NEITHER could over-claim a confident TN.
    from static.obfuscation import detect_obfuscation_level
    (tmp_path / "MainActivity.java").write_text(
        "public class MainActivity {\n"
        "  char[] cArr = {(char) (((k >> 10) & 31) + 96),"
        "                 (char) (((k >> 5) & 31) + 96),"
        "                 (char) ((k & 31) + 96)};\n"
        "  private String dec() { return new String(cArr); }\n"
        "}\n"
    )
    (tmp_path / "HttpClient.java").write_text("public class HttpClient {}\n")
    assert detect_obfuscation_level(list(tmp_path.glob("*.java"))) == "heavy"


def test_string_encryption_true_on_flat_numeric_literals():
    # The genuine R8 decryptor: a flat list of standalone int/hex literals
    # (optionally char-cast) fed to a single-arg new String. This is what the
    # detector must catch - it is what hides a string literal from the corpus.
    from static.obfuscation import _has_string_encryption
    text = (
        "int[] a = {99, 104, 101, 99, 107, 95, 114, 111, 111, 116};\n"
        "return new String(a);\n"
    )
    assert _has_string_encryption(text) is True
    # char-cast form is still a pure literal list.
    text2 = (
        "char[] b = {(char) 0x63, (char) 0x68, (char) 0x65, (char) 0x63,"
        "            (char) 0x6b, (char) 0x5f, (char) 0x72, (char) 0x6f,"
        "            (char) 0x6f, (char) 0x74};\n"
        "return new String(b);\n"
    )
    assert _has_string_encryption(text2) is True


def test_split_array_items_respects_nested_braces():
    # _split_array_items splits an array-initializer body on TOP-LEVEL commas,
    # honoring nested {}/(). This isolates flat R8 literals from gms-style
    # expression items so the pure-literal count can tell them apart. Had zero
    # direct coverage.
    from static.obfuscation import _split_array_items
    assert _split_array_items("1, 2, 3") == ["1", "2", "3"]
    assert _split_array_items("1, {2, 3}, 4") == ["1", "{2, 3}", "4"]
    assert _split_array_items("(a + b), c") == ["(a + b)", "c"]
    assert _split_array_items("") == []


def test_is_pure_numeric_literal_rejects_expressions():
    # The flat-numeric byte detector: a standalone integer literal (optionally
    # cast/signed/hex) is an encoded-string byte; ANY expression - e.g.
    # '(char)((x >> 10) & 31) + 96' - is not. The expression rejection is the
    # exact PropertyGuru false-positive guard (ADR-0006). Had zero coverage.
    from static.obfuscation import _is_pure_numeric_literal
    assert _is_pure_numeric_literal("97") is True
    assert _is_pure_numeric_literal("(char)97") is True
    assert _is_pure_numeric_literal("(char) 65") is True
    assert _is_pure_numeric_literal("0xFF") is True
    assert _is_pure_numeric_literal("-5") is True
    assert _is_pure_numeric_literal("(char)((x >> 10) & 31) + 96") is False  # expression
    assert _is_pure_numeric_literal("a") is False
    assert _is_pure_numeric_literal("") is False


def test_is_minified_name():
    # _is_minified_name: a name reads as minified when it's <=2 chars OR its
    # outer ($-segment) is short. The C1 guard: `Cache$urls$1` is a NORMAL inner/
    # anonymous-class marker, NOT minified - only `a$a` (R8-flattened) is. Had
    # zero direct coverage.
    from static.obfuscation import _is_minified_name
    assert _is_minified_name("a") is True        # 1 char
    assert _is_minified_name("ab") is True       # 2 chars
    assert _is_minified_name("a$a") is True      # short outer segment
    assert _is_minified_name("ab$X") is True     # 2-char outer segment
    assert _is_minified_name("abc") is False     # 3 chars, clear
    assert _is_minified_name("Cache$urls$1") is False  # normal inner class (C1)


def test_minified_name_ratio_excludes_resource_class():
    # _minified_name_ratio: fraction of minified names, with the generated `R`
    # resource class (and R$id/... ) excluded - it is always single-char, always
    # present, and never an obfuscation signal; counting it inflates the ratio
    # and mislabels clear apps heavy (C1/G7). Empty/only-R corpus -> 0.0.
    from static.obfuscation import _minified_name_ratio
    assert _minified_name_ratio(["R", "R$id", "R$layout"]) == 0.0
    assert _minified_name_ratio([]) == 0.0
    assert _minified_name_ratio(["R", "a", "b", "R$id"]) == 1.0  # 2 real, both minified
    assert _minified_name_ratio(["MainActivity", "R$id", "Helper"]) == 0.0
    assert _minified_name_ratio(["a", "MainActivity", "R"]) == 0.5


def test_has_dynamic_decryptor_expr():
    # _has_dynamic_decryptor_expr: base-N field extractor and XOR-stream shapes
    # are decisive decryption signatures (statically UNRECOVERABLE string
    # encoding - boundary #4). Plain literal/arithmetic bodies are NOT - they
    # never fire a dynamic-decryptor label (ADR-0006). Had zero coverage.
    from static.obfuscation import _has_dynamic_decryptor_expr
    # base-32 field extractor (gms/ads)
    assert _has_dynamic_decryptor_expr("(char) (((x >> 10) & 31) + 96)") is True
    # XOR stream (appsflyer)
    assert _has_dynamic_decryptor_expr("(char) (x ^ 0x1F)") is True
    # flat R8 literal list - not dynamic
    assert _has_dynamic_decryptor_expr("97, 98, 99, 0x41") is False
    # plain arithmetic without a (char) cast - not a decryptor
    assert _has_dynamic_decryptor_expr("(x + 5) & 3") is False


def test_class_simple_names_skips_unreadable_entry(tmp_path):
    # obfuscation.py:39-40: an unreadable java_files entry (a directory raises
    # OSError) must be skipped, not crash the whole name pass.
    from static.obfuscation import _class_simple_names
    d = tmp_path / "unreadable"
    d.mkdir()
    (tmp_path / "MainActivity.java").write_text("public class MainActivity {}\n")
    assert _class_simple_names([d, tmp_path / "MainActivity.java"]) == ["MainActivity"]


def test_any_string_encryption_skips_unreadable_entry(tmp_path):
    # obfuscation.py:213-214: the OSError guard in the encryption-fingerprint
    # pass skips an unreadable entry instead of aborting the whole corpus check.
    from static.obfuscation import _any_string_encryption
    d = tmp_path / "unreadable"
    d.mkdir()
    (tmp_path / "MainActivity.java").write_text("public class MainActivity {}\n")
    assert _any_string_encryption([d, tmp_path / "MainActivity.java"]) is False
