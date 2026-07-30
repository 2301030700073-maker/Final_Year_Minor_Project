"""Shared types for the calibration harness (FR-9). Deliberately dependency-
free - no SQLAlchemy, no I/O - so everything downstream is fixture-testable
without a DB or the Android toolchain (NFR-6, NFR-17). storage/results.py
is the only place that knows how to turn a RunRecord row into a RunRow;
calibration itself never imports storage.
"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Literal

Category = Literal["root", "ssl"]


@dataclass(frozen=True)
class RunRow:
    """One category-agnostic view of a single persisted run - the entire
    contract calibration has with storage."""

    apk_hash: str
    run_id: str
    action: str
    root_confidence: float
    root_detected: bool
    root_bypassed: bool | None
    ssl_confidence: float
    ssl_detected: bool
    ssl_bypassed: bool | None
    # Phase 4 partial-decompile tolerance (static/decompile.py) - a
    # detected=False from a "partial" or "unknown" decompile isn't proof of
    # absence, so Tier 2 (ground-truth comparison) must exclude these runs
    # entirely; Tier 1 (self-consistency) doesn't have this problem and
    # still counts them.
    decompile_completeness: str  # "complete" | "partial" | "unknown"


@dataclass(frozen=True)
class GroundTruthEntry:
    """An independently-sourced claim about what a specific APK actually
    contains - never derived from the pipeline's own live predictions
    (that would be circular). See ground_truth.py's module docstring for
    the asymmetry rule between `True` and `False` values."""

    apk_hash: str
    root: bool | None  # None = not yet independently established
    ssl: bool | None
    source: str  # required, non-empty - no entry without a citation
