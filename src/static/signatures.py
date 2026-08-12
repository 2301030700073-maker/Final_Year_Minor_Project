"""YAML-driven signature loading and matching against decompiled sources (FR-2.1-2.3, 2.6)."""

from __future__ import annotations

import re
import time
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path

import yaml

from common import Evidence, StaticEvidence

SCANNED_SUFFIXES = (".java", ".xml")

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
    """Return the matched text if this line matches the signature, else None."""
    if signature.pattern_type in ("string_literal", "class_reference"):
        for pattern in signature.patterns:
            if pattern in line:
                return pattern
        return None
    if signature.pattern_type == "regex":
        for pattern in signature.patterns:
            match = re.search(pattern, line)
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


def scan(decompiled_roots: Path | list[Path], signatures: list[Signature]) -> StaticEvidence:
    """Scan one or more decompiled-output roots (e.g. jadx's Java sources and
    apktool's decoded resources) against the given signatures."""
    roots = [decompiled_roots] if isinstance(decompiled_roots, (str, Path)) else list(decompiled_roots)
    roots = [Path(r) for r in roots]
    evidence = StaticEvidence()
    files = _collect_files(roots)
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
            # errors="strict" (the default): errors="ignore" would read a file
            # with malformed bytes by silently stripping them, while the file
            # still counted as fully scanned - a second silent partial-read
            # path alongside the OSError case. A file that cannot fully decode
            # is genuinely degraded, so count it unreadable the same way, and
            # let a NEITHER built over it be flagged rather than read as clean.
            lines = file_path.read_text(encoding="utf-8").splitlines()
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
        for line_number, line in enumerate(lines, start=1):
            line_start = time.monotonic()
            for signature in signatures:
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
                matched_signatures.add(signature.id)
                total_counts[signature.id] += 1
                # RESID-4F: record at most MAX_EVIDENCE_PER_SIGNATURE matches per
                # signature - enough to attribute the finding, not thousands of
                # near-identical rows. Weight is unaffected (added below once
                # per signature via matched_signatures).
                if evidence_counts[signature.id] >= MAX_EVIDENCE_PER_SIGNATURE:
                    continue
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

    return evidence
