# Project Limitations & Current Reality — Ground Truth for Building

Source of truth: `PRD.md`, `high-level-architecture.md`, `low-level-design-core-phases-1-4.md`, the ADRs, and the `phase-*-handoff.md` docs. This file is a plain-spoken inventory of **what exactly works and what won't**, so future changes are made against reality, not assumption. **Verified against the code as of 2026-09-05.**

> **Honesty framing (ADR-0006, principle 4).** "Zero limitations" / "zero false positives" is not a claim this project makes and is not achievable for a deterministic signature engine on real-world Android. Every entry below is driven to its **minimum achievable bound** for the deterministic core; the genuinely irreducible ones are named as **structural boundaries** and are surfaced honestly in the report (coverage-limited, never a confident negative), never pretended away. A limitation "fixed" by upgrading a `NEITHER` to a confident negative would be the worst possible outcome and is forbidden.

---

## 1. What the tool is (scope, from PRD)

A single-researcher, deterministic analysis tool that, given an APK: ingests it, statically detects root-detection / SSL-pinning (signature-based across Java/smali/native/JS/config surfaces), runs the *relevant* dynamic bypass (hand-written Frida hooks for known targets; a synthesized bypass for unknown ones), and reports evidence + **measured** confidence. **Not** a SaaS, **not** multi-platform, **not** a remote-attestation breaker, **not** a "zero false positives" tool.

---

## 2. System / environment limitations (structural — environmental, not code gaps)

| # | Limitation | Consequence | Status |
|---|---|---|---|
| E1 | Dynamic stage runs only on the reference env (WSL2 Ubuntu 24.04, Windows-hosted Android emulator). Not portable. | Code fails loudly if the toolchain is missing; dynamic is verified only on the reference machine. | **Structural.** Correctly handled: loud failure, never a silent no-op. |
| E2 | WSL2 emulator has **no direct NAT** (10.0.2.2 gateway dead below Android). | Internet reaches the device only via an `adb reverse` → Windows-host proxy. **Resolved operationally:** `scripts/emulator_up.sh` (idempotent, wired into `~/.bashrc`) restores a pass-through proxy on `:8080` for internet and mitmdump on `:8081` for capture on every fresh boot. | **Resolved (operational).** |
| E3 | Device must be **rooted** (userdebug image) with `frida-server-16`; only the uv-locked `frida` 16.7.19 client is correct (PATH `frida` 17.x conflicts). | Wrong client = silent failure → must use the uv-locked client. | **Structural.** Documented + version-pinned. |
| E4 | `jadx` can exit 1 / OOM on large, packed, or obfuscated APKs → partial decompile. | Partial decompile = lower bound; excluded from calibration Tier 2 by design; **multi-engine CFR fallback** (`decompile.py`) recovers per-class bodies jadx drops. | **Mitigated** to its bound (multi-engine); residual is structural. |

## 3. Static analysis (detection) — resolved coverage, honest residual

The 2026-07-31 version of this file claimed "only `.java`/`.xml`" and "12 hand-authored patterns." **Both are obsolete.** Current reality (verified 2026-09-05):

| # | Was claimed | Current reality |
|---|---|---|
| S1 | Scans only `.java`/`.xml` | `SCANNED_SUFFIXES` = `.java .xml .smali .js .jsbundle .bundle .json .properties .txt .html .htm`; the apktool **smali tree is scanned**; **native `.so`** analyzed via `static.native` (ELF symbols + capstone decompiled bodies + UPX unpack); **RN/Hermes JS bundles**, **Flutter assets**, and **WebView `.html`** containers scanned. |
| S2 | 12 hand-authored patterns (7 root, 5 ssl) | **119 signature entries**: 48 root, 51 SSL, 12 native, 8 packers — every one DEX-verified against a real APK before adding (never padded). Matching is case-folding by default (`case_sensitive` opt-in) with a multiline regex pass. Detection-shaped code matching **no** signature is surfaced as **coverage-limited (unknown)**, never a silent confident negative. |
| S4 | Remote attestation (SafetyNet / Play Integrity) out of scope | **Still a documented non-goal** — not defeatable purely client-side. Play Integrity *verdict tokens* are now a detection signal; defeating the attestation itself remains out of scope by design (arms race, ADR). |
| S5 | Single-line, case-sensitive regex | **Resolved:** case-folding default + multiline pass (`_line_matches`, signatures.py). |

**Honest residual (structural, ADR-0006):** the signature corpus is a **lower bound by design**. It is never "complete"; `scripts/gap_hunt_idioms.py` re-audits the idiom corpus whenever APKs are added. Techniques with no static footprint (see §6) cannot be signatured.

## 4. Dynamic bypass — generalized within its bound

| # | Was claimed | Current reality |
|---|---|---|
| D1 | Bypass scripts hand-written per-target; does NOT generalize | Known targets (UnCrackable1/2/3 root, AndroGoat SSL) use hand-authored scripts. **Unknown targets now get a synthesized bypass** (`synthesizer.py` `UNIVERSAL_ROOT`/`UNIVERSAL_SSL`: native libc path-hiding + exec-su for root; native BoringSSL/OpenSSL unpinning + OkHttp `CertificatePinner` neutralizer + conscrypt trust-manager observer for SSL). A target with no applicable category still degrades to `skipped` (honest, never silent). |
| D2 | UI-triggered pinning needs target-specific taps | Still true for button-triggered flows (AndroGoat, RS_CertPinning); coordinates are reference-emulator-specific. Non-interactive runs surface an **un-exercised network path** honestly. **Structural** for non-interactive capture. |
| D3 | SSL confirmation is network-dependent | Still true (must reach the pinned host). **Now disambiguated:** the capture stage carries a device-side **reachability probe** (client-connection count from the mitmproxy addon) — `connections>0 && flows==0` = app reached the proxy but stayed silent / refused the CA (reclassified `skipped`), `connections==0` = a real device→proxy reachability failure (stays `failed`, loud). This closed the last previously-undisambiguable empty-capture case. |

## 5. Phase-by-phase status

| Phase | Status | Notes |
|---|---|---|
| 1 (ingest→report, UnCrackable1) | ✅ proven | root bypass confirmed end-to-end |
| 2 (UnCrackable2) | ✅ proven | same signatures, no native/.so needed |
| 3 (UnCrackable3) | ✅ proven | + CRC anti-tamper (not scored); no anti-Frida found |
| 4 (SQLite, calibration, report) | ✅ core done | root Tier 2 = 1.00; SSL Tier 1 confirmed; SSL Tier 2 has real coverage via RS_CertPinning (`ssl:true`) |
| **5-7 (AI layer)** | ❌ **NOT BUILT** | Deferred per ADR-0003 — nothing exists yet, by design. The synthesized bypass in §4 is deterministic (category-matched code generation), **not** an AI/LLM component. |

## 6. The genuinely irreducible boundaries (structural — cannot be "fixed", only surfaced honestly)

These are **not open work items**. They are properties of the problem, surfaced in the report as coverage-limited, never as confident negatives:

- **Dart-AOT (Flutter) `libapp.so`** is an unanalyzable compiled Dart blob → native coverage degrades to `partial` with a report callout. No Java/native decompiler reverses it.
- **Production-stripped native symbols** (verified on real Netflix `libcronet.so`): BoringSSL/Mono strip verify symbols, so export-symbol signatures physically cannot fire on shipping apps. Custom-verify / Xamarin idioms live in the *indicator layer* (coverage-limited), never scored.
- **JNI/Dex2C-transpiled logic** — moving Java logic into native code defeats a Java decompiler by construction; the native scanner surfaces what ELF/capstone can read and marks the rest partial.
- **Techniques that leave no static footprint** — anything computed purely at runtime with no string/class/symbol anchor is not signaturable; surfaced as coverage-limited, and reachable only by the dynamic stage.
- **Remote attestation (SafetyNet / Play Integrity)** — not defeatable purely client-side; explicit non-goal.

## 7. Resolved code / tooling gaps

Everything in the phase-1-4 review (G1–G22), the L-M1…L-M11 resolution plan, and the ~50 gap/boundary items in the working-memory index has landed. Highlights, each verifiable in git history and covered by the 1418-test unit suite:

- Subprocess timeouts (G2/G9); partial-evidence-on-failure ingest (G3); v4 signing + multi-signer (G4/LIM-3); non-APK zip-magic reject; named tool errors; loud signature-load failure (G8); per-category thresholds from `settings.yaml` (G1); **hash-chained tamper-evident audit log** + `verify-audit-log` (G15).
- **Native `.so` + smali + hybrid-suffix scanning; multi-engine CFR fallback** (G6/G7/L-M1/L-M6); **119-entry signature corpus** (L-M3, DEX-verified); **NSC XML parsing** as a first-class SSL signal (L-M5); **case-fold + multiline matching** (S5/L-M9); **synthesized bypass for unknown targets** (L-M2).
- **Console partial-decompile CAUTION** mirrored from the report (L-M7, cli.py:669); coverage-bound confidence (L-M4); partial-decompile controls excluded from Tier 2 (G18); ground-truth registry (G17); CLI orchestrator tested (G20); `run.sh` de-hardcoded (G21); toolchain-free CI (G22).
- **Device-side reachability probe** (this session) — closed the last empty-capture honesty boundary (§4 D3).

## 8. What I will strictly follow going forward

The plan docs are the contract. Rules I will not violate:
- No fake/mocked/placeholder outputs — ever (principle 3).
- Deterministic engine is the sole source of truth; AI (when built) only hypothesizes/narrates, never decides (ADR-0001).
- Empirical dynamic verification alone promotes to `confirmed` (never fabricated).
- A structural boundary is surfaced as coverage-limited, never upgraded to a confident negative to make a number look better (principle 4).
- Each phase lands working end-to-end before the next (ADR-0003); audit authorization on every run (ADR-0005).

---

*This is the honest current reality as of 2026-09-05. Every claim here was verified against the code, not assumed. If any claim looks wrong, correct it against the code/docs before building on it.*
