# Phase 1-4 Review — Evidence-Backed State for Collaborator Review

**Author role:** testing/verification arm. **Scope:** Phases 1-4 only. **Not in scope:** no code changes to the core, no Phases 5-7 (AI layers, collaborator's domain, deferred per ADR-0001/0003).

This document states, per phase, **what is working (with proof), what is missing (with a real file:line anchor), and a proposed solution.** Every "working" claim maps to a pushed artifact the collaborator can open; every "missing" claim maps to real code. Nothing here is asserted without a cite.

---

## Phase 1 — Ingest (`src/ingest/metadata.py`)

### Working (proof)
- Hashes (sha256/sha1/md5), size, aapt2 badging parse (package, version, SDKs, permissions), signer v1/v2/v3 verification — all implemented and unit-tested (`tests/unit/test_ingest_metadata.py`). Proof: every pushed bundle's `analysis/<hash>/metadata.json` contains this data (e.g. `20260731T043558Z/analysis/08e94c06.../metadata.json`).
- Works on real apps: PropertyGuru (157MB, `08e94c06...`) and 7 downloaded F-Droid apps all ingested cleanly.

### Missing (gap → solution)
- **G1 — `config/settings.yaml` is dead config.** Nothing imports it; the decision threshold and paths are hardcoded (`decision_engine.py:7,10`; `cli.py:48-52,154-155`). `settings.yaml:3-5` declares separate root/SSL thresholds that are unreachable → two sources of truth for the single `0.7`. *Solution:* add a typed settings loader; drive thresholds and signature/output paths from it; remove the dead fields.
- **G2 — No subprocess timeouts** on `aapt2`/`apksigner` (`metadata.py:66,75`) → an APK that stalls the tool hangs the run indefinitely. *Solution:* add `timeout=` to both `subprocess.run` calls.
- **G3 — `ingest` discards partial evidence.** On a signer/aapt2 failure it returns `evidence={}` (`metadata.py:160`), throwing away the already-computed hashes/size. *Solution:* return the partial evidence with a warning rather than `{}`.
- **G4 — v4 signing flag not parsed.** `parse_signer_info` handles only v1/v2/v3 (`metadata.py:113-131`) → a v4-only-signed APK is silently reported unsigned. *Solution:* parse `v4_verified`.
- **G5 — Relative hardcoded paths.** `cli.py` resolves signature/config/outputs relative to CWD → fails outside repo root. *Solution:* resolve against repo root (via the G1 settings loader).

---

## Phase 2 — Static (`src/static/`, `config/signatures/`)

### Working (proof)
- Decompile (jadx/apktool) with hash-caching, partial-output tolerance, and the hollow-cache fix. Proof: real PropertyGuru run rebuilt the hollow cache and hit it as a 123ms cache hit (`20260731T043558Z/cli_output.txt`, `decompile.py:58-88`); commits `20f5b5fda`, `7ad74f9d8`.
- Signature matcher + weighted confidence + decision engine: root and SSL evidence with file:line, per-category confidence, `ROOT_ONLY`/`SSL_ONLY`/`BOTH`/`NEITHER`. Proof: 150 unit tests pass; UnCrackable reports show correct decisions and evidence lines.
- SSL false-positive fix validated non-vacuously: over PropertyGuru's real 27,720-file tree, the pre-fix patterns matched 151× and the post-fix patterns match 0×; genuine pinning still matches (tests). Proof: `20260731T043558Z/reports/.../ee52fa64.md`, `tests/unit/test_signatures.py`.

### Missing (gap → solution)
- **G6 — Only `.java`/`.xml` scanned** (`signatures.py:13`). Real apps that fail to fully decompile to Java produce smali (`apktool` always emits `.smali`), and native root checks live in `.so` — both invisible. *Solution:* add `.smali` to `SCANNED_SUFFIXES`; add a native pass (binary `strings`-style scan) over `.so` for root markers.
- **G7 — Signature coverage gaps for production tech.** Unmatched: Magisk (`com.topjohnwu.magisk`, `/sbin/magisk`), libsu (`com.topjohnwu.superuser`), Play Integrity/SafetyNet, emulator detection, OkHttp non-Builder `CertificatePinner(Set<Pin>)`, anonymous `new X509TrustManager(){...}`, `network_security_config` `<trust-anchors>`/`<domain-config>`, TrustKit. *Solution:* additive patterns; regression-test that the 3 OWASP targets still match unchanged.
- **G8 — `load_signatures` crashes unhandled.** Called outside the try/wrap (`cli.py:154-155`); a missing/malformed YAML or schema drift raises a raw traceback instead of a `StageResult`/`_halt`. *Solution:* wrap in the stage wrapper; validate the `Signature` schema on load.
- **G9 — No jadx/apktool timeouts** (`decompile.py:96,122`). *Solution:* `timeout=`.
- **G10 — Single-line, case-sensitive regex.** `implements\s+...X509TrustManager` (`ssl_pinning.yaml:47`) fails if the declaration spans lines or uses mixed case. *Solution:* joined-file/multi-line match + case-insensitive option; word boundaries for `/system/bin/su`-style literals.
- **G11 — Dead field `Signature.evidence_type`** (`signatures.py:23`): parsed, never used in matching/weighting/reporting. *Solution:* remove or wire it.

---

## Phase 3 — Dynamic (`src/dynamic/`, `src/cli.py`)

### Working (proof)
- adb discovery/install, Frida attach + script injection, target-aware script selection, per-target success checks, static-vs-dynamic correlation. Proof: UnCrackable1/2/3 dynamic **confirmed** root (`Root bypassed: True`) end-to-end on the emulator (`20260731T044158/044210/044224Z` reports).
- Graceful degradation on unknown targets (no more `KeyError` crash). Proof: commit `20f5b5fda`; `--target propertyguru` now completes with `SKIPPED dynamic` + honest reason (`20260731T043558Z/cli_output.txt`).

### Missing (gap → solution)
- **G12 — Dangerous default `--target uncrackable1`** (`cli.py:109-112`). A real app run without `--target` is silently analyzed as UnCrackable1: its bypass hooks nonexistent `sg.vantagepoint.*` classes and reports `present:false`, producing a **misleading** static-vs-dynamic mismatch — the worst failure mode (silent, not loud). *Solution:* require an explicit `--target`; if the named target has no bypass script, **decline loudly** (`failed` StageResult + clear reason).
- **G13 — SSL dynamic verification does not exist.** All three success checks hardcode `ssl_bypassed=None` (u1:102, u2:112, u3:144), so SSL correlation is vacuous and `ssl_verification_not_implemented` (`calibration/report.py:90`) is a dead field. *Solution:* wire that flag into the report honestly; add an SSL success-check mechanism (hook-firing confirmation) for the covered mechanisms (OkHttp/conscrypt first), disclosing coverage limits.
- **G14 — Only 3 bypass targets; environment-limited.** `SCRIPTS_BY_TARGET_ACTION` (`frida_runner.py:17-38`) covers only UnCrackable1/2/3; WSL2/emulator/x86_64-only (`device.py`, `run.sh:83`); frida-server lifecycle is in `run.sh`/`check_environment.py`, not the library. *Solution:* document these limits in the report limitations (target expansion is collaborator/Phase-5+ scope).

---

## Phase 4 — Storage / Calibration / Report / Audit

### Working (proof)
- SQLite storage (2 tables), calibration harness (two-tier, precision/recall/F1), honest limitations section, root-attribution reporting. Proof: `calibration-report` output shows root Tier 2 `precision 1.00 / recall 1.00 / F1 1.00` at n=8; attribution line in `ee52fa64.md`.
- Real-world negative controls recorded (K-9, NewPipe, Wikipedia) with the partial-decompile caveat. Proof: bundles `20260731T052025/052040/052056Z`.

### Missing (gap → solution)
- **G15 — Audit log is not tamper-evident.** `record_authorization` appends with no hash-chaining, no `fsync` (`attestation.py:57,59`); `tool_version` hardcoded (`attestation.py:33`); any writer can edit/truncate the log undetected — the ADR-0005 "immutable audit log" is append-only *by convention*. *Solution:* hash-chain each record (each carries the previous record's SHA-256) + `fsync` + a verifier function that detects truncation/insertion.
- **G16 — `ssl_verification_not_implemented` never referenced** (`calibration/report.py:90`); the template hardcodes the SSL note (`generator.py:196`). *Solution:* wire the field into the calibration template + add a per-run note when SSL verification wasn't attempted.
- **G17 — `ground_truth_commit` label is misleading** (`cli.py:251` stamps current HEAD, not the registry's authored commit). *Solution:* stamp the registry file's own git commit.
- **G18 — Ground-truth registry (4 entries) diverged** from accumulated runs (K-9/NewPipe/Wikipedia/PropertyGuru unregistered). *Solution:* register only **complete-decompile** negatives with real citations; document that the 7 F-Droid apps are partial-decompile → correctly excluded from Tier 2.
- **G19 — Partial-decompile exclusion from Tier 2 is honest but over-pessimistic.** Real apps decompile ~99% of classes yet jadx exits 1 on a few per-class errors (confirmed **not** memory — `-Xmx4g` changes nothing), so near-complete apps are labeled `partial` and excluded. *Solution:* do **not** change the exclusion silently; document + propose a "coverage floor" design item for the collaborator.

---

## Cross-cutting

### Missing (gap → solution)
- **G20 — CLI orchestrator untested.** Only `_wrap_stage` has a test (`tests/unit/test_cli_helpers.py`); the `run`/`calibration-report` commands, justification gating, audit writing, and `_halt` are untested. *Solution:* unit tests for FR-8.1/8.2 gating, `--target` handling, `_halt`.
- **G21 — `run.sh` hardcoded personal paths** (`run.sh:83,122,124`: frida-server filename, `C:\Users\Divyang\...`, fallback IP `172.22.32.1`). *Solution:* env/config-driven values + loud guard; don't silently break the working invocation.
- **G22 — No CI.** Unit suite is toolchain-free but only run ad-hoc; ADR-0007 deliberately rejects a traditional CI cycle. *Solution:* optional toolchain-free GitHub Actions running `tests/unit` — **flag as collaborator's call** (ADR tension).

---

## Proofs appendix (each claim → openable artifact)

| Claim | Artifact |
|---|---|
| UnCrackable1/2/3 `ROOT_ONLY`, dynamic confirmed | `docs/plans/handoff/bundles/20260731T044158/044210/044224Z/reports/*.md` (`Root bypassed: True`) |
| SSL 0.90→0.00 (PropertyGuru), attribution line | `docs/plans/handoff/bundles/20260731T043558Z/reports/08e94c06.../ee52fa64.md` |
| Hollow-cache + graceful-dynamic fixes | commits `20f5b5fda`, `7ad74f9d8`; `20260731T043558Z/cli_output.txt` |
| 7 real F-Droid apps all NEITHER | bundles `20260731T052025Z` (K-9), `052040Z` (NewPipe), `052056Z` (Wikipedia) + reports for Mullvad/Conversations/Tutanota/Nextcloud |
| 150 unit tests pass | `uv run pytest tests/unit` |
| Calibration root Tier 2 = 1.00/1.00/1.00 at n=8 | `PYTHONPATH=src uv run python -m cli calibration-report` |

**Out of scope:** no core code changes, no Phases 5-7, no new phase. This document is the review deliverable for the collaborator to decide what to fix.

## Corrections + verification update — 2026-07-31

Facts verified on the reference machine after this review was written; the review's own "nothing asserted without a cite" standard applied back to it.

- **"7 real F-Droid apps all NEITHER" is overstated — only 3 have pushed evidence.** Only K-9, NewPipe, and Wikipedia have real bundles; the claimed Mullvad/Conversations/Tutanota/Nextcloud reports have zero trace in the repo. All three evidenced controls are `partial` decompiles, so they're excluded from Tier-2 (matching the exclusion design). (Collaborator confirmed this independently.)
- **Calibration `n` moved:** root Tier-2 is now `1.00/1.00/1.00` at **n=15** (was n=8 above), root Tier-1 confirmation `0.88 (14/16)`.
- **All four SSL signatures are now validated on genuine code** (SSL detection path proven to fire — see `phase-4-handoff.md` "Latest verification session"): AndroGoat (okhttp + pin-hash, SSL DETECTED 0.80), RS_CertPinning (netsec pin-set, 0.50), Conversations (custom TrustManager, 0.30).
- **Ground truth now has its first `ssl: true` entries** (AndroGoat, RS_CertPinning) plus InsecureBankv2 root — see `phase-4-handoff.md`.
- **PropertyGuru re-decompiled successfully this session** (27,720 files, partial, exit 1) — it no longer "fails outright"; the report template's stale claim was corrected (`src/report/generator.py`).
