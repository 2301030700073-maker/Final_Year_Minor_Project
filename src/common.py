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
    # principle 2 / ADR-0001: every finding carries its verification tier.
    # All evidence this engine produces is deterministic_matched by
    # construction - it comes from signature matching, never from an AI/LLM
    # hypothesis. Dynamic confirmation lives on VerificationResult, not on
    # Evidence; nothing here may ever be labeled dynamically_confirmed (that
    # tier belongs to the dynamic stage's own output). AI-hypothesized tiers
    # are Phase 5+ and will add to this field's values, not new fields.
    verification_state: str = "deterministic_matched"


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
    # Finding J: the count alone is honest but not actionable - a reviewer can
    # see that N files failed to read but not which file to inspect or reproduce.
    # Carry the offending paths (relative to the decompiled root, matching
    # Evidence.file) so the report/console name them. Empty when every file read.
    unreadable_files: list[str] = field(default_factory=list)
    # RESID-4F observability: total matches per signature that exceeded the
    # 50-row-per-signature display cap, keyed by signature_id -> total matches.
    # The cap keeps the report readable (thousands of near-identical rows add
    # no signal), but dropping the surplus silently would hide how many matches
    # a signature actually produced - this makes the truncation honest so the
    # report can say "matched 300x, showing first 50" instead of implying 50 is
    # the whole story. Detection/confidence are unaffected (weight is added once
    # per matched signature regardless, via matched_signatures).
    capped_counts: dict[str, int] = field(default_factory=dict)


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
    # Finding J: the paths of the files that failed to read (relative to the
    # decompiled root), carried alongside the count so the report and console
    # can name the offending file(s) instead of hiding them behind a number.
    unreadable_files: list[str] = field(default_factory=list)
    # Machine-readable ownership caveat. Attribution used to reach only the
    # human Markdown report (and root-only), so an automated consumer of the
    # stored classification_json read a bundled-SDK-only ROOT_ONLY as the
    # app's own anti-tampering. The pipeline attaches the attribution dict
    # here (report/attribution.attribute_root_evidence) after classify(); it
    # persists to classification_json via asdict and the report reads it, so
    # the machine output and the report agree. all_third_party=True means every
    # root match is in a recognized bundled SDK - NOT the app's own logic.
    # None when there is no root evidence or attribution was not computed.
    # Both share the same vendor taxonomy (report/attribution.py) - SSL was
    # wired when okhttp3/com.squareup/the React Native network SDKs were added.
    root_attribution: dict | None = None
    ssl_attribution: dict | None = None
    # RESID-4F observability: carried from StaticEvidence so the report can
    # state which signatures hit the per-signature evidence cap and how many
    # matches were truncated (see StaticEvidence.capped_counts). Empty when no
    # signature exceeded the cap.
    evidence_capped_counts: dict[str, int] = field(default_factory=dict)


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
