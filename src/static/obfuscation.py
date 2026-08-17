"""Obfuscation-level detection (ADR-0008 group A, roadmap item 2).

Deterministic per-run `obfuscation_level ∈ clear | light | heavy`, derived by
one concrete rule (G7): the ratio of single-char class identifiers among the
decompiled Java classes. A minified/obfuscated app (ProGuard/R8 with short
names) has a high proportion of one- or two-char class names; a clear app does
not. The thresholds are empirical starting points validated by manual inspection
against the known corpus (N3) - there is no obfuscation calibration dimension,
so this text never promises an automated tuning loop that doesn't exist.

Pure module: no I/O, no toolchain - feed it a list of class simple names and it
returns the level. `heavy` forces the Java surface to partial in the coverage
contract (N1/G-C) so a heavy target's clean NEITHER can't certify as a confident
TN.
"""

from __future__ import annotations

import re
from pathlib import Path
from typing import Literal

ObfuscationLevel = Literal["clear", "light", "heavy"]

# G7: single-char class-name ratio thresholds. > 0.40 heavy, > 0.10 light,
# else clear. Documented as empirical starting points (N3), not asserted.
HEAVY_RATIO = 0.40
LIGHT_RATIO = 0.10


def _class_simple_names(java_files: list[Path]) -> list[str]:
    """Extract the simple class names from decompiled .java files - the final
    identifier before the opening brace, which is what minifiers shorten. Empty
    corpus => [] (the caller decides how an empty corpus reads, not here)."""
    names: list[str] = []
    for p in java_files:
        try:
            text = p.read_text(encoding="utf-8", errors="ignore")
        except OSError:
            continue
        # Match a top-level `public/class|interface|enum <Name>` - take the
        # identifier that follows the class keyword on the same line. This is a
        # deterministic heuristic; it does not need a full Java parser.
        in_resource_class = False
        for line in text.splitlines():
            stripped = line.strip()
            for kw in ("class ", "interface ", "enum "):
                idx = stripped.find(kw)
                if idx == -1:
                    continue
                after = stripped[idx + len(kw):].strip()
                name = after.split(" ")[0].split("{")[0].split("<")[0]
                name = name.strip()
                if in_resource_class:
                    # jadx flattens R's nested resource classes into declarations
                    # like `public static final class id {` inside R.java. These
                    # (id, layout, string, dimen, ...) are standard Android
                    # generated resource inner classes, never obfuscation - skip
                    # them so they can't inflate the minified ratio (C1/G7).
                    break
                if name == "R":
                    in_resource_class = True
                    break
                # R8 emits `a$b` inner-class names; isidentifier() rejects the
                # `$`, so allow alnum plus `_` and `$` (H6).
                if name and all(c.isalnum() or c in ("_", "$") for c in name):
                    names.append(name)
                break
    return names


def _is_minified_name(n: str) -> bool:
    """A name reads as minified when it is one/two chars (`a`, `b`, `aa`, `ab`),
    OR it is an R8-flattened inner class whose *outer* segment is itself short
    (`a$a`). A bare `$` is NOT enough: `Cache$urls$1` is the normal inner/
    anonymous-class marker in a clear app and would mislabel it as minified (C1)."""
    if len(n) <= 2:
        return True
    outer = n.split("$", 1)[0]
    return len(outer) <= 2


# R8/ProGuard string-encryption fingerprint (limitation-4 honesty). R8 rewrites
# each string literal into a char/int array of NUMERIC literals, decoded by a
# private helper via a single-arg `new String(<array>)` - the literal the
# signature corpus matches on is gone from the source. G7 alone (class-name
# ratio) misses apps that encrypt strings without heavy name minification, so
# their Java surface was certified fully_analyzed despite hidden literals.
# Detecting the decryptor's shape and escalating to `heavy` forces the surface
# to partial (N1/G-C): a string-encrypted app's clean NEITHER can never certify
# a confident TN. Conservative by design (ADR-0006): requires the single-arg
# `new String(<char|int array>)` decryptor, so the common `new String(bytes,
# "UTF-8")` charset decode is NOT mistaken for encryption - over-firing here is
# the safe direction (honest partial), but a semantic false label is avoided.
_STR_SINGLE_ARG_CTOR = re.compile(r"new String\(\s*[A-Za-z_$][\w$]*\s*\)")
_STR_NUMERIC_ARRAY = re.compile(r"\b(?:char|int)\[\]\s*[A-Za-z_$][\w$]*\s*=\s*\{(.*?)\}", re.S)


def _split_array_items(body: str) -> list[str]:
    """Split an array-initializer body on TOP-LEVEL commas (respecting nested
    `{}`/`()`), so each item is one literal or expression. R8 emits a flat list
    of standalone literals; gms-style obfuscation emits expression items - this
    isolates them so the pure-literal count below can tell the two apart."""
    items: list[str] = []
    depth, cur = 0, []
    for ch in body:
        if ch in "({[":
            depth += 1
        elif ch in ")}]":
            depth = max(0, depth - 1)
        if ch == "," and depth == 0:
            items.append("".join(cur).strip())
            cur = []
        else:
            cur.append(ch)
    items.append("".join(cur).strip())
    return [i for i in items if i]


def _is_pure_numeric_literal(item: str) -> bool:
    """True when the item is a standalone integer literal, optionally wrapped in
    one `(char)`/`(int)` cast and optionally signed. False for ANY expression -
    e.g. `(char)((x >> 10) & 31) + 96` - so digits inside arithmetic/bitwise
    sub-expressions are never counted as encoded-string bytes. This is the exact
    false-positive source seen on PropertyGuru's gms/ads class, which mixed a
    single-arg `new String(cArr)` with an expression-built char[] and tripped the
    old bare-`\\d+` count (ADR-0006: conservative, never a semantic false label)."""
    s = re.sub(r"^\((?:char|int)\)\s*", "", item.strip())
    return re.fullmatch(r"[+-]?(?:0[xX][0-9a-fA-F]+|\d+)", s) is not None


# Dynamic (expression-built) string-decryptor shapes - boundary #4. The flat
# numeric-array fingerprint above covers R8's statically-RECOVERABLE encoding.
# A separate family hides strings behind a DYNAMIC decryptor that rebuilds each
# char at runtime from an algorithm, so the encoded value is not a recoverable
# literal - but the *decryption* is still real and the hidden string still
# eludes the signature corpus. Two concrete shapes seen in the real corpus:
#   * base-N field extractor  : (char) (((x >> 10) & 31) + 96)   (gms/ads base-32)
#   * XOR stream              : (char) (x ^ 0x1F)                (appsflyer)
# A file that decrypts strings this way must force the Java surface to partial
# (N1/G-C) exactly like the flat R8 case - never be certified fully_analyzed
# with hidden literals (ADR-0006). The value is UNRECOVERABLE in pure Python
# (_fold_int returns None for it); the honest boundary is to DETECT the
# algorithm and report partial, not to over-claim recovery and not to silently
# pass a hidden-string surface as clean.
_STR_DYNAMIC_BITFIELD = re.compile(
    r"\(char\)\s*\(+\s*[A-Za-z_$][\w$]*\s*>>\s*\d+\s*\)\s*&\s*\d+\s*\)\s*[+-]\s*\d+\s*\)?"
)
_STR_DYNAMIC_XOR = re.compile(r"\(char\)\s*\(\s*[A-Za-z_$][\w$]*\s*\^\s*[A-Za-z0-9_$.]+\s*\)")
# Runtime XOR-LOOP decryptor (appsflyer AFf1cSDK, `str.toCharArray()` + in-place
# loop): `charArray[i] = (char)(charArray[i] ^ key); ... new String(charArray)`.
# This shape has NO `{...}` initializer for the detector above to read - the
# array is runtime-sized and mutated in a loop - so it needs its own signal.
# Requiring an array-element STORE of a char-cast XOR over two subscripted
# operands is a decisive decryptor idiom (in-place ciphertext decode), not
# ordinary code - combined with the single-arg `new String(...)` gate by the
# caller, it flags a hidden-string surface without a semantic false label.
_STR_LOOP_XOR = re.compile(
    r"\[\s*[A-Za-z_$][\w$]*\s*\]\s*=\s*\(char\)\s*\(\s*[A-Za-z_$][\w$]*\s*\[[^\]]*\]\s*\^"
)


def _has_dynamic_decryptor_expr(body: str) -> bool:
    """True when an array-initializer body carries a dynamic string-decryptor
    expression (base-N field extractor or XOR stream). These are decisive
    decryption signatures - a `(char)` cast rebuilding a value from a shift/
    mask/offset or an XOR is not a normal literal initializer idiom - so a body
    that has one is encryption, even though the encoded char is not recoverable
    as a standalone literal. Confined to bodies that also feed a single-arg
    `new String(...)` by the caller, which keeps this from firing on unrelated
    bit-manipulation code (ADR-0006: never a semantic false label)."""
    return bool(_STR_DYNAMIC_BITFIELD.search(body) or _STR_DYNAMIC_XOR.search(body))


def _has_string_encryption(text: str) -> bool:
    """True when a file shows a string-decryptor fingerprint: a single-arg
    `new String(<array>)` AND a char/int[] that is either (a) initialized with
    >=8 STANDALONE numeric literals (R8's statically-RECOVERABLE flat encoding:
    a hidden string encoded as a flat list of int/hex byte values), or (b)
    initialized with a DYNAMIC decryptor expression (base-N field extractor /
    XOR stream - boundary #4: statically UNRECOVERABLE, but real decryption and
    detected as such so the surface reads partial, never a confident clean over
    hidden literals). Only pure literals count toward (a) - normal
    `char[] = {'h','i'}` is neither shape and is not mistaken for encryption
    (ADR-0006)."""
    if not _STR_SINGLE_ARG_CTOR.search(text):
        return False
    # Runtime XOR-loop decryptor (no `{...}` initializer to read): an array
    # mutated in place as `arr[i] = (char)(arr[i] ^ key)` then handed to
    # `new String(arr)`. Detected before the initializer walk because the loop
    # shape never appears as a numeric-array initializer. The ADDITIVE analog
    # (`arr[i] = (char)(arr[i] +/- key)`) is deliberately NOT detected - a `+1`
    # or a `-32` (case conversion) is ordinary benign code, so flagging it would
    # be a semantic false label (ADR-0006). The XOR shape is decisive; additive
    # loops are too ambiguous, and that honest limit is documented, not guessed.
    if _STR_LOOP_XOR.search(text):
        return True
    for m in _STR_NUMERIC_ARRAY.finditer(text):
        items = _split_array_items(m.group(1))
        pure = sum(1 for i in items if _is_pure_numeric_literal(i))
        if pure >= 8:
            return True
        if pure == 0 and _has_dynamic_decryptor_expr(m.group(1)):
            return True
    return False


def _any_string_encryption(java_files: list[Path]) -> bool:
    """True when any decompiled .java shows the string-encryption fingerprint."""
    for p in java_files:
        try:
            text = p.read_text(encoding="utf-8", errors="ignore")
        except OSError:
            continue
        if _has_string_encryption(text):
            return True
    return False


def _minified_name_ratio(names: list[str]) -> float:
    """Fraction of names that look minified (see _is_minified_name). Single-char-
    only missed real R8, which uses two-char and `$` names, so the heavy guard
    never fired on the population it targets (H6); requiring the outer segment to
    also be short keeps clear apps' inner classes from being counted (C1)."""
    # The Android resource class `R` (and its inner `R$id`, `R$layout`, ...) is
    # generated into EVERY app, is always a single char, and is never an
    # obfuscation signal - counting it inflates the ratio and mislabels clear
    # apps as heavy (C1/G7). Exclude it before the ratio is computed.
    app_names = [n for n in names if n != "R" and not n.startswith("R$")]
    if not app_names:
        return 0.0
    minified = sum(1 for n in app_names if _is_minified_name(n))
    return minified / len(app_names)


def detect_obfuscation_level(java_files: list[Path]) -> ObfuscationLevel:
    """Two deterministic rules. G7 (class-name ratio) first, plus the R8 string-
    encryption fingerprint: string encryption hides the very literals the
    signature corpus matches, so its presence alone forces `heavy` (-> Java
    surface partial via N1/G-C) regardless of class names. Empty corpus =>
    'clear' (nothing to observe; the coverage contract separately marks a
    low-corpus Java surface partial via decompile_completeness, so this can't
    over-claim absence)."""
    if _any_string_encryption(java_files):
        return "heavy"
    names = _class_simple_names(java_files)
    # Single source of truth for the class-name thresholds: obfuscation_from_names
    # holds the ratio->level logic, and detect delegates to it (rather than
    # duplicating the comparison here) so the two can never drift apart.
    return obfuscation_from_names(names)


def obfuscation_from_names(names: list[str]) -> ObfuscationLevel:
    """Fixture-testable entry point - pass class simple names directly instead
    of walking files. Used by unit tests and by callers that already hold the
    name list."""
    ratio = _minified_name_ratio(names)
    if ratio > HEAVY_RATIO:
        return "heavy"
    if ratio > LIGHT_RATIO:
        return "light"
    return "clear"
