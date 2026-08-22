"""Loads config/ground_truth.yaml - the small, explicit, independently-
sourced registry Tier 2 calibration is measured against. Versioned in git,
loaded fresh at computation time, same pattern as config/signatures/*.yaml
- no DB table needed at this scale (~4-10 entries today).

Asymmetric evidentiary bar, by design:
- `false` (absence) may ONLY come from independent verification - reading
  the real decompiled source, confirming no OkHttp/TrustManager/network-
  security-config, or well-established prior knowledge of a stock app.
  Never derived from the pipeline's own detected=False or bypassed=False -
  those are exactly the two ambiguous cases Tier 2 exists to stay
  independent of.
- `true` (presence) may come from the same independent sourcing, OR from a
  genuine bypassed=True result - that's real empirical proof the code path
  exists and does something, not circular the way reusing `detected` would
  be. A category can also be `null` (not yet established) rather than
  forced to a value - see calibration/types.py's GroundTruthEntry.
"""

from __future__ import annotations

from pathlib import Path

import yaml

from calibration.types import GroundTruthEntry

# Anchored to the project root, not cwd (A2): this config input is a read-only
# asset versioned in git alongside the code, and a bare relative "config/..."
# path made load_ground_truth() falsely fail (FileNotFoundError) whenever the
# CLI or calibration was invoked from any directory other than the project root,
# even though the file was present. parents[2] of src/calibration/ground_truth.py
# is the project root; the sibling cli.py CONFIG_ROOT anchor uses the same rule.
DEFAULT_PATH = Path(__file__).resolve().parents[2] / "config" / "ground_truth.yaml"


def load_ground_truth(path: Path = DEFAULT_PATH) -> dict[str, GroundTruthEntry]:
    with open(path, "r", encoding="utf-8") as f:
        raw = yaml.safe_load(f) or {}

    entries: dict[str, GroundTruthEntry] = {}
    for apk_hash, fields in raw.items():
        source = (fields or {}).get("source")
        if not source:
            raise ValueError(
                f"ground_truth.yaml entry '{apk_hash}' has no 'source' - every entry "
                "must cite how its root/ssl values were independently established"
            )
        entries[apk_hash] = GroundTruthEntry(
            apk_hash=apk_hash,
            root=fields.get("root"),
            ssl=fields.get("ssl"),
            source=source,
        )
    return entries
