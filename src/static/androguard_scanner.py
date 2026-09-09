"""androguard DEX-level evidence source (Phase 1 hardening).

androguard is the FIRST static evidence source in the pipeline's coverage
cascade: it reads the APK's raw DEX constant pools and matches the app's own
strings against the SAME signature corpus the java/smali scan uses. The caller
(cli.py) merges only the newly-matched signatures into StaticEvidence with
per-signature dedup, so a signature both scans found counts ONCE and no
signature's weight is double-applied.

Why this earns its place alongside jadx/apktool instead of replacing them:
jadx/apktool decompile the SOURCE (method bodies, smali). androguard reads the
DEX constant pool directly, which SURVIVES when source decompilation
under-decompiles (large/obfuscated targets). A string_literal signature the
source decompilation dropped can still be recovered from the raw DEX.

Two deliberate design decisions (each was a discovered bug, now fixed here):

Bug A - do NOT route through scan() as a flat lexicon file. scan() derives the
third-party namespace from the FILE PATH (sources//smali/); a flat lexicon has
none, so derive_namespace returns None and scan() treats every line as
third-party -> the whole pool is silently excluded. So this module does its own
namespace-aware string matching and returns StaticEvidence directly.

Bug B - app-root-aware attribution. is_known_third_party() treats com.android.*
as a vendor prefix, but an app's OWN package can share that prefix (e.g. the
real InsecureBankv2 is com.android.insecurebankv2). A class is app-owned when it
sits under the APK's declared package (from the manifest) EVEN IF its prefix
matches a vendor; otherwise the normal vendor exclusion applies.

FP discipline (ADR-0006) is preserved: a string is matched only if at least one
class that references it is app-owned, so benign library strings ("test-keys" in
a vendor SDK) are not promoted to detection evidence. Additive-only - absence of
a signature is still NOT evidence of absence of the technique.

When that attribution is impossible (no app-owned namespace derivable, or the
androguard xref walk raises) the scan falls back to matching the whole constant
pool. That fallback is reported as `attribution_degraded`, never left implicit:
the matches it yields may include vendor strings AND the same broken view may
have missed app-owned ones, so cli.py bounds the java coverage surface to
`partial` for that run rather than letting a whole-pool result read as an
ordinary attributed scan (ADR-0006: an unreliable view cannot certify a clean).
"""

from __future__ import annotations

import hashlib
import logging
from pathlib import Path

from common import Evidence, atomic_json_write, is_known_third_party, is_under_package, load_json_cache, sha256_file


class BrokenSignatureError(RuntimeError):
    """Raised when a signature's matcher raised on EVERY DEX string it was
    evaluated against - a broken detection rule, not androguard being absent.

    This is deliberately a distinct type (not a bare Exception) so the caller can
    tell it apart from the ordinary "androguard unavailable / unreadable APK" case:
    that case is a tolerated enhancement-skip (a yellow note, the run continues on
    jadx evidence), but a systematically-raising signature is an engine defect that
    contributed no evidence and would otherwise read as a clean negative - the
    silent failure principle 3/NFR-1 forbids. The caller catches this type
    specifically and turns it into a loud, recorded halt (a failed StageResult),
    while still swallowing the unavailability case below it.
    """


def _class_namespace(class_name: str) -> str | None:
    """Package of an androguard class name like 'Lcom/foo/Bar;' -> 'com.foo'."""
    if not class_name or len(class_name) < 3 or class_name[0] != "L":
        return None
    parts = class_name[1:-1].split("/")
    if len(parts) < 2:
        return None
    return ".".join(parts[:-1])


def _xref_class_desc(xref_entry) -> str | None:
    """Class descriptor ('Lcom/foo/Bar;') for one get_xref_from() entry, or None.

    androguard 4.x's StringAnalysis.get_xref_from() yields (ClassAnalysis,
    MethodAnalysis) TUPLES, and ClassAnalysis exposes its descriptor as `.name`
    (it has no get_class_name()). Earlier code iterated the result as if each
    entry were itself a class object with .get_class_name(), so the walk raised
    AttributeError on the first real string and the caller silently fell back to
    the whole constant pool (attribution_degraded=True) on EVERY real APK - the
    unit fixtures encoded that wrong shape (a dict keyed by class objects), so
    the tests stayed green over a code path that never once ran on real data.
    We unpack the tuple and prefer `.name`, keeping get_class_name()/
    get_vm_class().get_name() as cross-version/fixture fallbacks. Any failure
    returns None (that one xref is simply unattributable) instead of raising, so
    a single odd entry can no longer collapse the whole scan to the degraded path.
    """
    cls = xref_entry[0] if isinstance(xref_entry, tuple) else xref_entry
    name = getattr(cls, "name", None)
    if isinstance(name, str) and name:
        return name
    for attr in ("get_class_name", "get_name"):
        fn = getattr(cls, attr, None)
        if callable(fn):
            try:
                v = fn()
                if isinstance(v, str) and v:
                    return v
            except Exception:
                pass
    try:
        return cls.get_vm_class().get_name()
    except Exception:
        return None


def _app_owned(ns: str, app_package: str | None) -> bool:
    """A class is app-owned when it sits under the APK's own package tree (even
    if that package shares a vendor prefix - Bug B), or is not a known vendor."""
    if is_under_package(ns, app_package):
        return True
    return not is_known_third_party(ns)


def _app_owned_strings(dex_objs, dx, app_package: str | None) -> tuple[set[str], bool]:
    """The set of DEX string values referenced by at least one app-owned class,
    plus `attribution_degraded`.

    Strings only reachable from vendor namespaces are dropped so precision is
    not weakened by library strings. `attribution_degraded` is True when that
    per-class attribution could NOT be applied and the whole constant pool was
    returned instead - either no app-owned namespace was derivable, or the xref
    walk raised. The caller must propagate it: a whole-pool result is a weaker
    claim than an attributed one (it may include vendor strings, and the same
    broken view may equally have missed app-owned ones), so it must not be
    reported as an ordinary, fully-attributed scan."""
    app_ns: set[str] = set()
    for dex in dex_objs:
        try:
            for cls in dex.get_classes():
                ns = _class_namespace(cls.get_name())
                if ns is not None and _app_owned(ns, app_package):
                    app_ns.add(ns)
        except Exception:
            continue

    # No app-owned namespace at all => every per-string attribution below takes
    # the whole-pool branch. Hoisted here because app_ns is loop-invariant.
    degraded = not app_ns
    app_strings: set[str] = set()
    try:
        for s_analysis in dx.find_strings():
            val = s_analysis.get_value()
            if val is None:
                continue
            if not app_ns:
                # Can't attribute - include the whole pool rather than silently
                # dropping the DEX surface; `degraded` tells the caller so the
                # coverage bound can reflect it.
                app_strings.add(val)
                continue
            keep = False
            for xref in (s_analysis.get_xref_from() or ()):
                cn = _xref_class_desc(xref)
                ns = _class_namespace(cn) if cn else None
                if ns is not None and ns in app_ns:
                    keep = True
                    break
            if keep:
                app_strings.add(val)
    except Exception:
        # xref walk failed - degrade to the whole pool rather than silently
        # dropping the DEX surface, and tell the caller attribution was lost.
        degraded = True
        for dex in dex_objs:
            try:
                for s in dex.get_strings():
                    app_strings.add(s)
            except Exception:
                continue
    return app_strings, degraded


# ---------------------------------------------------------------------------
# DEX-string extraction disk cache
#
# AnalyzeAPK() on a large APK is the dominant cost of the androguard pass
# (measured ~5-7 min on a 151 MB React-Native app like PropertyGuru that ships
# ~290k app-owned strings) and - until the native.analyze_so cache - was not
# cached on disk, so every run re-parsed the whole APK from scratch even when
# nothing changed. This cache persists ONLY the expensive, immutable APK-derived
# data (app_package + the extracted app-owned string set), keyed on the APK
# bytes' SHA-256. Matching against the signature corpus is recomputed on every
# call from the cached strings, so a signature-corpus or matcher change never
# serves a stale result - only the parse is avoided, never the semantics.
# Invalidation is explicit: bump _DEX_STRING_CACHE_VERSION when the string
# EXTRACTION logic changes (the same discipline as native.analyze_so and the
# jadx DEX cache). A stale/wrong-version entry is a miss, never a wrong answer.
# ---------------------------------------------------------------------------

_DEX_STRING_CACHE_VERSION = "dex-string-v3"  # v3: real per-string xref attribution now runs (v2 and earlier silently degraded to the whole pool on every real APK)


def _androguard_version() -> str:
    """The installed androguard version, or 'unknown' when it cannot be read.
    Folded into the cache key (`_effective_cache_version`) so upgrading androguard
    - which can change how the APK string pool is extracted - invalidates a cache
    written by the previous version instead of serving its now-stale strings. The
    manual `_DEX_STRING_CACHE_VERSION` bump only tracks changes to THIS module's
    logic; it cannot know androguard changed underneath it, which is exactly the
    stale-cache path this closes. Read from distribution metadata first (cheap, no
    heavy import) and fall back to the module attribute. A miss just re-parses (the
    safe direction), never a wrong answer."""
    try:
        from importlib.metadata import version
        return version("androguard")
    except Exception:
        pass
    try:
        import androguard
        return getattr(androguard, "__version__", None) or "unknown"
    except Exception:
        return "unknown"


def _effective_cache_version() -> str:
    """The full cache-version token: this module's schema version AND the
    androguard version that produced the payload. Load and save both route through
    here so the written and compared tokens cannot drift apart."""
    return f"{_DEX_STRING_CACHE_VERSION}+androguard-{_androguard_version()}"


def _load_string_cache(cache_dir: Path, apk_sha256: str) -> dict | None:
    data = load_json_cache(cache_dir, apk_sha256)
    if data is None or data.get("version") != _effective_cache_version():
        return None
    payload = data["payload"]
    payload["app_strings"] = set(payload["app_strings"])  # stored as a list, restored to a set
    return payload


def _save_string_cache(cache_dir: Path, apk_sha256: str, payload: dict) -> None:
    """Persist the string payload via the shared atomic write (a corrupt cache
    is a miss, never a wrong result)."""
    atomic_json_write(cache_dir, apk_sha256, {"version": _effective_cache_version(), "payload": payload})



def _extract_strings(apk_path: Path) -> tuple[str | None, set[str], bool]:
    """Run the expensive, immutable part of the androguard pass: parse the APK
    and pull out its app-owned string set, plus whether attribution degraded to
    whole-pool matching. This is the piece worth caching - it is a pure function
    of the APK bytes."""
    from androguard.misc import AnalyzeAPK

    _a, d, dx = AnalyzeAPK(str(apk_path))
    app_package = _a.get_package()
    dexs = d if isinstance(d, (list, tuple)) else [d]
    app_strings, degraded = _app_owned_strings(dexs, dx, app_package)
    return app_package, app_strings, degraded


def scan_dex_strings(apk_path: Path, signatures: list, cache_dir: Path | None = None) -> dict:
    """Match app-owned DEX strings against the given signatures and return
    {matched: {sig_id: matched_text}, evidence: [Evidence], app_package,
    string_count, attribution_degraded}. Raises on a genuinely unreadable APK
    (fail-loud). The caller decides whether that halts the run - it is an
    enhancement source, so a degraded note is the usual handling, not a pipeline
    halt.

    `attribution_degraded` True means app-owned attribution could not be applied
    and the WHOLE constant pool was matched instead, so these matches are a
    weaker claim than usual and the java coverage surface must be bounded
    accordingly (coverage.apply_attribution_degraded_java).

    With `cache_dir` set, the expensive AnalyzeAPK string extraction runs once
    per distinct APK bytes; a subsequent call with the same bytes returns the
    extracted string payload from disk and only the cheap matcher re-runs.
    With cache_dir None (the test default) behavior is unchanged - always a
    fresh parse."""
    logging.getLogger("androguard").setLevel(logging.CRITICAL)
    from static.signatures import _line_matches  # reuse the exact same matcher

    if cache_dir is not None:
        apk_sha = sha256_file(apk_path)
        cached = _load_string_cache(cache_dir, apk_sha)
        if cached is not None:
            app_package = cached.get("app_package")
            app_strings = cached["app_strings"]
            # Indexed, not .get()-defaulted: the cache version gates this key's
            # presence, so a v2 entry missing it is a corrupt entry and must fail
            # loudly rather than silently defaulting to "not degraded" - which
            # would restore exactly the over-confident clean this fix removes.
            attribution_degraded = cached["attribution_degraded"]
        else:
            app_package, app_strings, attribution_degraded = _extract_strings(apk_path)
            _save_string_cache(
                cache_dir,
                apk_sha,
                {
                    "app_package": app_package,
                    "app_strings": sorted(app_strings),
                    "attribution_degraded": attribution_degraded,
                },
            )
    else:
        app_package, app_strings, attribution_degraded = _extract_strings(apk_path)

    # Principle 3 / NFR-1: the primary text scan (signatures.scan) calls this same
    # _line_matches WITHOUT a try/except, so a matcher that raises there halts the
    # pipeline loudly. This DEX scan historically swallowed the identical exception
    # with `except: continue`, so a signature whose matcher raised on every DEX
    # string it was evaluated against would contribute no evidence and be
    # indistinguishable from a clean negative - the exact silent failure principle 3
    # forbids, and an asymmetry with the primary scanner. (Malformed regexes are
    # already rejected at load time - RESID-4B - so this is defense-in-depth for the
    # residual match-time path: an unhandled pattern_type or a future matcher bug,
    # exercised here on DEX-pool strings the source scan may never have seen.) Track
    # evaluations vs errors per signature so a systematically-broken one is surfaced
    # (raised below) instead of silently disappearing; a signature that matches, or
    # errors only on some strings, is unaffected - a single value that trips one
    # matcher is not a broken rule.
    matched: dict[str, str] = {}
    sig_evaluated: dict[str, int] = {}
    sig_errored: dict[str, int] = {}
    sig_last_error: dict[str, str] = {}
    # Iterate the strings in a STABLE order, not raw set order. `matched[sig.id]`
    # records the FIRST string a signature matched, and matched_text is consumed
    # downstream (report renders it; report/attribution._string_vendor attributes
    # a vendor FROM it). For a regex signature (matched_text = the input
    # substring, group(0)) or a multi-pattern one (different DEX strings hit
    # different patterns), that first-match value varies with iteration order -
    # and a set of str has no stable order across processes (PYTHONHASHSEED
    # randomizes str hashing), so the identical APK would render a different
    # matched_text/vendor run-to-run. The primary text scan (signatures.scan) is
    # deterministic because it walks splitlines() in file order; sorting here
    # restores that same reproducibility for the DEX surface. Detection is
    # unaffected (a signature matches iff ANY string matches, order-independent),
    # and the broken-signature accounting is order-independent too (a
    # never-matching sig is evaluated against every string regardless of order;
    # a matching sig never enters `broken`), so this changes only WHICH matching
    # string is cited, deterministically.
    for s in sorted(app_strings):
        for sig in signatures:
            if sig.id in matched:
                # Already matched - demonstrably works; stop re-evaluating it.
                continue
            sig_evaluated[sig.id] = sig_evaluated.get(sig.id, 0) + 1
            try:
                text = _line_matches(s, sig)
            except Exception as exc:
                sig_errored[sig.id] = sig_errored.get(sig.id, 0) + 1
                sig_last_error[sig.id] = f"{type(exc).__name__}: {exc}"
                continue
            if text:
                matched[sig.id] = text

    # A signature that errored on EVERY string it was evaluated against never had a
    # chance to match: it is broken, not absent. Only sigs that errored at least
    # once appear in sig_errored; of those, flag the ones whose error count equals
    # their evaluation count (a matched sig stopped early with errored < evaluated,
    # so it is never flagged). Raise the dedicated type - the caller turns it into a
    # halted stage, distinct from the tolerant "androguard unavailable" path.
    broken = [
        f"{sid} (raised on all {sig_evaluated[sid]} string(s) evaluated; "
        f"last error {sig_last_error[sid]})"
        for sid, n_err in sig_errored.items()
        if n_err == sig_evaluated.get(sid, 0)
    ]
    if broken:
        raise BrokenSignatureError(
            "DEX string matcher raised on every evaluation of signature(s): "
            + "; ".join(sorted(broken))
        )

    evidence = [
        Evidence(
            signature_id=sid,
            file=f"dex://{app_package or 'apk'}",
            line_or_offset="dex-string",
            matched_text=mt,
        )
        for sid, mt in matched.items()
    ]
    return {
        "matched": matched,
        "evidence": evidence,
        "app_package": app_package,
        "string_count": len(app_strings),
        "attribution_degraded": attribution_degraded,
    }
