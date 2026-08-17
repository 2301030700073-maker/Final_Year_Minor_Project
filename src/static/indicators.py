"""Unattributed detection-indicator scan (boundary-1, honest partial).

The fundamental signature-bounded limitation (ADR-0001): a root-check or
pinning technique that matches no hand-authored signature is silently absent
from the confidence score. The signature corpus is the sole source of truth
for DETECTION - a novel/exotic/custom idiom cannot be matched by a corpus that
lacks it, and that fact is structural.

This module closes the ADR-0006 half of that gap: it never claims a novel
technique IS root detection or pinning (that would require a signature), but it
refuses to let detection-shaped code certify a CONFIDENT negative either. When
high-precision, technique-agnostic *detection idioms* are present in the scanned
Java of an app-owned file, and NO signature matched that category, the category
is surfaced as coverage-limited (unknown, not absent) - forcing its surface to
partial so a clean NEITHER is never over-claimed.

Indicators are deliberately technique-agnostic: they signal that custom
root/pinning DECISION LOGIC exists, not which technique it is. They are
high-precision (specific API/method/constructor shapes that do not appear in
benign code), so a genuinely clean app never trips them. They never PROMOTE to
detected (ADR-0001 - only the signature corpus decides detection); they only
downgrade a would-be confident negative to partial. Pure module: no I/O, no
toolchain - fixture-testable anywhere.

Boundary-2 (native surface): the SAME ADR-0006 hole existed on the native side.
Native runtime-state checks - su paths the signature set lacks, /proc
self-inspection, uid==0 tests, OpenSSL verify control - are statically present
in a .so's exports/strings/Ghidra-decompiled bodies but were silently absent
when they matched no native signature. find_native_indicator_categories() closes
that: high-precision native idioms flag a category as coverage-limited when the
native corpus carries them yet no native signature fired. Deliberately distinct
from native_detection.yaml (a path already a signature - /system/bin/su, magisk -
is not repeated here, so these add signal only for UNRECOGNIZED native idioms).
"""

from __future__ import annotations

import re

# Root-detection indicators: generic "is this device rooted" decision logic that
# has no dedicated signature yet. A method literally named isRooted()/checkRoot()
# or a reference to the Superuser library is decisive that the app performs a
# root check - we just cannot say WHICH technique it is. Distinct from the
# signature set (root_detection.yaml) so they add signal only for UNRECOGNIZED
# techniques: if a known signature fired, the category is matched and these
# never surface.
ROOT_INDICATORS: tuple[str, ...] = (
    r"isRooted\s*\(",
    r"checkRoot\s*\(",
    r"checkForRoot\s*\(",
    r"isDeviceRooted\s*\(",
    r"hasRootAccess\s*\(",
    r"canWeGetRoot\s*\(",
    r"detectRoot\s*\(",
    r"com\.koushikdutta\.superuser",
)

# SSL/pinning indicators: custom certificate-validation code that has no
# dedicated signature yet. `new X509TrustManager(){...}` (the ANONYMOUS form -
# distinct from `implements X509TrustManager` in ssl_pinning.yaml) and a bare
# checkServerTrusted(X509Certificate[]...) override both mean the app installs
# custom TLS validation, which we cannot attribute to a known pinning technique
# unless a signature fires. A custom TrustManager is SSL-control code, so a
# category that sees it without a signature match must not certify a confident
# "no pinning" negative.
SSL_INDICATORS: tuple[str, ...] = (
    r"new\s+X509TrustManager\s*\(\s*\)\s*\{",
    r"checkServerTrusted\s*\(\s*X509Certificate",
    r"getAcceptedIssuers\s*\(",
)

_CATEGORY_TO_INDICATORS: dict[str, tuple[str, ...]] = {
    "root": ROOT_INDICATORS,
    "ssl": SSL_INDICATORS,
}

# Boundary-2: NATIVE-surface indicators. These are technique-agnostic idioms
# that signal native root/SSL DECISION logic exists, deliberately DISTINCT from
# native_detection.yaml's signature patterns - an idiom already a signature (e.g.
# the su paths /system/bin/su, /system/xbin/su, magisk; the native SSL_*_verify
# signatures) is not repeated here, so these fire only for UNRECOGNIZED native
# techniques. They read against the joined native corpus (exports + embedded
# strings + Ghidra-decompiled bodies).
#
# Root: su binary paths the signature set does NOT carry, superuser app markers,
# /proc self-inspection (maps/mounts/status = the classic anti-debug AND
# root-filesystem probes), a uid==0 test visible in a decompiled body, and an
# explicit su spawn. Bare getuid/popen are deliberately absent - they are too
# generic (benign libs call them); only the specific path/marker/uid-check
# shapes carry enough signal to flag an unknown technique (ADR-0006 precision).
NATIVE_ROOT_INDICATORS: tuple[str, ...] = (
    r"/sbin/su",
    r"/system/sbin/su",
    r"/su/bin/su",
    r"/system/bin/\.ext/\.su",
    r"/data/local/tmp/su",
    r"/system/app/Superuser\.apk",
    r"/system/app/SuperSU\.apk",
    r"/system/app/Kinguser\.apk",
    r"/proc/self/maps",
    r"/proc/self/mounts",
    r"/proc/self/mountinfo",
    r"/proc/self/status",
    r"getuid\s*\(\s*\)\s*==",
    r"geteuid\s*\(\s*\)\s*==",
    r"which su\b",
    r"which magisk\b",
)

# SSL: native certificate-validation control. Reading the system CA store
# (/system/etc/security/cacerts), generic OpenSSL verify-control (SSL_CTX_set_verify
# / SSL_set_verify - present for BOTH pinning and SSL_VERIFY_NONE, so it must
# never be scored as pinning, only flagged as an unknown native TLS capability),
# setting the expected server hostname (X509_VERIFY_PARAM_set1_host / SSL_set1_host -
# the BoringSSL/OpenSSL hostname-verification anchors a native TLS client uses to
# REQUIRE a specific hostname; present in ordinary correct clients too, so likewise
# never scored, only flagged as unknown native TLS hostname-check logic), and
# loading verify locations. The unambiguous pinning hook
# SSL_CTX_set_cert_verify_callback IS a scored signature in native_detection.yaml
# and is deliberately NOT repeated here - it adds signal only when unrecognized.
NATIVE_SSL_INDICATORS: tuple[str, ...] = (
    r"/system/etc/security/cacerts",
    r"SSL_CTX_set_verify\b",
    r"SSL_set_verify\b",
    r"X509_VERIFY_PARAM_set1_host\b",
    r"SSL_set1_host\b",
    r"SSL_load_verify_locations",
    r"SSL_CTX_load_verify_locations",
    r"/system/etc/hosts",
)

_NATIVE_CATEGORY_TO_INDICATORS: dict[str, tuple[str, ...]] = {
    "root": NATIVE_ROOT_INDICATORS,
    "ssl": NATIVE_SSL_INDICATORS,
}

_CACHE: dict[str, re.Pattern] = {}


def _compile(cat: str, table: dict[str, tuple[str, ...]]) -> tuple[re.Pattern, ...]:
    """Compile (and cache) the indicator regexes for a category in a table."""
    pats = []
    for raw in table[cat]:
        pat = _CACHE.get(raw)
        if pat is None:
            pat = re.compile(raw)
            _CACHE[raw] = pat
        pats.append(pat)
    return tuple(pats)


def find_indicator_categories(text: str) -> set[str]:
    """The detection categories whose indicator idioms appear in one file's
    text. Deterministic, pure: a single scan of the text against the small
    per-category indicator set. Returns an empty set for a clean file."""
    found: set[str] = set()
    for cat, patterns in _CATEGORY_TO_INDICATORS.items():
        if any(p.search(text) for p in _compile(cat, _CATEGORY_TO_INDICATORS)):
            found.add(cat)
    return found


def find_native_indicator_categories(text: str) -> set[str]:
    """Boundary-2: the detection categories whose NATIVE idioms appear in a .so's
    joined corpus (exports + embedded strings + Ghidra-decompiled bodies). Same
    semantics as find_indicator_categories - pure, deterministic, never promotes
    to detected - but for the native surface, so native runtime-state code that
    matches no native signature surfaces as coverage-limited, not a silent
    confident negative (ADR-0006)."""
    found: set[str] = set()
    for cat, patterns in _NATIVE_CATEGORY_TO_INDICATORS.items():
        if any(p.search(text) for p in _compile(cat, _NATIVE_CATEGORY_TO_INDICATORS)):
            found.add(cat)
    return found
