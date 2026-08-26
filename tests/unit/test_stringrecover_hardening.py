"""stringrecover hardening: the numeric-parse and constant-fold paths must not
raise or run away on inputs the `_is_pure_numeric_literal` gate accepts.

Two confirmed code facts motivated this:
  * `_is_pure_numeric_literal` accepts a bare \\d+ run, so a leading-zero literal
    like `08` passes the gate - but `int('08', 0)` raises ValueError (base-0 reads
    the leading zero as an octal prefix). Un-contained, that ValueError propagated
    out of `recover_from_text` and aborted `recover_hidden_strings` for EVERY file,
    losing all recovery (it was caught only at the cli boundary as a blanket skip).
  * `_fold_int` had no bound on shift amounts, so a crafted `1 << huge` built a
    multi-megabyte int (a resource-exhaustion vector on an untrusted APK) and a
    negative shift raised ValueError.
Both are now converted to a safe 'not recoverable' (None / ''), conservative, and
proven not to change any REAL R8 recovery. The surface independently stays
`partial` via the obfuscation string-encryption fingerprint, so this is strictly
about recall/robustness, never a confident negative.
"""

from static.stringrecover import (
    _fold_int,
    _parse_int_literal,
    recover_from_text,
    recover_hidden_strings,
)


def test_parse_int_literal_none_on_unparseable():
    assert _parse_int_literal("08") is None       # gate-accepted, int(x,0) rejects
    assert _parse_int_literal("0123") is None
    assert _parse_int_literal("15") == 15
    assert _parse_int_literal("0x10") == 16
    assert _parse_int_literal("(char)104") == 104  # leading cast stripped


def test_leading_zero_literal_does_not_raise():
    # The exact confirmed crash input: the array is simply non-recoverable, no raise.
    crafted = 'class X { String d(){ char[] c = {104, 08, 105}; return new String(c);} }'
    assert recover_from_text(crafted) == []


def test_one_bad_file_does_not_nuke_other_files_recovery(tmp_path):
    # Blast-radius containment: a leading-zero literal in one file must NOT lose the
    # real recovery in another file. Pre-fix the ValueError propagated past the
    # per-file loop and aborted the whole batch.
    bad = tmp_path / "Bad.java"
    good = tmp_path / "Good.java"
    bad.write_text('class Bad { String d(){ char[] c = {104, 08}; return new String(c);} }')
    good.write_text('class Good { String s(){ char[] a = {115, 117}; return new String(a);} }')
    found = recover_hidden_strings([bad, good])
    assert [r.value for r in found] == ["su"]  # good file still recovered


def test_fold_int_bounds_shift_amount():
    assert _fold_int("1 << 100000") is None   # no multi-MB bignum (DoS bound)
    assert _fold_int("8 >> -1") is None        # negative shift: no ValueError
    assert _fold_int("1 << 6") == 64           # real small shift still folds


def test_real_r8_recovery_unaffected():
    # Regression: the shift bound and parse guard must not change real recovery.
    # base-32 field extractor folds; flat pure-numeric decodes.
    assert _fold_int("(((0x4B0 >> 10) & 31) + 96)") == 97  # 'a'
    ok = 'class Y { String s(){ char[] a = {115, 117}; return new String(a);} }'
    assert recover_from_text(ok) == [("su", "a", None)]
