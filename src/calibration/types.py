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
    # absence, so Tier 2 (ground-truth comparison) must exclude the NEGATIVE
    # direction of these runs; a detected=True partial run is a real positive
    # found in the partial corpus and stays counted (G3). Tier 1
    # (self-consistency) doesn't have this problem and always counts them.
    # "complete" is exit-code-derived (jadx + apktool exit 0); it is not
    # separately gated on corpus size, so a low-corpus-but-exit-0 decompile is
    # treated as complete for Tier-2 (documented in the calibration report's
    # Notes, W1) - deliberately not gated to avoid over-excluding real runs.
    decompile_completeness: str  # "complete" | "partial" | "unknown"
    # ADR-0008 (G1/G-A/F2): per-surface coverage map {surface: fully_analyzed|
    # partial|unscannable} for java/native/manifest, persisted per run. A
    # category's NEITHER is a confident negative only when EVERY governing
    # surface is fully_analyzed (root->{java,native}, ssl->{java,native,
    # manifest}); a partial/unscannable governing surface excludes it from Tier 2
    # (report.py). Empty/None (pre-coverage runs) => all surfaces unscannable,
    # so pre-coverage negatives are not certified as confident TNs - documented
    # conservative default, not a silent upgrade.
    coverage: dict | None = None


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
