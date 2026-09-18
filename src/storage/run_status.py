"""Per-run progress sidecar (ADR-0021).

A run's completion is recorded at the end: `save_run` writes the `runs` row and
`record_run_completion` appends to the audit log, both after every analysis stage
has finished. Everything a run knows about itself before that point therefore
dies with the process, which is how a Netflix run that stopped after
`manifest_parse` left an `apks` row, 924 MB of artefacts, and no statement
anywhere of how far it got or that it had stopped at all.

This module records the progress as it happens, in the run's own analysis
directory, so that a run killed by a signal that cannot be caught still leaves a
record reading "reached native_scan and did not reach the next stage".

Two deliberate boundaries:

- **It is not the authority on whether a run finished.** The audit log is: an
  interrupted run is an authorization with no completion (attestation's
  `uncompleted_runs`). Finalization here happens last, so a run that dies between
  `save_run` and its finalize leaves a sidecar reading `started` for a run the
  audit log shows as completed. Callers take orphanhood from the log and use this
  only to say *where* a run stopped, which keeps that window from manufacturing a
  phantom interrupted run.
- **Write failures are raised, not swallowed.** A caller decides what a failed
  write means; this module never turns one into a silent no-op. A missing trace
  is exactly the condition this file exists to prevent.
"""

from __future__ import annotations

import json
import os
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

RUN_STATUS_FILENAME = "run_status.json"

# Identity fields copied from the caller at start. Kept as a tuple so the
# recorder and any reader agree on what an identity is, and so a field added here
# shows up in both without a second edit.
IDENTITY_FIELDS = ("run_id", "apk_hash", "package_name", "target", "action", "operator", "justification", "git_commit")


def run_status_path(analysis_root: Path | str, apk_hash: str) -> Path:
    """Where a given APK's sidecar lives - beside its other artefacts, keyed the
    same way, so it is found by anyone who knows the hash (the audit log's
    authorization carries it)."""
    return Path(analysis_root) / apk_hash / RUN_STATUS_FILENAME


def _now() -> str:
    return datetime.now(timezone.utc).isoformat()


class RunStatusRecorder:
    """Writes a run's progress to its analysis directory as the run proceeds.

    Usage is start() -> record(stage) per completed stage -> finish(). Every
    method writes the whole (small) document, so the file on disk is always a
    complete JSON object rather than an append log a reader would have to
    interpret; the cost is a few hundred bytes per stage against a pipeline whose
    stages take seconds to minutes.
    """

    def __init__(self, analysis_root: Path | str, apk_hash: str, identity: dict[str, Any]):
        self.path = run_status_path(analysis_root, apk_hash)
        self._data: dict[str, Any] = {
            "state": "started",
            "started_at": _now(),
            "updated_at": _now(),
            "stages": [],
            "last_stage": None,
            "last_stage_status": None,
        }
        for field_name in IDENTITY_FIELDS:
            if field_name in identity:
                self._data[field_name] = identity[field_name]

    def _write(self) -> None:
        """Atomic: a reader must never observe a half-written document, which is
        the one moment its contents matter most."""
        self._data["updated_at"] = _now()
        self.path.parent.mkdir(parents=True, exist_ok=True)
        tmp = self.path.with_suffix(f".tmp{os.getpid()}")
        tmp.write_text(json.dumps(self._data, indent=1, sort_keys=True), encoding="utf-8")
        os.replace(tmp, self.path)

    def start(self) -> None:
        self._write()

    def record(self, stage: Any) -> None:
        """Record one completed stage. Accepts a StageResult or the dict it
        serializes to, because the pipeline holds the objects on the live path and
        the dicts on the regeneration path."""
        if isinstance(stage, dict):
            name = stage.get("stage")
            status = stage.get("status")
            duration_ms = stage.get("duration_ms")
            error = stage.get("error")
        else:
            name = getattr(stage, "stage", None)
            status = getattr(stage, "status", None)
            duration_ms = getattr(stage, "duration_ms", None)
            error = getattr(stage, "error", None)
        entry = {"stage": name, "status": status, "duration_ms": duration_ms}
        if error:
            # A failed stage is the last thing a run may reach before it halts;
            # its reason belongs in the record, not only on the console.
            entry["error"] = error
        self._data["stages"].append(entry)
        self._data["last_stage"] = name
        self._data["last_stage_status"] = status
        self._write()

    def finish(self, *, report_path: str | None) -> None:
        self._data["state"] = "finished"
        self._data["finished_at"] = _now()
        self._data["report_path"] = str(report_path) if report_path else None
        self._write()


def read_run_status(analysis_root: Path | str, apk_hash: str | None) -> dict[str, Any] | None:
    """The sidecar for one APK, or None when there is none to read.

    A corrupt sidecar is NOT reported as absent: `{"state": "unreadable", ...}`
    keeps "we recorded nothing" distinct from "we recorded something we could not
    parse", because collapsing them would present a damaged record as a run that
    never started."""
    if not apk_hash:
        return None
    path = run_status_path(analysis_root, apk_hash)
    if not path.is_file():
        return None
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, ValueError) as exc:
        return {"state": "unreadable", "error": str(exc), "path": str(path)}
    if not isinstance(data, dict):
        return {"state": "unreadable", "error": "sidecar is not a JSON object", "path": str(path)}
    return data
