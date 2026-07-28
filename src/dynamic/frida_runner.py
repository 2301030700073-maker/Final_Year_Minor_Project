"""Frida attach + script injection for the dynamic bypass stage (FR-4.3). Reference-machine only."""

from __future__ import annotations

import time
from pathlib import Path

from common import Action, StageResult
from dynamic.device import setup_frida_connection

SCRIPT_DIR = Path(__file__).parent / "scripts"

SCRIPTS_BY_ACTION = {
    Action.ROOT_ONLY: ["root_bypass_v1.js"],
    Action.SSL_ONLY: ["ssl_pinning_bypass_v1.js"],
    Action.BOTH: ["root_bypass_v1.js", "ssl_pinning_bypass_v1.js"],
}


def attach(device_serial: str, package_name: str):
    device = setup_frida_connection(device_serial)
    pid = device.spawn([package_name])
    session = device.attach(pid)
    return device, session, pid


def load_script(session, script_name: str, on_message=None):
    source = (SCRIPT_DIR / script_name).read_text(encoding="utf-8")
    script = session.create_script(source)
    if on_message:
        script.on("message", on_message)
    script.load()
    return script


def run_dynamic_stage(device_serial: str, package_name: str, action: Action, settle_seconds: int = 5) -> StageResult:
    start = time.monotonic()
    messages: list[dict] = []
    try:
        if action == Action.NEITHER:
            return StageResult(
                stage="dynamic", status="skipped",
                evidence={"reason": "NEITHER classification - no bypass technique to apply"},
                duration_ms=int((time.monotonic() - start) * 1000),
            )

        script_names = SCRIPTS_BY_ACTION[action]
        device, session, pid = attach(device_serial, package_name)

        def on_message(message, data):
            messages.append(message)

        for name in script_names:
            load_script(session, name, on_message)

        device.resume(pid)
        time.sleep(settle_seconds)  # let the app run past its check points

        return StageResult(
            stage="dynamic", status="success",
            evidence={"scripts_applied": script_names, "pid": pid, "frida_messages": messages},
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    except Exception as exc:
        return StageResult(
            stage="dynamic", status="failed",
            evidence={"frida_messages": messages}, error=str(exc),
            duration_ms=int((time.monotonic() - start) * 1000),
        )
