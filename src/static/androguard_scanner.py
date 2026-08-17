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
"""

from __future__ import annotations

import logging
from pathlib import Path

from common import Evidence, is_known_third_party


def _class_namespace(class_name: str) -> str | None:
    """Package of an androguard class name like 'Lcom/foo/Bar;' -> 'com.foo'."""
    if not class_name or len(class_name) < 3 or class_name[0] != "L":
        return None
    parts = class_name[1:-1].split("/")
    if len(parts) < 2:
        return None
    return ".".join(parts[:-1])


def _app_owned(ns: str, app_package: str | None) -> bool:
    """A class is app-owned when it sits under the APK's own package tree (even
    if that package shares a vendor prefix - Bug B), or is not a known vendor."""
    if app_package and (ns == app_package or ns.startswith(app_package + ".")):
        return True
    return not is_known_third_party(ns)


def _app_owned_strings(dex_objs, dx, app_package: str | None) -> set[str]:
    """The set of DEX string values referenced by at least one app-owned class.
    Strings only reachable from vendor namespaces are dropped so precision is
    not weakened by library strings."""
    app_ns: set[str] = set()
    for dex in dex_objs:
        try:
            for cls in dex.get_classes():
                ns = _class_namespace(cls.get_name())
                if ns is not None and _app_owned(ns, app_package):
                    app_ns.add(ns)
        except Exception:
            continue

    app_strings: set[str] = set()
    try:
        for s_analysis in dx.find_strings():
            val = s_analysis.get_value()
            if val is None:
                continue
            if not app_ns:
                # Can't attribute - include the whole pool rather than silently
                # dropping the DEX surface (the caller still reports counts).
                app_strings.add(val)
                continue
            keep = False
            for m in (s_analysis.get_xref_from() or {}):
                ns = _class_namespace(m.get_class_name())
                if ns is not None and ns in app_ns:
                    keep = True
                    break
            if keep:
                app_strings.add(val)
    except Exception:
        # xref walk failed - degrade to the whole pool rather than silently
        # dropping the DEX surface, and let the caller see the counts.
        for dex in dex_objs:
            try:
                for s in dex.get_strings():
                    app_strings.add(s)
            except Exception:
                continue
    return app_strings


def scan_dex_strings(apk_path: Path, signatures: list) -> dict:
    """Match app-owned DEX strings against the given signatures and return
    {matched: {sig_id: matched_text}, evidence: [Evidence], app_package,
    string_count}. Raises on a genuinely unreadable APK (fail-loud). The caller
    decides whether that halts the run - it is an enhancement source, so a
    degraded note is the usual handling, not a pipeline halt."""
    logging.getLogger("androguard").setLevel(logging.CRITICAL)
    from androguard.misc import AnalyzeAPK
    from static.signatures import _line_matches  # reuse the exact same matcher

    _a, d, dx = AnalyzeAPK(str(apk_path))
    app_package = _a.get_package()
    dexs = d if isinstance(d, (list, tuple)) else [d]

    app_strings = _app_owned_strings(dexs, dx, app_package)

    matched: dict[str, str] = {}
    for s in app_strings:
        for sig in signatures:
            if sig.id in matched:
                continue
            try:
                text = _line_matches(s, sig)
            except Exception:
                continue
            if text:
                matched[sig.id] = text

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
    }
