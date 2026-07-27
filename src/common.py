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
    threshold: float


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
