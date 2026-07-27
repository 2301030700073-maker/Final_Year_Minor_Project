"""Flat-JSON persistence for Phase 1 (FR-7.1). Becomes SQLite at Phase 4 - db.py/schema.py are Phase-4-only."""

from __future__ import annotations

import json
from dataclasses import asdict, is_dataclass
from enum import Enum
from pathlib import Path


def _to_serializable(obj):
    if is_dataclass(obj) and not isinstance(obj, type):
        obj = asdict(obj)
    if isinstance(obj, Enum):
        return obj.value
    if isinstance(obj, dict):
        return {k: _to_serializable(v) for k, v in obj.items()}
    if isinstance(obj, list):
        return [_to_serializable(v) for v in obj]
    return obj


def existing_metadata(analysis_root: Path, apk_hash: str) -> dict | None:
    """FR-1.3: re-running against an already-ingested APK references the existing record."""
    path = Path(analysis_root) / apk_hash / "metadata.json"
    if path.exists():
        return json.loads(path.read_text(encoding="utf-8"))
    return None


def save_metadata(analysis_root: Path, apk_hash: str, metadata: dict) -> Path:
    target_dir = Path(analysis_root) / apk_hash
    target_dir.mkdir(parents=True, exist_ok=True)
    path = target_dir / "metadata.json"
    path.write_text(json.dumps(_to_serializable(metadata), indent=2), encoding="utf-8")
    return path


def save_run(analysis_root: Path, apk_hash: str, run_id: str, run_data: dict) -> Path:
    target_dir = Path(analysis_root) / apk_hash
    target_dir.mkdir(parents=True, exist_ok=True)
    path = target_dir / f"run_{run_id}.json"
    path.write_text(json.dumps(_to_serializable(run_data), indent=2), encoding="utf-8")
    return path
