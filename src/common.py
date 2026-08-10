"""Shared types used across every pipeline stage."""

from __future__ import annotations

from dataclasses import dataclass, field
from enum import Enum
from typing import Literal, Protocol


@dataclass
class StageResult:
    stage: str
    status: Literal["success", "failed", "skipped"]
    evidence: dict
    error: str | None = None
    duration_ms: int = 0


@dataclass
class Evidence:
    signature_id: str
    file: str
    line_or_offset: int | str
    matched_text: str


@dataclass
class StaticEvidence:
    root_confidence: float = 0.0
    ssl_confidence: float = 0.0
    root_evidence: list[Evidence] = field(default_factory=list)
    ssl_evidence: list[Evidence] = field(default_factory=list)
    # RESID-4C: how many files scan() actually walked. A partial decompile that
    # yields few files returns a NEITHER indistinguishable from a full scan that
    # genuinely found nothing - carrying the count lets reporting/calibration
    # discount a degenerate negative instead of certifying absence from a tiny
    # corpus.
    scanned_file_count: int = 0
    # How many candidate files scan() could NOT read (OSError). counted
    # separately from scanned_file_count so a scan that skipped files is not
    # presented as a full scan - an unreadable corpus is a degradation, and a
    # NEITHER built over it must not read as a confident negative.
    unreadable_file_count: int = 0


class Action(str, Enum):
    ROOT_ONLY = "ROOT_ONLY"
    SSL_ONLY = "SSL_ONLY"
    BOTH = "BOTH"
    NEITHER = "NEITHER"


@dataclass
class CategoryVerdict:
    confidence: float
    detected: bool
    evidence: list[Evidence]


@dataclass
class ClassificationResult:
    action: Action
    root: CategoryVerdict
    ssl: CategoryVerdict
    root_threshold: float = 0.7
    ssl_threshold: float = 0.7
    # RESID-4C: carried through from StaticEvidence so the report can show how
    # many files a verdict was based on (see scan()).
    scanned_file_count: int = 0
    # RESID-4G: candidate files that could not be read (OSError), carried so
    # the report can flag a verdict built over a degraded corpus.
    unreadable_file_count: int = 0


@dataclass
class VerificationResult:
    root_bypassed: bool | None
    ssl_bypassed: bool | None
    evidence_lines: dict[str, str]


@dataclass
class CorrelationResult:
    matches: bool
    mismatches: list[str]


class SuccessCheck(Protocol):
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        """Return which categories were confirmed bypassed, with the specific
        evidence line proving it - never a bare boolean."""
        ...
