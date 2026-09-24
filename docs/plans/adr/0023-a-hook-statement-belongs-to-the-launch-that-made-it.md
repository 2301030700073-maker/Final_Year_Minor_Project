# 0023. A hook-installation statement belongs to the launch that made it

Status: Accepted
Date: 2026-09-20
Relates to: ADR-0016 (the capture window's evaluation is read by the pair of SSL
lines), ADR-0015 (the capture window's bypass is pinning-only), ADR-0001 (the
deterministic engine is the source of truth for detection), and the finding F-9
(the report explained a stalled startup with a cause the evidence did not carry)

## Context

Every dynamic stage launches the app **twice**. The dynamic window's own spawn
runs under its own Frida session and stores its raw message stream; the capture
launch is a separate session whose stream is flattened into the same shape. Both
launches are evaluated by the same `TechnologyHooksEngagedCheck`, and one of the
lines that check produces is the script's own report of the hooks it could not
install.

Since ADR-0016, `cli.py` adopts **only the two SSL lines** from the capture
window's evaluation. That was deliberate and remains right for those two: the
capture launch cannot speak to root at all (its bypass is pinning-only by
construction) and its post-bypass liveness belongs to a different process than
the one the run's liveness line was measured in.

Measured 2026-09-20, on the PropertyGuru run `39c738fd…`: its *stored* dynamic
stream is 17 messages, every one of them a `send` — three hook checkpoints and
fourteen root probe hits — with no log message in it at all, so its own hook line
is the clean text. That run had no capture stage at all (its stages end at
`dynamic` and `success-check`), so this is one launch's statement standing for the
run. The defect is in the contract, not in that run: ADR-0016 adopts only the two
SSL lines from a capture launch's evaluation, so when two launches of one run DO
disagree about hook installation, one launch's non-finding is rendered as the
run's. (An earlier draft of this ADR attributed four "already replaced this
function" lines to a PropertyGuru capture launch. That attribution was
unsupported and is retracted in the follow-up below.) An evaluation that is
computed and then discarded is still what the contract does, and the report
rendered:

> the injected script reported no failed hook installation this run

The sentence is not false about the launch it was measured in. It is false as a
claim about **the run**, which is what it says — and the contract that let it be
measured also decides that any other launch's statement about hook installation
never reaches the report at all. That is F-9's defect one window over: a claim broader
than the observation behind it, in the same line F-9 created.

## Decision

**1. The statement is filed per launch.** The check files it under
`native_hook_installation_key(window)`: the bare constant when no window is
passed (the run's own dynamic launch, which is what `cli.py` passes at the
dynamic call site) and the constant plus `"; " + window` when one is (the
capture launch). One helper produces the key and the merger selects by its
exported prefix, so the producer and the reader cannot drift into "the merge
silently stopped matching".

**2. The capture launch's statement is adopted as a third line.** ADR-0016's
"ONLY the two SSL lines move" is superseded to that extent;
`_upgrade_verification_from_capture_window` copies windowed hook lines and
nothing else. An unattributed hook line — the run's own launch's — is left
alone, so the merge cannot become a general evidence merge that would drag the
capture launch's liveness and root lines across with it.

**3. The window belongs in the key here, not in the value.** The SSL pair keeps
constant keys and windowed values because both windows answer *one* question
about the app, and the better observation of it should supersede. The hook line
answers a question about a *launch* — "did the script injected into this process
install its hooks" — so the second answer must sit beside the first rather than
replace it. A windowed value under a constant key would still collide, and
putting the window in both would render the same label twice on one line.

## Consequences

- A run whose two launches disagree about hook installation now renders both
  statements, each naming the launch it came from, instead of one launch's
  non-finding standing in for the run.
- Nothing in the report template changed: `evidence_lines` is rendered
  generically, so the new line appears wherever the check produces one.
- The dynamic launch's line is unchanged, byte for byte, including its key. It
  remains the only hook line on the targets where the capture launch produced
  none, and the test for it asserts that directly.
- A rename of the constant can no longer silently stop the merge:
  `tests/unit/test_cli_capture_window_upgrade.py` asserts both statements
  survive a real upgrade, and the check's own tests tie the bare key to
  `native_hook_installation_key()`.

## Follow-up: which defect the observed lines were, and what this fix closes

The "already replaced this function" statement left open above was investigated
to the end, and the answer has two parts.

**The observed lines were the body-level duplication, already fixed.** They appear
in exactly three logs: `sweep-20260918T122821Z/telegram-12-9-1.log` (8),
`sweep-20260919T155249Z/AndroGoat.log` (4) and
`sweep-20260919T155249Z/whatsapp-messenger-2-26-30-70.log` (8 — both of that
run's launches). No artefact after 2026-09-19 carries them, and the commit that
stopped them is `898c4ba66` ("one hook per distinct bypass recipe, not one per
matched id"): several matched ids routed to the *same* body, which was appended
once per id, so copies two onward replaced symbols copy one had already replaced.
The narrower hypothesis recorded here earlier — two different bodies hooking one
symbol — was wrong.

**What this fix closes is a different, latent overlap.** `SSL_RECIPES` routes five
ssl ids (`native_ssl_pinning_verify`, `native_pinning_embedded`,
`native_ssl_custom_verify_callback`, `cronet_cert_verifier`,
`pin_cronet_add_public_key_pins`) to a body that *is* the native BoringSSL arm,
and `UNIVERSAL_SSL` contains that same arm. An app matching one of those five ids
*and* an ssl id with no dedicated recipe — which earns `UNIVERSAL_SSL` through the
supplement rule — would be handed the arm twice by a whole-body dedupe, and the
second copy would report hooks it could not install that were installed. The
overlap is real in the recipe table; it has **not** been observed in any run.
Reconstructing the composition from the stored classification of every run in
`results.db` gives one arm before and after the fix — including the PropertyGuru
runs, whose composition is `UNIVERSAL_ROOT` + `UNIVERSAL_SSL` alone with no ssl id
detected at all — so the dedupe has never fired on a real input.

**So the fix is preventive, and is described as preventive.** Two guards hold at
different levels: the composition keeps a shared component in the first body
carrying it, and the arm's own JS replaces an address once per process with the
flag set only after a replace returns, so a genuine installation failure still
reports. Neither is claimed to have fixed the historical lines. What stays open is
the reference-box re-run: no run in this repository has yet produced the overlap
this closes.
