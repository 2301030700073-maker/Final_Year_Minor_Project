"""Gap-3: lift plaintext out of the R8 string-encryption decryptor (Gap 3).

The static Java scan already detects *that* strings are hidden via the
single-arg-`new String(<numeric array>)` fingerprint and forces the Java
surface to `partial` (obfuscation.py, N1/G-C). That signal is correct but
coarse: it says "strings are hidden here" without recovering what they say.
This module turns the same fingerprint into *recovered evidence* by decoding
the flat numeric arrays back to plaintext and matching them against the same
signature corpus - so a hidden `new String(int[])` holding `"su"` can fire the
root detection that the plain-text scan can't see.

Scope (honest boundary, ADR-0006): recoverable pure-Python shapes.

FLAT pure-numeric (R8's classic) - two shapes, both emitted by real R8:

    char[] c = {104, 101, 108, 108, 111};            // or int[], hex 0x68...
    new String(c);                                   // flat single-arg

    char[] c = {104, 101, ... , 0};                  // one big table
    new String(c, 12, 5);                            // sliced by offset/len

ARITHMETIC compile-time-constant (boundary #2 extension) - the base-32 field
extractor `(char)(((K >> S) & 31) + 96)` (and `(char)(K & M) + B` variants)
when the packed source `K` is a literal constant:

    char[] c = {(char)(((0x4B0 >> 10) & 31) + 96), (char)(((0x4B0 >> 5) & 31) + 96), (char)((0x4B0 & 31) + 96)};
    new String(c);                                   // -> "boo" etc.

CONSTANT-THROUGH-SUBSCRIPT (boundary #3 extension): the same base-N extractor
when the packed source is a literal value indexed OUT of a sibling int array:

    int[] T = {0x4B0, 0x6C0, ...};                   // literal packed table
    char[] c = {(char)(((T[0] >> 10) & 31) + 96), (char)(((T[1] >> 10) & 31) + 96), ...};
    new String(c);                                   // -> recovered

A constant reachable through a compile-time subscript is still a constant, so
`_fold_int` resolves `T[i]` to its literal from the sibling table and folds the
extractor exactly as the direct-literal form. Only a PURE-NUMERIC literal table
is resolvable - a runtime `int[] T = new int[...]` or an expression-built table
is not a known constant and stays unrecovered (ADR-0006).

The HONEST boundary that stays `partial`: a decryptor fed a RUNTIME value -
e.g. the gms/ads shape `(char)(((iZzt2 >> 10) & 31) + 96)` where `iZzt2` comes
from an obfuscated data stream (`zzegVar.zzt()`) - is NOT a compile-time
constant and is NOT recovered here (it needs a full DEX deobfuscator plus the
data input). Same for XOR/add-decryptor functions over runtime data and
charset/Platform decoders. Recovery here is strictly additive and conservative:
it lifts real literals and constants, never guesses a runtime-decrypted string.

Pure module: no toolchain, no I/O beyond reading the already-decompiled .java
files, every function fixture-testable anywhere (NFR).
"""

from __future__ import annotations

import ast
import re
from dataclasses import dataclass
from pathlib import Path

from common import Evidence, read_text_ignore
from static.obfuscation import _is_pure_numeric_literal, _split_array_items
from static.signatures import _line_matches

# A numeric array initializer: `char[] name = {...}` / `int[] name = {...}`.
# re.S so the body may span lines (R8 prints large tables across many).
_ARRAY_DECL = re.compile(
    r"\b(?:char|int)\[\]\s+([A-Za-z_$][\w$]*)\s*=\s*\{(.*?)\}", re.S
)
# new String(name) - the flat single-arg decryptor.
_STR_SINGLE_ARG_CTOR = re.compile(r"new String\(\s*([A-Za-z_$][\w$]*)\s*\)")
# new String(name, offset, length) - R8's sliced-table decryptor.
_STR_SLICED_CTOR = re.compile(
    r"new String\(\s*([A-Za-z_$][\w$]*)\s*,\s*(\d+)\s*,\s*(\d+)\s*\)"
)
_CAST = re.compile(r"^\((?:char|int)\)\s*")
# Boundary-3: a sibling literal int table that a decryptor's subscript can index
# into - `int[] T = {literal, ...}`. Only a PURE-numeric literal table is a known
# constant source; a runtime-sized or expression-built array is not resolvable.
_TABLE_DECL = re.compile(r"\bint\[\]\s+([A-Za-z_$][\w$]*)\s*=\s*\{(.*?)\}", re.S)


@dataclass(frozen=True)
class RecoveredString:
    """One hidden string decoded back to plaintext, with where it came from."""

    value: str
    file: str
    name: str  # the array variable it was decoded from
    slice: tuple[int, int] | None = None  # (offset, length) when sliced

    @property
    def offset(self) -> str:
        if self.slice is None:
            return f"decryptor[{self.name}]"
        off, ln = self.slice
        return f"decryptor[{self.name}:{off}:{ln}]"


def _fold_int(expr: str, tables: dict[str, list[int]] | None = None) -> int | None:
    """Constant-fold a RESTRICTED integer-arithmetic expression over literals.

    Recovers compile-time-constant decryptor shapes - e.g. the base-32
    `(char)(((K >> 10) & 31) + 96)` field extraction (boundary #2) - when `K` is
    a literal. Boundary #3 also resolves a literal value indexed out of a sibling
    int table (`T[0]` -> tables['T'][0]) so the constant-through-subscript family
    folds too. Returns the folded int, or None if the expression references ANY
    variable/function, an unresolvable subscript, or an unallowed operator. That
    None is the honest boundary: a decryptor fed a RUNTIME value (like the
    gms/ads `(iZzt2 >> k) & 31` shapes, where `iZzt2` comes from an obfuscated
    data stream) is NOT a compile-time constant and is deliberately left
    unrecovered - never guessed. Only literal leaves fold, so this can never
    produce a semantic false label."""
    try:
        tree = ast.parse(expr.strip(), mode="eval")
    except SyntaxError:
        return None

    def ev(node):
        t = type(node)
        if t is ast.Constant and isinstance(node.value, int):
            return node.value
        if t is ast.UnaryOp:
            v = ev(node.operand)
            if v is None:
                return None
            return -v if type(node.op) is ast.USub else v if type(node.op) is ast.UAdd else None
        if t is ast.BinOp:
            a, b = ev(node.left), ev(node.right)
            if a is None or b is None:
                return None
            op = type(node.op)
            if op is ast.Add:
                return a + b
            if op is ast.Sub:
                return a - b
            if op is ast.Mult:
                return a * b
            if op is ast.BitAnd:
                return a & b
            if op is ast.BitOr:
                return a | b
            if op is ast.BitXor:
                return a ^ b
            if op in (ast.RShift, ast.LShift):
                # Bound the shift amount: real R8 base-N extractors shift by small
                # amounts (<=~31). A negative shift raises ValueError in Python and
                # a huge one builds a multi-megabyte int - a resource-exhaustion
                # vector on an untrusted APK - so an out-of-range shift is treated as
                # 'not a recoverable constant' (None), never computed. No real
                # recovery shape exceeds this bound (ADR-0006).
                if b < 0 or b > 64:
                    return None
                return a >> b if op is ast.RShift else a << b
            return None
        if t is ast.Subscript:
            # Boundary #3: `T[i]` where T is a PURE-NUMERIC literal sibling table
            # and i is itself a compile-time constant -> the indexed literal. A
            # variable index, an expression-built table, or an out-of-bounds read
            # all return None (not a known constant - no guess, ADR-0006).
            if tables and type(node.value) is ast.Name:
                name = node.value.id
                if name in tables:
                    idx = ev(node.slice)
                    if isinstance(idx, int):
                        arr = tables[name]
                        if 0 <= idx < len(arr):
                            return arr[idx]
            return None
        if t is ast.Call:
            # C-style cast rendered as a call: `(char)(((K >> 0) & 31) + 96)`
            # parses (inside extra parens) as Call(func=Name('char'), args=[expr]).
            # Fold it only when the callee is literally a cast type and the single
            # argument folds - a real function call is NOT a constant (no semantic
            # guess). This closes the double-wrapped-cast variant `((char)(...))`.
            f = node.func
            if (type(f) is ast.Name and f.id in ("char", "int")
                    and len(node.args) == 1 and not node.keywords):
                return ev(node.args[0])
            return None
        return None  # Name, Call, Index, attribute, ... -> not a constant

    return ev(tree.body)


def _parse_int_literal(item: str) -> int | None:
    """Parse one `_is_pure_numeric_literal`-shaped item to int, or None if it does
    not parse. The gate accepts a bare ``\\d+`` run, which includes leading-zero
    forms (``08``, ``0123``) that ``int(x, 0)`` rejects (base-0 treats a leading
    zero as an octal prefix). Returning None - so the caller treats the item as
    non-recoverable - keeps one odd literal from raising out of `recover_from_text`
    and nuking recovery for EVERY file. Real R8 numeric tables have no leading-zero
    literals, so no real recovery is affected; this only converts a latent crash
    into a safe skip (ADR-0006: never crash, degrade conservatively)."""
    try:
        return int(_CAST.sub("", item).strip(), 0)
    except ValueError:
        return None


def _extract_tables(text: str) -> dict[str, list[int]]:
    """Sibling `int[] name = {literal,...}` tables usable as a subscript source.
    Only a PURE-numeric literal table is a known constant (boundary #3); a
    runtime `new int[...]` or expression-built table is not resolvable and is
    excluded, so `_fold_int` can only resolve a genuinely constant index."""
    tables: dict[str, list[int]] = {}
    for m in _TABLE_DECL.finditer(text):
        name = m.group(1)
        items = _split_array_items(m.group(2))
        if items and all(_is_pure_numeric_literal(i) for i in items):
            parsed = [_parse_int_literal(i) for i in items]
            # Skip a table with a gate-accepted-but-unparseable literal rather than
            # raise out of recovery (contained, conservative - it simply isn't a
            # usable constant-subscript source).
            if all(v is not None for v in parsed):
                tables[name] = [v for v in parsed if v is not None]
    return tables


def _decode_numeric_array(body: str, tables: dict[str, list[int]] | None = None) -> str:
    """Decode a string table's initializer body to plaintext. Recoverable
    families:
      1. FLAT pure-numeric - every item is a standalone numeric literal (R8's
         `{104, 101, ...}`). Decoded directly.
      2. ARITHMETIC constant - every item is a compile-time-constant expression
         over literals (boundary #2: `{(char)(((K >> 10) & 31) + 96), ...}`),
         including constants resolved through a sibling literal table's subscript
         (boundary #3: `{(char)(((T[0] >> 10) & 31) + 96), ...}`). Folded via
         `_fold_int`.
    ANY item that is neither a pure literal nor a foldable constant (e.g. it
    reads a RUNTIME variable) makes the whole array non-recoverable and yields
    '' - we never partially decode an encrypted table (ADR-0006). Trailing 0
    bytes (R8 null-padding the table to a fixed stride) are truncated."""
    items = _split_array_items(body)
    if not items:
        return ""
    if all(_is_pure_numeric_literal(i) for i in items):
        # A gate-accepted literal that int() still can't parse (leading-zero forms
        # like `08`/`0123` - `_is_pure_numeric_literal` allows a bare \\d+ run) makes
        # the array non-recoverable, NOT an exception that aborts every file's
        # recovery. Real R8 tables have no such literals, so no real decode changes.
        parsed = [_parse_int_literal(i) for i in items]
        if any(v is None for v in parsed):
            return ""
        vals = [v for v in parsed if v is not None]
    else:
        # Constant-fold the arithmetic family; any runtime-variable item -> None
        # -> the array is not statically recoverable, leave it.
        folded = [_fold_int(_CAST.sub("", i), tables) for i in items]
        if any(v is None for v in folded):
            return ""
        vals = [v for v in folded if v is not None]
    # Byte-range guard: a real string table holds char/byte values in 0..0xFFFF
    # (a `char[]` of code points, an `int[]` of encoded bytes). Large numeric
    # tables that are NOT strings (flag/constant arrays that merely happen to be
    # referenced by `new String(...)`) carry values outside that range - treat
    # them as non-recoverable rather than crash or emit garbage.
    if any(v < 0 or v > 0xFFFF for v in vals):
        return ""
    # Trailing 0 bytes (R8 null-padding the table to a fixed stride) are truncated.
    if 0 in vals:
        vals = vals[: vals.index(0)]
    return "".join(chr(v) for v in vals)


def recover_from_text(text: str) -> list[tuple[str, str, tuple[int, int] | None]]:
    """Pure: recover all flat-numeric hidden strings from one .java source.
    Returns [(plaintext, array_name, slice|None)] - the flat single-arg ctor
    yields the full decode, the sliced ctor yields its [offset:offset+len].
    Expression-built or non-numeric arrays are skipped entirely ('' decode)."""
    # Only arrays a `new String(...)` ctor actually references can be hidden
    # strings - a numeric array never handed to the ctor is just data, and a
    # large data table must NOT be decoded (it is not a string; decoding it
    # would be both pointless and, for out-of-Unicode values, would crash chr).
    needed = {m.group(1) for m in _STR_SINGLE_ARG_CTOR.finditer(text)}
    needed |= {m.group(1) for m in _STR_SLICED_CTOR.finditer(text)}
    if not needed:
        return []

    # Boundary #3: sibling literal int tables let a subscripted constant fold.
    tables = _extract_tables(text)
    decodes: dict[str, str] = {}
    for m in _ARRAY_DECL.finditer(text):
        name, body = m.group(1), m.group(2)
        if name in needed:
            decodes[name] = _decode_numeric_array(body, tables)

    out: list[tuple[str, str, tuple[int, int] | None]] = []
    for m in _STR_SINGLE_ARG_CTOR.finditer(text):
        name = m.group(1)
        val = decodes.get(name, "")
        if val:
            out.append((val, name, None))
    for m in _STR_SLICED_CTOR.finditer(text):
        name, off, ln = m.group(1), int(m.group(2)), int(m.group(3))
        val = decodes.get(name, "")
        if val:
            out.append((val[off : off + ln], name, (off, ln)))
    return out


def recover_hidden_strings(java_files: list[Path], min_len: int = 2) -> list[RecoveredString]:
    """Recover hidden strings across all decompiled .java files. Dedupes by
    (value) so a decryptor table compiled into several files (or several ctors
    pulling from one table) yields one recovered string per unique plaintext.
    `min_len` drops 0/1-char noise (numeric tables can carry stray 0..255 bytes
    that are not real strings)."""
    seen: set[str] = set()
    found: list[RecoveredString] = []
    for p in java_files:
        text = read_text_ignore(p)
        if text is None:
            continue
        for value, name, slice_ in recover_from_text(text):
            if len(value) < min_len or value in seen:
                continue
            seen.add(value)
            found.append(RecoveredString(value=value, file=p.name, name=name, slice=slice_))
    return found


def match_recovered_strings(
    recovered: list[RecoveredString], signatures: list
) -> list[Evidence]:
    """Match each recovered plaintext against the signature corpus via the SAME
    `_line_matches` path the plain-text scan uses, deduped per-signature (one
    Evidence per signature even if several hidden strings hit it). Every match is
    `deterministic_matched` by construction - the recovered value is a literal
    decoded from the binary, not an AI hypothesis (ADR-0001)."""
    evidence: list[Evidence] = []
    seen: set[str] = set()
    for rec in recovered:
        for sig in signatures:
            if sig.id in seen:
                continue
            matched = _line_matches(rec.value, sig)
            if not matched:
                continue
            seen.add(sig.id)
            evidence.append(
                Evidence(
                    signature_id=sig.id,
                    file=f"recovered://{rec.file}",
                    line_or_offset=rec.offset,
                    matched_text=matched,
                )
            )
    return evidence
