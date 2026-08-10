"""Unit tests for static/obfuscation.py - deterministic obfuscation-level
detection (G7). Pure module: feed class-name lists / fixture files, get the level."""

from pathlib import Path

from static.obfuscation import detect_obfuscation_level, obfuscation_from_names


def test_clear_when_no_single_char_names():
    names = ["MainActivity", "HttpClient", "CertificatePinningChecker", "RootDetection"]
    assert obfuscation_from_names(names) == "clear"


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
