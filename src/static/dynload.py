"""Coverage-limited signal: dynamic code loading (Gap from real-world research).

An app that loads code at runtime via `DexClassLoader` / `PathClassLoader` /
`BaseDexClassLoader` / `InMemoryDexClassLoader` / `Class.forName` / `DexFile` /
`loadDex` / `openDexFile` hides a payload DEX that is released and loaded only at
runtime - code the static scan cannot see. This is the core primitive of packers
and dropper malware (Joker, Anatsa, SharkBot, Necro). We cannot unpack it here;
the honest treatment (ADR-0006) is to *detect the loading call* and mark the code
it hides as **coverage-limited**: the java surface degrades to `partial`, so a
java NEITHER is never a confident negative over a dynamically-hidden payload.

Pure module - operates on decompiled .java corpus, unit-testable anywhere (no
Android toolchain). Mirrors `find_external_native_loads` in `static/native.py`
for the boundary-4 unaccounted-loads signal, but for the java surface.
"""

from __future__ import annotations
from common import derive_namespace, is_third_party_file, read_text_ignore

import re
from pathlib import Path

# Loading-API idioms as they survive decompilation. `(?<![\w$.])` guards against
# matching a suffix like `fooDexClassLoader` / `obj.new`. We intentionally err
# toward recall: a false "loading present" just degrades java to partial (honest,
# ADR-0006), whereas a missed loading call silently over-claims a confident
# negative over code we never saw.
_DYNLOAD_LOADER = re.compile(
    r"(?<![\w$.])"
    r"(?:new\s+)?"
    r"(?:dalvik\.system\.)?"
    r"(?:DexClassLoader|PathClassLoader|BaseDexClassLoader|InMemoryDexClassLoader)"
    r"\s*\("
)
_DYNLOAD_OTHER = re.compile(
    r"(?<![\w$.])"
    r"(?:"
    r"Class\.forName|"
    r"(?:dalvik\.system\.)?DexFile|"
    r"(?:DexFile\.)?loadDex|"
    r"openDexFile"
    r")"
    r"\s*\("
)


def _namespace_of(path: str) -> str | None:
    """Package namespace for a decompiled source path, tolerant of the CFR layout.

    DYNLOAD-VENDOR1/CFR-NS1: jadx writes `.../sources/<pkg>/...`, so
    `derive_namespace` can anchor on the `sources` marker even in an absolute
    path. CFR writes `<analysis>/<sha256>/cfr/<pkg>/...` - no marker at all - so
    an absolute CFR path derived as `outputs.analysis.<sha>.cfr.okhttp3.internal`
    and matched no vendor prefix, meaning every CFR-recovered bundled-SDK file
    read as app-owned. Anchor on the decompiler's own output dir first. The `cfr`
    segment is only treated as the anchor when the segment before it is the
    64-hex APK hash, so a genuine package segment named `cfr` is never mistaken
    for the output dir.
    """
    parts = path.split("/")
    for i, seg in enumerate(parts):
        if (
            seg == "cfr"
            and i > 0
            and len(parts[i - 1]) == 64
            and all(ch in "0123456789abcdef" for ch in parts[i - 1])
        ):
            return derive_namespace("/".join(parts[i + 1:]))
    return derive_namespace(path)


def find_dynamic_loading(java_files, app_package: str | None = None) -> list[str]:
    """Scan the decompiled .java corpus for dynamic-code-loading call sites.

    Args:
        java_files: iterable of paths to decompiled .java sources (the same corpus
            threaded into `find_external_native_loads`).
        app_package: the analyzed app's own declared package, used for the shared
            Bug-B-correct third-party test below. None reduces that test to the
            plain vendor check.

    Returns:
        A list of human-readable call-site strings `"{path}:{line}: {snippet}"`
        for every line that invokes a runtime class loader. Empty means no
        dynamic loading is statically visible.

    DYNLOAD-VENDOR1: bundled-SDK code is excluded, via the same
    `common.is_third_party_file` the source scan and the DEX scan use, so the
    three cannot drift (Bug-B parity - an app whose own package shares a vendor
    prefix keeps its own subtree app-owned). Erring toward recall is the right
    call for the APP's own code, but a `Class.forName` inside a vendor library is
    not the app releasing a hidden payload - Retrofit reflecting on
    `android.os.Build` and OkHttp reflecting on Jetty's ALPN classes are library
    plumbing on constant, platform-resident class names. Counting them degraded
    the java surface to `partial` for essentially every app that bundles OkHttp or
    Retrofit, which made a confident java negative unreachable across the corpus
    and permanently held the only registered root/SSL negative control out of
    Tier-2 calibration.
    """
    hits: list[str] = []
    for f in java_files:
        path = Path(f)
        if is_third_party_file(_namespace_of(str(path)), app_package):
            continue
        text = read_text_ignore(path)
        if text is None:
            # Unreadable source (perm/race) - skip rather than abort. Same idiom
            # as find_external_native_loads.
            continue
        for lineno, line in enumerate(text.splitlines(), 1):
            if _DYNLOAD_LOADER.search(line) or _DYNLOAD_OTHER.search(line):
                hits.append(f"{path}:{lineno}: {line.strip()[:90]}")
    return hits
