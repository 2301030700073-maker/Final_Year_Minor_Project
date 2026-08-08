"""YAML-driven signature loading and matching against decompiled sources (FR-2.1-2.3, 2.6)."""

from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path

import yaml

from common import Evidence, StaticEvidence

SCANNED_SUFFIXES = (".java", ".xml")

VALID_CATEGORIES = {"root", "ssl"}
VALID_PATTERN_TYPES = {"string_literal", "class_reference", "regex"}


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

    for signature in signatures:
        matched_for_signature = False
        for file_path, root in files:
            try:
                lines = file_path.read_text(encoding="utf-8", errors="ignore").splitlines()
            except OSError:
                continue
            for line_number, line in enumerate(lines, start=1):
                matched_text = _line_matches(line, signature)
                if matched_text is None:
                    continue
                matched_for_signature = True
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

        if matched_for_signature:
            if signature.category == "root":
                evidence.root_confidence = min(1.0, evidence.root_confidence + signature.weight)
            elif signature.category == "ssl":
                evidence.ssl_confidence = min(1.0, evidence.ssl_confidence + signature.weight)

    return evidence
