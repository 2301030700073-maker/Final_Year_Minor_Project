"""Root-detection evidence attribution (report-level).

A real PropertyGuru run exposed the gap this closes: root confidence 1.00 was
correct (the signatures found real root-detection code), but every match traced
to *bundled third-party SDKs* (Sentry, Expo, Firebase, Play) doing their own
telemetry/fraud-detection root-checks - not the app's own logic. The report said
only "Root-detection: 1.00 -> DETECTED", which reads as "the app implements root
detection" when the evidence says otherwise.

The discriminator is deliberately conservative: a match is attributed as
third-party ONLY when its namespace is a *recognized SDK vendor* (see
KNOWN_VENDOR_PREFIXES). Everything else - the app's own package, or any
namespace we don't recognize as a vendor - is treated as the app's own code and
is never asserted to be an SDK. This avoids a false attribution for targets like
UnCrackable, whose root-detection code lives under `sg.vantagepoint` while its
manifest package is `owasp.mstg.uncrackable1` (package != source namespace is
common); those matches must not be called third-party.

Consequence of that conservatism, stated plainly (F4): under an R8-obfuscated
corpus the namespaces are opaque (e.g. `X/*`, `e3/*`), so they are never
recognized as vendors and default to `app_owned`. That is correct in the
conservative direction (we never *assert* an SDK we can't identify) but it means
an obfuscated bundled SDK can be presented as the app's own code. This
under-attribution is unfalsifiable for obfuscated corpora by design; it is the
price of never asserting a false third-party. Do not "solve" it by treating
opaque namespaces as third-party - that inverts the error and asserts SDKs we
cannot verify.

Boundary #5 (verified, cosmetic): dex-string evidence is attributed by its FILE
namespace even when the MATCHED STRING is itself a fully-qualified reference
into a recognized SDK - e.g. InsecureBankv2's
`com.google.android.gms.safetynet.SafetyNetApi` string lives in the app's own
class (so the file reads app-owned) but names Google's SafetyNet API. A strict
reader reads that as the SDK's API, not the app's own root-check code. `_string_vendor`
closes this: when a matched string is a dotted reference under a known vendor
(checked via `is_known_third_party` on the string itself, gated by
`_is_dotted_reference` so paths and bare tokens never fire), the evidence is
attributed to that vendor before the app-package guard. Same conservative bound
as the file side: only a recognized vendor's dotted class reference is ever
asserted third-party, and no detection impact - it only re-labels which owner
carries existing evidence.

Pure path/string logic - no AI, no inference beyond the file paths and the
vendor allowlist. Deterministic and unit-testable anywhere.
"""

import os

from common import (
    KNOWN_NATIVE_LIBS,
    derive_namespace,
    gate_all_third_party,
    is_known_third_party,
    is_under_package,
)


def vendor_namespace(ns: str) -> str:
    """Collapse a full namespace to its top two segments for a readable vendor
    label - 'io.sentry.android.core.internal.util' -> 'io.sentry'."""
    parts = ns.split(".")
    return ".".join(parts[:2])


def _is_native_lib(file: str) -> bool:
    """True when an evidence file points at a native library (.so path). Native
    evidence carries a .so path with no package namespace, so attribution must
    key off the library basename instead (see _native_vendor)."""
    return file.lower().endswith(".so")


def _is_dotted_reference(text: str) -> bool:
    """True when the text is a fully-qualified dotted Java package/class reference
    (e.g. 'com.google.android.gms.safetynet.SafetyNetApi'), not a bare identifier
    ('CertificatePinner'), a filesystem path ('/system/bin/su'), or a non-Java
    token. Requires: starts with a letter, >=1 dot, and every dot-separated
    segment is a valid Java identifier (alnum/_/$). This is the guard that keeps
    the boundary-5 string-vendor signal from ever firing on a path string or an
    ordinary bare token - it can only assert an SDK when the string literally
    names a vendor's dotted class."""
    if not text or not text[0].isalpha():
        return False
    if any(ch in text for ch in "/\\: "):
        return False
    segs = text.split(".")
    if len(segs) < 2:
        return False
    for s in segs:
        if not s or not (s[0].isalpha() or s[0] in "_$"):
            return False
        if not all(c.isalnum() or c in "_$" for c in s):
            return False
    return True


def _string_vendor(matched_text, app_package: str = "") -> str | None:
    """The vendor a fully-qualified MATCHED STRING references, or None.

    Boundary #5: dex-string evidence is attributed by its FILE namespace, but the
    matched string itself can be a fully-qualified class reference into a
    recognized SDK namespace - e.g. InsecureBankv2's
    'com.google.android.gms.safetynet.SafetyNetApi' string, which lives in the
    app's own class but names Google's SafetyNet API. A strict reader reads that
    as the SDK's API, not the app's own root-check code, so it should attribute to
    the SDK. Conservative (ADR-0006): only fires when the string is a recognized
    vendor's dotted class reference - a bare token ('CertificatePinner') or a
    path ('/system/bin/su') never is, so it never mislabels the app's own logic.
    Returns the collapsed vendor label ('com.google') or None."""
    if not matched_text:
        return None
    text = matched_text.strip()
    # Bug-B parity with the file-namespace side (step 2 in attribute_root_evidence):
    # a matched string that is a dotted reference into the app's OWN package
    # subtree names the app's own class, never a bundled SDK - even when the app
    # package shares a vendor prefix (e.g. com.google.mybankapp). Guard before the
    # vendor check so such a reference is never asserted third-party (ADR-0006). A
    # genuine SDK reference like 'com.google.android.gms...SafetyNetApi' is NOT
    # under the app package, so boundary #5 is preserved.
    if is_under_package(text, app_package):
        return None
    if not _is_dotted_reference(text):
        return None
    if not is_known_third_party(text):
        return None
    return vendor_namespace(text)


def _native_vendor(file: str) -> str | None:
    """The basename of a known bundled native SDK lib, or None. Returns the
    basename ('libsentry.so') when it is a recognized bundled native SDK, else
    None so the caller counts it app-owned (an unknown .so is conservatively the
    app's own native code - never asserted third-party)."""
    base = os.path.basename(file).lower()
    return base if base in KNOWN_NATIVE_LIBS else None


def attribute_root_evidence(app_package: str, evidence: list) -> dict | None:
    """Classify root-detection evidence as app-owned vs bundled third-party.
    Returns None when there's no root evidence (nothing to attribute). The
    result is a plain dict the report template can branch on:
      app_package, app_owned, third_party, vendors, all_third_party, mixed.
    `evidence` items only need a `.file` (or `["file"]` - dict, asdict
    produces for a stored classification_json).

    A match is third-party only when it is NOT under the app's own package
    subtree (Bug-B parity - an app whose package shares a vendor prefix keeps its
    own code app-owned) AND it is a recognized vendor: a Java/Smali namespace
    under a known vendor prefix, or a bundled native SDK library by basename
    (boundary-4). Everything else - the app's own package, an unknown namespace,
    an unknown native lib - counts as the app's own code, never asserted
    third-party (ADR-0006 conservatism)."""
    if not evidence:
        return None
    app_owned = 0
    third_party = 0
    vendors: set[str] = set()
    for e in evidence:
        file = (
            e.get("file") or e.get("file_path")
            if isinstance(e, dict)
            else getattr(e, "file", None) or getattr(e, "file_path", None)
        )
        matched = (
            e.get("matched_text")
            if isinstance(e, dict)
            else getattr(e, "matched_text", None)
        )
        if not file:
            app_owned += 1
            continue
        # 1. A bundled native SDK lib is third-party by basename (boundary-4).
        #    Checked BEFORE namespace derivation: native evidence carries a .so
        #    path (e.g. 'arm64-v8a/libsentry.so') with no package namespace to
        #    derive - running derive_namespace on it yields a garbage value (the
        #    abi dir 'arm64-v8a') that would be meaningless. Native libs are never
        #    under a package subtree, so this ordering loses no app-owned signal.
        if _is_native_lib(file):
            lib = _native_vendor(file)
            if lib:
                third_party += 1
                vendors.add(lib)
            else:
                app_owned += 1
            continue
        # 1b. Boundary #5: the MATCHED STRING names a recognized SDK's dotted
        #     class (e.g. the SafetyNet API reference 'com.google.android.gms.
        #     safetynet.SafetyNetApi' sitting inside the app's own class). The
        #     string IS the SDK being invoked, so it is checked BEFORE the
        #     app-package guard - an app that calls SafetyNet is attributed to
        #     Google even though the call site lives in its own package subtree.
        #     Conservative: only fires when the string is a fully-qualified
        #     reference into a known vendor (see _string_vendor), never on a bare
        #     token or a path, so the app's own code is never mislabeled.
        sv = _string_vendor(matched, app_package)
        if sv:
            third_party += 1
            vendors.add(sv)
            continue
        # 2. App's own package subtree is ALWAYS app-owned, even if it matches a
        #    vendor prefix (Bug B). Guarded next so an app whose package is
        #    com.google.mybankapp is never asserted a bundled SDK.
        ns = derive_namespace(file)
        if is_under_package(ns, app_package):
            app_owned += 1
            continue
        # 3. A recognized vendor namespace is third-party.
        if is_known_third_party(ns):
            third_party += 1
            if ns:
                vendors.add(vendor_namespace(ns))
        else:
            app_owned += 1
    return {
        "app_package": app_package,
        "app_owned": app_owned,
        "third_party": third_party,
        "vendors": sorted(vendors),
        "all_third_party": app_owned == 0 and third_party > 0,
        "mixed": app_owned > 0 and third_party > 0,
    }
