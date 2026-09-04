"""Coverage-limited signal: Hermes / binary JS bundles (real-world gap A1).

React Native apps (PropertyGuru included) compile their JavaScript to Hermes
*bytecode* (`assets/index.android.bundle`, `.hbc`) for release. That blob is
binary, so the text scan silently skips it: `signatures._is_binary` NUL-probes
the first 8 KiB and skips anything binary, and jadx only decompiles DEX. The
app's root-detection / SSL-pinning logic therefore lives in a surface neither
scanner can read.

Plain-text JS (`.js`, `.jsbundle`, dev `.bundle`) is already handled by the
signature engine (`SCANNED_SUFFIXES` includes those suffixes). This module is
strictly the *complementary* binary path: it recovers the ASCII string-constant
table embedded in a Hermes/bytecode bundle and matches root/SSL idioms against
it. A recovered constant is deterministic evidence (the literal is really present
in the app), but we see constants, not the surrounding JS control flow - so the
honest treatment (ADR-0006) is to surface the match AND degrade the `js` coverage
surface to `partial` (code exists we cannot fully read). Full logic requires the
Phase-5 dynamic stage.

Pure module - operates on bytes on disk, unit-testable anywhere (no Android
toolchain). Mirrors `dynload.py`: recall-biased, in-module idiom lists, never
over-claims a confident negative.
"""

from __future__ import annotations

import re
from pathlib import Path

# Hermes `.hbc` magic, little-endian 0x00 0x0C 0xBC 0x1F. Only used as a label;
# detection relies on the NUL probe, not the magic, so any binary bundle is
# treated the same even when a future runtime changes the header.
HERMES_MAGIC = b"\x1f\xbc\x0c\x00"

# Root-detection idioms as they survive into a Hermes string table. Recall-biased:
# a missed idiom silently over-claims a confident negative over code we never
# read, so the lists err toward matching. Versioned in-module (dynload precedent)
# rather than the Java signature YAML, because these are JS-domain literals, not
# Java class/string evidence; category drives which detection list the evidence
# lands in.
#
# HERM-PRECISION1 - what a match here does and does NOT mean. A match both (a)
# marks the js surface coverage-limited and (b) contributes SCORED evidence at its
# signature weight. Two properties bound the false-positive cost of (b), and both
# are load-bearing:
#
#   1. Hermes packs its string table contiguously with no separators, so an
#      ASCII-run extractor returns giant concatenated blobs, not discrete
#      identifiers (measured on the real PropertyGuru bundle: 11,904 recovered
#      runs, median length 9 but max 1,750,695 chars). Word boundaries therefore
#      do not exist in this corpus and `\b` would be inert - matching is
#      unavoidably substring matching. Verified consequence: PropertyGuru's sole
#      root evidence, `isRooted`, is really the substring of
#      `_isRootedExperimentalAsync` - expo-device's root-check API, i.e. a
#      BUNDLED SDK export present in the string table whether or not the app ever
#      calls it. That is the same static-linking/bundled-plumbing artifact that
#      keeps mbedTLS verify-control in the indicator layer (see
#      static/indicators.py), and it is why no idiom here may carry a weight that
#      could decide a verdict on its own.
#   2. Every weight in these lists is far below the 0.70 decision threshold, and
#      the structural anti-FP invariant (no single signature >= 0.70) holds here
#      too, so a bundled-but-uncalled export can never by itself produce a
#      DETECTED - it can only raise a sum that other, independent signatures
#      already dominate, and it always says "coverage-limited" alongside.
#
# So the honest reading of a match is "this bundle references a root/pinning API",
# not "this app performs a root check". Do not raise these weights without
# empirical false-positive evidence from a real corpus.
JS_ROOT_IDIOMS: list[tuple[str, str, re.Pattern[str]]] = [
    (
        "js_root_su",
        "root",
        re.compile(
            r"/system/bin/su|/sbin/su|/su/bin|/system/xbin/su|"
            r"isRooted|RootBeer|detectRootChecks|rootBeer|isDeviceRooted|safetynet"
        ),
    ),
    (
        "js_root_busybox",
        "root",
        re.compile(r"busybox|/system/xbin/which|/system/bin/which"),
    ),
]

# SSL/TLS-pinning idioms in Hermes string tables. Mirrors the java pinning set
# (`okhttp_certificate_pinner`, NSC pin digests) for the JS surface.
JS_SSL_IDIOMS: list[tuple[str, str, re.Pattern[str]]] = [
    (
        "js_ssl_pinner",
        "ssl",
        re.compile(
            r"certificatePinner|certPinner|CertificatePinner|pinCertificates|"
            r"verifyHostname|hostnameVerifier|pinnedCertificates"
        ),
    ),
    (
        "js_ssl_pin_digest",
        "ssl",
        re.compile(r"sha256/|pin-set|network_security_config|ssl-pinning|ssl_pin"),
    ),
]

# Suffixes that identify a JS bundle candidate before the binary probe.
_BUNDLE_SUFFIXES = {".bundle", ".hbc", ".jsbundle", ".js"}
_BINARY_PROBE_LEN = 8192
_MIN_STRING_LEN = 6


def is_bundle_candidate(path: Path) -> bool:
    """Whether `path` looks like a JS bundle (by suffix). Cheap pre-filter; the
    binary probe decides whether it needs Hermes recovery vs. is plain-text that
    the signature engine already scans."""
    return path.suffix.lower() in _BUNDLE_SUFFIXES


def is_binary_bundle(path: Path) -> bool:
    """NUL-probe the first 8 KiB - the same rule as `signatures._is_binary`. A
    binary bundle is one the text engine already skips, so recovering it here is
    complementary, never a double count of plain-text JS."""
    try:
        with open(path, "rb") as fh:
            head = fh.read(_BINARY_PROBE_LEN)
    except OSError:
        # Unreadable bundle - treat as binary so coverage degrades honestly.
        return True
    return b"\x00" in head


def extract_ascii_strings(path: Path, min_len: int = _MIN_STRING_LEN) -> list[str]:
    """Collect printable-ASCII runs of at least `min_len` bytes from the raw
    bundle. Hermes embeds string literals in a constant-pool table; this recovers
    them without a bytecode parser. Runs may include trailing whitespace and are
    returned as-is (matched against idioms rather than re-parsed)."""
    try:
        data = path.read_bytes()
    except OSError:
        return []
    strings: list[str] = []
    cur = bytearray()
    for byte in data:
        if 32 <= byte <= 126:  # printable ASCII
            cur.append(byte)
        else:
            if len(cur) >= min_len:
                strings.append(bytes(cur).decode("ascii"))
            cur.clear()
    if len(cur) >= min_len:
        strings.append(bytes(cur).decode("ascii"))
    return strings


def extract_utf16le_strings(path: Path, min_len: int = _MIN_STRING_LEN) -> list[str]:
    """Recover printable runs stored as UTF-16LE - each Latin character is a
    printable byte followed by 0x00. The ASCII pass sees such a run as single
    characters isolated by NULs and drops every one (each is a length-1 run), so a
    detection idiom stored as a wide string is silently missed entirely (HERM1).
    This second pass recovers them by walking printable/NUL byte pairs, re-syncing
    one byte at a time so a run is found at any alignment. Same conservative framing
    as the ASCII pass and the module as a whole: this only surfaces MORE real
    literals for idiom matching - `js` coverage still degrades to `partial`
    (constants, not control flow), never asserting the bundle was fully analyzed."""
    try:
        data = path.read_bytes()
    except OSError:
        return []
    strings: list[str] = []
    cur = bytearray()
    i, n = 0, len(data)
    while i + 1 < n:
        lo, hi = data[i], data[i + 1]
        if hi == 0 and 32 <= lo <= 126:
            cur.append(lo)
            i += 2
        else:
            if len(cur) >= min_len:
                strings.append(bytes(cur).decode("ascii"))
            cur.clear()
            i += 1
    if len(cur) >= min_len:
        strings.append(bytes(cur).decode("ascii"))
    return strings


def scan_bundle(path: Path) -> dict:
    """Recover root/SSL idioms from a binary JS bundle.

    Returns a dict:
      kind      "hermes"  (magic match) | "binary" (binary, no magic) |
                "opaque"  (binary, no extractable strings) | "plain" (not binary -
                leave to the text engine; caller should not call for these).
      strings   number of ASCII runs recovered.
      matches   list of (sig_id, category, matched_text) - matched_text is the
                full recovered string that hit an idiom (a real app constant).

    `kind` in {"hermes","binary","opaque"} means we recovered constants, not full
    JS control flow - the caller must degrade the `js` surface to `partial`.
    """
    if not is_binary_bundle(path):
        return {"kind": "plain", "strings": 0, "matches": []}
    raw: bytes
    try:
        raw = path.read_bytes()
    except OSError:
        return {"kind": "opaque", "strings": 0, "matches": []}
    kind = "hermes" if raw.startswith(HERMES_MAGIC) else "binary"
    # Recover BOTH 1-byte-per-char (ASCII) and UTF-16LE wide strings: a detection
    # idiom stored as a wide string is invisible to the ASCII pass alone (HERM1),
    # so scanning only ASCII would silently miss it. Combining both surfaces more
    # real literals; coverage still degrades to `partial` regardless.
    strings = extract_ascii_strings(path) + extract_utf16le_strings(path)
    matches: list[tuple[str, str, str]] = []
    for string in strings:
        for sig_id, category, idiom in JS_ROOT_IDIOMS:
            m = idiom.search(string)
            if m:
                # matched_text is the exact literal that hit (e.g. "/system/bin/su",
                # "safetynet"), not the whole recovered run - readable report evidence.
                matches.append((sig_id, category, m.group(0)))
        for sig_id, category, idiom in JS_SSL_IDIOMS:
            m = idiom.search(string)
            if m:
                matches.append((sig_id, category, m.group(0)))
    # No recoverable strings at all: genuinely opaque binary blob.
    if not strings:
        kind = "opaque"
    return {"kind": kind, "strings": len(strings), "matches": matches}
