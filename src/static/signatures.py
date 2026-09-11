"""YAML-driven signature loading and matching against decompiled sources (FR-2.1-2.3, 2.6)."""

from __future__ import annotations

import re
import sqlite3
import time
from collections import defaultdict
from dataclasses import dataclass, field
from pathlib import Path

import yaml

from common import (
    CATEGORIES,
    Evidence,
    StaticEvidence,
    derive_namespace,
    is_known_third_party,
    is_third_party_file,
    load_yaml_entries,
)
from static.deobfuscate import MappingTable, deobfuscate_source
from static.indicators import find_indicator_categories

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

# Per-line regex budget (ReDoS defense, NFR-1 fail-loud). Python's re cannot
# be interrupted mid-backtracking, so the real cure is keeping every signature
# regex linear (anchored/possessive, no unanchored .*). This budget is the
# backstop for any future signature that regresses: if matching a single line
# against the corpus takes longer than this, the signature is catastrophically
# backtracking and scan() raises loudly instead of hanging silently (the exact
# NFR-1/principle-3 violation ReDoS exploits). A legitimate source line never
# approaches this even across 12+ regex signatures; a hostile line that does
# means a bug in a hand-authored rule, and the pipeline should halt, not burn.
LINE_MATCH_BUDGET_SECONDS = 1.0


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


def load_signatures(path: Path) -> list[Signature]:
    return load_yaml_entries(path, _validate_signature_entry, Signature)


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
        for p in root.rglob("*"):
            if not p.is_file() or p.suffix not in SCANNED_SUFFIXES:
                continue
            rel_parts = p.relative_to(root).parts
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
    files = _collect_files(roots)
    con = None
    if sqlite_path is not None:
        # busy_timeout: a leftover/parallel holder of the SQLite lock used to
        # hard-fail with "database is locked" (a killed run leaves an orphan
        # process holding the journal). Wait up to 30s for the lock to free
        # instead of aborting the whole pipeline (principle 3 - fail loud on a
        # real error, not on transient contention).
        con = sqlite3.connect(str(sqlite_path), timeout=30)
        con.execute(
            "CREATE TABLE IF NOT EXISTS evidence ("
            "file TEXT, signature_id TEXT, category TEXT, line INTEGER, matched_text TEXT)"
        )
    # RESID-4C: record how many files were actually walked, so a negative from
    # a near-empty corpus is distinguishable from a full-scan clean result.
    evidence.scanned_file_count = len(files)

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
    for file_path, root in files:
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
                    "INSERT INTO evidence(file, signature_id, category, line, matched_text) "
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
                for signature in signatures:
                    if signature.multiline:
                        continue
                    matched_text = _line_matches(line, signature)
                    # ReDoS backstop (NFR-1 fail-loud): check the budget after every
                    # signature attempt on the line (matched or not - a catastrophic
                    # regex can return None after burning the time). A single slow
                    # line means a hand-authored rule is backtracking quadratically,
                    # so scan() raises loudly instead of hanging the whole pipeline.
                    if time.monotonic() - line_start > LINE_MATCH_BUDGET_SECONDS:
                        # The budget is cumulative across ALL signatures on this one
                        # line (line_start is per line), so two distinct causes reach
                        # this raise: a single catastrophically-backtracking regex, OR
                        # the aggregate cost of every signature over an unusually long
                        # line (a minified .js/.bundle can be one multi-MB line, and
                        # those suffixes are scanned). Report the measured facts - the
                        # line LENGTH is the discriminator between the two - and name
                        # the signature that was EXECUTING when the budget tripped
                        # WITHOUT asserting it is the culprit: it may be a perfectly
                        # linear rule (even a non-regex string_literal) that merely ran
                        # last, so the old "signature X is catastrophically backtracking
                        # (ReDoS)" was a false specific-cause claim (principle 3). Still
                        # fail loud (NFR-1); the budget itself is unchanged. The
                        # multiline pass below times each signature on its own
                        # (match_start is per signature), so its message CAN name the
                        # responsible signature and does.
                        raise TimeoutError(
                            f"static scan: matching line {line_number} "
                            f"({len(line)} chars) of {file_path.name} against "
                            f"{len(signatures)} signatures took > "
                            f"{LINE_MATCH_BUDGET_SECONDS:.1f}s (executing signature "
                            f"'{signature.id}' when the budget tripped). Cause is "
                            f"either a catastrophically-backtracking regex or the "
                            f"aggregate matching cost over an unusually long line - "
                            f"the line length above is the discriminator. Linearize "
                            f"the offending regex or split the input; see signatures.py."
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
                    if time.monotonic() - match_start > LINE_MATCH_BUDGET_SECONDS:
                        raise TimeoutError(
                            f"static scan: multiline matching of {file_path.name} against "
                            f"signature '{signature.id}' took > {LINE_MATCH_BUDGET_SECONDS:.1f}s - "
                            f"the regex is catastrophically backtracking (ReDoS). The regex "
                            f"must be linearized; see signatures.py."
                        )
                    if match is not None:
                        # Translate the whole-text match offset back to a 1-based line
                        # number so the Evidence row stays comparable to per-line hits.
                        line_number = text.count("\n", 0, match.start()) + 1
                        _record(signature, match.group(0), line_number)
                        break

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
        con.commit()
        con.close()
    return evidence
