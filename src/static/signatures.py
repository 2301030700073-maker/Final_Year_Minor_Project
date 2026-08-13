"""YAML-driven signature loading and matching against decompiled sources (FR-2.1-2.3, 2.6)."""

from __future__ import annotations

import re
import sqlite3
import time
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path

import yaml

from common import Evidence, StaticEvidence
from static.deobfuscate import MappingTable, deobfuscate_source

# L-M3 (S1): scan the fallback evidence layer too. jadx's .java decompile can be
# partial on large/obfuscated APKs (PropertyGuru - jadx died on one AndroidX
# class with 1563 real files written), but apktool's .smali reliably survives
# and carries root-detection string constants (su paths, test-keys, magisk
# artifacts) as const-strings even when jadx failed. Java-oriented regex
# signatures (method calls, `implements X509TrustManager`) cannot match smali's
# structured syntax (;->, $Builder, Ljavax/net/ssl/...;), so smali scanning is
# strictly additive evidence on a surface that was previously walked but ignored.
SCANNED_SUFFIXES = (".java", ".xml", ".smali")

VALID_CATEGORIES = {"root", "ssl"}
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


def _validate_signature_entry(entry: dict, path: Path) -> None:
    """Reject a signature that would otherwise silently no-op or crash scan.
    The category check is the critical one (4-2): scan() guards on
    category=="root"/"ssl", so a mistyped value ("Root", "both", "pinning")
    matches neither branch - the signature is silently dead and detection is
    silently weaker. Fail loudly at load instead (ADR-0001/principle 3)."""
    sig_id = entry.get("id", "<unnamed>")
    category = entry.get("category")
    if category not in VALID_CATEGORIES:
        raise ValueError(
            f"{path}: signature '{sig_id}' has invalid category '{category}' - "
            f"must be one of {sorted(VALID_CATEGORIES)}"
        )
    weight = entry.get("weight")
    if weight is None or not isinstance(weight, (int, float)) or not (0 <= weight <= 1):
        raise ValueError(
            f"{path}: signature '{sig_id}' has invalid weight '{weight}' - must be a number in [0, 1]"
        )
    pattern_type = entry.get("pattern_type")
    if pattern_type not in VALID_PATTERN_TYPES:
        raise ValueError(
            f"{path}: signature '{sig_id}' has invalid pattern_type '{pattern_type}' - "
            f"must be one of {sorted(VALID_PATTERN_TYPES)}"
        )
    if not entry.get("patterns"):
        raise ValueError(f"{path}: signature '{sig_id}' has no patterns")
    # L-M9: the new opt-in flags must fail loudly on a typo (a string "true"
    # instead of a bool) exactly like the other hand-authored fields, instead
    # of truthy-silently changing detection behavior at scan time.
    for flag_name in ("case_sensitive", "multiline"):
        value = entry.get(flag_name)
        if value is not None and not isinstance(value, bool):
            raise ValueError(
                f"{path}: signature '{sig_id}' has invalid {flag_name} "
                f"{value!r} - must be a boolean"
            )
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
    with open(path, "r", encoding="utf-8") as f:
        raw = yaml.safe_load(f) or []
    signatures = []
    for entry in raw:
        _validate_signature_entry(entry, path)
        signatures.append(Signature(**entry))
    return signatures


def _line_matches(line: str, signature: Signature) -> str | None:
    """Return the matched text if this line matches the signature, else None.

    L-M9 (S5/G10): honors the signature's opt-in case_sensitive flag. When
    case-insensitive, string-literal/class-reference patterns match on
    folded case and regex patterns compile with re.IGNORECASE, so mixed-case
    variants of a known technique (e.g. "Test-Keys" or "Su") stop silently
    escaping detection. Default (case_sensitive=True) is byte-exact current
    behavior."""
    if signature.pattern_type in ("string_literal", "class_reference"):
        if not signature.case_sensitive:
            folded_line = line.casefold()
            for pattern in signature.patterns:
                if pattern.casefold() in folded_line:
                    return pattern
            return None
        for pattern in signature.patterns:
            if pattern in line:
                return pattern
        return None
    if signature.pattern_type == "regex":
        flags = re.IGNORECASE if not signature.case_sensitive else 0
        for pattern in signature.patterns:
            match = re.search(pattern, line, flags)
            if match:
                return match.group(0)
        return None
    raise ValueError(f"unknown pattern_type '{signature.pattern_type}' on signature '{signature.id}'")


def _collect_files(roots: list[Path]) -> list[tuple[Path, Path]]:
    """Return (file_path, root_it_was_found_under) pairs, for relative-path reporting."""
    files = []
    for root in roots:
        for p in root.rglob("*"):
            if p.is_file() and p.suffix in SCANNED_SUFFIXES:
                files.append((p, root))
    return files


def scan(
    decompiled_roots: Path | list[Path],
    signatures: list[Signature],
    sqlite_path: Path | str | None = None,
    mapping: MappingTable | None = None,
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
        con = sqlite3.connect(str(sqlite_path))
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
            text = file_path.read_text(encoding="utf-8")
            lines = text.splitlines()
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
        def _record(signature: Signature, matched_text: str, line_number: int) -> None:
            matched_signatures.add(signature.id)
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
                        raise TimeoutError(
                            f"static scan: matching line {line_number} of "
                            f"{file_path.name} took > {LINE_MATCH_BUDGET_SECONDS:.1f}s - "
                            f"signature '{signature.id}' is catastrophically backtracking "
                            f"(ReDoS). The regex must be linearized; see signatures.py."
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
                for pattern in signature.patterns:
                    match = re.search(pattern, text, flags)
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

    if con is not None:
        con.commit()
        con.close()
    return evidence
