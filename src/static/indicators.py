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

import hashlib
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
    # Modern BoringSSL custom-verify API (SSL_CTX_set_custom_verify /
    # SSL_set_custom_verify) - the verify-control idiom Conscrypt/Cronet/Flutter
    # use to pin. Deliberately an INDICATOR, never a scored signature: verified
    # against a real production libcronet.so, these symbols are stripped/renamed
    # in shipping BoringSSL, so they are statically absent even when the app pins
    # this way. Surfacing them as a coverage-limited "unknown native TLS
    # capability" (like SSL_CTX_set_verify) is the honest signal, not a confident
    # clean negative (ADR-0006).
    r"SSL_CTX_set_custom_verify\b",
    r"SSL_set_custom_verify\b",
    # Xamarin/Mono runtime entrypoints (mono_jit_init / mono_assembly_load /
    # mono_register_bundled_assemblies). Presence of the Mono runtime means TLS is
    # likely handled by the bundled BoringSSL/Mono path, outside the scanned Java
    # and the universal hooks - so the SSL category must not certify a confident
    # negative for a Xamarin app. An indicator only; never scored as pinning.
    r"mono_jit_init\b",
    r"mono_assembly_load\b",
    r"mono_register_bundled_assemblies\b",
    # mbedTLS verify-control API (MBEDTLS-IND1). The OpenSSL/BoringSSL entries
    # above cover only one of the two TLS stacks that ship in Android native
    # code: an NDK/curl/Unity/IoT component built against mbedTLS performs the
    # same certificate-validation control through a completely different symbol
    # namespace, and was previously invisible on this surface - the native SSL
    # category could certify a clean negative over an entire TLS
    # implementation it had never looked at (ADR-0006).
    #   mbedtls_ssl_conf_verify    - install a custom verify callback (the
    #                                mbedTLS analogue of the pinning hook)
    #   mbedtls_ssl_set_verify     - same, per-connection instead of per-config
    #                                (analogue of SSL_set_custom_verify)
    #   mbedtls_ssl_conf_authmode  - set/relax verification mode (the analogue
    #                                of SSL_CTX_set_verify: also how validation
    #                                is DISABLED, so it must never be scored)
    #   mbedtls_ssl_conf_ca_chain  - install the trusted chain (analogue of
    #                                SSL_CTX_load_verify_locations)
    #   mbedtls_ssl_set_hostname   - the hostname the peer cert must match
    #                                (analogue of SSL_set1_host)
    #   mbedtls_x509_crt_verify    - the chain-verification entry point itself
    # Verified 2026-09-02 on a real shipping library rather than added from the
    # mbedTLS docs: outputs/analysis/1af7a8c5.../apktool/lib/x86_64/libmpv.so
    # (deckers.thibault.aves.libre) exports all six as `FUNC GLOBAL` - e.g.
    # mbedtls_ssl_conf_verify at 0x00d32220 - among 916 mbedtls dynamic symbols
    # from a statically linked, re-exported mbedTLS. A symbol harvest over all
    # 251 `.so` files in the analysed corpus found 896 distinct mbedtls_* FUNC
    # exports and ZERO OpenSSL/BoringSSL `SSL_*`/`X509_*` C exports, so on this
    # corpus mbedTLS is the only native TLS stack that is statically visible at
    # all - the OpenSSL-shaped entries above are stripped in shipping builds
    # (see the libcronet.so note) while mbedTLS ships its whole symbol table.
    # Indicators, deliberately NOT scored signatures: that same evidence shows
    # WHY. Static linking re-exports the whole mbedTLS API whether or not the
    # app ever calls it, so an exported-symbol match proves "this .so contains
    # mbedTLS", not "this app installs a custom verify callback". Scoring it
    # would hand every mbedTLS-bundling app SSL confidence on no real evidence -
    # the bundled-SDK-plumbing false positive (cf. Volley/HurlStack, OkHttp's
    # CertificateChainCleaner). Coverage-limited "unknown native TLS capability"
    # is the honest signal.
    r"mbedtls_ssl_conf_verify\b",
    r"mbedtls_ssl_set_verify\b",
    r"mbedtls_ssl_conf_authmode\b",
    r"mbedtls_ssl_conf_ca_chain\b",
    r"mbedtls_ssl_set_hostname\b",
    r"mbedtls_x509_crt_verify\b",
    r"X509_VERIFY_PARAM_set1_host\b",
    r"SSL_set1_host\b",
    r"SSL_load_verify_locations",
    r"SSL_CTX_load_verify_locations",
    r"/system/etc/hosts",
    # dart:io native TLS verify-control API (DART-IND1). A release Flutter app
    # compiles its Dart HTTPS/pinning logic into the AOT snapshot (libapp.so) -
    # an opaque blob to Ghidra/capstone, so it correctly bounds the native
    # surface to `partial` (dart_aot_coverage). But the snapshot's `.rodata`
    # retains the dart:io runtime's C-level TLS entrypoints as readable strings,
    # and those are the exact places a Flutter app installs or relaxes cert
    # validation - the Dart analogue of SSL_CTX_set_custom_verify. Without these
    # the native SSL category saw ZERO indicators on a real Flutter libapp.so
    # (verified: outputs/analysis/1af7a8c5.../native/lib/x86_64/libapp.so exposes
    # SecureSocket_RegisterBadCertificateCallback + SecurityContext_TrustBuiltinRoots
    # in .rodata), so a native NEITHER over a Flutter app looked cleaner than the
    # evidence warrants. These live in the dart:io VM namespace and appear in NO
    # non-Flutter lib in the corpus (verified 0 hits), so there is no bundled-
    # plumbing cross-contamination. Indicators, deliberately NEVER scored: their
    # mere presence proves "this snapshot links dart:io TLS", not "this app pins"
    # (dart:io ships them whether or not the app registers a callback) - exactly
    # the mbedTLS/BoringSSL bundled-symbol reasoning above. Coverage-limited
    # "unknown native TLS capability" is the honest signal (ADR-0006), and it is
    # the tightest reduction available for the Dart-AOT boundary: the snapshot
    # body stays unreadable, but its TLS surface is no longer silently absent.
    # Every pattern here was confirmed present in the real libapp.so by exact
    # string match (the two Set*Bytes forms dart:io also defines were NOT in this
    # build - 0 hits - so they are deliberately omitted rather than padded in):
    #   SecureSocket_RegisterBadCertificateCallback - install the bad-cert hook
    #     (where a Flutter app accepts/rejects a peer cert: the pinning decision)
    #   SecurityContext_TrustBuiltinRoots           - opt in/out of the system
    #     trust store (relaxing this is how validation is widened/disabled)
    #   SecureSocket_MarkAsTrusted                  - explicitly trust a peer,
    #     the dart:io trust-override entry point
    r"SecureSocket_RegisterBadCertificateCallback\b",
    r"SecurityContext_TrustBuiltinRoots\b",
    r"SecureSocket_MarkAsTrusted\b",
)

_NATIVE_CATEGORY_TO_INDICATORS: dict[str, tuple[str, ...]] = {
    "root": NATIVE_ROOT_INDICATORS,
    "ssl": NATIVE_SSL_INDICATORS,
}

# The two tables, named, so the corpus identity below can be taken over their
# own contents rather than over a second hand-maintained list. That is the one
# place this surface is simpler than the JS idioms: those are independent
# module-level names, so they need `_JS_IDIOM_LISTS` to enumerate them, and a
# third list could be added unregistered. Here a category cannot reach a scan
# without reaching the identity - the hole is impossible rather than guarded.
#
# The table name is hashed along with the pattern because one idiom means
# different things on the two surfaces: a su path read in Java text and the same
# path read in a .so bound different verdicts, so moving a pattern between the
# tables is a change to the rules even with every pattern string unchanged.
_INDICATOR_TABLES: tuple[tuple[str, dict[str, tuple[str, ...]]], ...] = (
    ("_CATEGORY_TO_INDICATORS", _CATEGORY_TO_INDICATORS),
    ("_NATIVE_CATEGORY_TO_INDICATORS", _NATIVE_CATEGORY_TO_INDICATORS),
)


def indicator_fingerprint() -> str:
    """The identity of the unattributed-indicator surface - ADR-0022's third
    detection surface, closed 2026-09-24.

    These lists carry no weight and no score: a match is never added to a
    confidence, so unlike the JS idioms there is no constant scaling them to be
    folded in. What they carry is a verdict-level effect of their own - a match
    here is what stops a NEITHER being certified as a confident negative - so
    editing one changes what the platform will certify while every signature file
    stays byte-identical. Two rule sets that certify different verdicts cannot
    share one identity.

    Hashed as data - table, category, pattern source, sorted - because these are
    compiled into this module rather than read from a file. Sorted, so
    reordering a list (which changes nothing about what matches) does not move
    the identity while a one-pattern edit does.
    """
    digest = hashlib.sha256()
    entries = sorted(
        (table_name, category, pattern)
        for table_name, table in _INDICATOR_TABLES
        for category, patterns in table.items()
        for pattern in patterns
    )
    for table_name, category, pattern in entries:
        digest.update(f"{table_name}\0{category}\0{pattern}".encode("utf-8"))
        digest.update(b"\0")
    return digest.hexdigest()


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
