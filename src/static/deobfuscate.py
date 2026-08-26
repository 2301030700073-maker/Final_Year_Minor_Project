"""ProGuard / R8 mapping.txt deobfuscation (L-M3, the `chimera` pattern).

Obfuscation renames app classes/methods/fields (com.example.MainActivity ->
com.example.a), so original-name signatures can silently miss renamed code. When
the app bundles its R8/ProGuard `mapping.txt` (commonly under assets/ or
res/raw/), this module restores obfuscated identifiers to their originals so the
signature matcher can hit them.

Pure and fixture-testable anywhere: parse_mapping and deobfuscate_source do no
I/O. Honest framing: deobfuscation here is a best-effort *identification*
surface. The flat original<->obfuscated table is inherently lossy (ProGuard
reuses short member names across classes, so a global simple-name map can
collide); the deobfuscated view is additive on top of the untouched original
text, and the signature matcher treats it as one more evidence surface, never as
a replacement (ADR-0001 - it does not decide anything, it only surfaces more
text for the deterministic rules to match).
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field
from pathlib import Path

# Where an app commonly ships its R8/ProGuard mapping.txt inside the APK.
MAPPING_CANDIDATE_SUFFIXES = ("/assets/mapping.txt", "/res/raw/mapping.txt")

_CLASS_LINE = re.compile(r"^(.+?)\s+->\s+(.+):\s*$")
# Ranged methods carry a second range after the signature, before the arrow:
#   5:5:void onResume():12:12 -> c
# so the optional `(?::\d+:\d+)?` handles that trailing range on top of the
# optional leading `\d+:\d+:` prefix.
_MEMBER_LINE = re.compile(
    r"^(?:\d+:\d+:\s*)?([\w<>$]+)\s+([\w<>$]+)\s*\([^)]*\)(?::\d+:\d+)?\s*->\s*(\S+)\s*$"
)
_FIELD_LINE = re.compile(r"^(?:\d+:\d+:\s*)?([\w<>$]+)\s+([\w<>$]+)\s*->\s*(\S+)\s*$")


@dataclass
class MappingTable:
    """Parsed ProGuard mapping, keyed by simple names.

    obfuscated_to_original maps a short obfuscated identifier (a, b, c) to the
    original simple name it replaced (MainActivity, onCreate, fieldValue). Flat
    by design: ProGuard scopes member names per class, so a global map can
    collide; the deobfuscated view built from it is best-effort identification,
    not a lossless restore.
    """

    obfuscated_to_original: dict[str, str] = field(default_factory=dict)

    def __bool__(self) -> bool:
        return bool(self.obfuscated_to_original)


def find_mapping_file(roots: list[Path] | Path) -> Path | None:
    """Locate a bundled mapping.txt in the decompiled roots (apktool output)."""
    if isinstance(roots, (str, Path)):
        roots = [roots]
    for root in roots:
        root = Path(root)
        for suffix in MAPPING_CANDIDATE_SUFFIXES:
            p = root / suffix.lstrip("/")
            if p.exists() and p.is_file():
                return p
    return None


def parse_mapping(text: str) -> MappingTable:
    """Parse R8/ProGuard mapping.txt into a MappingTable.

    Handles the three line kinds:
      com.example.MainActivity -> com.example.a:          class rename
      void onCreate(android.os.Bundle) -> b               method rename
      5:5:void onResume():12:12 -> c                      ranged method rename
      int fieldValue -> e                                 field rename
    Lines that match nothing are skipped (a comment, a nested-class line we
    can't attribute, a member with an original type we don't need). Skipping is
    the honest default - a malformed line must not abort deobfuscation.
    """
    table: dict[str, str] = {}
    for raw in text.splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        m = _CLASS_LINE.match(line)
        if m:
            orig_full, obf_full = m.group(1).strip(), m.group(2).strip()
            table[obf_full.split(".")[-1]] = orig_full.split(".")[-1]
            continue
        m = _MEMBER_LINE.match(line)
        if m:
            table[m.group(3)] = m.group(2)
            continue
        m = _FIELD_LINE.match(line)
        if m:
            table[m.group(3)] = m.group(2)
    return MappingTable(obfuscated_to_original=table)


def deobfuscate_source(source: str, mapping: MappingTable) -> str:
    """Restore obfuscated identifiers to their originals in a Java source text.

    Replaces each mapped obfuscated simple name with its original, using word
    boundaries and longest-identifier-first ordering (so a longer obfuscated
    name isn't shadowed by a prefix that is also a mapped name). Returns the
    source unchanged when there is nothing to restore.
    """
    if not mapping:
        return source
    ordered = sorted(mapping.obfuscated_to_original.items(), key=lambda kv: -len(kv[0]))
    out = source
    for obf, orig in ordered:
        if len(obf) < 1:
            continue
        # `orig` is inserted LITERALLY via a callable replacement. As a string
        # template, re.sub interprets backslash escapes and \1 group refs inside
        # the replacement - so a crafted mapping.txt whose ORIGINAL name carries
        # `\q` (bad escape) or `\1` (group ref) would raise re.error and abort the
        # whole signature scan over an untrusted, attacker-shipped mapping (the
        # deobfuscate call in signatures.scan() sits past the per-file OSError
        # guard, so the raise escapes the entire stage). A real Java identifier
        # never contains a backslash, so the callable form is byte-identical for
        # every genuine mapping; it only converts that crash into a safe verbatim
        # substitution - honoring this module's "a malformed line must not abort
        # deobfuscation" intent and ADR-0006 (degrade conservatively, never crash).
        out = re.sub(rf"\b{re.escape(obf)}\b", lambda m, o=orig: o, out)
    return out
