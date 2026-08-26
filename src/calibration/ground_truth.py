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
        fields = fields or {}
        source = fields.get("source")
        if not source:
            raise ValueError(
                f"ground_truth.yaml entry '{apk_hash}' has no 'source' - every entry "
                "must cite how its root/ssl values were independently established"
            )
        # Enforce the GroundTruthEntry `bool | None` contract at load time. A
        # dataclass does NOT validate its annotations at runtime, and PyYAML
        # produces non-booleans for natural hand-edits that then silently
        # MISCLASSIFY in Tier 2 (verified empirically): lowercase `none` and
        # quoted `"false"`/`"true"` parse to truthy STRINGS, so an entry meant
        # "absent" or "unset" reads as PRESENT and a clean scan becomes a
        # fabricated false_negative; a falsy non-bool (`0`, `""`) reads as ABSENT
        # and can launder a genuine miss into a true_negative - a silent confident
        # false negative (ADR-0006). Only real true/false/null (or an omitted key)
        # are admissible; anything else halts loudly (principle 3 / NFR-1) instead
        # of corrupting the integrity-critical calibration measurement.
        for field_name in ("root", "ssl"):
            value = fields.get(field_name)
            if not (isinstance(value, bool) or value is None):
                raise ValueError(
                    f"ground_truth.yaml entry '{apk_hash}' field '{field_name}' must be "
                    f"true, false, or null (got {value!r} of type {type(value).__name__}) - "
                    "write an unestablished value as null or omit the key; never quote the "
                    "boolean, and do not use lowercase `none` (both parse as truthy strings)"
                )
        entries[apk_hash] = GroundTruthEntry(
            apk_hash=apk_hash,
            root=fields.get("root"),
            ssl=fields.get("ssl"),
            source=source,
        )
    return entries
