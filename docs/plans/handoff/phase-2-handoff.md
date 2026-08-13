# Phase 2 — Deterministic-Core Hardening Handoff Work List

**Source:** `docs/plans/phase1-limitations-resolution-plan.md` (the resolution counterpart to `project-limitations.md`). This doc turns that plan into a concrete, ordered work list for the next build pass, and records the ADR-style decision the plan's #2 priority (L-M1) requires. It does not re-litigate the plan's honest framing: no limitation below is claimed removable — each has a best verifiable reduction, and the structurally irreducible ones are handed to the documented AI-layer roadmap (ADR-0008 C/D).

**Already resolved in this pass (do not re-open):**
- **L-M7** (console partial-decompile CAUTION) — implemented in `cli.py`; the partial-decompile CAUTION now prints live after the Decision line, mirroring `report/generator.py`. No console harness exists (only `test_cli_helpers.py`), so it is validated by the real end-to-end run, per the project's testing philosophy.
- **L-M8** (OSError path persistence) — satisfied by the Finding J fix: `unreadable_files` is carried on `ClassificationResult` and serialized via `asdict` into `classification_json` (the analysis record), not just the rendered report.
- **L-M10** (ingest edges) — the truncated-zip and tri-state-signer corrections (Findings F/G/K) are in; the only remaining verification is against a second real apksigner version.

---

## Ordered work items

### 1. L-M1 — Decompile bottleneck on large / real production apps  (effort: M, Phase 2 core)
**Decision (ADR-style, captured here):** adopt **lazy / on-demand decompilation + disk-backed code cache + out-of-heap (SQLite) xref + multi-engine fallback**. This is the single decision that gates "works on real apps" (Telegram/PropertyGuru/F-Droid all fail jadx outright or partial).
- **Lazy decompile:** index metadata at ingest only; decompile per-class on demand; cache derived output under the APK-hash dir keyed by dex-stable identity (`jadx-headless-mcp` pattern). Removes the all-or-nothing OOM cliff.
- **Out-of-heap xref:** move usage/cross-reference data into SQLite (FTS5 trigram + ripgrep fallback) instead of JVM heap.
- **Memory tuning:** `-XX:MaxRAMPercentage=60` default, `-Xmx` override for very large APKs; cap the 600s jadx timeout by APK size, not flat.
- **Multi-engine fallback:** jadx → CFR / Vineflower / Procyon per-class; `apktool --no-res` smali-only fast path (~5×).
- **Where:** `src/static/decompile.py` (split the monolithic in-memory path into a lazy, cache-backed engine); `src/static/native.py` already handles the `.so` surface separately (see #3).
- **Verify:** a real Telegram / PropertyGuru run must produce `complete` decompile (or a loud, per-file fallback chain) instead of jadx exit-1 partial.

### 2. L-M3 — Signature blind spots (unknown = silently absent)  (effort: M)
- Expand the signature taxonomy to the industry set (14 root / 15 SSL categories, APKShield-PT).
- Flag `unknown_uncovered` explicitly per detection-confidence (NFR-7), not just per-surface coverage.
- **Smali-level scanning:** `apktool --no-res` + scan `.smali` for the same signatures, closing the "only `.java`/`.xml`" hole (S1) without requiring decompile success.
- **Deobfuscation:** consume R8/ProGuard `mapping.txt` where recoverable (`chimera` pattern).
- **Multi-line + case-insensitive matching** (fixes S5/G10).
- **Where:** `config/signatures/*.yaml`, `src/static/signatures.py`, new smali scan surface.

### 3. L-M6 — Native `.so` surface unscannable  (effort: M)
- Scan native libs with the already-present `readelf`/`strings`/capstone for: native pinning anchors, `su`/Magisk/KernelSU strings, Frida-detection strings, JNI export names.
- For Dex2C-protected logic, Ghidra/IDA headless disassembly (the only 2026 tool that reverses JNI transpilation).
- **Where:** `src/static/native.py`; goal: `native=unscannable` → `native=scanned`.

### 4. L-M5 — SSL-pinning ground truth  (effort: S-M)
- Add **RS_CertPinning / RS_Vapour** (both present in `APK_Test/`) to the ground-truth registry so SSL Tier 2 calibration gets a real fully-decompiling `ssl:true` target.
- Expand 5 SSL patterns to the 15-category taxonomy (see #2); add NSC XML / `network_security_config` as a first-class attributed SSL signal.
- **Where:** `config/ground_truth.yaml`, `config/signatures/*.yaml`.

### 5. L-M2 — Dynamic bypass generalization  (effort: L, roadmap C/D)
- Auto targeted-script generation (APKShield-PT pattern: 14 root + 15 SSL categories), recipe-based bypass engine (`frida-mcp` flow), universal-unpinning fallback, anti-Frida-detection evasion.
- **Explicitly roadmap:** aligns with ADR-0008 groups C/D (items 12-20); the single biggest functional gap but not a Phase-2 deterministic-core item.

---

## Sequencing note
Follow the order above (L-M1 first — it gates the rest). Each item's verification is its real end-to-end run on the reference WSL2 environment against a real target; a run's captured evidence (log + report) is the integration-test record, per the project's testing philosophy.
