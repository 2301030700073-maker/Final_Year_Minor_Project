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
# a false "root logic present" just degrades js to partial (honest, ADR-0006),
# whereas a missed idiom silently over-claims a confident negative over code we
# never read. Versioned in-module (dynload precedent) rather than the Java
# signature YAML, because these are JS-domain literals, not Java class/string
# evidence; category drives which detection list the evidence lands in.
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
    strings = extract_ascii_strings(path)
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
