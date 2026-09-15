"""Shared types used across every pipeline stage."""

from __future__ import annotations

from dataclasses import dataclass, field
from enum import Enum
from typing import Literal, Protocol
from pathlib import Path

import hashlib
import json
import shutil
import time
import yaml


def sha256_file(path: Path) -> str:
    """Streamed SHA-256 of a file - canonical identity for dedup / output naming."""
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(65536), b""):
            h.update(chunk)
    return h.hexdigest()


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def elapsed_ms(start: float) -> int:
    """Milliseconds since a `time.monotonic()` start timestamp - the shared
    `duration_ms` idiom for StageResult, so every stage computes it identically."""
    return int((time.monotonic() - start) * 1000)


def atomic_json_write(cache_dir: Path, key: str, document: dict) -> None:
    """Write `document` to <cache_dir>/<key>.json via tmp + atomic replace, so a
    crash mid-write can never leave a partial entry that later reads as valid
    (a corrupt cache is a miss, never a wrong result). Shared by the androguard
    and native .so disk caches so the atomic-write discipline stays identical."""
    cache_dir.mkdir(parents=True, exist_ok=True)
    tmp = cache_dir / f"{key}.json.tmp"
    tmp.write_text(json.dumps(document, sort_keys=True), encoding="utf-8")
    tmp.replace(cache_dir / f"{key}.json")


def load_json_cache(cache_dir: Path, key: str) -> dict | None:
    """Read <cache_dir>/<key>.json, returning the parsed dict or None on any miss
    or unreadable/corrupt entry - a cache miss is a miss, never a wrong answer.
    The caller validates its own version/trigger fields and constructs its
    payload from the dict. Shared by the androguard and native .so disk caches."""
    entry = cache_dir / f"{key}.json"
    if not entry.is_file():
        return None
    try:
        return json.loads(entry.read_text(encoding="utf-8"))
    except Exception:
        return None


def require_tool(name: str) -> str:
    """Resolve a required tool on PATH, failing loudly if absent (CLAUDE.md: the
    deterministic core must never silently no-op when a toolchain binary is
    missing). Shared by the ingest/decompile/native stages."""
    path = shutil.which(name)
    if path is None:
        raise RuntimeError(
            f"required tool '{name}' not found on PATH - this stage only runs on "
            "the reference WSL2 environment with the Android toolchain installed"
        )
    return path


def read_text_ignore(path: Path) -> str | None:
    """Read a text file, returning None on OSError (unreadable/missing) instead
    of raising - the shared 'skip unreadable candidate' idiom for scanning loops
    over decompiled files. A file that cannot be read is skipped, never silently
    treated as empty or fatal."""
    try:
        return path.read_text(encoding="utf-8", errors="ignore")
    except OSError:
        return None


def gate_all_third_party(attr: dict | None, detected: bool) -> dict | None:
    """Null the all_third_party qualifier when the category is not detected
    (ADR-0010): the flag annotates a DETECTED verdict, and a non-detected run
    must never carry it or a consumer would infer a detection that doesn't
    exist. The evidence counts (app_owned/third_party/vendors) are kept - they
    describe the evidence and are still true - only the all_third_party flag is
    gated. Shared by report attribution and storage persistence (storage stays
    ignorant of report/). Returns the dict unchanged when None/falsy."""
    if not attr:
        return attr
    return {**attr, "all_third_party": bool(attr.get("all_third_party")) and bool(detected)}


def is_under_package(ns: str | None, app_package: str) -> bool:
    """True when a namespace sits under an app's OWN package subtree.

    Shared by the androguard scanner and report attribution so both agree on the
    Bug-B rule: an app's own package can share a vendor prefix (a banking app can
    be com.google.mybankapp), so a class under the app's own package is the
    app's code even when its prefix matches a recognized vendor - never asserted
    third-party."""
    return bool(app_package and ns and (ns == app_package or ns.startswith(app_package + ".")))


CATEGORIES = ("root", "ssl")


def load_yaml_entries(path: Path, validate, ctor):
    """Load a hand-authored YAML list of signature entries, validating each and
    constructing the typed object. Shared by the Java, native, and packer
    signature loaders - they differ only in the validator fn and dataclass."""
    with open(path, "r", encoding="utf-8") as f:
        raw = yaml.safe_load(f) or []
    if not isinstance(raw, list):
        raise ValueError(
            f"{path}: expected a top-level YAML list of signature entries, "
            f"got {type(raw).__name__} - a malformed signature file must fail "
            "loudly, never be silently iterated character-by-character"
        )
    entries = []
    for entry in raw:
        validate(entry, path)
        entries.append(ctor(**entry))
    return entries




# --- Third-party namespace taxonomy (shared by static scan exclusion and report
# attribution so both agree on what counts as a bundled SDK). Only namespaces
# under these recognized vendors are ever treated as third-party; everything
# else is the app's own code (or unidentifiable). Being conservative matters:
# never assert an SDK we can't verify (see report/attribution.py).
KNOWN_VENDOR_PREFIXES = (
    "io.sentry",          # Sentry
    "com.google",         # Play services, GMS, Firebase, ads
    "com.firebase",       # Firebase Analytics
    "com.crashlytics",    # Crashlytics
    "expo",               # Expo
    "com.appsflyer",      # AppsFlyer
    "com.facebook",       # Facebook SDK
    "com.bugsnag",        # BugSnag
    "io.invertase",       # React Native Firebase
    "io.branch",          # Branch
    "com.onesignal",      # OneSignal
    "com.microsoft",      # App Center
    "com.adjust",         # Adjust
    "com.mixpanel",       # Mixpanel
    "com.amplitude",      # Amplitude
    "com.datadog",        # Datadog
    "org.acra",           # ACRA
    "io.flutter",         # Flutter
    "com.flutter",        # Flutter plugins
    "com.newrelic",       # New Relic
    "com.appdynamics",    # AppDynamics
    "com.crittercism",    # Crittercism
    "androidx.work",      # AndroidX WorkManager (RootedDevice check)
    "okhttp3",            # OkHttp
    "com.android.volley", # Volley HTTP client (Google) - a HurlStack /
                          # setSSLSocketFactory match inside Volley's own code is
                          # library plumbing, not the app configuring pinning
    "com.squareup",       # Square ecosystem
    "com.reactnativecommunity",  # React Native community modules
    "com.RNFetchBlob",    # ReactNativeBlobUtil (legacy)
    "com.ReactNativeBlobUtil",   # ReactNativeBlobUtil
    # --- broader SDK coverage (boundary-4). Safe to widen because report
    # attribution now treats the app's OWN package subtree as app-owned even
    # when it shares one of these prefixes (Bug-B parity - see attribution.py):
    # an app whose package is com.baidu.myapp keeps its own code app-owned.
    "com.tencent",        # WeChat SDK, Tencent Bugly
    "com.umeng",          # Umeng analytics
    "cn.jpush",           # JPush / JCore
    "com.alibaba",        # Alibaba mobile SDKs
    "com.baidu",          # Baidu SDKs (location/ads/security)
    "com.huawei",         # Huawei HMS
    "com.vivo",           # vivo push
    "com.xiaomi",         # Xiaomi push
    "com.oppo",           # Oppo push
    "com.stripe",         # Stripe
    "com.paypal",         # PayPal
    "com.braintreepayments",  # Braintree
    "com.intercom",       # Intercom
    "com.braze",          # Braze (customer engagement / messaging SDK)
    "com.appboy",         # Braze legacy package name (Appboy)
    "com.zendesk",        # Zendesk
    "com.mapbox",         # Mapbox
    "org.telegram",       # Telegram
    "org.bouncycastle",   # Bouncy Castle crypto
    "io.grpc",            # gRPC
    "io.ktor",            # Ktor
    "io.socket",          # Socket.IO
    "retrofit2",          # Retrofit
    "com.github.bumptech.glide",  # Glide image loader
    "com.bumptech.glide",         # Glide's ACTUAL package. The entry above is
                          # Glide's Maven groupId (com.github.bumptech:glide),
                          # not its package namespace, so it never matched a
                          # decompiled path - verified against the real Glide
                          # classes on disk (cfr/com/bumptech/glide/...). Kept
                          # both: the groupId form is harmless and removing it
                          # would silently change behavior for any app that does
                          # ship that package.
    "coil",                       # Coil image loader
    # --- platform/toolchain libraries every Android build bundles (VENDOR-BASE1).
    # These are shipped by Google and JetBrains, never the app's own code, and
    # they were the dominant residual source of vendor code being read as
    # app-owned: `androidx` alone contributed most of the Class.forName sites that
    # degraded the java surface to `partial` on essentially every app in the
    # corpus (holding the registered negative control out of Tier-2 calibration),
    # and only the single `androidx.work` leaf was excluded before. All verified
    # present as real decompiled package roots in this corpus. Bug-B parity still
    # protects the pathological app that declares one of these as its own package.
    "androidx",           # AndroidX / Jetpack (supersedes the androidx.work leaf)
    "android.support",    # legacy Android Support Library
    "kotlin",             # Kotlin stdlib
    "kotlinx",            # Kotlin coroutines / serialization
    "okio",               # Okio (OkHttp's I/O layer)
    # VENDOR-ARCH1. The same oversight as `androidx` above, one generation
    # earlier, and it was the SOLE remaining reason a clean app could not
    # certify a confident negative. `android.arch.*` is Android Architecture
    # Components - the pre-AndroidX namespace of the very same Google
    # lifecycle/room/paging libraries whose successor `androidx` is already
    # excluded here - so an app built against the support-library-era artifacts
    # ships `android/arch/lifecycle/Lifecycling.java`, which does
    # `Class.forName(str).getDeclaredConstructor(...)` to instantiate generated
    # lifecycle adapters. That is Google framework plumbing on a generated class
    # name, not the app loading a hidden payload, but with `android.arch` absent
    # from this tuple `find_dynamic_loading` read it as the APP's own dynamic
    # class loading and `apply_dynamic_loads` degraded the java surface to
    # `partial`. java governs BOTH categories, so every verdict became
    # coverage-limited and every NEITHER was excluded from Tier-2 calibration as
    # under-covered - which is the whole reason true_negative stayed 0 and
    # precision was a positive-only tautology. Verified on the AndroGoat run of
    # 2026-09-03: all THREE reported dynamic-load call sites were this one Google
    # file (once via jadx, twice via CFR at lines 96 and 104), obfuscation
    # `clear`, decompile `complete`, jadx exit 0 - nothing about the app itself.
    "android.arch",       # Android Architecture Components (pre-AndroidX)
    # Toolchain artifacts every Kotlin/D8 build emits, same class as `kotlin`:
    # JetBrains/IntelliJ annotation jars (@NotNull/@Nullable/@Language) and the
    # D8 desugared-JDK backport (`j$.util.stream`, `j$.time`). Present as real
    # decompiled package roots in 4, 4 and 3 unrelated APKs of this corpus
    # respectively; none is ever an app's own code.
    "org.jetbrains",      # JetBrains annotations (bundled by every Kotlin build)
    "org.intellij",       # IntelliJ annotations (ships with the same artifact)
    "j$",                 # D8/R8 desugared JDK backport
    # --- VENDOR-PLATFORM1: the core-library reserved namespaces. A survey of
    # every namespace in the corpus that held classes and was NOT recognized as a
    # vendor put `android.*` at the TOP by app count - android.app, android.view,
    # android.window, android.graphics, android.text, android.os, android.util,
    # android.media, android.location, android.telephony, android.print,
    # android.hardware.biometrics, android.view.translation across 4 unrelated
    # APKs - plus java.util.function and javax.annotation/javax.inject. These are
    # platform stubs and desugared/JSR shims the build bundles; `android.support`
    # and `android.arch` were already excluded but their PARENT never was, so the
    # rest of the platform tree read as the app's own code.
    #
    # This is the GAP-1/Paytm direction and the platform tree is its worst case:
    # android.security.net.config.* IS the framework's network-security-config
    # (pin sets, trust anchors) and android.net.http.X509TrustManagerExtensions /
    # android.webkit carry the platform's own TLS and WebView cert handling. A
    # bundled shim of any of those would have scored as the app's pinning.
    #
    # Safe to state `android`/`dalvik` as whole-tree prefixes: every subpackage
    # observed is platform code (app/view/window/graphics/text/os/util/media/
    # location/telephony/print/hardware.biometrics/view.translation) and the tree
    # exists to hold the framework, not app classes. `java`/`javax` are NOT taken
    # whole, deliberately: test_dynload's VENDOR-ARCH1 test encodes the rule that
    # `javax.net.ssl` must stay app-owned, because that is exactly where a
    # VENDORED custom TrustManager would be rendered, and skipping it would turn a
    # real app-owned pinning class into a confident false negative (ADR-0006's safe
    # direction). So only the shim leaves the survey actually observed are listed.
    # Measured cost of the whole group: ZERO - a corpus-wide re-scan found no
    # signature match under any of them, so this closes the false-positive
    # direction without dropping a single existing match.
    "android",            # Android platform stubs/shims (parent of support+arch)
    "dalvik",             # Dalvik/ART runtime classes
    "java.util.function", # desugared JDK functional interfaces (observed)
    "javax.inject",       # JSR-330 annotations (observed)
    "javax.annotation",   # JSR-305 annotations (observed)
    # --- VENDOR-OSS1: bundled open-source libraries found by the same survey,
    # each observed as a real decompiled package root in this corpus. Two of
    # these were measured to be dropping REAL matches that were being read as the
    # app's own logic:
    #   org.webrtc  - emulator_detection fired on `const-string v1, "goldfish"`
    #                 in org/webrtc/voiceengine/WebRtcAudioUtils.smali (a7b9f37f).
    #                 WebRTC probes for the emulator to work around its broken
    #                 audio path; that is a compatibility check, not the app's
    #                 anti-tampering. A measured false positive, now excluded.
    #   org.slf4j / io.noties - ktor_tls_pinning fired on the jadx `import
    #                 io.ktor.client.plugins...` line inside slf4j's Util.java
    #                 and markwon's RegistryImpl.java (7093fe4e/jerboa). The
    #                 weight is unaffected (that weak-tier ID also matches the
    #                 app's own networking), but the EVIDENCE pointed at two
    #                 logging/markdown libraries as if jerboa pinned there.
    # org.chromium/org.conscrypt/org.webrtc are listed for the same reason
    # androidx is: they are the ones that actually contain TLS and certificate
    # code (Cronet's addPublicKeyPins, Conscrypt's X509TrustManager, WebRTC's
    # DTLS), so leaving them app-owned is the highest-value FP left. The app's
    # own call INTO them still scores - only the library's implementation stops
    # counting as the app's.
    "org.slf4j",          # SLF4J logging facade
    "org.apache",         # Apache Commons / HttpClient shims
    "org.json",           # org.json reference implementation
    "com.fasterxml",      # Jackson
    "io.reactivex",       # RxJava 2/3 (NOT bare `rx`: R8 can emit a 2-char
                          # namespace, so excluding `rx` risks skipping app code)
    "org.jsoup",          # jsoup HTML parser
    "org.commonmark",     # commonmark-java
    "org.chromium",       # Chromium/Cronet/WebView boundary (TLS + pinning API)
    "org.conscrypt",      # Conscrypt - Google's TLS provider (X509TrustManager)
    "org.webrtc",         # WebRTC (DTLS, and the "goldfish" audio workaround)
    "net.sqlcipher",      # SQLCipher
    "dagger",             # Dagger/Hilt DI
    "freemarker",         # FreeMarker templates
    "ezvcard",            # ez-vcard
    "org.mp4parser",      # mp4parser
    "com.caverock",       # AndroidSVG
    "com.swmansion",      # React Native Reanimated / gesture-handler / screens
    "com.th3rdwave",      # react-native-safe-area-context
    "io.noties",          # Markwon markdown renderer
    "bolts",              # Facebook Bolts-Android
    "third_party",        # vendored third-party tree (Chromium convention)
    "arrow.core",         # Arrow functional library (Kotlin)
)
# Bundled NATIVE SDK libraries (boundary-4): a root/SSL check that matches
# inside one of these .so files is a bundled-SDK signal, not the app's own
# native code. Native evidence carries a .so path (no package namespace), so
# attribution matches by library basename - the pure-Python analog of a
# LibScout library fingerprint. Exact basenames (Android libs are unversioned);
# only SDKs that plausibly do security/telemetry work are listed - generic NDK
# runtime libs (libc++_shared.so, libz.so) are deliberately absent.
KNOWN_NATIVE_LIBS = frozenset({
    "libsentry.so",            # Sentry native
    "libhermes.so",            # React Native Hermes engine
    "libfbjni.so",             # Facebook JNI (RN infra)
    "libappmodules.so",        # React Native app modules
    "libreactnative.so",       # React Native
    "librealm-jni.so",         # Realm
    "libgmscore.so",           # Google Play Services core
    "libbugly.so",             # Tencent Bugly
    "libumeng.so",             # Umeng
    "libjcore.so",             # JPush core
    "libmsaoaidsec.so",        # Alibaba Security SDK
    "libmsodsec.so",           # Alibaba Security SDK (variant)
    "libbaiduprotect.so",      # Baidu app protection
    "libmobisesdk.so",         # Baidu Security
    "libflutter.so",           # Flutter engine
    "libmapbox.so",            # Mapbox
    "libsentry-core.so",       # Sentry
})
# Directory markers inside a decompiled tree that separate package directories
# from decompiler layout. Classic jadx: 'sources/<pkg>/...'. Modern jadx (>= 1.5,
# multidex split): 'classes-<hash>-<ver>/sources/<pkg>/...'. apktool: '<smali>/...'.
_NON_NS_SEGMENTS = ("sources", "resources", "smali")


def _path_segments(path: str) -> list[str]:
    """Split a path into segments on EITHER separator, so decompiler-layout
    markers are found regardless of platform (WINSEP1).

    Every path-splitting site in this project was written against POSIX paths
    because the reference environment is WSL2/Linux (ADR-0007). On Windows
    `str(Path(...))` emits backslashes, and a bare `split("/")` then yields the
    whole path as one segment - the marker is never found and the namespace
    silently becomes None. Both callers below depend on that marker, so a
    separator-blind split is a correctness bug, not a cosmetic one.

    A no-op for POSIX input (no backslashes to replace), so the reference
    platform is unaffected. Also strips a Windows drive prefix ("C:") so it
    cannot be mistaken for a package segment."""
    segs = path.replace("\\", "/").split("/")
    # A leading drive letter ("C:") is not a package segment.
    if segs and len(segs[0]) == 2 and segs[0][1] == ":":
        segs = segs[1:]
    return segs


def _is_ns_marker(seg: str) -> bool:
    """True for decompiler/apktool layout markers that are not package segments:
    'sources', 'resources', 'smali', and the multi-dex 'smali_classes2',
    'smali_classes3', ... output directories apktool produces. The smali_classesN
    names are generated output dirs, not Java packages, so they must not become
    namespace segments (a real Jerboa root match under smali_classes2/coil/util/
    would otherwise derive as 'smali_classes2.coil.util' and never match a vendor
    prefix, mis-attributing bundled-SDK code as app-owned)."""
    if seg in _NON_NS_SEGMENTS:
        return True
    return seg.startswith("smali_classes") and seg[len("smali_classes"):].isdigit()


def derive_namespace(file: str) -> str | None:
    """Turn a decompiled file path into its dotted package namespace.

    Handles BOTH jadx layouts: classic 'sources/<pkg>/...' and modern
    'classes-<hash>-<ver>/sources/<pkg>/...'. The package namespace starts after
    the sources/resources/smali marker; anything before it (the classes-* prefix,
    the marker itself, and apktool's smali_classes2..N output dirs) is decompiler
    layout, not package. A segment is a class/resource *file* iff it contains a
    '.' (the extension); a dotless segment is a package directory. Returns None
    when no namespace can be derived.

    'classes-7c8ed94a0b1d-1.5.6/sources/com/google/android/gms/common/net/zza.java'
      -> 'com.google.android.gms.common.net'
    'sources/sg/vantagepoint/a/c.java' -> 'sg.vantagepoint.a'
    'smali_classes2/coil/util/-SvgUtils.smali' -> 'coil.util'

    WINSEP1 (2026-09-12): separators are normalized to '/' BEFORE splitting. On
    Windows `str(Path(...))` yields backslashes, so the old bare `split("/")`
    returned the whole path as ONE segment, found no `sources`/`classes-*` marker,
    and returned None. `is_known_third_party(None)` is False, so EVERY bundled-SDK
    file silently read as app-owned and was scanned as the app's own evidence -
    the exact false-positive direction DYNLOAD-VENDOR1 / WEBVIEW-VENDOR1 exist to
    prevent, and the reason the README's "Python-only pieces work anywhere" claim
    failed on Windows. On POSIX paths this is a no-op (no backslashes present), so
    the reference-platform behaviour is byte-for-byte unchanged."""
    if not file:
        return None
    segs = _path_segments(file)
    start = 0
    for i, seg in enumerate(segs):
        if _is_ns_marker(seg):
            start = i + 1
            break
    ns_segs = []
    for seg in segs[start:]:
        if not seg or "." in seg:
            break
        ns_segs.append(seg)
    return ".".join(ns_segs) if ns_segs else None


def is_known_third_party(ns: str | None) -> bool:
    """True when the namespace is under a recognized bundled-SDK vendor. An
    unknown namespace is deliberately NOT third-party - it could be the app's
    own code under a different package, so we never assert it's an SDK."""
    if not ns:
        return False
    return any(ns == p or ns.startswith(p + ".") for p in KNOWN_VENDOR_PREFIXES)


def is_third_party_file(ns: str | None, app_package: str | None) -> bool:
    """True when a decompiled file's namespace is a bundled SDK to be excluded
    from the app's own detection evidence.

    This is the single Bug-B-correct definition, shared by the primary source
    scan (signatures.scan) and the DEX scan (androguard_scanner) so they cannot
    drift: a namespace is third-party ONLY when it is a recognized vendor AND it
    does NOT sit under the app's own declared package. An app whose own package
    shares a vendor prefix (Cash App is com.squareup.cash; a Google first-party
    app is com.google.android.apps.*) keeps its own code app-owned - excluding it
    would drop the app's own root/SSL logic from the primary scan and let a
    confident NEITHER be certified over unscanned app code (ADR-0006/ADR-0001).

    app_package None/empty reduces this to the plain vendor check
    (is_under_package returns False), so a caller without a known package keeps
    the historical behavior exactly - the safe direction (more app code scanned,
    never less)."""
    return is_known_third_party(ns) and not is_under_package(ns, app_package)


def namespace_of_decompiled_path(path: str) -> str | None:
    """Package namespace for a decompiled-source PATH, tolerant of the CFR layout.

    jadx writes `.../sources/<pkg>/...`, so `derive_namespace` can anchor on the
    `sources` marker even in an absolute path. CFR writes
    `<analysis>/<sha256>/cfr/<pkg>/...` - no marker at all - so an absolute CFR
    path would derive as `outputs.analysis.<sha>.cfr.okhttp3.internal` and match
    no vendor prefix, meaning every CFR-recovered bundled-SDK file reads as
    app-owned (CFR-NS1). Anchor on the decompiler's own output dir first: the
    `cfr` segment is treated as the anchor ONLY when the segment before it is the
    64-hex APK hash, so a genuine package segment named `cfr` is never mistaken
    for the output dir. Single source of truth for the java coverage-limited
    scans that walk the jadx+CFR corpus (dynload, webview) so they cannot drift.

    WINSEP1 (2026-09-12): segments are split on either separator (_path_segments)
    so the `cfr`/<hash> anchor is found on Windows too; the remainder is
    re-joined with '/' because derive_namespace now splits on either separator
    anyway. POSIX behaviour is unchanged."""
    parts = _path_segments(path)
    for i, seg in enumerate(parts):
        if (
            seg == "cfr"
            and i > 0
            and len(parts[i - 1]) == 64
            and all(ch in "0123456789abcdef" for ch in parts[i - 1])
        ):
            return derive_namespace("/".join(parts[i + 1:]))
    return derive_namespace(path)


def is_third_party_decompiled_file(path: str, app_package: str | None) -> bool:
    """Bug-B-correct third-party test for a decompiled-source PATH (jadx or CFR).

    The path-level companion to `is_third_party_file` (which takes a namespace):
    it resolves the path to its namespace via `namespace_of_decompiled_path`
    (CFR-aware) first, so the java coverage-limited scans that walk the jadx+CFR
    corpus - `dynload.find_dynamic_loading` and `webview.find_webview_js` - share
    ONE definition of 'this file is bundled-SDK code to skip' and cannot drift.
    `app_package` None/empty reduces to the plain vendor check (safe direction:
    only recognized vendors are ever excluded, the app's own code never is)."""
    return is_third_party_file(namespace_of_decompiled_path(path), app_package)


@dataclass
class StageResult:
    stage: str
    status: Literal["success", "failed", "skipped"]
    evidence: dict
    error: str | None = None
    duration_ms: int = 0


@dataclass
class Evidence:
    signature_id: str
    file: str
    line_or_offset: int | str
    matched_text: str
    # G11: forensic provenance of the match - what KIND of artifact it came from
    # (bytecode_string, bytecode_class, resource_xml, source, native_symbol),
    # a different axis from the signature's pattern_type (the matching mechanism:
    # regex/string_literal/export_symbol/...). Stamped from the driving signature's
    # evidence_type so a report reader can see HOW each finding was detected, not
    # only that it was. The default keeps every Evidence constructed without it
    # (older callers, fixtures, stored rows) valid and unchanged.
    evidence_type: str = "unspecified"
    # principle 2 / ADR-0001: every finding carries its verification tier.
    # All evidence this engine produces is deterministic_matched by
    # construction - it comes from signature matching, never from an AI/LLM
    # hypothesis. Dynamic confirmation lives on VerificationResult, not on
    # Evidence; nothing here may ever be labeled dynamically_confirmed (that
    # tier belongs to the dynamic stage's own output). AI-hypothesized tiers
    # are Phase 5+ and will add to this field's values, not new fields.
    verification_state: str = "deterministic_matched"


@dataclass
class StaticEvidence:
    root_confidence: float = 0.0
    ssl_confidence: float = 0.0
    root_evidence: list[Evidence] = field(default_factory=list)
    ssl_evidence: list[Evidence] = field(default_factory=list)
    # RESID-4C: how many files scan() actually walked. A partial decompile that
    # yields few files returns a NEITHER indistinguishable from a full scan that
    # genuinely found nothing - carrying the count lets reporting/calibration
    # discount a degenerate negative instead of certifying absence from a tiny
    # corpus.
    scanned_file_count: int = 0
    # How many candidate files scan() could NOT read (OSError). counted
    # separately from scanned_file_count so a scan that skipped files is not
    # presented as a full scan - an unreadable corpus is a degradation, and a
    # NEITHER built over it must not read as a confident negative.
    unreadable_file_count: int = 0
    # Finding J: the count alone is honest but not actionable - a reviewer can
    # see that N files failed to read but not which file to inspect or reproduce.
    # Carry the offending paths (relative to the decompiled root, matching
    # Evidence.file) so the report/console name them. Empty when every file read.
    unreadable_files: list[str] = field(default_factory=list)
    # Boundary-1: which detection categories have detection-shaped code present
    # in the scanned (app-owned) Java but matched NO signature. A category here
    # must not certify a confident negative - the technique is unknown, not
    # absent (ADR-0006). Populated by scan() from indicators.find_indicator_categories
    # intersected with matched categories; empty when every indicator belongs to
    # a recognized (matched) technique or there is no detection-shaped code.
    unattributed_indicators: dict[str, bool] = field(default_factory=dict)
    # RESID-4F observability: total matches per signature that exceeded the
    # 50-row-per-signature display cap, keyed by signature_id -> total matches.
    # The cap keeps the report readable (thousands of near-identical rows add
    # no signal), but dropping the surplus silently would hide how many matches
    # a signature actually produced - this makes the truncation honest so the
    # report can say "matched 300x, showing first 50" instead of implying 50 is
    # the whole story. Detection/confidence are unaffected (weight is added once
    # per matched signature regardless, via matched_signatures).
    capped_counts: dict[str, int] = field(default_factory=dict)


class Action(str, Enum):
    ROOT_ONLY = "ROOT_ONLY"
    SSL_ONLY = "SSL_ONLY"
    BOTH = "BOTH"
    NEITHER = "NEITHER"


@dataclass
class CategoryVerdict:
    confidence: float
    detected: bool
    evidence: list[Evidence]
    # L-M4/L-M3: True when at least one of this category's governing surfaces
    # (root -> {java,native,js}, ssl -> {java,native,manifest,js}) was NOT fully
    # analyzed. The confidence is then an upper bound, not a point estimate, and
    # a `detected=False` here is "unknown, not absent" - never a confident
    # negative. Set by coverage.apply_coverage_bound, which also records the
    # category in ClassificationResult.unknown_uncovered.
    coverage_limited: bool = False


@dataclass
class ClassificationResult:
    action: Action
    root: CategoryVerdict
    ssl: CategoryVerdict
    root_threshold: float = 0.7
    ssl_threshold: float = 0.7
    # RESID-4C: carried through from StaticEvidence so the report can show how
    # many files a verdict was based on (see scan()).
    scanned_file_count: int = 0
    # RESID-4G: candidate files that could not be read (OSError), carried so
    # the report can flag a verdict built over a degraded corpus.
    unreadable_file_count: int = 0
    # Finding J: the paths of the files that failed to read (relative to the
    # decompiled root), carried alongside the count so the report and console
    # can name the offending file(s) instead of hiding them behind a number.
    unreadable_files: list[str] = field(default_factory=list)
    # Machine-readable ownership caveat. Attribution used to reach only the
    # human Markdown report (and root-only), so an automated consumer of the
    # stored classification_json read a bundled-SDK-only ROOT_ONLY as the
    # app's own anti-tampering. The pipeline attaches the attribution dict
    # here (report/attribution.attribute_root_evidence) after classify(); it
    # persists to classification_json via asdict and the report reads it, so
    # the machine output and the report agree. all_third_party=True means every
    # root match is in a recognized bundled SDK - NOT the app's own logic.
    # None when there is no root evidence or attribution was not computed.
    # Both share the same vendor taxonomy (report/attribution.py) - SSL was
    # wired when okhttp3/com.squareup/the React Native network SDKs were added.
    root_attribution: dict | None = None
    ssl_attribution: dict | None = None
    # RESID-4F observability: carried from StaticEvidence so the report can
    # state which signatures hit the per-signature evidence cap and how many
    # matches were truncated (see StaticEvidence.capped_counts). Empty when no
    # signature exceeded the cap.
    evidence_capped_counts: dict[str, int] = field(default_factory=dict)
    # L-M3 (NFR-7 "unknown, never guess"): the detection categories whose
    # governing coverage surface was NOT fully analyzed - root and/or ssl - so
    # an automated consumer of classification_json can distinguish "scanned and
    # clean" from "not fully analyzed" instead of reading a coverage-bound
    # NEITHER as a confident negative. Populated by coverage.apply_coverage_bound
    # from the per-surface coverage map. Empty means every governing surface of
    # every detected category was fully_analyzed (a true confident negative is
    # possible).
    unknown_uncovered: list[str] = field(default_factory=list)
    # UNCOV-CAUSE1: WHY each entry of unknown_uncovered is there. Two structurally
    # independent mechanisms write that list and the remediation for them is
    # opposite, but the list itself records only the category, so neither the
    # stored classification_json nor the report could say which fired:
    #   "incomplete_coverage"     coverage.apply_coverage_bound - a governing
    #                             SURFACE was not fully analyzed (packed dex,
    #                             heavy obfuscation, an unanalyzable .so, an
    #                             unaccounted System.load, remote JS). Fix =
    #                             analyze more of the app.
    #   "unattributed_indicator"  coverage.apply_unattributed_indicators -
    #                             coverage was fine and detection-shaped CODE was
    #                             read, but it matched no signature (ADR-0001's
    #                             signature-bounded hole). Fix = author a
    #                             signature, not more decompilation.
    # A category can carry BOTH. Maps category -> the causes that applied, in the
    # order the pipeline applied them (coverage bound first, then indicators).
    # Empty dict for a fully-covered clean scan, and for any row recorded before
    # this field existed - so absence never fabricates a cause.
    unknown_uncovered_causes: dict[str, list[str]] = field(default_factory=dict)


@dataclass
class VerificationResult:
    root_bypassed: bool | None
    ssl_bypassed: bool | None
    evidence_lines: dict[str, str]


@dataclass
class CorrelationResult:
    matches: bool
    mismatches: list[str]
    # RESID-6F completion: static predicted a category but dynamic was NOT able
    # to test it (inconclusive - the app never exercised the check), distinct
    # from a true MISMATCH (a conflict: dynamic disproved static, or dynamic
    # found something static missed). An unverified prediction is not agreement
    # (matches stays False, never fabricated) and not a conflict - so it gets
    # its own label instead of reading as a MISMATCH that never happened.
    unverified: list[str] = field(default_factory=list)
    # CORR-COVLIM1 (ADR-0006 tier fidelity): dynamic confirmed a bypass in a
    # category whose STATIC verdict was coverage-limited (detected=False but
    # coverage_limited=True - "unknown, not absent", never a confident negative).
    # This is NOT a MISMATCH: static did not predict absence, it declined to
    # certify one over a surface it could not fully analyze (a packed/Dart/native
    # region), and dynamic then filled that gap in. Folding it into `mismatches`
    # would blend a confirmed coverage gap (working as designed) with a real
    # static miss (a confident negative that was wrong) - exactly the tier-blend
    # ADR-0006 forbids. It keeps matches=False (static never predicted the
    # positive, so it is not agreement) but stays out of the mismatch tally.
    coverage_confirmed: list[str] = field(default_factory=list)


class SuccessCheck(Protocol):
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        """Return which categories were confirmed bypassed, with the specific
        evidence line proving it - never a bare boolean."""
        ...


# The exact "TLS handshakes completed post-bypass" evidence-line value the SSL
# success-check emits when the Frida SSL observer saw NO completed handshake at all
# (success_checks/technology.py). The report's _handshake_capture_note
# (report/generator.py) reconciles THIS specific state against decrypted capture
# flows; if the two modules ever hold different spellings of the sentence, that
# reconciliation silently stops firing and the report contradicts itself ("no TLS
# handshake" printed beside decrypted flows) - the honesty gap the note exists to
# close. One constant referenced by both emitter and consumer makes that drift
# impossible, the same de-drift discipline as describe_frida_script_errors below.
TLS_HANDSHAKE_NONE_OBSERVED = "none observed (no TLS handshake reached during the run)"

# Checkpoint token emitted by the synthesized bypass (synthesizer._environment_normalization
# via _join_script) when the emulator/tamper build-prop scrub is deployed on the
# universal/forced fallback path, and matched by the report hooks-audit
# (generator._hooks_engaged) to explain that an anti-analysis ENVIRONMENT gate - not a
# root/SSL bypass - was neutralized so the app could advance past its splash. Shared so
# the emitter and the report can never drift: a rename on one side only would silently
# blank the report line, the Jinja-Undefined trap ADR-0006 honesty discipline warns about.
ENV_NORMALIZATION_CHECKPOINT = "env:emulator-scrub"


def describe_frida_script_errors(frida_messages: list) -> list[str]:
    """Human-readable descriptions of uncaught Frida ``{'type': 'error'}`` messages.

    A bypass/instrumentation script that throws at runtime emits a
    ``{type:"error", description, fileName, lineNumber}`` envelope rather than a
    ``{type:"send", payload:...}`` one. Such a message carries NO ``payload``, so
    every payload-oriented consumer (checkpoint waiter, success checks, effect
    counters) skips it - and a crashed run would otherwise render as a clean,
    un-exercised negative (the misleading "engagement showed none" / "app was
    silent" outcome). This is the single source of truth for turning those
    envelopes into report prose, shared by the traffic-capture stage
    (``mitmproxy_capture``) and the report hooks-audit (``generator._hooks_engaged``)
    so the two can never drift on this honesty-critical wording (ADR-0006, principle
    3).

    Each returned string is ``"<description> (<file>:<line>)"`` when a source
    location is present, ``"<description> (line <line>)"`` when only the line is,
    else the bare description. The ``"unspecified..."`` fallback is applied AFTER
    trimming, so a missing OR whitespace-only description still names a cause and a
    delivered error is never rendered as an empty string. Non-dict elements and
    non-error messages are ignored, never raised on."""
    errors: list[str] = []
    for m in frida_messages or []:
        if not (isinstance(m, dict) and m.get("type") == "error"):
            continue
        desc = str(m.get("description") or "").strip() or "unspecified Frida script error"
        fname, lineno = m.get("fileName"), m.get("lineNumber")
        if fname and lineno is not None:
            desc = f"{desc} ({fname}:{lineno})"
        elif lineno is not None:
            desc = f"{desc} (line {lineno})"
        errors.append(desc)
    return errors
