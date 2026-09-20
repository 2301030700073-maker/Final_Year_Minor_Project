# Phase 1 Limitations & Resolution Plan

> **STATUS AS OF 2026-09-05 — this plan is DONE.** Every limitation below (L-M1…L-M11) has been driven to its minimum achievable bound and landed in the deterministic core, verified against the code and covered by the 1418-test unit suite. This document is now a **historical record of the resolution work**, not a list of open tasks. For the current-reality inventory (what works / what is a structural boundary today), see `project-limitations.md` (the authoritative companion). Per-item closure is marked inline as **[CLOSED]** below; the residual, structural boundaries are named in `project-limitations.md` §6 and are surfaced honestly (coverage-limited, never a confident negative) rather than "removed" — that distinction is the whole point of ADR-0006 / principle 4.

**Scope:** the deterministic core (Phases 1-4) as it exists at HEAD. Every limitation below was either **proven live** during adversarial testing or is already documented in `project-limitations.md`. Each entry: the limitation → the proof/evidence → the root cause → the **best 2026 solution** (web-researched where it exists, designed where it does not) → target phase/effort.

> **Honest framing first.** "Zero limitations" is not a claim this project makes (ADR-0006) and is not achievable for a deterministic signature engine on real-world Android. The goal here is to drive each limitation to its **minimum achievable bound** for the deterministic core, and to hand the genuinely irreducible ones (bypass synthesis, deobfuscation, native transpilation) to the documented AI-layer roadmap (ADR-0008 groups C/D, items 12-20). Nothing below promises a limitation will be "completely removed" — it promises the best verifiable reduction, and says plainly when one is structural.

## Closure summary (2026-09-05)

| Item | What it was | Closure |
|---|---|---|
| L-M1 | Decompile bottleneck on large apps | **[CLOSED]** multi-engine CFR fallback per-class in `decompile.py`; partial excluded from Tier 2; residual is structural (packed/Dart). |
| L-M2 | Dynamic bypass doesn't generalize | **[CLOSED]** synthesized bypass for unknown targets (`synthesizer.py` `UNIVERSAL_ROOT`/`UNIVERSAL_SSL`); no-category targets degrade to honest `skipped`. |
| L-M3 | Signature blind spots (12 patterns) | **[CLOSED]** 120 DEX-verified entries (49 root / 51 SSL / 12 native / 8 packers); unknown surfaced as coverage-limited, never silent-absent. |
| L-M4 | `NEITHER` ≠ absence on small corpus | **[CLOSED]** confidence bound by coverage; RESID-4C warning + Tier-2 exclusion. |
| L-M5 | SSL detection weak; no SSL Tier 2 GT | **[CLOSED]** RS_CertPinning added as `ssl:true` ground truth; NSC XML parsed as first-class SSL signal; SSL taxonomy expanded. |
| L-M6 | Native `.so` unscannable | **[CLOSED]** `static.native` (ELF symbols + capstone bodies + UPX unpack); Dart-AOT/stripped-symbols named as structural in `project-limitations.md` §6. |
| L-M7 | Console omits partial-decompile CAUTION | **[CLOSED]** CAUTION mirrored to console (cli.py:669). |
| L-M8 | Per-file OSError degradation | **[CLOSED]** count + path persisted to analysis JSON and report. |
| L-M9 | Single-line / case-sensitive regex | **[CLOSED]** case-fold default + multiline pass (`_line_matches`). |
| L-M10 | Ingest / toolchain edge cases | **[CLOSED]** timeouts, tri-state signer, zip-truncation handled + tested. |
| L-M11 | Remote attestation out of scope | **Structural non-goal** — kept as an explicit boundary; Play Integrity *verdict tokens* detected, attestation itself not defeated client-side. |
| — | Empty-capture reachability disambiguation | **[CLOSED 2026-09-05]** device-side client-connection probe distinguishes app-silence from a real device→proxy failure. |

---

## MAJOR LIMITATIONS

### L-M1 — Decompilation bottleneck on large / real production apps
**Proof (live this session):** Telegram (82MB) → `jadx exit 1`, **partial**, 12,561 files; PropertyGuru (151MB) → partial, 27,720 files; F-Droid / Root Checker / Nexus Launcher → jadx **fails outright**. On these, the static scan only sees the decompiled subset, so `NEITHER` is a **lower bound, not a negative**. The report is honest about it (CAUTION + "INCOMPLETE" paragraph); the *coverage* is the problem.
**Root cause:** monolithic in-memory decompile; jadx OOM/exits on large, packed, or obfuscated DEX; no incremental/fallback strategy.

**Best 2026 solutions** (researched):
- **Lazy / on-demand decompilation + disk-backed code cache** — index metadata at startup only; decompile per-class on demand; cache derived output under the APK-hash dir keyed by dex-stable identity (the `jadx-headless-mcp` pattern). Removes the all-or-nothing OOM cliff.
- **Out-of-heap xref storage** — move usage/cross-reference data into **SQLite** (FTS5 trigram + ripgrep fallback) instead of JVM heap, so heavily-referenced large apps don't exhaust memory.
- **JVM memory tuning** — `-XX:MaxRAMPercentage=60` default, `-Xmx` override for very large APKs; cap the 600s jadx timeout by APK size rather than flat.
- **Multi-engine fallback** — try jadx, then CFR / Vineflower / Procyon per-class when one engine fails; **apktool `--no-res`** for a smali-only fast path (~5× faster on large apps).
- **For RASP/Dex2C-protected apps**: native disassembly (Ghidra/IDA) — see L-M6. No Java decompiler reverses JNI-level transpilation; this is the genuine 2026 anti-decompilation frontier ([Dex2C 2026](https://dex2c.com/blog/anti-decompilation-native-code-obfuscation-2026)).
**Effort:** Phase 2-3 core; moderate.

### L-M2 — Dynamic bypass does NOT generalize
**Proof:** only UnCrackable1/2/3 (root) and AndroGoat (SSL) have hand-written Frida scripts; the CLI itself degrades any other target to `skipped, no bypass script available`. Real apps (Telegram report) show "Dynamic Verification: not run." Documented as an explicit non-goal (ADR-0008 C/D).
**Root cause:** scripts are authored against exact class/method names per target; no synthesizer.

**Best 2026 solutions:**
- **Automatic targeted-script generation** — the [APKShield-PT](https://github.com/Whitehat987/apkshield-pt) pattern: auto-detect root across ~14 categories (RootBeer, SafetyNet, Play Integrity, Magisk, su, build props, Frida/Xposed/emulator self-detection) and SSL pinning across ~15 (OkHttp, TrustManager, HostnameVerifier, NSC XML, TrustKit, WebView, gRPC, Conscrypt, Cronet, cert-transparency, native pinning), then **generate a targeted Frida script** — no generic hooks. This is exactly the "deterministic bypass synthesizer" the roadmap (items 12-20) already calls for.
- **Recipe-based bypass engine** — a [frida-mcp](https://github.com/yfe404/frida-mcp)-style flow: `check_frida_detection` (enumerate loaded classes vs known detection patterns) → recommend/apply `bypass_root_detection` (patch `File.exists` su paths, `Runtime.exec("su")`, `Build.TAGS`) → `android_ssl_pinning_disable`.
- **Universal unpinning base** — [frida-multiple-unpinning](https://hacktricks.wiki/en/mobile-pentesting/android-app-pentesting/android-anti-instrumentation-and-ssl-pinning-bypass.html#android-anti-instrumentation--ssl-pinning-bypass-fridaobjection) as the fallback when no targeted script is generated; covers OkHttp4 / gRPC-over-Cronet/BoringSSL / TrustKit / X509TrustManager / native OpenSSL.
- **Anti-Frida detection bypass** (Dex2C 2026): patch `fopen`/`getline` to hide Frida from `/proc/self/maps`, close/redirect port-27042 probes, intercept D-Bus probes, timing-delay evasion, repackaged/stripped Frida agent — for the banking-grade apps that actively detect instrumentation.
**Effort:** Phase 3-4 (synthesizer) + roadmap C/D; the single biggest functional gap to "works on real apps."

### L-M3 — Signature-based static detection blind spots (unknown = silently absent)
**Proof:** the report's own Limitations text: *"A technique matching no known pattern goes undetected and is silently absent from the confidence score - not flagged as 'unknown.'"* Only 12 hand-authored patterns (7 root, 5 ssl). Obfuscation-heavy apps (Telegram) still yield a weak `test-keys → 0.20 Inconclusive` root signal.
**Root cause:** small signature set; single-line case-sensitive regex; no coverage accounting for "not covered."

**Best 2026 solutions:**
- **Expand signature taxonomy to the industry standard** — adopt the APKShield-PT category sets: 14 root-detection and 15 SSL-pinning categories (see L-M2). More patterns = fewer unknown-absent techniques.
- **Flag "unknown" explicitly (NFR-7, never guess)** — emit an `unknown_uncovered` marker for apps whose surfaces weren't covered, so absence is never read as certainty. The report already does this for coverage; make it per-detection-confidence.
- **Smali-level scanning** — apktool `--no-res` + scan `.smali` for the same signatures, catching code that jadx fails to decompile. This closes the "only `.java`/`.xml`" coverage hole (S1) without needing decompile to succeed.
- **Deobfuscation via `mapping.txt`** — where a R8/ProGuard mapping is recoverable, restore identifiers before matching (the `chimera` deobfuscation pattern).
- **Multi-line + case-insensitive matching** — fix S5/G10 so span-line and mixed-case variants are caught.

---

## MEDIUM LIMITATIONS

### L-M4 — `NEITHER` is not proof of absence (small / partial corpus)
**Proof:** Telegram/Paytm report `NEITHER` with RESID-4C *"a low count means this verdict is based on a small corpus."* A `NEITHER` over a tiny or partial decompile is a lower bound.
**Solution (already partial):** keep the RESID-4C warning; additionally **bind the confidence by coverage** — when `java=partial` or corpus is small, cap the reported confidence and print the bound explicitly in the Decision line (console + report). The calibration already excludes partial-decompile controls from Tier 2; extend that to reporting.

### L-M5 — SSL-pinning static detection is weak on real apps
**Proof:** Telegram/Paytm → SSL `0.00 → Inconclusive`; calibration SSL Tier 2 is N/A because no fully-decompiling `ssl:true` target exists (SSL Tier 1 = 3/4 this session).
**Solution:** (a) add a real SSL-pinning target that fully decompiles — **RS_CertPinning** / **RS_Vapour** (both present in `APK_Test/`) — to the ground-truth registry so SSL Tier 2 gets real coverage; (b) expand the 5 SSL patterns to the 15-category taxonomy (L-M3); (c) add NSC XML + network_security_config parsing as a first-class SSL signal (Telegram's NSC was "none" — a genuine negative, but the classifier should attribute it).

### L-M6 — Native `.so` surface is unscannable / partial
**Proof:** every report shows `native = unscannable` (no scannable `.so`) or `partial`; native root/SSL checks and JNI/Dex2C-transpiled logic are invisible to a Java decompiler.
**Solution (2026):** scan native libs with the already-present `readelf`/`strings`/capstone for: native pinning anchors, `su`/Magisk/KernelSU strings, Frida-detection strings, and JNI export names. For Dex2C-protected logic, use **Ghidra/IDA** headless disassembly (the only thing that reverses JNI transpilation in 2026). This is real work (Phase 2-3) but turns `native=unscannable` into `native=scanned`.

---

## MINOR LIMITATIONS

### L-M7 — Console omits the partial-decompile CAUTION (Finding L, found live this session)
**Proof:** Telegram console prints `OK decompile (306ms) → Decision: NEITHER` with no "lower bound" hint; only the report (generator.py:53) carries `CAUTION: based on a PARTIAL decompile`. A reviewer watching `cli_output.txt` is misled.
**Solution (small, quick):** emit the partial-decompile CAUTION to the console immediately after the Decision line, mirroring the report (same class as the Finding J fix). Low effort.

### L-M8 — Per-file OSError degradation (mostly resolved)
**Proof:** a candidate file can be unreadable (`original/AndroidManifest.xml` OSError, seen every run); Finding J made the count *and* the path appear in report + console.
**Remaining gap:** verify the offending path is persisted into the analysis JSON (not just the rendered report) so a reviewer can reproduce without re-running. Small fix if missing.

### L-M9 — Single-line / case-sensitive regex matching (S5, G10)
**Proof:** documented in `project-limitations.md`; can miss span-line and mixed-case variants.
**Solution:** multi-line + `re.IGNORECASE` matching, or move matching to the smali layer (L-M3) where structure is preserved.

### L-M10 — Ingest / toolchain edge cases
**Proof:** signer zip-truncation and `_verified` premise were wrong and corrected (Findings F, G, K); subprocess timeouts are fixed (G2/G9). Remaining: verify the truncated-zip and tri-state-signer behavior against a real second apksigner version. Low effort, largely resolved.

### L-M11 — Remote attestation (SafetyNet / Play Integrity) out of scope (S4)
**Proof:** documented non-goal; not defeatable purely client-side.
**Solution:** keep as explicit non-goal. If ever needed, the 2026 dynamic technique is to hook the Play Integrity API response (the `frida-mcp` `bypass_root_detection` family touches `Runtime.exec`/build props; the attestation API hook is the deeper variant) — but this is an arms race and is deliberately excluded from the deterministic core.

---

## Priority & sequencing (recommended order of attack)

| Order | Limitation | Why first | Effort |
|---|---|---|---|
| 1 | L-M7 (console CAUTION) | 10-min fix, removes a real misdirection | S |
| 2 | L-M1 (decompile bottleneck) | gates everything on real apps; lazy+cache+multi-engine | M |
| 3 | L-M3 + L-M6 (signature expansion + native scan) | directly raises detection coverage/precision | M |
| 4 | L-M5 (SSL ground truth) | unblocks SSL Tier 2 calibration | S-M |
| 5 | L-M2 (bypass synthesizer) | the biggest functional gap; aligns with ADR-0008 C/D | L (roadmap) |
| 6 | L-M8/M9/M10/M11 | hardening, as-needed | S |

## Sources (2026)
- [jadx-headless-mcp — lazy/on-demand decompile, disk cache, out-of-heap xref](https://github.com/Samael-Z/jadx-headless-mcp)
- [Dex2C — anti-decompilation & Frida anti-detection in 2026](https://dex2c.com/blog/anti-decompilation-native-code-obfuscation-2026)
- [HackTricks — Android anti-instrumentation & SSL pinning bypass](https://hacktricks.wiki/en/mobile-pentesting/android-app-pentesting/android-anti-instrumentation-and-ssl-pinning-bypass.html)
- [APKShield-PT — auto root/SSL detection + Frida script generation](https://github.com/Whitehat987/apkshield-pt)
- [frida-mcp — Frida 17 recipe-based detection/bypass](https://github.com/yfe404/frida-mcp)
- [apktool `--no-res` / `--frame-path` fast paths](https://ringsafe.in/apktool/)
- [frida-scripts-collection — ready-to-run bypass scripts + batch runner](https://github.com/mabbcoll13/frida-scripts-collection)

---

## Fresh 2026 research — verified this session (2026-08-13) and folded into the rows above

Every solution below was independently re-searched this session (5 queries). New/confirmed concrete references:

**L-M1 — decompile bottleneck:** the multi-engine + lazy model is now proven in real tools.
- [androidReverse](https://github.com/UltraSina/androidReverse) — **8 Java decompiler engines selectable per-class** (Jadx → Jadx-Fallback → Jadx-IR → CFR → Procyon → JD-Core → Krakatau → Vineflower), auto-fallback when the primary engine fails. This is the exact L-M1 multi-engine fallback, reference-implemented.
- [jadx-headless-mcp](https://github.com/Samael-Z/jadx-headless-mcp) — lazy on-demand decompile with **bounded LRU in-heap cache in front of a disk code cache** under `<cache>/<apk-hash>/`, **SQLite (FTS5 trigram) xref out of the heap**, `-Xmx20g` guidance. Directly kills the all-or-nothing OOM cliff.

**L-M2 — bypass synthesizer:** the automatic-targeted-generation path is now an existing category.
- [APKShield-PT](https://github.com/Whitehat987/apkshield-pt) — detects **14 root + 15 SSL pinning categories** and **auto-generates targeted Frida scripts** (master/root/ssl/safetynet/frida-detection + AI custom). Exactly the L-M2 synthesizer.
- [Frida MCP](https://www.mcpworld.com/en/detail/a5015e72343e5a420ec874ad4ea06ab9) — `check_frida_detection` → recommend `bypass_ssl_pinning` / `bypass_root_detection` recipe flow.
- [Dex2C Frida 2026](https://dex2c.com/blog/frida-in-2026-new-anti-detection-bypass-techniques-and-how-defenders-can-keep-up) — anti-Frida evasion (patch `fopen`/`getline` `/proc/self/maps`, port-27042, D-Bus probes, timing-delay, repackaged agent) for banking-grade apps.

**L-M3 — signature blind spots / smali layer:**
- [PulseAPK Core](https://dbugs.ptsecurity.com/news/pulseapk-core-gui-for-android-app-analysis-20260316) (Positive Technologies, Mar 2026) — JSON-rule security analyzer scanning **smali** for root/emulator checks, embedded secrets, insecure HTTP. Validates the smali-scan + externalized-rules design (NFR-7 "unknown" markers).
- [OWASP MASTG](https://nullcon.net/goa-2026/training/hacking-android-applications) — 2026 training on RASP detection-signature research.

**L-M5 — SSL detection:** rule-based classification across NSC / OkHttp / TrustManager is the 2026 norm.
- [Trafexia](https://deepwiki.com/danieldev23/trafexia/4-ssl-pinning-bypass-and-apk-tooling) — `PINNING_PATTERNS` set classifying `smali_pin_removed` (CertificatePinner) / `smali_trust_override` (checkServerTrusted/HostnameVerifier), version-aware (OkHttp 3 vs 4 Kotlin). Confirms the 5→15 taxonomy direction.
- [Ostorlab](https://blog.ostorlab.co/android-ssl-pinning.html) — hardcoded cert blobs, `CertificateFactory.getInstance("X.509")`, `KeyStore.setCertificateEntry`, `TrustManagerFactory` as pinning signals.

**L-M6 — native `.so`:**
- [HackTricks native](https://hacktricks.wiki/en/mobile-pentesting/android-app-pentesting/reversing-native-libraries.html) — JNI export hygiene (`RegisterNatives`), `.init_array` pre-`JNI_OnLoad` checks, **PAC/BTI (Android 14+)**, LLVM obfuscation (Bangcle/SecNeo).
- [eBPFDexDumper](https://github.com/LLeavesG/eBPFDexDumper) — on-device eBPF dump of DEX + `.so`; [Android-Disassembler](https://dev.co/security/open-source/android-disassembler) — Capstone wrapper for ELF/DEX.

---
*This plan is the resolution counterpart to `project-limitations.md` (the current-reality inventory). Every limitation was verified against HEAD or the live reference environment; nothing here is assumed.*
