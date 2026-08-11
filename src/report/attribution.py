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

Pure path/string logic - no AI, no inference beyond the file paths and the
vendor allowlist. Deterministic and unit-testable anywhere.
"""

import re

# Non-source roots in a decompiled tree that are never package namespaces.
_NON_NS_PREFIXES = ("sources/", "resources/")

# Top-level namespaces of bundled SDKs known to do their own telemetry /
# fraud-detection root checks. Only these are ever called third-party; a match
# under the app's own package, or under any unrecognized namespace, is not.
KNOWN_VENDOR_PREFIXES = (
    "io.sentry",          # Sentry (root checks + telemetry)
    "com.google",         # Play services, Firebase, GMS, ads
    "com.firebase",       # Firebase Analytics
    "com.crashlytics",    # Fabric/Firebase Crashlytics
    "expo",               # Expo / expo modules (DeviceModule)
    "com.appsflyer",      # AppsFlyer
    "com.facebook",       # Facebook SDK
    "com.bugsnag",        # BugSnag
    "io.invertase",       # React Native Firebase modules
    "io.branch",          # Branch
    "com.onesignal",      # OneSignal
    "com.microsoft",      # App Center
    "com.adjust",         # Adjust
    "com.mixpanel",       # Mixpanel
    "com.amplitude",      # Amplitude
    "com.datadog",        # Datadog (decompiled ns is com.datadog.android/.core;
                          # the com.datadoghq Maven group never appears in code)
    "org.acra",           # ACRA crash reporter
    "io.flutter",         # Flutter engine/plugins
    "com.flutter",        # Flutter plugins
    # Mobile APM / crash SDKs that ship their own root-detection checks. Without
    # these, a root match under an APM namespace was mislabeled the app's own
    # anti-tampering at machine confidence even though it is bundled SDK code.
    "com.newrelic",       # New Relic Android agent
    "com.appdynamics",    # AppDynamics
    "com.crittercism",    # Crittercism (AppDynamics)
    "androidx.work",      # AndroidX WorkManager (RootedDevice check)
    # Network / SSL-pinning SDKs (added 2026-08). okhttp3 is the dominant
    # Android HTTP client whose CertificatePinner performs most real SSL
    # pinning - an SSL match under okhttp3/okhttp4 (or Square's other libs) is
    # bundled-SDK pinning, not the app's own logic, and without these prefixes
    # it was being mislabeled app-owned at machine confidence. React Native's
    # network/blob libs likewise. All are always-bundled third-party libraries.
    "okhttp3",            # OkHttp top-level package
    "com.squareup",       # Square ecosystem: okhttp3/4, retrofit, moshi
    "com.reactnativecommunity",  # React Native community modules (incl. blobutil)
    "com.RNFetchBlob",    # ReactNativeBlobUtil (legacy package)
    "com.ReactNativeBlobUtil",   # ReactNativeBlobUtil
)


def derive_namespace(file: str) -> str | None:
    """Turn a decompiled file path into its dotted package namespace.

    'sources/io/sentry/android/core/internal/util/RootChecker.java'
      -> 'io.sentry.android.core.internal.util'
    'sources/sg/vantagepoint/a/c.java'
      -> 'sg.vantagepoint.a'
    Returns None when no package-like namespace can be derived (a path that
    isn't under a source root, or a bare filename).

    A segment is a class/resource *file* iff it contains a '.' (the extension);
    a dotless segment is a package directory. Package directories may legally
    contain uppercase letters - e.g. com.ReactNativeBlobUtil - so the old
    lowercase-initial guard was wrong: it truncated that namespace to "com" and
    made the com.ReactNativeBlobUtil vendor prefix unmatchable. Only the
    extension marks a file.
    """
    if not file:
        return None
    for pre in _NON_NS_PREFIXES:
        if file.startswith(pre):
            file = file[len(pre):]
            break
    segments: list[str] = []
    for seg in file.split("/"):
        if not seg or "." in seg:
            break
        segments.append(seg)
    return ".".join(segments) if segments else None


def vendor_namespace(ns: str) -> str:
    """Collapse a full namespace to its top two segments for a readable vendor
    label - 'io.sentry.android.core.internal.util' -> 'io.sentry'."""
    parts = ns.split(".")
    return ".".join(parts[:2])


def is_known_third_party(ns: str | None) -> bool:
    """True when the namespace is under a recognized bundled-SDK vendor. An
    unknown namespace is deliberately NOT third-party - it could be the app's
    own code under a different package, so we never assert it's an SDK."""
    if not ns:
        return False
    return any(ns == p or ns.startswith(p + ".") for p in KNOWN_VENDOR_PREFIXES)


def gate_all_third_party(attr: dict | None, detected: bool) -> dict | None:
    """Null the all_third_party qualifier when the category is not detected
    (ADR-0010): the flag annotates a DETECTED verdict, and a non-detected run
    must never carry it or a consumer would infer a detection that doesn't
    exist. The evidence counts (app_owned/third_party/vendors) are kept - they
    describe the evidence and are still true - only the all_third_party flag is
    gated. Returns the (possibly modified) dict unchanged when None."""
    if not attr:
        return attr
    return {**attr, "all_third_party": bool(attr.get("all_third_party")) and bool(detected)}


def attribute_root_evidence(app_package: str, evidence: list) -> dict | None:
    """Classify root-detection evidence as app-owned vs bundled third-party.
    Returns None when there's no root evidence (nothing to attribute). The
    result is a plain dict the report template can branch on:
      app_package, app_owned, third_party, vendors, all_third_party, mixed.
    `evidence` items only need a `.file` (or `["file"]` - dict, as asdict
    produces for a stored classification_json). A match is third-party only if
    its namespace is a recognized vendor; everything else counts as the app's
    own code."""
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
        ns = derive_namespace(file)
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
