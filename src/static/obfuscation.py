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
from common import is_third_party_decompiled_file, read_text_ignore

import re
from pathlib import Path
from typing import Literal

ObfuscationLevel = Literal["clear", "light", "heavy"]

# ADR-0026: which rule produced a `heavy` reading. The two bound a negative for
# different reasons - encrypted literals are unrecoverable, minified identifiers
# are rewritten - so the record carries the rule and the report names it, instead
# of rendering the encryption wording over a corpus that fired the ratio rule.
ObfuscationReason = Literal["string_encryption", "minified_names"]

# G7: single-char class-name ratio thresholds. > 0.40 heavy, > 0.10 light,
# else clear. Documented as empirical starting points (N3), not asserted.
HEAVY_RATIO = 0.40
LIGHT_RATIO = 0.10


# A type declaration: annotations and modifiers first, then the keyword that
# introduces the name. Anchored, because only a declaration introduces a class
# name - see _class_simple_names (OBF-HARVEST1).
_DECL = re.compile(
    r"^(?:(?:@[\w$.]+(?:\([^)]*\))?"
    r"|public|protected|private|static|final|abstract|sealed|non-sealed|strictfp)\s+)*"
    r"(?:class|interface|enum)\s+([\w$]+)"
)
_BLOCK_COMMENT = re.compile(r"/\*.*?\*/")


def _class_simple_names(java_files: list[Path]) -> list[str]:
    """Extract the simple class names from decompiled .java files - the
    identifier a declaration introduces, which is what a minifier shortens. Empty
    corpus => [] (the caller decides how an empty corpus reads, not here).

    OBF-HARVEST1: the walk matches a DECLARATION, anchored at the start of the
    line past any annotations and modifiers. It used to take the token after the
    first occurrence of `class `/`interface `/`enum ` anywhere in the line, which
    in a decompiled corpus is mostly not a declaration at all. Measured
    2026-09-24, the harvest drops by 28 names for UC2 (542 -> 514) and 17 for UC3
    (1,013 -> 996), spanning JADX INFO comments, string literals and ordinary
    statements: a comment and an exception message yielded the words `name` and
    `has`, which inflate the denominator, while a one- or two-char word yielded a
    "class name" that `_is_minified_name` counts as minified. The tokens are
    unpredictable in both directions - the alnum guard below rejects punctuation
    like the `=` in `Class superclass = ...`, so what gets through is words - and
    the ratio they feed decides a coverage bound (`heavy` -> java partial), so a
    clear app could be bounded by a comment. `@interface` is normalized so
    annotation types keep counting as declarations."""
    names: list[str] = []
    for p in java_files:
        text = read_text_ignore(p)
        if text is None:
            continue
        in_resource_class = False
        for line in text.splitlines():
            # An inline block comment can precede a declaration on the same line;
            # re-strip after removing it, since the removal leaves a space where
            # the anchor has to be.
            stripped = (
                _BLOCK_COMMENT.sub(" ", line.strip())
                .replace("@interface", "interface")
                .strip()
            )
            m = _DECL.match(stripped)
            if m is None:
                continue
            if in_resource_class:
                # jadx flattens R's nested resource classes into declarations
                # like `public static final class id {` inside R.java. These
                # (id, layout, string, dimen, ...) are standard Android
                # generated resource inner classes, never obfuscation - skip
                # them so they can't inflate the minified ratio (C1/G7).
                continue
            name = m.group(1)
            if name == "R":
                in_resource_class = True
                continue
            # R8 emits `a$b` inner-class names; isidentifier() rejects the
            # `$`, so allow alnum plus `_` and `$` (H6).
            if name and all(c.isalnum() or c in ("_", "$") for c in name):
                names.append(name)
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


def _any_string_encryption(java_files: list[Path], app_package: str | None = None) -> bool:
    """True when any of the APP's OWN decompiled .java shows the string-encryption
    fingerprint. OBF-VENDOR1: a bundled SDK's encrypted strings (the corpus notes
    above name appsflyer's XOR-loop and the gms/ads decryptor) are the vendor's
    obfuscation of the VENDOR's own strings, not the app hiding its own root/SSL
    detection literals - so they must not force the app's Java surface to `partial`
    (a false coverage limitation for every app bundling such an SDK), exactly as
    find_dynamic_loading / find_webview_js exclude vendor code (the java-covlim
    vendor-filter lesson). Safe direction is preserved structurally: the app's OWN
    encrypted strings - including an app whose package shares a recognized vendor
    prefix (Bug-B) - still fire and still force `heavy`; only recognized
    third-party files are skipped. The class-name-ratio signal is deliberately
    left corpus-wide (a separate, broader question with an unverified calibration
    impact), so a vendor-minified bundle still reads heavy via that path - this
    filter only ever relaxes the string-encryption signal, never the ratio one."""
    for p in java_files:
        if is_third_party_decompiled_file(str(p), app_package):
            continue
        text = read_text_ignore(p)
        if text is None:
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


def detect_obfuscation_with_reason(
    java_files: list[Path], app_package: str | None = None
) -> tuple[ObfuscationLevel, ObfuscationReason | None]:
    """Two deterministic rules, returning the level AND the rule that produced it
    (ADR-0026). G7 (class-name ratio) first, plus the R8 string-encryption
    fingerprint: string encryption hides the very literals the signature corpus
    matches, so its presence alone forces `heavy` (-> Java surface partial via
    N1/G-C) regardless of class names. Empty corpus => 'clear' (nothing to
    observe; the coverage contract separately marks a low-corpus Java surface
    partial via decompile_completeness, so this can't over-claim absence).

    The rule is reported, not only the level, because the two rules say different
    things about WHY a clean read is not a negative: an encrypted app's literals
    are unrecoverable, while a minified app's identifiers have been rewritten. One
    sentence for both stated a bound the run had not measured - measured
    2026-09-24, both heavy UnCrackable corpora fired the ratio rule (0.800, 0.895)
    with string_encryption False, while their reports claimed encrypted/unreachable
    strings. None is returned for clear/light, where no rule bounded anything.

    OBF-VENDOR1: `app_package` scopes the string-encryption signal to the app's
    OWN code - a bundled SDK's encrypted strings are the vendor's, not the app
    hiding its detection literals, so they must not force the app to `heavy`
    (see _any_string_encryption). None (the default) reduces to the recognized-
    vendor exclusion, matching find_dynamic_loading / find_webview_js."""
    if _any_string_encryption(java_files, app_package):
        return "heavy", "string_encryption"
    names = _class_simple_names(java_files)
    # Single source of truth for the class-name thresholds: obfuscation_from_names
    # holds the ratio->level logic, and detect delegates to it (rather than
    # duplicating the comparison here) so the two can never drift apart.
    level = obfuscation_from_names(names)
    return level, ("minified_names" if level == "heavy" else None)


def detect_obfuscation_level(java_files: list[Path], app_package: str | None = None) -> ObfuscationLevel:
    """The level alone, for callers that do not render a cause. Delegates, so the
    two entry points can never disagree - see detect_obfuscation_with_reason."""
    return detect_obfuscation_with_reason(java_files, app_package)[0]


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
