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
    "com.zendesk",        # Zendesk
    "com.mapbox",         # Mapbox
    "org.telegram",       # Telegram
    "org.bouncycastle",   # Bouncy Castle crypto
    "io.grpc",            # gRPC
    "io.ktor",            # Ktor
    "io.socket",          # Socket.IO
    "retrofit2",          # Retrofit
    "com.github.bumptech.glide",  # Glide image loader
    "coil",                       # Coil image loader
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
    """
    if not file:
        return None
    segs = file.split("/")
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
    # (root -> {java,native}, ssl -> {java,native,manifest}) was NOT fully
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


class SuccessCheck(Protocol):
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        """Return which categories were confirmed bypassed, with the specific
        evidence line proving it - never a bare boolean."""
        ...
