# Low-Level Design — Core Phases 1-4

Concrete, implementation-ready design for the deterministic core. Phases 5-7 stay at the high-level-architecture level of detail until this core is proven and each AI phase's own low-level design is written immediately before it starts (ADR-0003) — writing their low-level design now would be speculative.

## Module layout

```
src/
  cli.py                      # entrypoint
  ingest/
    metadata.py                # hash, size, aapt2 dump, signer/cert info
  static/
    decompile.py                # runs jadx + apktool, caches output by APK hash
    signatures.py               # loads YAML rules, matches against decompiled sources
    native.py                   # readelf/strings/symbol matching [Phase 2+]
    manifest.py                 # AndroidManifest.xml parsing
    decision_engine.py          # weighted confidence -> ROOT_ONLY/SSL_ONLY/BOTH/NEITHER
  dynamic/
    device.py                   # adb device discovery, install, launch
    frida_runner.py              # attach, inject script, capture
    scripts/                    # keyed library: root_bypass_v1.js, ssl_pinning_bypass_v1.js, ...
    success_checks/              # per-target verification: uncrackable1.py, uncrackable2.py, uncrackable3.py
    correlation.py                # static vs. dynamic comparison
  report/
    generator.py                  # markdown/HTML report from findings + evidence
  storage/
    db.py                          # SQLAlchemy models + session [from Phase 4]
    schema.py
  audit/
    attestation.py                  # CLI justification capture + audit_log write
config/
  settings.yaml                     # paths, thresholds, model routing (unused until Phase 5+)
  signatures/
    root_detection.yaml
    ssl_pinning.yaml
    anti_frida.yaml                  # [Phase 3]
outputs/                                # gitignored entirely - local/ephemeral, never `git add`ed
  apks/{hash}/                          # directly; the verification bundle script is the only
  analysis/{hash}/                      # sanctioned path evidence takes into git (see CONTRIBUTING.md)
  reports/{hash}/
tests/
  unit/
  fixtures/
pyproject.toml                        # uv-managed
uv.lock
```

## WSL2 → Windows Frida bridge (added after real testing on the reference machine)

Windows' ADB server and a Windows-managed emulator's `frida-server` are both only reachable on Windows' own `127.0.0.1`, which WSL2 cannot address directly, and `netsh portproxy` conflicts with `adb forward`. `device.py` resolves this with a small relay: `adb forward` sets up a Windows-local listener, a Python relay process (`scripts/frida_relay.py`) is started on Windows (via `Start-Process` from WSL2) bridging that listener to a port reachable from WSL2 over the Windows host IP, and Frida connects through `add_remote_device()` to that relay instead of `frida.get_device()` directly. `device.setup_frida_connection()` is a no-op passthrough to `frida.get_device()` on native Linux - this whole bridge only activates when actually running under WSL2. Real bugs found and fixed in the first version of this (verified by direct testing, not assumed): a hardcoded personal-machine fallback where Windows-user-directory detection should instead fail loudly; `Get-Process`-based cleanup that never actually matched anything since `CommandLine` isn't populated without elevation (needs `Get-CimInstance Win32_Process` instead); a blind `sleep(3)` replaced with an actual poll-until-listening check.

## Signature YAML schema

```yaml
- id: root_su_binary_check
  category: root
  weight: 0.3
  pattern_type: string_literal   # string_literal | api_call | class_reference | regex
  patterns:
    - "/system/bin/su"
    - "/system/xbin/su"
  evidence_type: bytecode_string

- id: rootbeer_framework
  category: root
  weight: 0.5
  pattern_type: class_reference
  patterns:
    - "com.scottyab.rootbeer"
  evidence_type: bytecode_class
```

Each matched signature contributes its `weight` to a running confidence score per category (`root`, `ssl`), capped at 1.0. Every match records `{signature_id, file, line_or_offset, matched_text}` as evidence — this satisfies FR-2.2/FR-2.3/FR-2.6 and NFR-16 directly: no finding without a citation.

## Decision engine interface

```python
def classify(static_evidence: StaticEvidence) -> ClassificationResult:
    """Deterministic weighted-signature scoring.
    Returns per-category confidence + the full evidence list behind it.
    Threshold (default 0.7) is read from config/settings.yaml, not hardcoded,
    since it needs empirical tuning in Phase 4 against real calibration data.
    """
```

`ClassificationResult` carries `action: ROOT_ONLY | SSL_ONLY | BOTH | NEITHER`, per-category confidence, and the evidence list — everything the report and the calibration recorder need, with nothing hidden behind an opaque score (FR-3, ADR-0001).

## Dynamic success-check convention

Each analysis target implements a common interface — this is the mechanism that makes Phase 2/3 purely additive (NFR-13):

```python
class SuccessCheck(Protocol):
    def check(self, logcat_output: str, frida_log: str) -> VerificationResult:
        """Returns which categories were confirmed bypassed, with the
        specific evidence line proving it — never a bare boolean."""
```

`uncrackable1.py`, `uncrackable2.py`, `uncrackable3.py` each implement this against that target's specific observable success signal (e.g., a regex match on the revealed secret string, or confirmation that a specific blocking log line did *not* appear where it previously did).

## StageResult convention

Every stage in the pipeline returns this; the orchestrator (a plain function, per ADR-0002) checks `.status` before proceeding to the next stage:

```python
@dataclass
class StageResult:
    stage: str
    status: Literal["success", "failed", "skipped"]
    evidence: dict
    error: str | None
    duration_ms: int
```

A `failed` status halts the pipeline with the full `StageResult` printed/logged — never silently continues (NFR-1). `skipped` is reserved for explicit, intentional skips (e.g., dynamic analysis skipped via `--skip-dynamic`), always logged as such, never conflated with success.

## CLI shape

```
python -m cli --apk path/to/target.apk --justification ACADEMIC_TRAINING_TARGET [--skip-dynamic] [--device <serial>]
```

(Typer collapses to a bare command when there's only one registered - no `run` subcommand needed while Phase 1 only has one thing to do; this un-collapses automatically if a later phase adds a second command, no restructuring required.)

`--justification` is required (FR-8.1) — the CLI refuses to run without it, writing the corresponding audit log entry (FR-8.2) before any analysis stage begins (in implementation, this happens right after ingestion resolves the real APK hash, so the audit entry can reference it - ingestion itself isn't gated, since hashing/metadata extraction is identification, not analysis).

## Testing approach

Unit tests (pytest, `tests/unit/`) cover `static/signatures.py` and `static/decision_engine.py` with fixture-based inputs (`tests/fixtures/`) — known true-positive snippets, known true-negative snippets, and boundary cases straddling the confidence threshold (NFR-17). These require no Android toolchain and run anywhere `uv` runs. The dynamic/Frida side has no meaningful unit-test surface — its verification is each phase's real end-to-end run against a real target on the reference WSL2 environment, with the resulting report and logs serving as that phase's integration-test record (NFR-18).
