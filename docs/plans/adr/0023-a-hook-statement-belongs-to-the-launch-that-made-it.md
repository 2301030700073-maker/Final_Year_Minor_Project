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

Measured 2026-09-20, on the PropertyGuru run `39c738fd…`: the capture launch's
evaluation reported four native SSL hooks its script could not install
("already replaced this function"). The run's *stored* dynamic stream is 17
messages, every one of them a `send` — three hook checkpoints and fourteen root
probe hits — with no log message in it at all, so its own hook line is the clean
text. The capture launch's four-line statement was computed and then discarded
by the two-line contract, and the report rendered:

> the injected script reported no failed hook installation this run

The sentence is not false about the launch it was measured in. It is false as a
claim about **the run**, which is what it says, and the run's other launch
directly contradicts it. That is F-9's defect one window over: a claim broader
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

## Follow-up: the duplicate install, root-caused and fixed

The four-symbol "already replaced this function" statement was left open above
with a hypothesis that turned out to be wrong in its specifics. It is not two
different bodies hooking one symbol and defeating an identity-based dedupe; it
is **one** arm reaching the same process twice.

`SSL_RECIPES` routes five ssl ids — `native_ssl_pinning_verify`,
`native_pinning_embedded`, `native_ssl_custom_verify_callback`,
`cronet_cert_verifier`, `pin_cronet_add_public_key_pins` — to a body that *is*
the native BoringSSL arm. `UNIVERSAL_SSL` contains that same arm, and the
supplement rule appends `UNIVERSAL_SSL` whenever any selected ssl id has no
dedicated recipe. An app that matches one of those five ids *and* one unmapped
ssl id therefore receives the arm twice, and the second copy is not inert: it
re-replaces every symbol the first already replaced. Frida refuses the second
`Interceptor.replace`, so the arm's catch reported four hooks it "could not
install" that were installed — a false bound on the one line whose whole job is
stating the real ones. `SYNTH-DEDUP1`'s dedupe is by whole recipe body and
cannot see a component two bodies share.

Two guards now hold, at different levels: the composition keeps a shared
component in the first body carrying it and strips it from the others, and the
arm's own JS replaces an address once per process with the flag set only after a
replace returns, so a genuine installation failure still reports.

Open remains the empirical half only: the fix is verified by unit test and
against the recorded logs that carry the four lines, but the fresh capture
window that would show the line absent is the reference-box re-run.
