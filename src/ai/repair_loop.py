"""Self-repair loop: generate -> run -> observe -> revise, bounded.

This is the dynamic half of the user's idea: the generated script is run on the
emulator, its runtime errors are captured (the instrumentation the generator was
told to embed does the observing), and the model is asked to revise until the
script loads cleanly. The loop is *bounded* - it never spins forever, and it
always saves the last script for human review rather than assuming success.

The runner is dependency-injected (``run_once``) so the whole loop can be tested
with a fake device. The real runner in ``cli`` wraps
``frida_runner.run_dynamic_stage(..., synthesized=...)`` and collects the Frida
``send``/``error`` messages that the generated script emits.
"""

from __future__ import annotations

import os
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Callable

from .client import ChatClient, FakeClient, ClaudeCliClient
from .bypass_gen import GeneratedBypass, generate_bypass
from .select_evidence import EvidenceBundle


REVISE_SYSTEM_PROMPT = """You are revising a Frida script that FAILED at runtime on \
an authorized test device. You are given: (a) the previous script, (b) the \
runtime error/diagnostic messages it emitted, (c) the same evidence bundle. Fix \
the script so it loads and its hooks install without error. Keep the same \
error-reporting instrumentation (try/catch + send({type:'hook_error'...})) so \
the next run is still observable. Respond STRICT JSON only, same schema as before:
{
  "script": "<fixed frida js>",
  "applied_hooks": ["<method>"],
  "skipped": ["<class not present>"],
  "notes": "<what you changed and why>",
  "confidence": "low|medium|high"
}"""


@dataclass
class RunFeedback:
    """What one execution of a candidate script reported back."""

    ok: bool
    messages: list[str] = field(default_factory=list)
    notes: str = ""


@dataclass
class RepairResult:
    target: str
    script: str
    applied_hooks: list[str]
    iterations: int
    converged: bool
    saved_path: str | None
    history: list[str] = field(default_factory=list)


def classify_dynamic_run_once(result) -> RunFeedback:
    """HONESTY FIX (defect #1): interpret one ai-bypass attempt from the dynamic
    stage's REAL evidence, not from an unwired message callback.

    The previous `cli` runner built its `collected` list from an `_on_message`
    callback that was never passed to `run_dynamic_stage`, so `collected` was
    always empty and `ok` collapsed to `status != 'failed'`: a NEITHER/skipped
    stage, or a mere-survival 'success' (the process outlived the settle window
    but the script's hooks never loaded or threw), both read as ok=True and the
    repair loop would converge on a script that never actually ran cleanly.

    We now read `result.evidence['frida_messages']` (the stage's actual Frida
    stream) and require a genuine, error-free observation:
      * status == 'skipped' -> not run (ok=False)
      * status == 'failed'  -> ok=False
      * otherwise ok = (>=1 hook_loaded) AND (0 real errors)
      * hook_skipped (target class/method absent on the device) is NOT an
        error - a hook that is not applicable to this app is not a failure.

    `hook_loaded` / `hook_skipped` / `hook_error` / `script_error` are the
    payload types the
    generator is instructed to `send` (see bypass_gen.py); a raw
    `{type:'error'}` envelope is a crashed hook and also fails the run."""
    evidence = getattr(result, "evidence", None) or {}
    status = getattr(result, "status", None)
    msgs = evidence.get("frida_messages") or []

    def _payload_type(m):
        if isinstance(m, dict) and m.get("type") == "send":
            p = m.get("payload")
            if isinstance(p, dict):
                return p.get("type")
        return None

    hook_loaded = [m for m in msgs if _payload_type(m) == "hook_loaded"]
    # A hook whose target class/method is ABSENT on the device is a graceful
    # skip (a different HTTP stack, or an R8-obfuscated app that stripped or
    # renamed the method) - NOT a failure. Counted separately so an
    # inapplicable hook never fails an otherwise-clean run. Before this, such a
    # hook was reported as hook_error and failed the whole loop, which is why
    # jerboa / aves / file-manager could not converge even though their other
    # hooks loaded cleanly.
    hook_skipped = [m for m in msgs if _payload_type(m) == "hook_skipped"]
    hook_errors = [
        m for m in msgs
        if (isinstance(m, dict) and m.get("type") == "error")
        or _payload_type(m) in ("hook_error", "script_error")
    ]

    if status == "skipped":
        ok = False
        notes = "stage_status=skipped (dynamic stage did not run)"
    elif status == "failed":
        ok = False
        # Carry the stage's own error text into the feedback. Without it the
        # revision prompt contained no diagnosis at all ("stage_status=failed"
        # only), so the model had nothing to act on and re-emitted the same
        # script: two identical iterations, 5372 chars each, on UnCrackable-2.
        # The exception message is the ONLY channel that says why the stage
        # died (attach failure, device gone, hook crash, timeout).
        err = getattr(result, "error", None)
        notes = "stage_status=failed"
        if err:
            notes += f"; error={err}"
        if hook_loaded:
            notes += (
                f"; hook_loaded={len(hook_loaded)} before failure "
                "(the hooks installed, so the fault is after installation)"
            )
    else:
        ok = (len(hook_loaded) >= 1) and (len(hook_errors) == 0)
        notes = (
            f"stage_status={status}; hook_loaded={len(hook_loaded)}; "
            f"hook_skipped={len(hook_skipped)}; hook_errors={len(hook_errors)}"
        )
    return RunFeedback(ok=ok, messages=[str(m) for m in msgs], notes=notes)


def _describe_hook_message(raw) -> tuple[str | None, str]:
    """Render one Frida message from ``RunFeedback.messages`` as (kind, label).

    ``messages`` are stringified dicts (see classify_dynamic_run_once), so this
    parses them back rather than re-reading the stage. Anything that is not a
    recognisable hook event returns (None, "") and is skipped by the caller -
    the raw envelope ``{type:'error'}`` case is rendered as a FAILED line
    instead, because a crashed hook is exactly what an operator needs to see.
    """
    import ast

    try:
        msg = ast.literal_eval(raw) if isinstance(raw, str) else raw
    except (ValueError, SyntaxError):
        return None, ""
    if not isinstance(msg, dict):
        return None, ""

    if msg.get("type") == "error":
        return "FAILED", str(msg.get("stack") or msg.get("description") or msg)[:160]

    payload = msg.get("payload")
    if not isinstance(payload, dict):
        return None, ""

    kind = payload.get("type")
    name = str(payload.get("name") or "")
    if kind == "hook_loaded":
        return "LOADED", name
    if kind == "hook_skipped":
        reason = payload.get("reason") or "not present on device"
        return "SKIPPED", f"{name}  ({reason})"
    if kind in ("hook_error", "script_error"):
        detail = payload.get("error") or payload.get("message") or ""
        return "ERROR", f"{name}  ({str(detail)[:140]})"
    return None, ""


RunOnce = Callable[[str, list[str]], RunFeedback]


def _revise(
    client: ChatClient | FakeClient | ClaudeCliClient,
    previous: GeneratedBypass,
    feedback: RunFeedback,
    bundle: EvidenceBundle,
) -> GeneratedBypass:
    user = (
        "PREVIOUS SCRIPT (failed):\n```js\n"
        + previous.script
        + "\n```\n\nRUNTIME FEEDBACK:\n"
        + "\n".join(feedback.messages)
        + "\n\nEVIDENCE (re-read the relevant regions):\n"
        + bundle.to_prompt_text()
        + "\n\nReturn the fixed script as JSON only."
    )
    data = client.complete_json(REVISE_SYSTEM_PROMPT, user, temperature=0.2)
    script = (data.get("script") or "").strip()
    if not script:
        raise ValueError(f"revision returned an empty script: {data!r}")
    return GeneratedBypass(
        script=script,
        applied_hooks=list(data.get("applied_hooks") or previous.applied_hooks),
        skipped=list(data.get("skipped") or []),
        notes=str(data.get("notes") or ""),
        confidence=str(data.get("confidence") or "low"),
    )


def _save_script(target: str, script: str, base_dir: str | None = None) -> str:
    if base_dir is None:
        # Default to the project's frida scripts tree, clearly marked subdir.
        base_dir = os.path.join(os.path.dirname(__file__), "..", "dynamic", "scripts", "ai_generated")
    out_dir = Path(base_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    safe = "".join(c if c.isalnum() or c in "-_" else "_" for c in target)
    out_path = out_dir / f"{safe}.js"
    header = (
        "// =====================================================================\n"
        "// AI-GENERATED bypass candidate. HUMAN REVIEW REQUIRED before trusting.\n"
        "// Produced by src/ai (select_evidence + bypass_gen + repair_loop).\n"
        "// Not part of the deterministic analysis path; loaded only via the\n"
        "// run_dynamic_stage(synthesized=...) seam for the specific target below.\n"
        "// =====================================================================\n\n"
    )
    out_path.write_text(header + script, encoding="utf-8")
    return str(out_path)


def repair_loop(
    bundle: EvidenceBundle,
    client: ChatClient | FakeClient | ClaudeCliClient,
    *,
    run_once: RunOnce,
    action: str = "BOTH",
    max_iter: int = 5,
    save_dir: str | None = None,
    echo: Callable[[str], None] = lambda s: None,
) -> RepairResult:
    """Run the generate -> run -> revise loop, bounded by ``max_iter``.

    ``run_once(source, applied_hooks) -> RunFeedback`` executes one candidate on
    the (real or fake) device. The loop stops at the first ``ok`` feedback or after
    ``max_iter`` attempts, whichever comes first. The last script is always saved.

    ``echo`` receives progress messages (per iteration, model calls, device runs,
    and the resulting feedback) so a caller can render a *visible* process instead
    of a silent wait through the slow model calls. It defaults to a no-op so the
    library stays quiet under tests; the CLI passes a real printer (``typer.echo``).
    """
    echo(f"repair loop: up to {max_iter} iterations, action={action}")
    current: GeneratedBypass | None = None
    result = RepairResult(
        target=bundle.target,
        script="",
        applied_hooks=[],
        iterations=0,
        converged=False,
        saved_path=None,
    )

    for i in range(max_iter):
        result.iterations = i + 1
        if current is None:
            echo(f"[iter {i + 1}/{max_iter}] generating bypass script via model ...")
            current = generate_bypass(bundle, client, action=action)
            result.script = current.script
            result.applied_hooks = current.applied_hooks
            echo(
                f"  model returned {len(current.script)} chars; "
                f"hooks={current.applied_hooks}; confidence={current.confidence}"
            )
        echo(f"[iter {i + 1}/{max_iter}] running script on device ...")
        feedback = run_once(current.script, current.applied_hooks)
        result.history.append(
            f"iter {i + 1}: ok={feedback.ok} hooks={current.applied_hooks} "
            f"notes={feedback.notes}"
        )
        echo(
            f"  feedback: ok={feedback.ok}; messages={len(feedback.messages)}; "
            f"notes={feedback.notes}"
        )
        # Per-hook detail, one line each. A summary count ("hook_loaded=7; "
        # hook_errors=1") tells an operator a number but not WHICH hook failed,
        # so a hand-run could not be read back against the device log. Printed
        # from the same Frida stream the classifier reads, so the lines shown
        # and the verdict reached cannot disagree.
        for _m in feedback.messages:
            _kind, _label = _describe_hook_message(_m)
            if _kind is not None:
                echo(f"      {_kind:12s} {_label}")
        if feedback.ok:
            result.converged = True
            result.script = current.script
            result.applied_hooks = current.applied_hooks
            echo(f"[iter {i + 1}/{max_iter}] converged: script ran cleanly on device.")
            break
        # Revise using the runtime feedback.
        echo(f"[iter {i + 1}/{max_iter}] revision needed; sending runtime feedback to model ...")
        current = _revise(client, current, feedback, bundle)
        result.script = current.script
        result.applied_hooks = current.applied_hooks
        echo(
            f"  revised: {len(current.script)} chars; "
            f"hooks={current.applied_hooks}; confidence={current.confidence}"
        )

    result.saved_path = _save_script(bundle.target, result.script, save_dir)
    echo(
        f"repair loop done: iterations={result.iterations} "
        f"converged={result.converged}; saved to {result.saved_path}"
    )
    return result
