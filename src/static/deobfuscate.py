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

    Replaces each mapped obfuscated simple name with its original, using
    identifier boundaries and longest-identifier-first ordering (so a longer
    obfuscated name isn't shadowed by a prefix that is also a mapped name).
    Returns the source unchanged when there is nothing to restore.
    """
    if not mapping:
        return source
    # Longest obfuscated name first so a longer name is never shadowed by a prefix
    # that is also a mapped name. Empty keys are dropped: a malformed `orig -> `
    # line yields one, and an empty alternative would match at every position and
    # rewrite the whole source (test_deobfuscate_source_skips_empty_obfuscated_key).
    keys = sorted((k for k in mapping.obfuscated_to_original if k), key=len, reverse=True)
    if not keys:
        return source
    table = mapping.obfuscated_to_original
    # ONE simultaneous pass over the original text, not one re.sub per key. A
    # per-key sequential loop re-scans text an earlier key already inserted, so an
    # original name that equals a later (shorter) obfuscated key gets
    # re-substituted: with {"ab": "i", "i": "j"}, restoring ab->i and then applying
    # i->j turned `ab` into `j` instead of `i`. Longest-first ordering does NOT
    # prevent this - the inserted VALUE (`i`) collides with a shorter KEY (`i`). A
    # single alternation matches every key against the untouched source exactly
    # once, so inserted originals are never re-read (correct simultaneous-
    # replacement semantics), and it is one pass, not N (N = mapping size,
    # thousands for a real mapping.txt).
    #
    # `orig` is inserted LITERALLY via a callable replacement. As a string
    # template, re.sub interprets backslash escapes and \1 group refs in the
    # replacement, so a crafted mapping.txt whose ORIGINAL name carries `\q` (bad
    # escape) or `\1` (group ref) would raise re.error and abort the whole
    # signature scan over an untrusted, attacker-shipped mapping (the deobfuscate
    # call in signatures.scan() sits past the per-file OSError guard, so the raise
    # escapes the entire stage). A real Java identifier never contains a backslash,
    # so the callable is byte-identical for every genuine mapping; it only converts
    # that crash into a safe verbatim substitution (ADR-0006: degrade
    # conservatively, never crash). The `.get` fallback is defensive - m.group(0)
    # is always one of `keys`, so it never fires; if it ever did, the source is
    # left as-is rather than raising.
    #
    # Identifier boundaries must treat `$` as part of the name, not a break. `\b`
    # is defined over `\w` = [A-Za-z0-9_], which EXCLUDES `$` - but `$` is a legal
    # Java identifier char R8/the JVM use heavily for synthetic names (nested
    # `Outer$Inner`, lambda captures `val$x`, `access$000`, Kotlin delegates). With
    # `\b`, a one-letter mapping like `c -> verify` fires INSIDE `access$c` /
    # `val$c` / `c$field` - a false substitution that corrupts an unrelated
    # synthetic identifier and can invent or destroy a signature hit. The
    # lookarounds include `$` (and `\w`) on both sides so a match fires only at a
    # true identifier edge; the trailing `(?![\w$])` also forces whole-identifier
    # matching, so a short key that is a prefix of a longer identifier can never
    # match it (this is what makes the alternation order-independent for boundary
    # cases, longest-first notwithstanding). Byte-identical to the per-key form for
    # every genuine mapping; it only declines the false in-identifier hits.
    pattern = re.compile(rf"(?<![\w$])(?:{'|'.join(re.escape(k) for k in keys)})(?![\w$])")
    return pattern.sub(lambda m: table.get(m.group(0), m.group(0)), source)
