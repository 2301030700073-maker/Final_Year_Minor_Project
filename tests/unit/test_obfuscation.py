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
