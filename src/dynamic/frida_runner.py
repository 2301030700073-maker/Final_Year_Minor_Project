"""Frida attach + script injection for the dynamic bypass stage (FR-4.3). Reference-machine only."""

from __future__ import annotations

import subprocess
import threading
import time
from pathlib import Path

from common import Action, StageResult
from dynamic.device import _require_adb, setup_frida_connection
from dynamic.synthesizer import ROOT_RECIPES

SCRIPT_DIR = Path(__file__).parent / "scripts"

# Vendored third-party universal bypass: ssecurityy's
# "universal-robust-advanced-root--ssl-pinning-bypass", retrieved via
# `frida --codeshare`. Kept at repo-root scripts/ (not SCRIPT_DIR, which holds
# this project's own hand-authored scripts) to preserve provenance and mark it
# third-party. Not this project's code - used as-is (see scripts/VENDORED.md for
# provenance and the integrity caveat).
#
# It is NOT loaded during a run, only preserved here (and asserted to exist by
# tests) as the audited record of the external supplement it once was. Live
# verification on a real target (AndroGoat via a trusted mitmproxy CA) showed a
# second script load suppresses the synthesized bypass's observers on BOTH root
# and SSL regardless of whether their slot methods are disjoint: Frida's
# `implementation =` REPLACES the one slot, so the vendor's re-applied
# java.io.File.exists (root) and its SSL socket/trust-manager patches (SSL)
# revert or shadow the synth's patches - root_bypassed=True synth-only vs 0
# probeHits synth+vendor; ssl_bypassed=True synth-only vs 0 observer messages
# synth+vendor. The synthesized bypass, made comprehensive (native libc path-
# hiding + exec-su for root; native BoringSSL hook + OkHttp pinner neutralizer +
# conscrypt trust-manager observer for SSL), is the complete observed mechanism,
# so the vendor is dropped whenever a synthesized bypass is present.
VENDORED_UNIVERSAL = "universal-robust-advanced-root--ssl-pinning-bypass"
VENDORED_UNIVERSAL_PATH = Path(__file__).resolve().parents[2] / "scripts" / f"{VENDORED_UNIVERSAL}.js"

# Keyed by target, not just action - UnCrackable1 and UnCrackable2 need
# different scripts for the same ROOT_ONLY action, since their root-check
# code lives in differently-named classes (confirmed against real
# decompiled sources, see docs/plans/handoff/phase-2-handoff.md).
SCRIPTS_BY_TARGET_ACTION: dict[str, dict[Action, list[str]]] = {
    "uncrackable1": {
        Action.ROOT_ONLY: ["root_bypass_v1.js"],
        Action.SSL_ONLY: ["ssl_pinning_bypass_v1.js"],
        Action.BOTH: ["root_bypass_v1.js", "ssl_pinning_bypass_v1.js"],
    },
    "uncrackable2": {
        # ssl_pinning_bypass_v1.js hooks generic OkHttp/conscrypt classes,
        # nothing sg.vantagepoint-specific, so it's genuinely reusable as-is.
        # Filled in for SSL_ONLY/BOTH even though the real APK only ever
        # classifies ROOT_ONLY, so a KeyError isn't waiting on a future
        # reclassification.
        Action.ROOT_ONLY: ["root_bypass_uncrackable2.js"],
        Action.SSL_ONLY: ["ssl_pinning_bypass_v1.js"],
        Action.BOTH: ["root_bypass_uncrackable2.js", "ssl_pinning_bypass_v1.js"],
    },
    "uncrackable3": {
        Action.ROOT_ONLY: ["root_bypass_uncrackable3.js"],
        Action.SSL_ONLY: ["ssl_pinning_bypass_v1.js"],
        Action.BOTH: ["root_bypass_uncrackable3.js", "ssl_pinning_bypass_v1.js"],
    },
    "AndroGoat": {
        # Real app, not an UnCrackable target: root detection lives in
        # owasp.sat.agoat classes (no bypass script authored), but its SSL
        # pinning is plain OkHttp CertificatePinner for owasp.org, which
        # ssl_pinning_bypass_v1.js hooks generically (nothing agoat-specific).
        # Pinning is button-triggered - UI_ACTIONS_BY_TARGET navigates to
        # TrafficActivity and taps the CERTIFICATE PINNING button.
        Action.SSL_ONLY: ["ssl_pinning_bypass_v1.js"],
        Action.BOTH: ["ssl_pinning_bypass_v1.js"],
    },
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


def load_script_source(session, source: str, on_message=None):
    """Load a Frida script from an in-memory source string (L-M2: the
    deterministic synthesizer produces its bypass in memory, not as a committed
    .js file). Same create/load lifecycle as load_script."""
    script = session.create_script(source)
    if on_message:
        script.on("message", on_message)
    script.load()
    return script


# RESID-6B: hard ceiling on the Frida stage. device.spawn / device.attach /
# session.create_script / load / device.resume are in-process blocking calls
# with no timeout of their own - a stalled frida-server or a hung attach would
# otherwise hang the entire pipeline indefinitely (NFR-1), unlike the decompile
# stage which bounds its subprocesses with JADX_TIMEOUT/APKTOOL_TIMEOUT. The
# stage runs its Frida interaction in a daemon thread joined under this deadline
# so a hang fails loudly as status="failed" instead of blocking forever.
FRIDA_STAGE_TIMEOUT = 60.0  # seconds

# RESID-6D: how hard to poll for the bypass scripts' hook-install signal before
# giving up and burning the remaining settle window (see _wait_for_checkpoint).
_CHECKPOINT_POLL_INTERVAL = 0.25

# RESID-6E: after loading the synthesized bypass, settle briefly before loading
# the heavy vendored universal. Loading the 114 KB vendor immediately after the
# synth suppresses delivery of the synth's `send({hook:...})` checkpoint (live
# frida_messages came back empty on a real target). This gives the synth's
# 200 ms checkpoint timer a chance to fire first so it is captured. Delivery
# timing, not a blind sleep.
_SYNTH_CHECKPOINT_SETTLE = 0.5


def _wait_for_checkpoint(messages: list, settle_seconds: float, require_evidence: bool = False) -> None:
    """Wait for the bypass scripts to signal that their hooks are installed - or,
    when the flow is UI-triggered, for the app's own bypass EVIDENCE - or the
    settle deadline, whichever comes first (replacing the blind
    time.sleep(settle_seconds), RESID-6D).

    The scripts send a frida `send` message with a payload carrying a 'hook' key
    once they're attached and running (e.g. root scripts emit
    {status: 'all three hooked'} once all checks are neutralized; the ssl script
    emits {hook: 'OkHttp CertificatePinner'...}). That readiness checkpoint fires
    at resume - BEFORE any UI-triggered check runs. For button-tapped flows
    (AndroGoat root/pinning), the messages the success check actually needs -
    probeHit and bypassEffect (ssl-pin-check / ssl-handshake) - arrive only after
    the UI interaction and (for SSL) the intercepted handshake completes, so when
    require_evidence is set we wait for that evidence instead of returning on the
    readiness checkpoint alone. Polling beats sleeping: an early signal lets the
    stage move on; a target whose check never fires just burns the settle window,
    identical to the old blind sleep."""
    deadline = time.monotonic() + settle_seconds
    while time.monotonic() < deadline:
        for m in messages:
            payload = m.get("payload") if isinstance(m, dict) else None
            if not isinstance(payload, dict):
                continue
            if "hook" in payload and not require_evidence:
                return
            if require_evidence and (
                "probeHit" in payload or "bypassEffect" in payload
            ):
                return
        time.sleep(_CHECKPOINT_POLL_INTERVAL)


def classify_self_termination(process_alive: bool) -> bool:
    """FR-4.6: after the bypass scripts have run and the settle window elapsed,
    a spawned process that is no longer alive self-terminated - it detected the
    instrumentation (Frida/root) and exited (System.exit / killProcess). Returns
    True when the process is gone, so the dynamic stage can report that as a
    first-class, logged outcome instead of a generic success or an unexplained
    crash. Pure - unit-testable anywhere, no device."""
    return not process_alive


def _process_is_alive(device, pid: int) -> bool:
    """Reference-machine only. True unless frida confirms the process is gone
    (ProcessNotFoundError). Conservative on purpose: a transient device/frida
    error is NOT evidence of self-termination, so it is treated as alive rather
    than risking a false self-termination report on a healthy target."""
    try:
        device.get_process(pid)
        return True
    except Exception as exc:
        return type(exc).__name__ != "ProcessNotFoundError"


# Target-specific UI actions to reach/trigger a bypass after resume. Tuple
# forms: ("am_start", "<component>"), ("sleep", seconds), ("tap", x, y).
# _ui_actions_for() is ACTION-AWARE: AndroGoat's SSL pinning runs from the
# CERTIFICATE PINNING button in TrafficActivity (bounds [53,1167][1387,1335] on
# the reference emulator, 1440x2872) and its root check runs from the CHECK ROOT
# button in RootDetectionActivity (bounds [53,909][1387,1077]) - both are
# BUTTON-TRIGGERED, so a run must navigate to the right activity and tap the
# button that corresponds to the action being verified, or the check never runs
# and the dynamic stage honestly reports inconclusive. Verified live on AndroGoat:
# synth root envelope taps CHECK ROOT -> root_bypassed=True (the app's own
# isRooted() File.exists on su paths is answered-hidden); synth SSL taps the
# pinning button -> ssl_bypassed=True. UI_ACTIONS_BY_TARGET holds the fallback
# (non-action-specific) flows.
UI_ACTIONS_BY_TARGET: dict[str, list[tuple]] = {
    "AndroGoat": [
        ("am_start", "owasp.sat.agoat/.TrafficActivity"),
        ("sleep", 2.0),
        ("tap", 720, 1251),
    ],
}


def _ui_actions_for(target: str, action) -> list[tuple]:
    """Return the UI actions that exercise the checks relevant to `action`.
    For AndroGoat, root detection and SSL pinning are each button-triggered in
    their own activity, so the flow is selected by the action being verified:
    a ROOT_ONLY run taps CHECK ROOT, an SSL_ONLY run taps the pinning button.
    A BOTH run does NOT use a combined sequence here - the two checks are
    mutually exclusive in a single navigation (live-verified: whichever runs
    second never fires in the same process), so the dynamic stage splits BOTH
    into two fresh spawns, one per dimension (see run_dynamic_stage /
    _run_two_spawns) and drives each with its single-dimension sequence.
    Best-effort UI stepping that fails is captured in the stage evidence, not
    fatal (see _run_ui_action)."""
    if target == "AndroGoat":
        # AndroGoat's SSL pinning runs from the CERTIFICATE PINNING button in
        # TrafficActivity; its root check from the CHECK ROOT button in
        # RootDetectionActivity - both button-triggered, so a run must tap the
        # button for each check it means to verify. The hand-authored SSL script
        # is supplemented by the synthesized native root envelope for a
        # ROOT/BOTH run (see run_dynamic_stage).
        if action == Action.ROOT_ONLY:
            return [
                ("am_start", "owasp.sat.agoat/.RootDetectionActivity"),
                ("sleep", 2.0),
                ("tap", 720, 993),
            ]
        return [
            ("am_start", "owasp.sat.agoat/.TrafficActivity"),
            ("sleep", 2.0),
            ("tap", 720, 1251),
        ]
    return list(UI_ACTIONS_BY_TARGET.get(target, ()))


def _run_ui_action(serial: str, action: tuple) -> None:
    """Run one target-specific UI action via adb. Best-effort: a UI step
    failing shouldn't crash the whole dynamic stage, but it also can't be
    silent - the stage result's evidence captures whether it ran."""
    adb = _require_adb()
    kind = action[0]
    if kind == "am_start":
        subprocess.run(
            [adb, "-s", serial, "shell", "am", "start", "-n", action[1]],
            capture_output=True, text=True, timeout=15,
        )
    elif kind == "tap":
        subprocess.run(
            [adb, "-s", serial, "shell", "input", "tap", str(action[1]), str(action[2])],
            capture_output=True, text=True, timeout=15,
        )
    elif kind == "sleep":
        time.sleep(action[1])


def run_dynamic_stage(
    device_serial: str, package_name: str, action: Action,
    target: str = "uncrackable1", settle_seconds: int = 5,
    synthesized: dict | None = None,
) -> StageResult:
    start = time.monotonic()
    messages: list[dict] = []

    if action == Action.NEITHER:
        return StageResult(
            stage="dynamic", status="skipped",
            evidence={"reason": "NEITHER classification - no bypass technique to apply"},
            duration_ms=int((time.monotonic() - start) * 1000),
        )

    script_names = SCRIPTS_BY_TARGET_ACTION.get(target, {}).get(action)
    synth_source: str | None = None
    synth_applied: list[str] = []
    if script_names is None:
        # Unknown target, or a known target with no hand-authored script for this
        # action. That used to be a hard "not dynamically verified" skip for every
        # real app (L-M2). If the deterministic synthesizer supplied a bypass, use
        # it so a real app gets a real attempt; otherwise degrade honestly.
        if synthesized and synthesized.get("source"):
            script_names = []  # loaded via load_script_source below
            synth_source = synthesized["source"]
            synth_applied = synthesized.get("applied_hooks", [])
        else:
            return StageResult(
                stage="dynamic", status="skipped",
                evidence={
                    "reason": (
                        f"no bypass script available for target '{target}' "
                        f"(action {action.value}) - not dynamically verified"
                    )
                },
                duration_ms=int((time.monotonic() - start) * 1000),
            )

    # RESID-6H root-bypass envelope. The synthesized bypass (findings-specific)
    # is supplemented by the vendored third-party universal for unknown targets
    # (L-M2) - EXCEPT for ROOT_ONLY and BOTH, where the vendor is NOT loaded: it
    # re-applies its own non-observing java.io.File.exists replacement (three
    # times, on post-resume timers), so the synth's probeHit-emitting union patch
    # cannot hold the single Frida slot while the vendor is present - the app's
    # root check reads the real su binary and both the bypass and its observation
    # die (verified live across separate-script and single-concatenated-script
    # loadings, sync and async). To make dropping the vendor for root LOSSLESS
    # rather than a coverage tradeoff, the synthesized root bypass is made
    # comprehensive here: the native libc path-hiding recipe (Interceptor.attach
    # on libc access/stat/lstat/fopen/openat - NOT the File.exists single-slot)
    # and the exec-su recipe are appended to the source. Verified live: synth +
    # native + exec still yields root_bypassed=True with all root-artifact probes
    # answered-false.
    _root_envelope_ids = ["native_su_binary_embedded", "root_runtime_exec_su"]
    _root_envelope_src = "\n\n".join(ROOT_RECIPES[i] for i in _root_envelope_ids)
    if synth_source is not None and action in (Action.ROOT_ONLY, Action.BOTH):
        synth_source = synth_source + "\n\n" + _root_envelope_src

    # AndroGoat's hand-authored script covers SSL only (SCRIPTS_BY_TARGET_ACTION
    # has no root script for it), yet its root check IS genuinely bypassable: the
    # synthesized native root envelope (libc access/stat/open path-hiding +
    # exec-su) answers isRooted()'s File.exists/exec probes as hidden
    # (live-verified root_bypassed=True). It just was never loaded or exercised,
    # so root stayed honest-inconclusive-by-absence rather than confirmed. When a
    # synthesized bypass is available and the action needs root, supplement the
    # hand-authored SSL script with the NATIVE envelope as ONE load: it is
    # Interceptor-on-libc, disjoint from the Java CertificatePinner.check slot
    # the SSL script patches, so - unlike the synth SSL observer, which WOULD
    # collide on that slot - there is no single-slot conflict. The BOTH UI flow
    # exercises both checks (SSL tap first, then CHECK ROOT), and the success
    # check confirms root from the envelope's probeHit.
    #
    # Structural, not name-gated: any target whose bypass is a HAND-AUTHORED
    # script (synth_source is None) rather than the synthesized source gets the
    # native root envelope appended when the action needs root. The synthesized
    # path already appends the envelope to synth_source above, so this covers the
    # hand-authored path only - AndroGoat today, any future real-world target with
    # a hand-authored script and a root check tomorrow. Root confirmation is the
    # synthesized native envelope's probeHit, which requires the app's root check
    # to actually run (see _root_expected below).
    _supplement_root = (
        synth_source is None
        and action in (Action.ROOT_ONLY, Action.BOTH)
        and bool(synthesized and synthesized.get("source"))
    )

    # The vendor is never loaded alongside a synthesized bypass (RESID-6H, revised
    # 2026-08 by live evidence). Originally it was kept for the SSL-only case whose
    # slot methods (CertificatePinner.check / conscrypt TrustManagerImpl) appeared
    # disjoint from the vendor's (X509TrustManager.checkServerTrusted /
    # HostnameVerifier.verify / SSLSocketFactory.getDefault). Live verification on a
    # real target (AndroGoat via a trusted mitmproxy CA) disproved that: synth-only
    # yields ssl_bypassed=True (the app's own trust manager accepts the intercepted
    # cert and the handshake completes), while synth+vendor yields 0 observer
    # messages. The vendor's second script load re-takes the single Frida slot and
    # suppresses the synth's SSL observers just as it suppresses the root probe patch
    # - the disjointness was mechanism-derived and did not survive runtime. The
    # synthesized SSL bypass (native BoringSSL custom-verify hook + OkHttp
    # CertificatePinner.check neutralizer + conscrypt TrustManagerImpl observer) is
    # the complete, observed SSL mechanism, so dropping the vendor for it is lossless
    # on both root and SSL. The scripts_applied label must match what is actually
    # loaded so the report never claims the vendor ran when it did not (principle 3).
    _extra_labels = [f"synthesized:{i}" for i in _root_envelope_ids]
    if _supplement_root:
        scripts_applied = list(script_names) + _extra_labels
    else:
        scripts_applied = (
            (["synthesized"] + synth_applied + _extra_labels)
            if synth_source is not None else script_names
        )

    # AndroGoat BOTH: the two button-triggered checks (SSL pinning in
    # TrafficActivity, root in RootDetectionActivity) are mutually exclusive in a
    # single navigation - live-verified (dumpsys + message capture) that whichever
    # runs second in the same process never fires: SSL-first loses the root
    # probeHit, root-first loses the SSL pin hook. There is no honest single-spawn
    # UI sequence that confirms both, so a BOTH run is split into two fresh
    # spawns, one per dimension (see _run_two_spawns). ROOT_ONLY stays single-spawn
    # (it only exercises the root check, which a single spawn already confirms).
    _two_spawn = _supplement_root and action == Action.BOTH

    # Root evidence is expected whenever the native root envelope is loaded for a
    # root-needing action: the hand-authored path (via _supplement_root) or the
    # synthesized path (envelope appended to synth_source above). The single-spawn
    # wait below must then require root evidence (probeHit) rather than returning
    # on the first SSL hook-install checkpoint - otherwise a real-world app whose
    # root check fires after the SSL hooks are reported would be honestly-but-
    # wrongly reported root-inconclusive, because the wait returned before the
    # app's root check ran. This is the "all real world apps" counterpart of the
    # AndroGoat UI-triggered root check: the envelope only confirms root if we let
    # the app's root check actually fire and report the probeHit.
    _root_expected = action in (Action.ROOT_ONLY, Action.BOTH) and (
        _supplement_root or synth_source is not None
    )

    outcome: dict = {}

    def _run_two_spawns() -> None:
        """AndroGoat BOTH: confirm root AND ssl via two fresh spawns.

        Each spawn loads the synthesized native root envelope - Interceptor on
        libc access/stat/lstat/fopen/openat, disjoint from the SSL script's Java
        CertificatePinner.check slot - so there is no single-slot conflict. The
        SSL spawn loads the hand-authored SSL script plus the envelope and
        exercises the pinning check; the root spawn loads just the envelope and
        exercises CHECK ROOT. Messages from both accumulate into the shared stage
        evidence, so AndroGoatSuccessCheck sees the pin-hook firing (ssl) AND the
        root probeHit (root) - both genuinely confirmed, neither inferred."""
        def on_message(message, data):
            messages.append(message)

        # Phase A - SSL: a fresh spawn exercising the pinning check.
        ssl_device, ssl_session, ssl_pid = attach(device_serial, package_name)
        ssl_src = (SCRIPT_DIR / script_names[0]).read_text(encoding="utf-8") \
            + "\n\n" + _root_envelope_src
        load_script_source(ssl_session, ssl_src, on_message)
        ssl_device.resume(ssl_pid)
        time.sleep(1.0)  # let the launcher activity draw before any UI action
        for ui_action in _ui_actions_for(target, Action.SSL_ONLY):
            _run_ui_action(device_serial, ui_action)
        _wait_for_checkpoint(messages, settle_seconds, require_evidence=True)

        # Phase B - root: a fresh spawn exercising the root check.
        root_device, root_session, root_pid = attach(device_serial, package_name)
        load_script_source(root_session, _root_envelope_src, on_message)
        root_device.resume(root_pid)
        time.sleep(1.0)
        for ui_action in _ui_actions_for(target, Action.ROOT_ONLY):
            _run_ui_action(device_serial, ui_action)
        _wait_for_checkpoint(messages, settle_seconds, require_evidence=True)

        # FR-4.6: a spawned process gone after the settle window self-terminated.
        if classify_self_termination(_process_is_alive(root_device, root_pid)):
            outcome["result"] = StageResult(
                stage="dynamic", status="failed",
                evidence={
                    "app_self_terminated": True,
                    "reason": (
                        "target app self-terminated after resume - detected the "
                        "instrumentation (Frida/root) and exited before dynamic "
                        "verification could confirm a bypass"
                    ),
                    "scripts_applied": scripts_applied, "pid": root_pid,
                    "frida_messages": messages, "target": target,
                },
                error="app self-terminated due to detected instrumentation (FR-4.6)",
                duration_ms=int((time.monotonic() - start) * 1000),
            )
            return

        outcome["result"] = StageResult(
            stage="dynamic", status="success",
            evidence={"scripts_applied": scripts_applied, "pid": root_pid, "frida_messages": messages, "target": target},
            duration_ms=int((time.monotonic() - start) * 1000),
        )

    def _run_frida() -> None:
        """All the blocking Frida work, run under FRIDA_STAGE_TIMEOUT (RESID-6B).
        A genuinely hung spawn/attach/load/resume must fail the stage loudly,
        not hang the whole pipeline forever."""
        try:
            if _two_spawn:
                # AndroGoat BOTH: root and ssl each need their own fresh spawn
                # (mutually exclusive button-triggered checks in one navigation).
                _run_two_spawns()
                return
            device, session, pid = attach(device_serial, package_name)

            def on_message(message, data):
                messages.append(message)

            if synth_source is not None:
                load_script_source(session, synth_source, on_message)
                # RESID-6E: let the synthesized bypass's checkpoint fire before any
                # heavier load. The 114 KB vendored universal is never loaded
                # alongside a synthesized bypass (live evidence - see the module
                # note on VENDORED_UNIVERSAL), so this is a delivery settle for the
                # synth's own checkpoint, not a pre-vendor wait.
                time.sleep(_SYNTH_CHECKPOINT_SETTLE)
            for name in script_names:
                if _supplement_root:
                    # AndroGoat: the hand-authored SSL script plus the synthesized
                    # native root envelope, loaded as ONE script. The native
                    # envelope is disjoint from the SSL script's Java
                    # CertificatePinner.check slot, so a single load patches both
                    # without a slot conflict.
                    src = (SCRIPT_DIR / name).read_text(encoding="utf-8")
                    load_script_source(
                        session, src + "\n\n" + _root_envelope_src, on_message,
                    )
                else:
                    load_script(session, name, on_message)

            ui_actions = _ui_actions_for(target, action)
            device.resume(pid)
            time.sleep(1.0)  # let the launcher activity draw before any UI action
            for ui_action in ui_actions:
                # RESID-6A: `ui_action`, not `action` - the loop variable must
                # not shadow the Action parameter (a latent footgun for any
                # later use of action.value after this point).
                _run_ui_action(device_serial, ui_action)
            # RESID-6D: signal-aware wait instead of a blind settle sleep. When
            # the flow is UI-triggered (button-tapped checks like AndroGoat's
            # root/pinning), the hook-install checkpoint fires at resume but the
            # app's own bypass EVIDENCE (probeHit / ssl-pin-check / ssl-handshake)
            # arrives only after the UI interaction completes - for those flows we
            # must wait for that evidence, not just the readiness checkpoint, or
            # the stage captures before the check runs and honestly (but wrongly)
            # reports inconclusive.
            _wait_for_checkpoint(
                messages, settle_seconds,
                require_evidence=bool(ui_actions) or _root_expected,
            )

            # FR-4.6: after the settle window, a spawned process that is no
            # longer alive self-terminated - it detected the instrumentation
            # (Frida/root) and exited (System.exit / killProcess). Surface that
            # as a first-class, logged outcome with an explicit reason instead
            # of silently reporting a generic success or an unexplained crash.
            if classify_self_termination(_process_is_alive(device, pid)):
                outcome["result"] = StageResult(
                    stage="dynamic", status="failed",
                    evidence={
                        "app_self_terminated": True,
                        "reason": (
                            "target app self-terminated after resume - detected the "
                            "instrumentation (Frida/root) and exited before dynamic "
                            "verification could confirm a bypass"
                        ),
                        "scripts_applied": scripts_applied, "pid": pid,
                        "frida_messages": messages, "target": target,
                    },
                    error="app self-terminated due to detected instrumentation (FR-4.6)",
                    duration_ms=int((time.monotonic() - start) * 1000),
                )
                return

            outcome["result"] = StageResult(
                stage="dynamic", status="success",
                evidence={"scripts_applied": scripts_applied, "pid": pid, "frida_messages": messages, "target": target},
                duration_ms=int((time.monotonic() - start) * 1000),
            )
        except Exception as exc:
            outcome["result"] = StageResult(
                stage="dynamic", status="failed",
                evidence={"frida_messages": messages}, error=str(exc),
                duration_ms=int((time.monotonic() - start) * 1000),
            )

    worker = threading.Thread(target=_run_frida, daemon=True)
    worker.start()
    worker.join(timeout=FRIDA_STAGE_TIMEOUT)
    if worker.is_alive():
        # RESID-6B: exceeded the hard ceiling - fail loudly. (The daemon thread
        # is orphaned, but the pipeline proceeds instead of hanging forever.)
        return StageResult(
            stage="dynamic", status="failed",
            evidence={"frida_messages": messages},
            error=f"frida stage exceeded {FRIDA_STAGE_TIMEOUT:.0f}s hard timeout - hung spawn/attach/load/resume",
            duration_ms=int((time.monotonic() - start) * 1000),
        )
    return outcome["result"]
