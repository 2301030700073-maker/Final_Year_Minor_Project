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
  `uncompleted_runs`). The states here are not verdicts either. A run whose audit
  completion failed reads `ended_unaudited` - it ended on purpose, and it is an
  orphan by the log's own verdict - while one that completed and audited but never
  reached the `runs` table reads `finished`. Callers take orphanhood from the log
  and use this file only to say *where* a run stopped and *how* it ended, so
  neither ending can be mistaken for an interruption. For the same reason the
  file records the host and process that owns it: `started` is not a death, and
  only a probe can say whether the run behind it is still going.
- **Write failures are raised, not swallowed.** A caller decides what a failed
  write means; this module never turns one into a silent no-op. A missing trace
  is exactly the condition this file exists to prevent.
"""

from __future__ import annotations

import json
import os
import socket
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


def _proc_start_time(pid: int) -> str | None:
    """The kernel's start time for a pid (field 22 of /proc/<pid>/stat), or None
    when it cannot be read - the process is gone, or this platform has no /proc."""
    try:
        stat = Path(f"/proc/{pid}/stat").read_text(encoding="utf-8")
    except OSError:
        return None
    # The parenthesised comm can contain spaces and parentheses, so split after
    # the LAST ')' rather than on whitespace. fields[0] is field 3 (state), which
    # puts starttime - field 22 - at index 19.
    fields = stat.rsplit(")", 1)[-1].split()
    return fields[19] if len(fields) > 19 else None


def run_is_alive(status: dict[str, Any]) -> bool | None:
    """Whether the process that wrote this sidecar is still running.

    A sidecar reading `started` says a run did not record an ending. It does NOT
    say the run ended: a run in flight reads exactly the same, which is how a live
    Netflix run was read as an interruption for half an hour (ADR-0021, the
    correction to its end-to-end record). Answering that needs a probe, and a
    probe is a fact about a host, so this returns:

    - True / False when the sidecar names this host and the pid can be checked -
      False covers both a pid that is gone and one that was recycled onto an
      unrelated process (the recorded start time is what separates them).
    - None when the answer cannot be established: the sidecar was written on
      another host, has no pid (a file from before this field existed), or this
      platform exposes no /proc to read. Unknown, never dead - the same
      distinction this module keeps between absent and unreadable."""
    if status.get("host") != socket.gethostname():
        return None
    pid = status.get("pid")
    if not isinstance(pid, int) or isinstance(pid, bool) or pid <= 0:
        return None
    if not Path("/proc").is_dir():
        return None
    current_start = _proc_start_time(pid)
    if current_start is None:
        return False  # the pid is gone
    recorded_start = status.get("pid_start")
    if recorded_start and current_start != recorded_start:
        return False  # the pid now belongs to a different process
    return True


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
        # Who is running, so a reader can ask whether that run is still alive.
        # The pid alone cannot answer it - pids are recycled, and a stale pid
        # would make "alive" a fact about an unrelated process - so the kernel's
        # start time for it is recorded beside it.
        self._data["host"] = socket.gethostname()
        self._data["pid"] = os.getpid()
        self._data["pid_start"] = _proc_start_time(os.getpid())
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

    def finish(
        self,
        *,
        report_path: str | None,
        audited: bool = True,
        save_error: str | None = None,
        audit_error: str | None = None,
    ) -> None:
        """Record the run's end. Call this on EVERY path that reaches an outcome -
        including the ones that end in a non-zero exit - because a sidecar left in
        `started` asserts that the run never reached an end, and a deliberate
        failure path is not an interruption.

        `audited` distinguishes the two ways a run can end, and they are not the
        same fact: a run whose audit completion failed is an authorization with no
        completion in the log - an orphan, by the log's own verdict - while a run
        that completed and was audited but whose DB save failed is complete and
        merely unrecorded in `runs`. Collapsing them into one `finished` would put
        this file in contradiction with the log on the first case, and the log is
        the authority on whether a run finished.
        """
        self._data["state"] = "finished" if audited else "ended_unaudited"
        self._data["finished_at"] = _now()
        self._data["report_path"] = str(report_path) if report_path else None
        if save_error is not None:
            # The report exists and the run is audited; only the DB row is missing.
            # Recorded because "the run finished" and "the run is in the runs table"
            # are different claims, and a reader deserves both.
            self._data["save_error"] = str(save_error)
        if audit_error is not None:
            # The run ended deliberately but no completion reached the log, which
            # is exactly what leaves it an orphan on the audit side. Kept for the
            # same reason as save_error: the state says an end-record is missing,
            # the reason says which one and why.
            self._data["audit_error"] = str(audit_error)
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
