"""YAML-driven signature loading and matching against decompiled sources (FR-2.1-2.3, 2.6)."""

from __future__ import annotations

import hashlib
import os
import re
import sqlite3
import time
from collections import defaultdict
from collections.abc import Iterable
from dataclasses import dataclass, field
from functools import lru_cache
from pathlib import Path

from common import (
    CATEGORIES,
    Evidence,
    StaticEvidence,
    derive_namespace,
    is_third_party_file,
    load_yaml_entries,
)
from static.deobfuscate import MappingTable, deobfuscate_source
from static.hermes import js_idiom_fingerprint
from static.indicators import find_indicator_categories, indicator_fingerprint

# L-M3 (S1): scan the fallback evidence layer too. jadx's .java decompile can be
# partial on large/obfuscated APKs (PropertyGuru - jadx died on one AndroidX
# class with 1563 real files written), but apktool's .smali reliably survives
# and carries root-detection string constants (su paths, test-keys, magisk
# artifacts) as const-strings even when jadx failed. Java-oriented regex
# signatures (method calls, `implements X509TrustManager`) cannot match smali's
# structured syntax (;->, $Builder, Ljavax/net/ssl/...;), so smali scanning is
# strictly additive evidence on a surface that was previously walked but ignored.
SCANNED_SUFFIXES = (
    ".java", ".xml", ".smali",
    # Hybrid / cross-platform coverage: React Native ships its JS as
    # assets/index.android.bundle (or index.android.jsbundle) and Flutter/Dart
    # compile to dart.so under lib/; .js/.jsbundle/.bundle catch inlined
    # root/SSL checks that survive bundling, .json/.properties carry manifest-
    # like config (network_security_config, build metadata), .txt covers
    # plain-text assets, and .html/.htm catch WebView containers (assets/*.html)
    # whose inlined <script> root/SSL checks the text engine now reads (the
    # WebView JS-bridge surface, gap A2). is_known_third_party() keeps these (an
    # asset file has no sources//smali/ namespace, so derive_namespace() returns
    # None which is NOT treated as vendor - see common.py), so hybrid roots
    # actually surface.
    ".js", ".jsbundle", ".bundle", ".json", ".properties", ".txt",
    ".html", ".htm",
)

VALID_CATEGORIES = set(CATEGORIES)
VALID_PATTERN_TYPES = {"string_literal", "class_reference", "regex"}

# RESID-4F: cap the number of recorded matches per signature. A signature like
# root_su_binary_paths can match the same literal across thousands of bundled
# library files; every match is a full Evidence row in the report and DB. The
# first N matches carry all the information (same signature, same weight) -
# the rest add bulk without signal. Confidence is unaffected: it is added once
# per matched signature, not per match (see the matched_signatures set).
MAX_EVIDENCE_PER_SIGNATURE = 50

# SESSION11L4: scan-walk observability (see _traced_files below). A heartbeat
# marker lands every _SCAN_HEARTBEAT_FILES files, and any single file costing
# more than _SCAN_SLOW_FILE_MS gets a marker of its own - so a long-but-healthy
# walk (measured: spotify needed 946s on 2026-10-07) is distinguishable from a
# stall on one pathological file without reading a final verdict. Both values
# are read only when tracing is enabled; with tracing off nothing below runs.
_SCAN_SLOW_FILE_MS = 2000.0
_SCAN_HEARTBEAT_FILES = 500

# Per-line regex budget (ReDoS defense, NFR-1 fail-loud). Python's re cannot
# be interrupted mid-backtracking, so the real cure is keeping every signature
# regex linear (anchored/possessive, no unanchored .*). This budget is the
# backstop for any future signature that regresses: if matching a single line
# against the corpus takes longer than this, the signature is catastrophically
# backtracking and scan() raises loudly instead of hanging silently (the exact
# NFR-1/principle-3 violation ReDoS exploits). A legitimate source line never
# approaches this even across 12+ regex signatures; a hostile line that does
# means a bug in a hand-authored rule, and the pipeline should halt, not burn.
#
# M14: this is the FLOOR, not a flat cap. The budget is CUMULATIVE across every
# signature on the line, so its cost is (number of signatures x line length), and
# a minified .js/.bundle/.json line is one multi-MB line - the exact suffixes
# SCANNED_SUFFIXES walks. A flat 1.0s therefore charged a legitimate 2 MB
# minified bundle the same budget as a 40-char Java statement, and a single
# linear pass per signature over that line tripped TimeoutError and aborted a
# real run. Scaling by the work (see line_match_budget) keeps the teeth: a ReDoS
# on a small line still trips at the floor, while a linear pass over a large one
# is not mistaken for one - the same argument, and the same rate, as the
# multiline budget below.
LINE_MATCH_BUDGET_SECONDS = 1.0
LINE_MATCH_BYTES_PER_SECOND = 50_000_000

# Whole-text (multiline) budget - deliberately NOT the per-line constant above.
#
# That one is documented as a budget for "matching a single line", and its premise
# is "a legitimate source line never approaches this". The multiline pass matches
# the WHOLE FILE, where that premise does not hold: one linear pass over a large
# legitimate file costs more than any single line ever does.
#
# Measured 2026-10-06 on a real app (jerboa): jadx emitted LookAndFeelScreenKt.java
# at 249 MB / 479,480 lines, and sslcontext_init_with_trustmanager - a signature
# whose own comment says it is "bounded, so the regex stays linear", and which
# matches NOTHING in that file (zero `getInstance(` occurrences) - took 1.1s,
# tripping the 1.0s per-line budget and halting the whole scan. The regex was fine;
# the input was 249 MB.
#
# Scaling by input size keeps the guard's teeth where they matter: a ReDoS on a
# small file still trips at the floor, while a linear pass over a large one is not
# mistaken for one. The rate is ~4x slower than a linear regex measures in practice
# (~225 MB/s), so only a genuine blowup reaches it.
MULTILINE_MATCH_BUDGET_FLOOR_SECONDS = 1.0
MULTILINE_MATCH_BYTES_PER_SECOND = 50_000_000


def multiline_match_budget(chars: int) -> float:
    """Seconds allowed for one whole-text regex search over `chars` characters."""
    return max(MULTILINE_MATCH_BUDGET_FLOOR_SECONDS,
               chars / MULTILINE_MATCH_BYTES_PER_SECOND)


def line_match_budget(chars: int, signatures: int) -> float:
    """Seconds allowed for the whole per-line signature loop over one line.

    M14: the guard measures ONE line against EVERY signature (line_start is set
    per line, not per signature), so the work it bounds is
    `signatures x chars`, not `chars`. Charging a flat LINE_MATCH_BUDGET_SECONDS
    to that cumulative loop made a legitimate minified multi-MB line - one line
    of a .js/.bundle/.json, all of which are scanned - indistinguishable from a
    backtracking regex, and TimeoutError aborted the run. Scaling by the work
    keeps the guard honest: a ReDoS on a normal line still trips at the floor
    (the blowup is superlinear in the input, far above the linear rate), while a
    linear pass over a huge line gets the budget its size justifies.
    """
    return max(LINE_MATCH_BUDGET_SECONDS,
               signatures * chars / LINE_MATCH_BYTES_PER_SECOND)


@dataclass
class Signature:
    id: str
    category: str
    weight: float
    pattern_type: str
    patterns: list[str]
    evidence_type: str
    # L-M9 (S5/G10): opt-in matching flags. Defaults reproduce the historical
    # behavior exactly - case-sensitive, single-line - so existing signature
    # YAML and every calibrated confidence are unchanged until an author
    # explicitly opts a pattern into the looser matching.
    case_sensitive: bool = True
    multiline: bool = False
    # PERF1: memoized per-flag compiled regex cache. The scan hot path calls
    # re.search(pattern, line, flags) once per (regex signature, pattern, line);
    # over a large corpus (12k+ files) that is millions of calls, each of which
    # re-parses the raw pattern string unless it happens to still be in re's
    # small (512-entry) internal cache - which churns out under exactly this kind
    # of many-distinct-pattern load. Compiling once and reusing is a standard,
    # behavior-identical optimization: re.search(p, s, f) is defined as
    # re.compile(p, f).search(s). NOT a YAML field (never set from a file, so
    # ctor(**entry) never sees it); excluded from equality/repr so two signatures
    # with the same authored content still compare equal and print cleanly.
    _compiled: dict[int, tuple["re.Pattern[str]", ...]] = field(
        default_factory=dict, compare=False, repr=False
    )

    def compiled_patterns(self, flags: int) -> tuple["re.Pattern[str]", ...]:
        """This signature's patterns compiled under `flags`, memoized per flag
        value. Every pattern was already validated-compiled at load
        (_validate_signature_entry), so compilation here cannot raise; the cache
        just moves that one compile out of the per-line inner loop."""
        cached = self._compiled.get(flags)
        if cached is None:
            cached = tuple(re.compile(p, flags) for p in self.patterns)
            self._compiled[flags] = cached
        return cached


def _validate_category(entry: dict, path: Path, sig_id: str, valid, label: str = "signature") -> None:
    """Reject a category outside the allowed set (shared by the Java and native
    signature loaders). The category check is the critical one (4-2): scan()
    guards on category=="root"/"ssl", so a mistyped value ("Root", "both")
    matches neither branch - the signature is silently dead. Fail loudly at load
    (ADR-0001/principle 3)."""
    category = entry.get("category")
    if category not in valid:
        raise ValueError(
            f"{path}: {label} '{sig_id}' has invalid category '{category}' - "
            f"must be one of {sorted(valid)}"
        )


def _validate_weight(entry: dict, path: Path, sig_id: str, label: str = "signature") -> None:
    """Reject a weight outside [0, 1] (shared). A bad weight would otherwise
    silently mis-weight a match; fail loudly at load instead."""
    weight = entry.get("weight")
    if weight is None or not isinstance(weight, (int, float)) or not (0 <= weight <= 1):
        raise ValueError(
            f"{path}: {label} '{sig_id}' has invalid weight '{weight}' - must be a number in [0, 1]"
        )


def _validate_pattern_type(entry: dict, path: Path, sig_id: str, valid, label: str = "signature") -> None:
    """Reject a pattern_type outside the loader's allowed set (shared)."""
    pattern_type = entry.get("pattern_type")
    if pattern_type not in valid:
        raise ValueError(
            f"{path}: {label} '{sig_id}' has invalid pattern_type '{pattern_type}' - "
            f"must be one of {sorted(valid)}"
        )


def _validate_patterns_present(entry: dict, path: Path, sig_id: str, label: str = "signature") -> None:
    """Reject a signature with no patterns (shared)."""
    if not entry.get("patterns"):
        raise ValueError(f"{path}: {label} '{sig_id}' has no patterns")


def _validate_bool_flag(entry: dict, path: Path, sig_id: str, flag_name: str, label: str = "signature") -> None:
    """Reject an opt-in flag written as a non-bool (e.g. the string "true") - a
    typo must fail loudly at load, not truthy-silently change behavior (L-M9)."""
    value = entry.get(flag_name)
    if value is not None and not isinstance(value, bool):
        raise ValueError(
            f"{path}: {label} '{sig_id}' has invalid {flag_name} {value!r} - must be a boolean"
        )


def _validate_signature_entry(entry: dict, path: Path) -> None:
    """Reject a signature that would otherwise silently no-op or crash scan.
    The category check is the critical one (4-2): scan() guards on
    category=="root"/"ssl", so a mistyped value ("Root", "both", "pinning")
    matches neither branch - the signature is silently dead and detection is
    silently weaker. Fail loudly at load instead (ADR-0001/principle 3)."""
    sig_id = entry.get("id", "<unnamed>")
    _validate_category(entry, path, sig_id, VALID_CATEGORIES)
    _validate_weight(entry, path, sig_id)
    pattern_type = entry.get("pattern_type")
    _validate_pattern_type(entry, path, sig_id, VALID_PATTERN_TYPES)
    _validate_patterns_present(entry, path, sig_id)
    # L-M9: the new opt-in flags must fail loudly on a typo (a string "true"
    # instead of a bool) exactly like the other hand-authored fields, instead
    # of truthy-silently changing detection behavior at scan time.
    for flag_name in ("case_sensitive", "multiline"):
        _validate_bool_flag(entry, path, sig_id, flag_name)
    # multiline only makes sense for regex: string_literal/class_reference
    # matching is defined per-line and has no cross-line mode, so allowing the
    # flag there would be a silent no-op. Reject at load instead (same rule as
    # the invalid-category check).
    if entry.get("multiline", False) and pattern_type != "regex":
        raise ValueError(
            f"{path}: signature '{sig_id}' sets multiline but pattern_type "
            f"'{pattern_type}' - multiline matching only applies to regex patterns"
        )
    if pattern_type == "regex":
        # RESID-4B: a typo'd regex (e.g. an unclosed group) would otherwise pass
        # load and raise re.error mid-scan, killing a good APK's whole static
        # pass. Compile now so an authoring error fails loudly at load, the
        # same way the other three hand-authored fields already do.
        for pattern in entry["patterns"]:
            try:
                re.compile(pattern)
            except re.error as exc:
                raise ValueError(
                    f"{path}: signature '{sig_id}' has an invalid regex pattern "
                    f"{pattern!r} - {exc}"
                ) from exc


def corpus_fingerprint(paths: Iterable[Path]) -> str:
    """A content fingerprint of a rule corpus - the identity a run records for
    the rules it was analysed against (ADR-0022).

    SHA-256 over each file's name and bytes, in name order. The name is included
    so a rename moves the hash as much as an edit does: the corpus's identity is
    the set of files and their contents, not the concatenation of some bytes.

    Taken once, before the corpus is loaded. A file edited while a run is in
    flight is therefore fingerprinted at its pre-run bytes - which is what "the
    corpus this run used" has to mean when four files are read at four different
    moments and there is no way to hash and load them atomically as a set.

    A missing path RAISES rather than being skipped. Fingerprinting the subset
    that happens to exist would name a rule set no run ever loaded, which is the
    silent-substitution failure this project forbids (Principle 3).

    Covers all three detection surfaces (ADR-0022's scope, closed 2026-09-24):
    these files; the JS idiom lists and the weight scaling them, compiled into
    `hermes.py`; and the unattributed-indicator lists in `indicators.py`, whose
    matches bound whether a NEITHER is certified. The two code-resident surfaces
    are folded in below and hashed as data because they are not files. One
    consequence is worth knowing before comparing two reports: the scheme a value
    was taken under is not recorded alongside it, so a fingerprint from an
    earlier scheme - the YAML files alone, or the YAML files plus the JS lists -
    is not comparable with one from after this change even when the rules are
    identical.
    """
    digest = hashlib.sha256()
    for path in sorted(paths, key=lambda p: p.name):
        try:
            data = path.read_bytes()
        except OSError as exc:
            raise FileNotFoundError(
                f"signature corpus file is not readable: {path} ({exc}) - refusing to "
                "fingerprint a partial corpus, which would name a rule set the run "
                "never loaded"
            ) from exc
        digest.update(path.name.encode("utf-8"))
        digest.update(b"\0")
        digest.update(data)
        digest.update(b"\0")
    digest.update(js_idiom_fingerprint().encode("utf-8"))
    digest.update(b"\0")
    digest.update(indicator_fingerprint().encode("utf-8"))
    digest.update(b"\0")
    return digest.hexdigest()


def load_signatures(path: Path) -> list[Signature]:
    return load_yaml_entries(path, _validate_signature_entry, Signature)


@lru_cache(maxsize=None)
def _is_dotted_package_pattern(pattern: str) -> bool:
    """True for a pattern written as a dotted Java package/class name.

    SMALI-SPELL1 (2026-09-04): the corpus writes library markers the way source
    does - `com.datatheorem.android.trustkit` - but `.smali` is in
    SCANNED_SUFFIXES and apktool's smali tree IS scanned (decompile.py), and
    smali/DEX spell the very same type as `Lcom/datatheorem/android/trustkit/...;`.
    A dotted-only pattern therefore cannot fire on the smali corpus at all. That
    matters most in exactly the population where it hurts: an app whose jadx
    decompile was incomplete (`java=partial`) is the one whose only remaining
    evidence for that class is smali.

    Measured before the fix: 32 package-form patterns across root_detection.yaml
    and ssl_pinning.yaml had no slash twin (24 root + 8 ssl), while
    `root_tools_library` carried both spellings by hand - so the intent was
    always "match this type however it is spelled", and 32 patterns silently
    missed half of it.

    The guard is deliberately narrow: at least two dots, no slash, no whitespace.
    That admits package/class names and dotted system properties (`ro.build.type`)
    and excludes path patterns (`/data/adb/ksu`), regexes, and prose fragments.

    PERF2 (2026-09-19): memoized, because every one of these three questions is
    about the PATTERN and the pattern set is fixed at load - yet _line_matches
    asks it inside the per-line loop, once for each pattern that does not match
    outright. A 341 s cProfile window over facebook's tree (2026-09-19) recorded
    396,271,137 calls: 53.6 s in this function plus 44.6 s in the str.count
    underneath, all of it recomputing an answer that could not have changed.
    Unbounded on purpose - the key space is the corpus's distinct patterns, a few
    hundred strings - and pure, so a hit returns exactly the bool the body would
    have returned.

    Deliberately NOT a method on Signature, which is how _compiled is memoized:
    _line_matches is also called with duck-typed doubles that model only the
    fields it reads (tests/unit/test_androguard_scanner.py builds them inline),
    and a new required method on its input is an interface widening those callers
    cannot carry: on the first attempt the doubles raised AttributeError, which
    the DEX matcher correctly turned into a loud BrokenSignatureError naming the
    signature rather than a silent miss - the guard working as designed, on the
    wrong target.
    """
    return pattern.count(".") >= 2 and "/" not in pattern and " " not in pattern


def _line_matches(line: str, signature: Signature) -> str | None:
    """Return the matched text if this line matches the signature, else None.

    L-M9 (S5/G10): honors the signature's opt-in case_sensitive flag. When
    case-insensitive, string-literal/class-reference patterns match on
    folded case and regex patterns compile with re.IGNORECASE, so mixed-case
    variants of a known technique (e.g. "Test-Keys" or "Su") stop silently
    escaping detection. Default (case_sensitive=True) is byte-exact current
    behavior.

    SMALI-SPELL1: a dotted-package pattern is additionally matched against a
    slash->dot normalized copy of the line, so the smali/DEX spelling of the same
    type matches too. Purely additive - the raw line is always tried first, so
    slash-bearing patterns (`/data/adb/ksu`) are unaffected - and the only strings
    the extra surface can newly match are the slash spellings of those same
    dotted names. See _is_dotted_package_pattern.
    """
    if signature.pattern_type in ("string_literal", "class_reference"):
        normalized: str | None = None
        if not signature.case_sensitive:
            folded_line = line.casefold()
            for pattern in signature.patterns:
                folded = pattern.casefold()
                if folded in folded_line:
                    return pattern
                if _is_dotted_package_pattern(pattern):
                    if normalized is None:
                        normalized = folded_line.replace("/", ".")
                    if folded in normalized:
                        return pattern
            return None
        for pattern in signature.patterns:
            if pattern in line:
                return pattern
            if _is_dotted_package_pattern(pattern):
                if normalized is None:
                    normalized = line.replace("/", ".")
                if pattern in normalized:
                    return pattern
        return None
    if signature.pattern_type == "regex":
        flags = re.IGNORECASE if not signature.case_sensitive else 0
        for compiled in signature.compiled_patterns(flags):
            match = compiled.search(line)
            if match:
                return match.group(0)
        return None
    raise ValueError(f"unknown pattern_type '{signature.pattern_type}' on signature '{signature.id}'")


# LITPREF (PERF-3): a literal pattern (string_literal / class_reference) can only
# match a line that CONTAINS it. So before the per-line x per-signature inner
# loop, build ONE combined regex per literal family and use it as a GATE: if no
# literal pattern can match a given line, skip every literal signature for that
# line and run only the regex signatures. The gate is an EXACT superset of
# "_line_matches returns non-None for some literal signature on this line" - it
# mirrors _line_matches's own logic exactly (fold vs raw for case-insensitivity;
# slash->dot normalization ONLY for dotted-package patterns) - so when the gate
# does NOT fire, no literal signature can match and the skip is behaviour-
# identical. When it fires, the full per-signature loop runs unchanged. No
# detection behaviour changes; only how many times _line_matches is invoked.
# (Folding is done manually, never via re.IGNORECASE, because str.casefold()
# differs from it for German ss / Turkish I - the TRAP documented in PERF2.)
LITERAL_TYPES = ("string_literal", "class_reference")


def _compile_literal_alt(patterns):
    if not patterns:
        return None
    return re.compile("|".join(re.escape(p) for p in patterns))


def _build_literal_gate(signatures):
    """One combined regex per literal family, so a line that contains none of the
    literal patterns can skip the whole literal-signature loop.

    The four families are the cross-product of (case_sensitive, is_dotted),
    because _line_matches folds the line only for case-insensitive patterns and
    applies the slash->dot normalization only to dotted-package patterns. Keeping
    the families separate lets the gate reproduce that logic bit-for-bit: a line
    matches the gate exactly when some literal signature would match it."""
    ci_plain, ci_dotted, cs_plain, cs_dotted = [], [], [], []
    for sig in signatures:
        if sig.pattern_type not in LITERAL_TYPES:
            continue
        for pat in sig.patterns:
            if sig.case_sensitive:
                target = cs_dotted if _is_dotted_package_pattern(pat) else cs_plain
            else:
                pat = pat.casefold()
                target = ci_dotted if _is_dotted_package_pattern(pat) else ci_plain
            target.append(pat)
    return (
        _compile_literal_alt(ci_plain),
        _compile_literal_alt(ci_dotted),
        _compile_literal_alt(cs_plain),
        _compile_literal_alt(cs_dotted),
    )


def _literal_gate_fires(line, gate):
    ci_plain, ci_dotted, cs_plain, cs_dotted = gate
    # Case-sensitive, raw line first - no allocation, cheapest.
    if cs_plain is not None and cs_plain.search(line):
        return True
    if cs_dotted is not None:
        if cs_dotted.search(line):
            return True
        if cs_dotted.search(line.replace("/", ".")):
            return True
    # Case-insensitive: fold once, then try plain and (for dotted) normalized.
    if ci_plain is not None or ci_dotted is not None:
        folded = line.casefold()
        if ci_plain is not None and ci_plain.search(folded):
            return True
        if ci_dotted is not None:
            if ci_dotted.search(folded):
                return True
            if ci_dotted.search(folded.replace("/", ".")):
                return True
    return False


def _collect_files(roots: list[Path]) -> list[tuple[Path, Path]]:
    """Return (file_path, root_it_was_found_under) pairs, for relative-path reporting.

    Skips any ``original/`` component in a scanned tree: apktool's ``original/``
    subtree is its archival of the *untouched binary* resources (e.g.
    ``original/AndroidManifest.xml`` is Android binary XML, not text). It is never
    a scannable source - the decoded manifest and resources live at the apktool
    root and under ``res/`` - so reading it would raise a guaranteed
    UnicodeDecodeError on every scan and surface a false "degraded scan" signal
    (RESID-4G), drowning out real OSError surfacing. Excluding it is not hiding a
    failure: a binary resource is not a source candidate by construction.
    """
    files = []
    for root in roots:
        # Parts of the root itself, so the "original/" test below can slice them
        # off without a Path.relative_to per file. That call ran once per scanned
        # file - 357,200 of them on facebook's tree - and cost 30.6s of a 70s
        # cProfile window (3.12's relative_to is pure Python: it validates and
        # builds a second Path per call, which is what shows up as with_segments/
        # __getitem__/_select_from underneath it). Anything rglob yields is the
        # root plus at least one component, so the slice IS the same tuple.
        root_depth = len(root.parts)
        for p in root.rglob("*"):
            if not p.is_file() or p.suffix not in SCANNED_SUFFIXES:
                continue
            rel_parts = p.parts[root_depth:]
            if "original" in rel_parts:
                continue
            # Skip CFR's generated decompilation index (`<cfr-root>/summary.txt`):
            # a class-listing metadata file the CFR decompiler emits alongside the
            # .java it produces - not decompiled app code, and not an app asset.
            # Because `.txt` is a scanned suffix (for genuine plain-text APK
            # assets), this index was being matched by code/config signatures -
            # e.g. `custom_pkix_trust_anchor` hitting the token "CertPathValidator"
            # in the class list - a pure false positive with no app code behind it.
            # A real APK asset named summary.txt lives under assets/ (parent
            # basename != "cfr", and not at a root top), so only the decompiler's
            # own artifact is excluded here.
            if p.name == "summary.txt" and (len(rel_parts) == 1 or p.parent.name == "cfr"):
                continue
            files.append((p, root))
    return files


_BINARY_PROBE_BYTES = 8192


def _is_binary(path: Path) -> bool:
    """True when the file's first chunk contains a NUL byte - the reliable
    binary signal. Text (Java, XML, JS, JSON, properties, bundle-as-text) almost
    never contains NUL, while binary assets (RN Hermes bytecode bundles,
    bouncycastle `.bin.properties`) do. Used to skip binary non-sources BEFORE a
    strict UTF-8 read, so they don't land in the unreadable bucket and drown
    real text-decode failures in degradation noise (RESID-4G). A text file that
    genuinely fails to decode (no NULs, bad UTF-8) is still caught by the
    read_text path below and counted degraded."""
    try:
        with open(path, "rb") as f:
            return b"\x00" in f.read(_BINARY_PROBE_BYTES)
    except OSError:
        # Can't probe the header either - let the read_text path below surface
        # it as the authoritative unreadable-file degradation (never a silent
        # skip).
        return False


# The evidence table lives at outputs/analysis/<apk_hash>/xref.sqlite, so it is
# keyed by APK, not by run - and it was only ever appended to. Re-running a target
# (or re-scanning it after the signature corpus changed) stacked a second full set
# of rows on top of the first, and no column recorded which run or which corpus
# wrote a row, so nothing downstream could tell them apart. Measured on the real
# outputs before this fix: 12 of 17 tables held duplicates - the PropertyGuru run's
# table 86 rows for 28 distinct matches, one test APK 593 rows for 13. L-M1 sells
# this table as a complete, queryable cross-reference, and a reader of it would
# have been reading a union of several runs as one run's findings.
#
# Bumping this discards a table written by an older shape rather than appending
# into it, which is what makes a future column change safe. Same discipline as
# _SIDECAR_SCHEMA_VERSION in decompile.py and _DEX_STRING_CACHE_VERSION below.
_EVIDENCE_TABLE_SCHEMA_VERSION = 1


def _prepare_evidence_table(con: sqlite3.Connection) -> None:
    """Create this scan's evidence table, discarding whatever an earlier scan of
    the same APK left behind.

    The DROP on a version mismatch is not belt-and-braces: a table written by an
    older shape would otherwise survive CREATE TABLE IF NOT EXISTS and fail (or
    silently mis-map) the INSERTs below. The scan's rows are STAGED in a
    per-connection temp table and swapped into `evidence` in one transaction at
    the end of scan(), so a scan that dies mid-way leaves the previous table
    exactly as it was rather than a half-cleared one - and, the reason the
    staging exists, the main table is not written at all while the scan matches.

    That second property is what the commit below is for. Inserting straight into
    `evidence` opened one write transaction per scan that stayed open until the
    final commit, so a second run of the same APK (or a leftover process from a
    killed one) waited on a lock held for the whole match - 2,057s of static_scan
    on the facebook corpus, against a 30s busy timeout that documents itself as
    covering exactly this contention. Raising the timeout would trade that loud
    failure for an unbounded hang; sizing the HOLD to the swap keeps the
    timeout's own claim true, because a competing writer's hold is now its own
    swap (milliseconds) rather than its whole scan."""
    con.execute("CREATE TABLE IF NOT EXISTS scan_meta (key TEXT PRIMARY KEY, value TEXT)")
    row = con.execute("SELECT value FROM scan_meta WHERE key = 'schema_version'").fetchone()
    if row is None or row[0] != str(_EVIDENCE_TABLE_SCHEMA_VERSION):
        con.execute("DROP TABLE IF EXISTS evidence")
    con.execute(
        "CREATE TABLE IF NOT EXISTS evidence ("
        "file TEXT, signature_id TEXT, category TEXT, line INTEGER, matched_text TEXT)"
    )
    # Per-connection, so a scan always starts from an empty stage: a previous scan
    # in this process opened its own connection and its stage died with it.
    con.execute("DROP TABLE IF EXISTS temp.evidence_stage")
    con.execute(
        "CREATE TEMP TABLE evidence_stage ("
        "file TEXT, signature_id TEXT, category TEXT, line INTEGER, matched_text TEXT)"
    )
    con.execute(
        "INSERT INTO scan_meta(key, value) VALUES ('schema_version', ?) "
        "ON CONFLICT(key) DO UPDATE SET value = excluded.value",
        (str(_EVIDENCE_TABLE_SCHEMA_VERSION),),
    )
    # Close the schema/version write here so nothing the scan does can hold the
    # main database's write lock. The staged rows need no commit of their own -
    # they live in this connection's temp database until the swap.
    con.commit()


def _traced_files(files, trace=None, verbose=False):
    """Yield each (file_path, root) pair, emitting a per-file trace marker after
    the consumer's iteration of that file completes (SESSION11L4).

    WHY a generator rather than inline markers in scan()'s loop body: the body
    has several `continue` exits (binary skip, unreadable, third-party), and
    inlining the marker would mean duplicating it at every exit - or wrapping
    the whole 200-line body in try/finally and re-indenting it. The generator
    resumes after every yield no matter how the body exited, so one marker site
    covers every path. It also measures each file's true cost (regex work, not
    just I/O) because the clock spans the caller's whole iteration.

    When `trace` is None (tracing off) the caller does not even wrap the loop,
    so this is not on the hot path at all. When on: a heartbeat every
    _SCAN_HEARTBEAT_FILES files carries the running totals, and any file over
    _SCAN_SLOW_FILE_MS is named individually - a stall then reads as "the last
    marker was file N" instead of a silent gap. Tracing never changes what the
    scan does or finds.
    """
    for index, (file_path, root) in enumerate(files, start=1):
        started = time.monotonic()
        yield file_path, root
        elapsed_ms = (time.monotonic() - started) * 1000.0
        if (verbose
                or elapsed_ms > _SCAN_SLOW_FILE_MS
                or index % _SCAN_HEARTBEAT_FILES == 0):
            try:
                rel = str(file_path.relative_to(root))
            except ValueError:  # pragma: no cover - root always prefixes file_path
                rel = str(file_path)
            trace("static", "scan.file", "info", n=index,
                  ms=round(elapsed_ms), file=rel)


def scan(
    decompiled_roots: Path | list[Path],
    signatures: list[Signature],
    sqlite_path: Path | str | None = None,
    mapping: MappingTable | None = None,
    app_package: str | None = None,
) -> StaticEvidence:
    """Scan one or more decompiled-output roots (e.g. jadx's Java sources and
    apktool's decoded resources) against the given signatures.

    L-M1 (off-heap xref): when sqlite_path is given, every match is ALSO
    persisted to a SQLite `evidence` table (file, signature_id, category, line,
    matched_text) - a complete, queryable cross-reference held off-heap, while
    the in-memory Evidence lists stay capped at MAX_EVIDENCE_PER_SIGNATURE so a
    large corpus doesn't accumulate unbounded rows in RAM. The in-memory return
    is unchanged, so the report pipeline is untouched.

    The table describes THIS scan, and only this scan: it is replaced in one
    transaction when the scan finishes (the rows stage in a temp table until
    then), so a re-run of the same APK replaces the previous rows instead of
    stacking on top of them (F-3 - see
    _EVIDENCE_TABLE_SCHEMA_VERSION for what that cost in practice).

    L-M3 (mapping.txt deobfuscation): when `mapping` is provided (a parsed R8/
    ProGuard mapping from deobfuscate.parse_mapping), each .java file is ALSO
    matched against a deobfuscated view in which obfuscated identifiers are
    restored to originals, so original-name signatures can hit renamed code.
    Additive and best-effort: the original text is always scanned unchanged, and
    the deobfuscated view only surfaces more text for the deterministic rules to
    match (ADR-0001 - it never decides anything)."""
    roots = [decompiled_roots] if isinstance(decompiled_roots, (str, Path)) else list(decompiled_roots)
    roots = [Path(r) for r in roots]
    evidence = StaticEvidence()
    # LITPREF (PERF-3): build the literal-match gate once per scan. The
    # signatures set is fixed for the whole scan, so compiling the four family
    # regexes here (not per file / per line) is the only compile cost. See
    # _build_literal_gate / _literal_gate_fires above for why the skip it enables
    # is behaviour-identical.
    literal_gate = _build_literal_gate(signatures)
    has_literal_gate = any(g is not None for g in literal_gate)
    # M14: the per-line budget below bounds ONE line against every single-line
    # signature (multiline ones run in their own pass), so its size is part of the
    # work being budgeted. Computed once - the signature set is fixed for the scan.
    line_signature_count = sum(1 for s in signatures if not s.multiline)
    files = _collect_files(roots)
    con = None
    if sqlite_path is not None:
        # busy_timeout: a leftover/parallel holder of the SQLite lock used to
        # hard-fail with "database is locked" (a killed run leaves an orphan
        # process holding the journal). Wait up to 30s for the lock to free
        # instead of aborting the whole pipeline (principle 3 - fail loud on a
        # real error, not on transient contention).
        con = sqlite3.connect(str(sqlite_path), timeout=30)
        _prepare_evidence_table(con)
    # RESID-4C: record how many files were actually walked, so a negative from
    # a near-empty corpus is distinguishable from a full-scan clean result.
    evidence.scanned_file_count = len(files)

    # SESSION11L4: make the walk observable (see _traced_files for why). The
    # stage line says "static_scan" and nothing about where inside it a run is
    # or stalled - a 15-20 minute healthy walk and a stall look identical from
    # outside, which is how a timeout-killed run leaves a silent gap. These
    # markers add a begin/end pair, a per-file heartbeat and a slow-file marker.
    # The flags are read once here so the per-file loop pays a single bool
    # check when tracing is off, and the loop is not wrapped at all.
    from trace import enabled as _trace_enabled
    _trace = None
    if _trace_enabled():
        from trace import trace as _trace
    _trace_verbose = _trace is not None and os.environ.get(
        "FYMP_TRACE_VERBOSE", "").strip().lower() not in (
            "", "0", "false", "no", "off")
    if _trace is not None:
        _trace("static", "scan.begin", "info", roots=len(roots),
               files=len(files), signatures=len(signatures),
               single_line=line_signature_count,
               multiline=len(signatures) - line_signature_count,
               xref=bool(sqlite_path), mapping=bool(mapping))

    # RESID-4A: read each file once and match every line against all
    # signatures, instead of looping signatures-outer (which re-read each file
    # once per signature - N sigs x M files full-file reads). Same results,
    # ~Nx fewer reads. Confidence is still added once per matched signature,
    # tracked via a seen-set.
    matched_signatures: set[str] = set()
    matched_categories: set[str] = set()
    indicator_categories: set[str] = set()
    evidence_counts: dict[str, int] = defaultdict(int)
    # RESID-4F observability: count EVERY match per signature (evidence_counts
    # caps at MAX_EVIDENCE_PER_SIGNATURE, so it can't tell the report how many
    # were actually seen). total_counts feeds the honest truncation note.
    total_counts: dict[str, int] = defaultdict(int)
    for file_path, root in (files if _trace is None
                            else _traced_files(files, _trace, _trace_verbose)):
        try:
            # Read the whole text once. errors="strict" (the default):
            # errors="ignore" would read a file with malformed bytes by silently
            # stripping them, while the file still counted as fully scanned - a
            # second silent partial-read path alongside the OSError case. A file
            # that cannot fully decode is genuinely degraded, so count it
            # unreadable the same way, and let a NEITHER built over it be flagged
            # rather than read as clean. The full text is also what the L-M9
            # multiline whole-text pass matches against; splitlines() derives the
            # per-line view for the default single-line signatures.
            # Skip binary assets (Hermes bytecode bundles, bouncycastle
            # .bin.properties) BEFORE the text read: they are not source
            # candidates by construction, and strict UTF-8 would raise
            # UnicodeDecodeError and mislabel them as degraded text (RESID-4G).
            # Only a NUL-free file proceeds; a text file that then genuinely
            # fails to decode is still counted degraded below - the strict-read
            # observability is preserved for real malformed text.
            if _is_binary(file_path):
                continue
            try:
                text = file_path.read_text(encoding="utf-8")
            except UnicodeDecodeError:
                # Java .properties files are spec'd ISO-8859-1 (Properties.load's
                # default), not UTF-8 - bouncycastle ships many (CertPathReviewer
                # *_de.properties, etc.). Latin-1 decodes every byte and never
                # fails, so a .properties that isn't UTF-8 is a legitimate
                # legacy-text resource, not a degraded file (RESID-4G noise).
                # ONLY .properties get this fallback; any other file that fails
                # strict UTF-8 re-raises and is honestly counted degraded below.
                if file_path.suffix.lower() != ".properties":
                    raise
                text = file_path.read_text(encoding="latin-1")
        except (OSError, UnicodeDecodeError):
            # RESID-4G: an unreadable file (e.g. chmod-000, a corrupt entry) was
            # silently dropped while scanned_file_count still counted it as
            # scanned - a NEITHER from a half-read corpus was presented as a full
            # scan. Count it separately so reporting/coverage can treat the scan
            # as degraded (partial), not silently certifying absence.
            evidence.unreadable_file_count += 1
            # Finding J: record WHICH file failed so the degradation is
            # actionable - the count alone hid the offending path. Relative to
            # the decompiled root (matching Evidence.file) so a reviewer can
            # locate it in the bundle's analysis/ tree.
            evidence.unreadable_files.append(str(file_path.relative_to(root)))
            continue

        # RESID-4A/4F recording, shared by the per-line and multiline paths so a
        # hit from either lands identically (same set/counters/Evidence rows).
        # _third_party_file is computed once per file (not per signature) so the
        # exclusion check stays off the hot per-line loop. Bug-B parity with
        # androguard_scanner._app_owned and report/attribution.py: an app whose
        # OWN package sits under a recognized vendor prefix (Cash App is
        # com.squareup.cash; a Google/Facebook/Tencent first-party app is
        # com.google.*/com.facebook.*/com.tencent.*) must NOT have its own source
        # files excluded as a bundled SDK - doing so drops the app's own root/SSL
        # logic from the PRIMARY scan (method-body idioms like `implements
        # X509TrustManager` the DEX string scan cannot recover) and lets a
        # confident NEITHER be certified over unscanned app code (ADR-0006). The
        # shared is_third_party_file() applies the is_under_package override; with
        # app_package None (the test/default) it reduces to the historical
        # is_known_third_party() check exactly, so behavior there is unchanged.
        _third_party_file = is_third_party_file(
            derive_namespace(str(file_path.relative_to(root))), app_package)
        # L-M3 dedup: this file is matched against its original text AND (when a
        # mapping is present) its deobfuscated view. A line the obfuscator left
        # untouched - a framework FQCN, a string literal with no renamed token -
        # is byte-identical in both views, so without this guard _record() would
        # fire TWICE for one real match: inflating total_counts (the RESID-4F
        # truncation note) and putting a duplicate row in Evidence + the SQLite
        # xref. The deobfuscated view is ADDITIVE (see below) - it must surface
        # matches the renamed code HID, not re-count the ones both views share.
        # Keyed (signature, line, matched_text) so a genuinely NEW deobf-only
        # match (a restored identifier changes matched_text) is still recorded,
        # and scoped per file so an identical match in another file is unaffected.
        # With no mapping there is one view, so this never fires - the common
        # path is byte-identical to before.
        recorded: set[tuple[str, int, str]] = set()
        def _record(signature: Signature, matched_text: str, line_number: int) -> None:
            # Third-party exclusion (GAP-1): bundled SDKs (GMS, okhttp, Sentry,
            # ...) perform their own root/SSL checks. Counting those matches as
            # the app's own logic inflated confidence and surfaced false
            # positives - a real Paytm run scored SSL 1.00 from a GMS
            # X509TrustManager with an empty checkServerTrusted (com.google.*),
            # not from Paytm's code. Only *recognized* vendor namespaces are
            # excluded; the app's own package and any unidentifiable namespace
            # are always kept (conservative, matching report/attribution.py).
            # This exclusion is enforced by the caller's file-level
            # `if _third_party_file: continue` below, so no SDK match ever
            # reaches _record() (an in-function guard here would be dead code).
            # derive_namespace is computed once per file above, not inlined here,
            # so this hot path does no re-splitting per signature.
            key = (signature.id, line_number, matched_text)
            if key in recorded:
                return  # identical match already recorded from the other text view
            recorded.add(key)
            matched_signatures.add(signature.id)
            matched_categories.add(signature.category)
            total_counts[signature.id] += 1
            if con is not None:
                con.execute(
                    "INSERT INTO evidence_stage(file, signature_id, category, line, matched_text) "
                    "VALUES (?,?,?,?,?)",
                    (str(file_path.relative_to(root)), signature.id,
                     signature.category, line_number, matched_text),
                )
            # RESID-4F: record at most MAX_EVIDENCE_PER_SIGNATURE matches per
            # signature - enough to attribute the finding, not thousands of
            # near-identical rows. Weight is unaffected (added below once per
            # signature via matched_signatures).
            if evidence_counts[signature.id] >= MAX_EVIDENCE_PER_SIGNATURE:
                return
            evidence_counts[signature.id] += 1
            item = Evidence(
                signature_id=signature.id,
                file=str(file_path.relative_to(root)),
                line_or_offset=line_number,
                matched_text=matched_text,
                evidence_type=signature.evidence_type,  # G11: carry provenance
            )
            if signature.category == "root":
                evidence.root_evidence.append(item)
            elif signature.category == "ssl":
                evidence.ssl_evidence.append(item)

        # L-M3: match each file against its original text AND, when a mapping.txt
        # was provided, a deobfuscated view that restores renamed identifiers - so
        # original-name signatures can hit code the obfuscator renamed. Additive:
        # the original is always scanned, the deobfuscated view is extra evidence.
        texts = [text]
        if mapping is not None and file_path.suffix == ".java":
            deobf = deobfuscate_source(text, mapping)
            if deobf != text:
                texts.append(deobf)

        # Perf (audit): a bundled SDK file (GMS, okhttp, Sentry, ...) will have
        # EVERY match discarded by _record()'s _third_party_file guard, so running
        # the hot per-line _line_matches loop over it (66 signatures x N lines) is
        # pure wasted work - and the bulk of any large app is SDK code. Skipping
        # the whole matching pass for such a file is the same outcome, an order of
        # magnitude cheaper. scanned_file_count is set from len(files) above, so
        # coverage still reflects the file was examined. The multiline + deobf
        # passes are skipped together (the same _record() guard would discard
        # them too).
        if _third_party_file:
            continue

        # Boundary-1: technique-agnostic detection idioms in this app-owned file
        # feed the "unattributed detection" tracker. If they belong to a category
        # that matched NO signature, that category reads coverage-limited (unknown,
        # not absent) instead of a silent confident NEITHER - the ADR-0006 half of
        # the fundamental signature-bounded limitation (ADR-0001). Same app-owned
        # exclusion as the signatures, so a bundled SDK's detection code never
        # surfaces as the app's own unknown detection.
        #
        # Scanned over BOTH views (original + the mapping-deobfuscated view, when
        # one is present) - exactly like the signature passes below, not the
        # original text alone. The ROOT indicators key on app-defined method names
        # (isRooted/checkRoot/detectRoot/...) that R8 renames to a()/b(): a custom,
        # UNSIGNATURED root check the obfuscator renamed is invisible in the
        # original decompiled text and only reappears in the deobfuscated view.
        # The signature passes already scan `texts`, so a KNOWN renamed technique
        # is still caught - but this safety net for UNKNOWN techniques was reading
        # the original only, leaving it blind in exactly the obfuscated-app
        # population it exists for and letting a confident NEITHER be certified
        # over a renamed custom root check (ADR-0006). find_indicator_categories
        # returns a set and this unions, so a category seen in both views is
        # counted once; with no mapping texts == [text] and this is byte-identical
        # to the prior single-view scan (common path unchanged).
        for view in texts:
            indicator_categories |= find_indicator_categories(view)

        for text in texts:
            lines = text.splitlines()
            # Default path: one signature against one line. Multiline signatures are
            # skipped here - they need the whole text and run in their own pass below.
            for line_number, line in enumerate(lines, start=1):
                line_start = time.monotonic()
                # M14: budget for THIS line, scaled by the work the loop below does
                # (signatures x chars). A flat budget made a legitimate minified
                # multi-MB line - the exact input .js/.bundle/.json scanning exists
                # for - indistinguishable from a backtracking regex. Computed once
                # per line, so the guard's own clock reads stay where they were.
                line_budget = line_match_budget(len(line), line_signature_count)
                # LITPREF (PERF-3): gate the literal signatures. gate_fires is True
                # when at least one literal pattern could match this line; when
                # False, no literal signature can match (the gate is an exact
                # superset of the literal-match condition) so we skip all of them
                # and run only the regex signatures. When True, the per-signature
                # loop runs unchanged. Regex signatures always run. Behaviour of
                # the detection path is identical either way.
                gate_fires = _literal_gate_fires(line, literal_gate) if has_literal_gate else True
                for signature in signatures:
                    if signature.multiline:
                        continue
                    if has_literal_gate and signature.pattern_type in LITERAL_TYPES and not gate_fires:
                        continue
                    matched_text = _line_matches(line, signature)
                    # ReDoS backstop (NFR-1 fail-loud): check the budget after every
                    # signature attempt on the line (matched or not - a catastrophic
                    # regex can return None after burning the time). A single slow
                    # line means a hand-authored rule is backtracking quadratically,
                    # so scan() raises loudly instead of hanging the whole pipeline.
                    if time.monotonic() - line_start > line_budget:
                        # The budget is cumulative across ALL signatures on this one
                        # line (line_start is per line), so two distinct causes reach
                        # this raise: a single catastrophically-backtracking regex, OR
                        # the aggregate cost of every signature over an unusually long
                        # line (a minified .js/.bundle can be one multi-MB line, and
                        # those suffixes are scanned). M14: line_budget now scales
                        # with that aggregate work, so the second cause only reaches
                        # this raise when the cost exceeds even a linear pass at
                        # LINE_MATCH_BYTES_PER_SECOND - i.e. when the line is
                        # genuinely pathological, not merely large. Report the
                        # measured facts - the line LENGTH is the discriminator
                        # between the two - and name the signature that was
                        # EXECUTING when the budget tripped WITHOUT asserting it is
                        # the culprit: it may be a perfectly linear rule (even a
                        # non-regex string_literal) that merely ran last, so the old
                        # "signature X is catastrophically backtracking (ReDoS)" was
                        # a false specific-cause claim (principle 3). Still fail loud
                        # (NFR-1). The multiline pass below times each signature on
                        # its own (match_start is per signature), so its message CAN
                        # name the responsible signature and does.
                        raise TimeoutError(
                            f"static scan: matching line {line_number} "
                            f"({len(line)} chars) of {file_path.name} against "
                            f"{line_signature_count} signatures took > "
                            f"{line_budget:.1f}s (its budget for that line length "
                            f"across {line_signature_count} signatures; executing "
                            f"signature '{signature.id}' when the budget tripped). "
                            f"Cause is either a catastrophically-backtracking regex "
                            f"or the aggregate matching cost over an unusually long "
                            f"line - the line length above is the discriminator. "
                            f"Linearize the offending regex or split the input; see "
                            f"signatures.py."
                        )
                    if matched_text is None:
                        continue
                    _record(signature, matched_text, line_number)

            # L-M9 multiline pass: a regex that spans lines (a technique's pattern
            # broken across a method call, a string literal split by the decompiler,
            # a wrapped declaration) can never match any single line, so it runs
            # against the whole text with DOTALL (and IGNORECASE if the signature
            # opted into case-insensitivity). Only one match per pattern is recorded
            # - the goal is to catch the variant, not to enumerate every occurrence.
            # Its own ReDoS budget guard covers the whole-text match, the same fail-
            # loud rule as the per-line path.
            for signature in signatures:
                if not signature.multiline:
                    continue
                match_start = time.monotonic()
                flags = re.DOTALL
                if not signature.case_sensitive:
                    flags |= re.IGNORECASE
                for compiled in signature.compiled_patterns(flags):
                    match = compiled.search(text)
                    _budget = multiline_match_budget(len(text))
                    if time.monotonic() - match_start > _budget:
                        # Same two-cause honesty as the per-line path above, which was
                        # fixed while this one kept the old text. This pass times each
                        # signature on its own, so it CAN name the signature that was
                        # executing - but that is not the same as it being the culprit.
                        #
                        # Measured 2026-10-06: this fired on LookAndFeelScreenKt.java, a
                        # 249 MB / 479,480-line jadx output from a real Kotlin app
                        # (jerboa), for sslcontext_init_with_trustmanager - a signature
                        # whose own comment says it is "bounded, so the regex stays
                        # linear", and which matches NOTHING in that file (zero
                        # occurrences of `getInstance(` at all). A linear regex simply
                        # scanning 249 MB takes ~1.1s. The old text asserted catastrophic
                        # backtracking as the cause, which was false here, and it halted
                        # a real app's scan on a misdiagnosis. Report the measured facts;
                        # the INPUT SIZE is the discriminator, as line length is above.
                        raise TimeoutError(
                            f"static scan: multiline matching of {file_path.name} "
                            f"({len(text)} chars) against signature '{signature.id}' "
                            f"took > {_budget:.1f}s (its whole-text budget for that "
                            f"size). Cause is either a catastrophically-backtracking "
                            f"regex or the cost of a single linear pass over an "
                            f"unusually large file - the input size above is the "
                            f"discriminator. Linearize the offending regex or bound "
                            f"the input; see signatures.py."
                        )
                    if match is not None:
                        # Translate the whole-text match offset back to a 1-based line
                        # number so the Evidence row stays comparable to per-line hits.
                        line_number = text.count("\n", 0, match.start()) + 1
                        _record(signature, match.group(0), line_number)
                        break

    if _trace is not None:
        # "info": the walk finished - a marker that it reached the end, never a
        # claim about what it found (the verdict is the caller's to render).
        _trace("static", "scan.files.done", "info", files=len(files),
               matched=len(matched_signatures),
               unreadable=evidence.unreadable_file_count)

    # RESID-4F observability: record which signatures hit the display cap and
    # by how much, so the report can state the truncation instead of silently
    # implying the retained 50 rows are the whole match set.
    evidence.capped_counts = {
        sig_id: total for sig_id, total in total_counts.items()
        if total > MAX_EVIDENCE_PER_SIGNATURE
    }

    for signature in signatures:
        if signature.id in matched_signatures:
            if signature.category == "root":
                evidence.root_confidence = min(1.0, evidence.root_confidence + signature.weight)
            elif signature.category == "ssl":
                evidence.ssl_confidence = min(1.0, evidence.ssl_confidence + signature.weight)

    # Boundary-1: a category whose detection indicators fired but whose technique
    # matched no signature is UNKNOWN, not absent - record it so coverage can mark
    # it coverage-limited and the report can surface it instead of a silent clean.
    evidence.unattributed_indicators = {
        cat: True for cat in indicator_categories if cat not in matched_categories
    }

    if con is not None:
        # The swap. One transaction, and the only write this scan makes to the
        # main database: the old rows go and this scan's staged rows take their
        # place together, so a reader never sees a half-replaced table and the
        # write lock is held for the copy rather than for the match that produced
        # it (see _prepare_evidence_table).
        con.execute("DELETE FROM evidence")
        con.execute(
            "INSERT INTO evidence(file, signature_id, category, line, matched_text) "
            "SELECT file, signature_id, category, line, matched_text FROM evidence_stage"
        )
        con.commit()
        if _trace is not None:
            # The count is a diagnostic, so it must never be able to abort the
            # scan after the swap committed: read it defensively and let an
            # unreadable table render as the omitted (unknown) field rather
            # than raising out of a marker call with the connection open.
            try:
                _rows = con.execute("SELECT COUNT(*) FROM evidence").fetchone()[0]
            except (sqlite3.Error, TypeError, IndexError):
                _rows = None
            _trace("static", "scan.xref.swap", "ok", rows=_rows)
        con.close()
    return evidence
