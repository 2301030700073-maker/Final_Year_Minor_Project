"""Technology-specific (not app-specific) bypass-engagement signal for unknown
targets running the L-M2 synthesized bypass.

A real app with no registered target-specific SuccessCheck still runs the
deterministic synthesized bypass; each applied recipe hook emits a Frida
`send({hook: '<recipe_id>'})` checkpoint once it is attached and running. This
check reports which of the detected techniques' hooks actually engaged in the
live process - an honest, deterministic "the bypass machinery reached the app"
signal, available for ANY target without a hand-authored script. This is the
answer to "how can the project try to bypass without app-specific scripts": it
composes technology-specific recipes from the static findings, and here we prove
those hooks engaged, using only the findings.

Both ROOT and SSL have an observable auto-confirmation, derived from the app's own
behavior (never a fabricated pass, ADR-0006):

* ROOT: when the app's root-check probes a root artifact and is answered-false
  (probeHit), its root logic received the not-rooted result -> root_bypassed=True.
  On the rooted test device that probe would otherwise have returned "rooted", so
  the observed probeHit IS the app's root check being defeated. Root needs only
  this one signal - a root check has no separate "completion" event, the probeHit
  itself is the check returning its result.
* SSL: when the app's own Java pin-check (CertificatePinner / TrustManagerImpl)
  runs and returns WITHOUT rejecting AND a TLS handshake then completes, its pin
  logic demonstrably accepted a connection it would otherwise reject ->
  ssl_bypassed=True. Either signal alone stays effect evidence.

Each confirmation covers the detected checks that were actually exercised in the
run - a flow-triggered check never reached emits nothing and stays inconclusive,
which is honest. Absence of a checkpoint means the agent died before the hooks
could send - a real signal."""

from __future__ import annotations

from common import VerificationResult

# Cap on how many raw frida messages are surfaced into the report so the
# engagement evidence stays bounded and auditable (ADR-0006), never a dump.
_MESSAGE_SAMPLE_LIMIT = 8
_PAYLOAD_TRUNCATE = 80


def _summarize(message: dict, limit: int = _PAYLOAD_TRUNCATE) -> str:
    """Render one frida message compactly so the report shows what was actually
    observed, not just a pass/fail label. A log message carries a string payload;
    a send() carries a dict (the synthesized hook checkpoints land here)."""
    if not isinstance(message, dict):
        return f"malformed:{type(message).__name__}"
    mtype = message.get("type", "?")
    payload = message.get("payload")
    if isinstance(payload, dict):
        if "hook" in payload:
            body = f"hook:{payload['hook']}"
        else:
            keys = ",".join(sorted(str(k) for k in payload.keys()))
            body = f"dict{{{keys}}}"
    elif isinstance(payload, str):
        body = payload if len(payload) <= limit else payload[:limit] + "…"
    elif payload is None:
        body = "null"
    else:
        body = type(payload).__name__
    return f"{mtype}:{body}"


# The vendored universal reports native-hook engagement via console.log lines of
# this shape (observed on a real app): e.g. "[OK] [ROOT] libc.stat native" or
# "[OK] [SSL] libssl.SSL_CTX_set_cert_cb native". These are direct, observable
# third-party confirmations that the injected agent hooked native functions; they
# are engagement evidence, not a bypass pass (root/ssl stay None - only a
# target-specific live SuccessCheck can confirm the app's own check was defeated).
_VENDOR_ROOT_MARKER = "[OK] [ROOT]"
_VENDOR_SSL_MARKER = "[OK] [SSL]"


class TechnologyHooksEngagedCheck:
    """Report which synthesized recipe hooks engaged in the running process, and
    surface a bounded sample of the actual frida messages so the engagement
    claim is auditable (a "none" is distinguishable from an empty capture).

    Fix-1 / Fix-3 (unknown targets: 'hooks engaged' is not 'confirmed'): beyond
    raw hook engagement, the check now surfaces BEHAVIORAL-EFFECT evidence the
    recipes emit when they observe a real outcome, and promotes BOTH categories to
    a confirmed bypass from the app's own observable behavior (ADR-0006):
    * ROOT (root_bypassed=True) when the app's own root-check probed a root
      artifact and was answered-false (`probeHit`) - its root logic received the
      not-rooted result. On the rooted test device that probe would otherwise have
      returned rooted, so the probeHit IS the check being defeated.
    * SSL (ssl_bypassed=True) ONLY when the app's own pin-check ran without
      rejecting AND a handshake completed - its pin logic demonstrably accepted a
      connection it would otherwise reject.
    Each is scoped to the detected checks actually exercised in the run; a
    flow-triggered check never reached emits nothing and stays inconclusive."""

    def check(self, frida_messages: list | None) -> VerificationResult:
        messages = frida_messages or []
        engaged: list[str] = []
        probe_hits: list[str] = []
        effects: list[str] = []
        for m in messages:
            if not isinstance(m, dict):
                continue
            payload = m.get("payload")
            if isinstance(payload, dict):
                hook = payload.get("hook")
                if hook and str(hook) not in engaged:
                    engaged.append(str(hook))
                ph = payload.get("probeHit")
                if ph:
                    probe_hits.append(f"{ph}:{payload.get('path', '?')}")
                eff = payload.get("bypassEffect")
                if eff and eff not in effects:
                    effects.append(str(eff))
            elif isinstance(payload, str) and (
                _VENDOR_ROOT_MARKER in payload or _VENDOR_SSL_MARKER in payload
            ):
                # Vendored-universal native-hook engagement, labelled distinctly
                # from a synthesized recipe checkpoint.
                token = (
                    "vendor:native-root"
                    if _VENDOR_ROOT_MARKER in payload else "vendor:native-ssl"
                )
                if token not in engaged:
                    engaged.append(token)
        # SSL confirmation: the app's own Java pin-check ran WITHOUT rejecting
        # (ssl-pin-check) AND a TLS handshake then completed (ssl-handshake) - its
        # pin logic demonstrably accepted a connection it would otherwise reject.
        # That is the deterministic confirmation the SSL bypass worked for that
        # connection, derived from the app's own observable behavior (ADR-0006).
        # Either signal alone, or neither, keeps ssl_bypassed None (effect
        # evidence only) - we never promote on a handshake alone (a non-pinned
        # app also completes handshakes) nor on a pin-check alone (no completed
        # connection).
        ssl_confirmed = ("ssl-pin-check" in effects) and ("ssl-handshake" in effects)
        # Root confirmation: a root-artifact probe was observed AND answered-false
        # (probeHit). On the rooted test device that probe would have returned
        # "rooted" without the hook, so a probeHit means the app's own root-check
        # primitive was invoked and returned the not-rooted result to the app -
        # its root logic received the safe answer. That IS the app's root check
        # being defeated, observed directly. Root needs only this one signal (where
        # SSL needs pin-check + handshake) because a root check has no separate
        # "completion" event: the probeHit itself is the check returning its result.
        # Symmetric in honesty to SSL - it confirms the detected root checks that
        # were actually exercised, which is all either mechanism can claim (ADR-0006).
        root_confirmed = bool(probe_hits)
        evidence_lines = {
            "bypass hooks engaged": (
                ", ".join(engaged) if engaged
                else "none (no hook checkpoint observed)"
            ),
            # Root confirmation basis, on the app's own observable behavior: its
            # root-check probed a root artifact and was answered-false, so its
            # root logic received the not-rooted result.
            "root bypass confirmation basis": (
                "app's own root-check probed a root artifact and was answered-false "
                "(on the rooted test device that probe would otherwise have returned "
                "rooted); its root logic received the not-rooted result"
                if root_confirmed
                else "not confirmed (no root-artifact probe was observed during the "
                     "run - a flow-triggered root check may not have been reached)"
            ),
            # Fix-3: the raw probes that drove the confirmation - the app actually
            # probed these root artifacts and was answered-false.
            "root artifact probes answered-false": (
                ", ".join(dict.fromkeys(probe_hits)) if probe_hits
                else "none observed (no root check reached during the run)"
            ),
            # Fix-1: observable SSL effect - a TLS handshake completed through the
            # neutralized stack, evidence the bypass had a real effect. This line
            # reports ONLY the handshake effect, not every bypassEffect in the run:
            # a pin-check alone (ssl-pin-check with no completed handshake) is not a
            # handshake and must not be reported under a "handshakes completed"
            # heading - a mislabeled line for any real app whose only effect is the
            # pin-check.
            "TLS handshakes completed post-bypass": (
                "yes (a TLS handshake completed through the neutralized stack)"
                if "ssl-handshake" in effects
                else "none observed (no TLS handshake reached during the run)"
            ),
            # Confirmed SSL bypass, on the app's own observable behavior: its pin-
            # check ran without rejecting and a handshake completed. Never a
            # fabricated pass.
            "SSL bypass confirmation basis": (
                "app's own pin-check ran without rejecting AND a TLS handshake "
                "completed (pin logic accepted a connection it would otherwise "
                "reject)" if ssl_confirmed
                else "not confirmed (need BOTH the app's pin-check to run without "
                     "rejecting and a TLS handshake to complete)"
            ),
            "frida messages observed": (
                f"{len(messages)} total; sample: "
                + (", ".join(_summarize(m) for m in messages[:_MESSAGE_SAMPLE_LIMIT])
                   if messages else "(none captured)")
            ),
        }
        return VerificationResult(
            root_bypassed=True if root_confirmed else None,
            ssl_bypassed=True if ssl_confirmed else None,
            evidence_lines=evidence_lines,
        )
