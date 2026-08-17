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


def find_dynamic_loading(java_files) -> list[str]:
    """Scan the decompiled .java corpus for dynamic-code-loading call sites.

    Args:
        java_files: iterable of paths to decompiled .java sources (the same corpus
            threaded into `find_external_native_loads`).

    Returns:
        A list of human-readable call-site strings `"{path}:{line}: {snippet}"`
        for every line that invokes a runtime class loader. Empty means no
        dynamic loading is statically visible.
    """
    hits: list[str] = []
    for f in java_files:
        path = Path(f)
        try:
            text = path.read_text(encoding="utf-8", errors="ignore")
        except OSError:
            # Unreadable source (perm/race) - skip rather than abort. Same idiom
            # as find_external_native_loads.
            continue
        for lineno, line in enumerate(text.splitlines(), 1):
            if _DYNLOAD_LOADER.search(line) or _DYNLOAD_OTHER.search(line):
                hits.append(f"{path}:{lineno}: {line.strip()[:90]}")
    return hits
