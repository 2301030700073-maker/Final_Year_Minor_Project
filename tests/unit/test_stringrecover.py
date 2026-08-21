"""Unit tests for static/stringrecover.py - Gap-3 string recovery from the R8
string-encryption decryptor. Pure module: fixture-text tested anywhere with no
toolchain (NFR). Verifies the flat pure-numeric family is recovered AND that
non-recoverable shapes (expression-built, plain char arrays) are never decoded
- recovery is conservative and additive (ADR-0006)."""

from pathlib import Path

import pytest

from static.stringrecover import (
    RecoveredString,
    _decode_numeric_array,
    _fold_int,
    match_recovered_strings,
    recover_from_text,
    recover_hidden_strings,
)


def test_decode_numeric_array_cast_and_signed():
    # (char)/+ signs/hex all decode; trailing 0 truncates the null padding.
    assert _decode_numeric_array("(char)+72, (int)105, 0x0, 33") == "Hi"


def test_decode_numeric_array_expression_returns_empty():
    # An expression item makes the array non-recoverable - never partial-decode.
    assert _decode_numeric_array("(char)((x >> 10) & 31) + 96") == ""


def test_decode_numeric_array_out_of_unicode_range_returns_empty():
    # Real R8 files carry int[] tables whose values exceed the Unicode range;
    # they are data, not string bytes. Guarded (not crashed) and not recovered.
    assert _decode_numeric_array("72, 105, 0x100000, 33") == ""
    assert _decode_numeric_array("72, -1, 33") == ""  # negative is not a byte


def test_fold_int_folds_literal_arithmetic():
    # Boundary #2: the base-32 field extractor over a compile-time constant folds.
    assert _fold_int("(((0x9EF >> 10) & 31) + 96)") == 98  # 'b'
    assert _fold_int("(((0x9EF >> 5) & 31) + 96)") == 111  # 'o'
    assert _fold_int("((0x9EF & 31) + 96)") == 111  # 'o'
    assert _fold_int("((12 + 4) * 2)") == 32
    assert _fold_int("0x4B0") == 1200


def test_fold_int_rejects_runtime_variable():
    # The gms/ads shape reads a RUNTIME value (iZzt2 from an obfuscated data
    # stream) - NOT a compile-time constant. It must fold to None so the whole
    # array is left unrecovered (ADR-0006), never guessed.
    assert _fold_int("(((iZzt2 >> 10) & 31) + 96)") is None
    assert _fold_int("iZzt2") is None
    assert _fold_int("foo(3)") is None  # a call is not a constant


def test_fold_int_folds_wrapped_char_cast_call():
    # Regression: `(char)(expr)` nested inside an EXTRA outer paren parses as
    # Call(func=Name('char'), args=[expr]) - `_CAST` strips only a leading
    # `(char)`, so this shape previously folded to None and the whole array was
    # left unrecovered even though it is a compile-time constant. Fold it when
    # the callee is literally a cast type; a REAL function call is still refused
    # (no semantic guess).
    assert _fold_int("((char)(((15842 >> 0) & 31) + 96))") == 98  # 'b'
    assert _fold_int("((int)((12 + 4) * 2))") == 32
    assert _fold_int("decrypt(15842, 0)") is None  # real call, not a cast
    assert _fold_int("foo.bar()") is None


def test_recover_arithmetic_constant_decryptor():
    # Boundary #2: a char[] built from the base-32 constant field-extractor,
    # referenced by new String(), decodes to plaintext. 0x9EF packs "boo".
    text = ("static char[] c = {(char)(((0x9EF >> 10) & 31) + 96), "
            "(char)(((0x9EF >> 5) & 31) + 96), (char)((0x9EF & 31) + 96)};\n"
            "String s = new String(c);")
    assert recover_from_text(text) == [("boo", "c", None)]


def test_recover_skips_runtime_variable_decryptor():
    # The real gms/ads shape (runtime iZzt2) is NOT statically recoverable - the
    # honest boundary that keeps that surface partial. Never a partial/guessed
    # decode.
    text = ("static char[] cArr = {(char) (((iZzt2 >> 10) & 31) + 96), "
            "(char) (((iZzt2 >> 5) & 31) + 96), (char) ((iZzt2 & 31) + 96)};\n"
            "str = new String(cArr);")
    assert recover_from_text(text) == []


def test_fold_int_resolves_literal_subscript():
    # Boundary #3: T[0] resolves to its literal in a sibling pure-numeric table.
    # 0x4EB8 = 20152 -> (>>10)&31=19->'s', (>>5)&31=21->'u', &31=24->'x'.
    tables = {"T": [0x4EB8, 0x100]}
    assert _fold_int("(((T[0] >> 10) & 31) + 96)", tables) == 115  # 's'
    assert _fold_int("(((T[0] >> 5) & 31) + 96)", tables) == 117   # 'u'
    assert _fold_int("((T[0] & 31) + 96)", tables) == 120           # 'x'
    # without the table, T[0] is not a known constant
    assert _fold_int("(((T[0] >> 10) & 31) + 96)") is None


def test_fold_int_rejects_unresolvable_subscript():
    tables = {"T": [0x4EB8]}
    assert _fold_int("(((T[1] >> 10) & 31) + 96)", tables) is None  # out of bounds
    assert _fold_int("(((T[i] >> 10) & 31) + 96)", tables) is None  # variable index
    assert _fold_int("(((U[0] >> 10) & 31) + 96)", tables) is None  # unknown table


def test_recover_subscript_literal_table_decryptor():
    # Boundary #3: a base-N extractor over a sibling literal int table recovers.
    text = ("int[] T = {0x4EB8};\n"
            "static char[] c = {(char)(((T[0] >> 10) & 31) + 96), "
            "(char)(((T[0] >> 5) & 31) + 96), (char)((T[0] & 31) + 96)};\n"
            "String s = new String(c);")
    assert recover_from_text(text) == [("sux", "c", None)]


def test_recover_skips_runtime_table_subscript():
    # A table with a non-literal item is NOT a known constant - the subscript
    # must not resolve, so the array stays unrecovered (never guessed).
    text = ("int[] T = {0x4EB8, x};\n"  # x is a variable -> table not pure-numeric
            "static char[] c = {(char)(((T[0] >> 10) & 31) + 96), "
            "(char)(((T[0] >> 5) & 31) + 96), (char)((T[0] & 31) + 96)};\n"
            "String s = new String(c);")
    assert recover_from_text(text) == []


def test_recover_flat_single_arg():
    text = "static char[] a = {115, 117};\nString s = new String(a);"
    assert recover_from_text(text) == [("su", "a", None)]


def test_recover_hex_and_multiline_body():
    text = "static int[] b = {0x77,\n 0x68, 0x69, 0x63, 0x68};\nnew String(b);"
    assert recover_from_text(text) == [("which", "b", None)]


def test_recover_sliced_table():
    # One table holding several strings, pulled out by offset/len (R8 shape).
    text = ("static char[] t = {104,105,100,100,101,110,0,0,0};\n"
            "String s = new String(t, 4, 2);")
    assert recover_from_text(text) == [("en", "t", (4, 2))]


def test_recover_skips_expression_built_array():
    # gms/PropertyGuru-style arithmetic array - NOT pure-numeric -> not recovered.
    text = ("static char[] g = {(char)((x >> 10) & 31) + 96, (char)((x >> 6) & 63)};\n"
            "String s = new String(g);")
    assert recover_from_text(text) == []


def test_recover_skips_plain_char_array():
    # `char[] = {'h','i'}` are char literals, not numerics - a normal visible
    # string, never mistaken for (nor recovered as) an encrypted one.
    text = "static char[] p = {'h','i'};\nString s = new String(p);"
    assert recover_from_text(text) == []


def test_recover_skips_numeric_array_not_given_to_string():
    # A numeric array that is never fed to new String() is just data, not a
    # hidden string - the ctor must reference the array to recover it.
    text = "static char[] a = {115,117};"
    assert recover_from_text(text) == []


def test_recover_ignores_large_data_table_not_given_to_string():
    # Regression: real R8 files contain huge numeric data tables (values beyond
    # the Unicode range) that are NEVER handed to new String(). Decoding them
    # used to crash chr(). Only ctor-referenced arrays are decoded, so a
    # non-referenced large table yields nothing and never raises.
    text = ("static int[] flags = {1048576, 2097152, 4194304, 8388608};\n"
            "static int[] a = {115, 117};\n"
            "String s = new String(a);")
    assert recover_from_text(text) == [("su", "a", None)]


def test_recover_hidden_strings_dedupes_and_filters_min_len(tmp_path):
    a = tmp_path / "A.java"
    b = tmp_path / "B.java"
    a.write_text("static char[] x = {115,117};\nnew String(x);\n"
                 "static char[] n = {7};\nnew String(n);")  # 1-char dropped
    b.write_text("static char[] y = {115,117};\nnew String(y);")  # dup 'su'
    rec = recover_hidden_strings([a, b])
    assert [r.value for r in rec] == ["su"]


def test_recover_hidden_strings_skips_unreadable_file(tmp_path):
    # NFR: a file that can't be read degrades per-file, never raises the whole
    # recovery (enhancement source, like the androguard scan).
    unreadable = tmp_path / "no.txt"
    unreadable.write_text("x")
    unreadable.chmod(0o000)
    try:
        rec = recover_hidden_strings([unreadable, tmp_path / "missing.java"])
        assert rec == []
    finally:
        unreadable.chmod(0o644)


def test_match_recovered_strings_fires_root_sig(tmp_path):
    # The Gap-3 win: a string_literal signature whose value is HIDDEN in an
    # int[] decryptor (invisible to the plain-text scan) is recovered and fires
    # the root signature as deterministic_matched (ADR-0001).
    hidden = "/system/xbin/su"
    arr = ", ".join(str(ord(c)) for c in hidden)
    f = tmp_path / "A.java"
    f.write_text(f"static char[] z = {{{arr}}};\nString s = new String(z);")
    rec = recover_hidden_strings([f])
    assert [r.value for r in rec] == [hidden]

    from static.signatures import load_signatures
    root = load_signatures(Path(__file__).resolve().parents[2] / "config" / "signatures" / "root_detection.yaml")
    ev = match_recovered_strings(rec, root)
    assert len(ev) == 1
    assert ev[0].signature_id == "root_su_binary_paths"
    assert ev[0].matched_text == hidden
    assert ev[0].verification_state == "deterministic_matched"
    assert ev[0].file == f"recovered://{f.name}"
    assert ev[0].line_or_offset == "decryptor[z]"


def test_match_recovered_strings_dedupes_per_signature(tmp_path):
    # Two recovered strings hitting the SAME signature -> exactly one Evidence
    # (mirrors _merge_dex_evidence's per-signature dedup; no double-counting).
    f = tmp_path / "A.java"
    f.write_text("static char[] a = {115,117};\nstatic char[] b = {115,117};\n"
                 "String s = new String(a);\nString t = new String(b);")
    rec = recover_hidden_strings([f])  # 'su' deduped upstream to one
    from static.signatures import load_signatures
    root = load_signatures(Path(__file__).resolve().parents[2] / "config" / "signatures" / "root_detection.yaml")
    assert len(match_recovered_strings(rec, root)) <= 1


def test_match_recovered_strings_no_false_positive(tmp_path):
    # A recovered value that matches no signature pattern yields no evidence -
    # recovery is additive and never invents a detection.
    f = tmp_path / "A.java"
    f.write_text("static char[] a = {72,105};\nString s = new String(a);")  # 'Hi'
    rec = recover_hidden_strings([f])
    assert [r.value for r in rec] == ["Hi"]
    from static.signatures import load_signatures
    root = load_signatures(Path(__file__).resolve().parents[2] / "config" / "signatures" / "root_detection.yaml")
    assert match_recovered_strings(rec, root) == []


def test_fold_int_covers_unary_and_missing_operators():
    # Real coverage: Sub/BitOr/BitXor/LShift and the whole UnaryOp family were
    # unreached by the existing Add/Mult/BitAnd/RShift-heavy tests. All are pure
    # reachable branches - a decryptor may fold any of these operators.
    assert _fold_int("9-4") == 5        # ast.Sub
    assert _fold_int("1|2") == 3        # ast.BitOr
    assert _fold_int("1^3") == 2        # ast.BitXor
    assert _fold_int("1<<3") == 8       # ast.LShift
    assert _fold_int("-5") == -5        # ast.USub
    assert _fold_int("+5") == 5         # ast.UAdd
    assert _fold_int("~5") is None      # UInvert is not a supported unary op
    assert _fold_int("-x") is None      # unary over a runtime variable -> None
    assert _fold_int("(1") is None      # SyntaxError degrades to None, no crash
    assert _fold_int("5 % 2") is None   # Mod is not a supported binary op
    assert _fold_int("5 // 2") is None  # FloorDiv is not a supported binary op


def test_recovered_string_slice_offset_label():
    # stringrecover.py:96-97: the slice form of the `offset` label. A sliced
    # ctor decode carries a (offset, length) slice, so the label must read
    # `decryptor[name:off:ln]`, distinct from the whole-array form.
    r = RecoveredString(value="su", file="A.java", name="secret", slice=(0, 2))
    assert r.offset == "decryptor[secret:0:2]"
    assert RecoveredString(value="su", file="A.java", name="secret").offset == "decryptor[secret]"


def test_decode_empty_array_body_returns_empty(tmp_path):
    # stringrecover.py:210: an empty array body (`int[] a = {}`) referenced by a
    # ctor yields no items -> empty decode -> nothing emitted, no crash. Real
    # coverage proved the empty-body branch untested.
    from static.stringrecover import recover_from_text
    assert recover_from_text("static int[] a = {};\nString s = new String(a);") == []


def test_match_recovered_strings_dedupes_two_hits_one_signature(tmp_path):
    # stringrecover.py:302-303: two recovered values matching the SAME signature
    # -> the per-signature dedup drops the second (one Evidence per signature).
    # The sibling dedup test deduped upstream to ONE recovered string, so it
    # never reached this second-iteration branch; this does.
    from static.signatures import Signature
    from static.stringrecover import RecoveredString, match_recovered_strings
    sig = Signature(id="su_path", category="root", weight=0.5,
                    pattern_type="regex", patterns=["system.*su"],
                    evidence_type="source")
    rec = [
        RecoveredString(value="/system/bin/su", file="A.java", name="a"),
        RecoveredString(value="/system/xbin/su", file="B.java", name="b"),
    ]
    ev = match_recovered_strings(rec, [sig])
    assert len(ev) == 1  # both matched 'su_path' but it is counted once
    assert ev[0].signature_id == "su_path"


def test_extract_tables_keeps_only_pure_numeric_tables():
    # _extract_tables: sibling int[] literal tables usable as a subscript source
    # (boundary #3). Only a PURE-numeric table is a known constant; an
    # expression-built item makes the whole table non-resolvable and it is
    # excluded - so _fold_int can only resolve a genuinely constant index.
    # Had zero direct coverage.
    from static.stringrecover import _extract_tables
    text = (
        "int[] T = {104, 101, 108};\n"
        "int[] X = {104, (char)((k >> 10) & 31) + 96};\n"  # expression item -> excluded
        "int[] H = {0x41, 0x42};"
    )
    tables = _extract_tables(text)
    assert tables == {"T": [104, 101, 108], "H": [0x41, 0x42]}
    assert "X" not in tables


def test_extract_tables_empty_on_no_constant_table():
    from static.stringrecover import _extract_tables
    assert _extract_tables("no tables here") == {}
