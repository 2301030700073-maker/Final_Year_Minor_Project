# Project Limitations & Current Reality — Ground Truth for Building

Source of truth: `PRD.md`, `high-level-architecture.md`, `low-level-design-core-phases-1-4.md`, the ADRs, and the `phase-*-handoff.md` / `phase-1-4-review.md` docs. This file is a plain-spoken inventory of **what will exactly work and what won't**, so future changes are made against reality, not assumption. Verified against the code as of 2026-07-31.

---

## 1. What the tool is (scope, from PRD)

A single-researcher, deterministic analysis tool that, given an APK: ingests it, statically detects root-detection / SSL-pinning (signature-based), runs the *relevant* dynamic bypass (hand-written Frida hooks for known targets), and reports evidence + **measured** confidence. **Not** a SaaS, **not** multi-platform, **not** a remote-attestation breaker, **not** a "zero false positives" tool.

---

## 2. System / environment limitations

| # | Limitation | Consequence |
|---|---|---|
| E1 | Dynamic stage runs only on the reference env (WSL2 Ubuntu 24.04, Windows-hosted Android emulator). Not portable. | Code must fail loudly if toolchain missing; dynamic verified only on reference machine. |
| E2 | Emulator **NAT networking is fragile/broken** (proved this session — unreachable even to its own gateway; needed a manual Windows-side fix). | Dynamic **SSL confirmation requires real outbound network** (to reach the pinned host). No network → hook can't fire → no confirmation. Environmental, not a code gap. |
| E3 | Device must be **rooted** (userdebug image) and `frida-server-16` running; **only `uv run frida` (16.7.19) is correct** — PATH `frida` 17.x conflicts. | Wrong frida client = silent failure. Must use the uv-locked client. |
| E4 | `jadx` can **exit 1 / OOM** on large, packed, or obfuscated APKs → **partial decompile**. | Partial decompile = lower bound; `detected` is not definitive either way; **excluded from calibration Tier 2** by design. |

## 3. Static analysis (detection) limitations

| # | Limitation | Consequence |
|---|---|---|
| S1 | Scans **only `.java` and `.xml`** (`SCANNED_SUFFIXES`). | **Blind to** smali, native `.so` root checks, React Native JS bundles, and any code not decompiled to Java. Fundamental coverage limit. |
| S2 | Detection is **signature-based — 12 hand-authored patterns** (7 root, 5 ssl). | Anything not matching a known pattern is **silently absent**, not flagged "unknown." **`NEITHER` ≠ proof of absence.** This is the single most important honesty caveat. |
| S3 | Decompilation not guaranteed (packed/obfuscated/too-large). | See E4. |
| S4 | **Remote attestation (SafetyNet / Play Integrity) explicitly out of scope** — not defeatable client-side. | Never claimed; a documented limitation. |
| S5 | Regexes are single-line, case-sensitive in places (`G10`); some signatures can miss span-line / mixed-case variants. | Minor detection gaps. |

## 4. Dynamic bypass limitations (the critical one)

| # | Limitation | Consequence |
|---|---|---|
| D1 | **Bypass scripts are hand-written per-target** against exact class/method names. | Proven for UnCrackable1/2/3 (root) and AndroGoat (SSL). **Does NOT generalize** to arbitrary apps — a real app with no script gets `SKIPPED dynamic` (honest, not silent). |
| D2 | Some app pinning is **button-triggered / non-launcher activity** (AndroGoat, RS_CertPinning) → needs UI automation (target-specific tap). | Bypass works only where a UI step is wired; coordinates are reference-emulator-specific. |
| D3 | SSL confirmation is **network-dependent** (must reach the pinned host). | See E2 — without a reachable host, SSL dynamic bypass cannot be confirmed. |

## 5. Phase-by-phase status (what works now)

| Phase | Status | Notes |
|---|---|---|
| 1 (ingest→report, UnCrackable1) | ✅ proven | root bypass confirmed end-to-end |
| 2 (UnCrackable2) | ✅ proven | same signatures, no native/.so needed |
| 3 (UnCrackable3) | ✅ proven | + CRC anti-tamper (not scored); no anti-Frida found |
| 4 (SQLite, calibration, report) | ✅ core done | root Tier 2 = 1.00; **SSL Tier 1 = 1.00 (1/1) this session**; SSL Tier 2 still N/A (no fully-decompiling ssl:true target) |
| **5-7 (AI layer)** | ❌ **NOT BUILT** | No AI/RAG/hypothesis-gen/bypass-synthesis. Deferred per ADR-0003 — nothing exists yet, by design. |

## 6. Code / tooling gaps (from `phase-1-4-review.md` G1-G22)

**Resolved** (see git history for the closing commits):
- **Subprocess timeouts** (G2, G9) — aapt2/apksigner (30s), jadx (600s), apktool (300s) now time out and fail loudly instead of hanging silently.
- **Ingest discards partial evidence on failure** (G3) — `ingest` accumulates hashes/size/package into the failed `StageResult`, so a failed ingest still yields a real hash for the audit log (ADR-0005).
- **v4 signing not parsed** (G4) — `SignerInfo` now carries `v4_verified`.
- **Multi-signer truncation** (LIM-3) — all signers are parsed; the report lists the count and every cert, not just signer #1's.
- **`sdkVersion` regex ambiguity** — anchored to the line start so it can't misread a `targetSdkVersion` value as `min_sdk` on reordered output.
- **Toolchain versions not captured** (reproducibility) — aapt2/apksigner/jadx/apktool versions are recorded in ingest evidence and the report header.
- **Non-APK accepted** — a fast `PK\x03\x04` zip-magic check rejects non-APKs before hashing or any tool run.
- **Uncontextualized tool failure** — named `Aapt2Error`/`ApksignerError` distinguish a timeout from a nonzero exit.
- **`load_signatures` crashes unhandled** (G8) — signature loading is wrapped so a malformed YAML fails as a loud `StageResult` and halts.
- **`config/settings.yaml` dead config** (G1) — per-category root/ssl thresholds are now loaded from it; the path/model-routing keys remain unused.
- **Audit log not tamper-evident** (G15) — records are hash-chained and fsynced, with a `verify-audit-log` command; `outputs/` is gitignored.

**Still open:**
- `.smali`/`.so` not scanned (G6, G7); matching is single-line/case-sensitive.
- CLI orchestrator largely untested (G20); `run.sh` has hardcoded personal paths (G21); no CI (G22).
- Ground-truth registry diverged / partial-decompile controls excluded (G17, G18).

These are known and documented — **not** hidden. Fixing them is legitimate future work within the deterministic core.

## 7. What I will strictly follow going forward

The plan docs are the contract: PRD (scope/non-goals), architecture (7-phase order, `verification_state`, no AI-in-verdicts), LLD (Phases 1-4 modules), requirements, ADRs, handoff docs. Rules I will not violate:
- No fake/mocked/placeholder outputs — ever (ADR-0002/0003).
- Deterministic engine is the sole source of truth; AI (when built) only hypothesizes/narrates, never decides (ADR-0001).
- Empirical dynamic verification alone promotes to `confirmed` (never fabricated).
- Each phase lands working end-to-end before the next (ADR-0003).
- Audit authorization on every run (ADR-0005).

---

*This is the honest current reality. If any claim here looks wrong, correct it against the code/docs before building on it — nothing here is assumed.*
