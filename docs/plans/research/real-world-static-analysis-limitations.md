# Real-World Static-Analysis Limitations: How Other Apps' Configurations Hit Our Project

**Scope.** Our tool is a *deterministic detector* of root-detection and SSL/TLS-pinning logic across
Java (smali/jadx), native (ELF/readelf/strings/Ghidra), and manifest surfaces. "Other apps with
different configurations" = different ways apps *implement and hide* that logic. This doc maps each
real-world configuration axis against research findings, states exactly what our project already
handles (green), what it only partially sees (yellow), and the concrete gaps that are genuinely
unhandled (red). It is honest per ADR-0006: an unexamined surface reads `partial`, never a
confident negative.

Research sources are listed at the end. Findings were cross-checked against the live codebase
(`src/`, `config/signatures/`) on 2026-08-16.

---

## Axis 1 — Root-detection depth and where the logic lives

**Research.** Root detection is a *spectrum of trust*, not a binary. Static file/package checks
(`/system/bin/su`, `Superuser.apk`) are trivially bypassed by renaming binaries; Java API checks
(`RootBeer`) are bypassable via Java hooking; native checks are stronger but still bypassable; only
active heuristics and hardware-backed Play Integrity remain robust on modern Android. A large-scale
2017 study found **89 of 92** Java root-checkers evadable by Java hooking, and the only hard cases
were the **18 banking apps doing native checks** (10 of 18 still made to run rooted). Detection code
therefore migrates *down the stack* — the closer to native/remote it lives, the harder it is to find
statically.

**Our handling — handled (green), with honest coverage.**
- Java surface: full signature set (`root_su_binary_paths`, `root_known_indicator_files`,
  `root_build_tags_test_keys`, `su_management_apps`, `xposed_framework`, `play_integrity_attestation`,
  `su_alternate_binary_paths`). Proven on PG: 30+ hits across Sentry, Expo, Firebase, Play Integrity,
  AppsFlyer.
- Native surface: `native_detection.yaml` + Ghidra body-decompilation gate that fires on stripped/
  obfuscated libs carrying a JNI surface, security signal, or detection idiom; recent work added the
  `ptrace`/`fork` anti-debug and `SSL_CTX_set_cert_verify_callback` signatures.
- Coverage engine: `GOVERNING_SURFACES = {root:(java,native), ssl:(java,native,manifest)}`. A partial
  surface (obfuscated java, truncated native) makes the verdict a **lower bound, not a confident
  negative** — which is exactly the honest answer for "does this app root-check?" when we can't see
  all of it.

**Config nuance.** An app that does root-checking *only* in a stripped, non-JNI native lib that
Ghidra cannot decompile, or in syscall-level code, stays `partial`. This is structural (ADR-0006), not
a defect. We never certify `NEITHER` with confidence over an unexamined surface.

---

## Axis 2 — SSL/TLS pinning in obfuscated native code

**Research.** Three compounding blows to pattern-based detection:
1. **ProGuard/R8 renaming** destroys the class/method names patterns rely on (`CertificatePinner`,
   `TrustManagerImpl` → `a`, `b`). R8 is a shrinker; obfuscation is a size side-effect, not security.
2. **Pinning moved to native** (.so) escapes smali/DEX scanners entirely. Statically-linked or renamed
   libs (`libcronet.so` not present in the expected path), missing/versioned export symbols, and
   QUIC/alternative verifier paths defeat symbol enumeration.
3. **Post-handshake app-level pinning** — app grabs the connection cert and compares it itself — is
   invisible to TLS-layer network hooks and, if in native code, to java-level static analysis too.

**Our handling — partially handled (yellow), honest.**
- Java pinning signatures are comprehensive: `custom_sslsocketfactory`, `sslcontext_init_with_trustmanager`,
  `set_sslsocketfactory`, `okhttp_hostname_verifier_set`, `okhttp_certificate_pinner`,
  network-security-config pinsets/digests (declared `android:networkSecurityConfig` in the manifest +
  resolution of the referenced `@xml/` resource).
- Native pinning: `SSL_CTX_set_cert_verify_callback` signature + Ghidra body read; the JNI bridge
  (`jnibridge`) reconciles `native` methods so a native verifier is attributed and its body subject to
  decompile.
- Honest boundary: obfuscated/renamed pinning code with no surviving pattern reads `partial`. A
  post-handshake verifier with no recognizable SDK call reads `partial`. We do **not** over-claim a
  confident "no pinning" from an unexamined native tail.

---

## Axis 3 — Packers, DEX encryption, VMP, DEX2C

**Research.** Packers replace the real DEX with a shell DEX and **release the real code only in memory
at runtime**; static tools see only the shell. Packed-app volume grew 9× in a year, ~⅓ malware. Beyond
plain packing there is an escalation ladder:
- **DEX encryption** (Bangcle, Ijiami, LiAPP): real code encrypted until runtime.
- **VMP / code virtualization** (KiwiVM): core code compiled to a custom VM bytecode; static
  restoration effectively impossible.
- **DEX2C transpilation**: Java code compiled to native C++/asm — the JVM bytecode simply no longer
  exists to inspect.
- **Native `.so` packing**: UPX-compressed ELF.

**Our handling — handled, honestly (green/yellow).**
- Packer **detection**: `config/signatures/packers.yaml` (versioned YAML signals, Gap-2 resolution —
  deliberately *not* APKiD). A detected packer degrades `java` to `partial` (Gap-2 packed→partial
  semantics).
- Native **UPX**: deterministic `.UPX0/.UPX1/.UPX2` + `UPX!` magic detection and optional in-stack
  unpack (`upx.py`); packed → `native=partial`; verified on a real packed `.so`.
- String decryption: `stringrecover.py` recovers flat-numeric R8 decryptors + sibling-literal int
  tables (Gap-3, Boundary-3).
- **Honest boundary**: a full commercial VMP / DEX2C app has code that is *provably unreadable
  statically* — we correctly surface `partial`, never a confident `NEITHER`. This is the ADR-mandated
  answer, not a gap we can "fix" without violating the static/dynamic split.

---

## Axis 4 — Distribution packaging: AAB, split APKs, multidex

**Research.** Modern Play delivery is **Android App Bundle** → delivered as a **split-APK set**
(`base.apk`, `config.arm64_v8a.apk`, `config.en.apk`, feature splits). Multidex (method count > 64k)
splits classes across `classes.dex`, `classes2.dex`…N. Tools must aggregate across *every* DEX and
*every* split to avoid missing code. Droidsaw/APK Auditor/Kunai explicitly support multi-DEX and
split-set parsing.

**Our handling — mixed (green/yellow + one RED).**
- **Multidex: handled.** jadx decompiles all `classes*.dex`; the PG run analyzed 113,726 files across
  classes2–classes6. Each DEX contributes to the same java corpus.
- **Split APK / AAB: FIXED (2026-08-16).** `src/ingest/normalize.py` `normalize_input()` normalizes any
  input — `.apk` passthrough, `.aab` (base/manifest + base/dex + base/root dex renumbered + lib/res/assets),
  or a split-set directory (base.apk seeds manifest, union-merge `classes*.dex`/lib/res/assets, renumbered) —
  into a single root-level APK before hashing/pipeline, so every downstream reader is unchanged. Verified by
  `tests/unit/test_normalize.py` (all passing). Feed a `.aab` or split dir exactly as you would an APK.

---

## Axis 5 — Dynamic code loading (DexClassLoader)

**Research.** `DexClassLoader`/`PathClassLoader`/`DexFile.loadDex`/`Class.forName` load code at runtime
from external storage, network, or decrypted assets. This is the core primitive of dropper malware
(Joker, Anatsa, SharkBot, Necro) and of packers: the payload DEX is hidden from static analysis until
runtime, often deleted immediately after loading. Static tools detect *the loading call*, not the
payload.

**Our handling — FIXED (2026-08-16).** `src/static/dynload.py` `find_dynamic_loading()` scans the
decompiled java corpus with recall-biased regexes for `DexClassLoader`/`PathClassLoader`/
`BaseDexClassLoader`/`InMemoryDexClassLoader` and `Class.forName`/`DexFile`/`loadDex`/`openDexFile`.
`src/static/coverage.py` `apply_unresolved_java()` downgrades `java` → `partial` when any is present
(mirrors Boundary-4's unaccounted-loads). `src/report/generator.py` renders a "Dynamic code loading
(coverage-limited)" block listing the call sites. Verified end-to-end on the PG APK (real
`Class.forName`/`DexClassLoader` surfaced; `java=partial`). For a *detection* tool the honest treatment
stands: detect the loading primitive, mark the code it hides **coverage-limited** per ADR-0006 — the
payload DEX itself remains invisible statically until Phase-5 dynamic.

---

## Axis 6 — String encryption / constant hiding

**Research.** R8 does **not** encrypt strings (it renames identifiers); string encryption is added by
DexGuard, dProtect, or custom logic. Recovery paths are pattern-matching decryptor routines,
simulated/symbolic execution, memory dumps, or Frida hooks. Modern jadx restores ~80% of core logic
from *plain* R8-obfuscated APKs; what materially raises cost is string encryption + control-flow
obfuscation, which R8 doesn't provide.

**Our handling — handled, honestly (green/yellow).**
- `stringrecover.py` lifts plaintext from compile-time-constant R8 decryptor shapes (single-arg and
  sliced-table `new String(name[,off,len])`) and the sibling-literal int-table subscript (Boundary-3).
- Honest boundary: a decryptor fed a **runtime** value, or an AES/white-box decryptor, stays `partial`
  — we never guess plaintext we cannot derive. Verified honest (Gap-3 memory).

---

## Axis 7 — Native ABI coverage (arm64-v8a / armeabi-v7a / x86_64)

**Research.** ELF `.so` are ABI-specific; devices pick `lib/<abi>/` and **do not fall back within a
present ABI dir** (a missing `.so` in an existing `arm64-v8a` dir crashes). Modern devices are
overwhelmingly 64-bit-only; x86 share is <1%. Apps ship multiple ABIs, duplicating the same libs.

**Our handling — handled, with a real inefficiency (yellow).**
- We extract and analyze **every ABI** (`assets/*.so` + `lib/<abi>/*.so`, Boundary-4), read ELF
  headers/strings/readelf, run the Ghidra gate per lib, and detect unaccounted `System.load(Library)`
  targets. The PG run covered ~90 libs × 3 ABIs.
- **Dedup (FIXED 2026-08-16, correctness-preserving):** `src/static/native.py` `group_identical_so_files()`
  + `_clone_lib_for_path()` group byte-identical libs by SHA-256; `_run_native_scan` analyzes each unique
  binary once and emits a `NativeLibrary` per ABI path (clone carries that path's abi/name, shared analysis
  + digest). Honest note preserved as memory: ABI variants (`arm64-v8a` vs `x86_64`) are *distinct builds
  with different bytes*, so cross-ABI groups are normally size 1 — dedup is correctness-preserving, not the
  ~42-min driver (that is genuine per-ABI analysis). Verified by `tests/unit/test_native.py` + a synthetic
  byte-identical integration smoke.

---

## Axis 8 — RASP, anti-tamper, anti-analysis

**Research.** Modern RASP moves detection to native, encrypts strings, uses inline ARM syscalls (no
libc, no symbols, no PLT/GOT — unhookable without kernel access), and adds anti-debug/anti-Frida/
signature-verification. Most apps (Quarkslab) have *no* protection beyond R8 renaming; enterprise RASP
(DexGuard, PromonShield) is a deliberate commercial choice.

**Our handling — mostly out of scope (yellow).** RASP/anti-tamper is not a *root/SSL detection*
target, so it isn't in our signature corpus — that is correct per the PRD. The relevant interaction is
the reverse: RASP anti-analysis affects the *dynamic* side (a real concern for Phase dynamic runs, not
static). On the static side, anti-tamper code that happens to *also* do root-checking is found by the
normal signatures. No static gap; a note for the dynamic phase only.

---

## Axis 9 — App architecture and framework differences

Real-world configuration spread and how each lands:

| Framework | Where root/SSL logic typically lives | Our handling |
|---|---|---|
| Plain Java/Kotlin (no native) | smali/java | **Green** — full signature coverage |
| React Native (PG, verified) | Java bridge + `libhermes/libreactnative`, RN modules | **Green** — proven end-to-end |
| **Flutter** | **Dart compiled to `libflutter.so` native code**; root/SSL checks in Dart | **Yellow** — java shell is thin; detection idioms inside the native blob are reachable only via the Ghidra/native layer, often `partial` |
| **Unity/il2cpp** | C++ logic in `libil2cpp.so` | **Yellow** — same as above |
| Native SDKs (sentry, bugly, appsflyer) | `lib*.so` + java bridge | **Green** — native-by-basename attribution + native layer |
| Kotlin Multiplatform | varies | **Yellow** — depends on target |
| Pure-java + heavy SDK bundling | attribution-heavy | **Green** — attribution resolves app-owned vs SDK |

The pattern: the more logic is *native-compiled* (Flutter/Unity/Dex2C/obfuscated native), the more it
moves toward `partial` — which our coverage engine reports honestly rather than guessing. This is the
right behavior, and it is where dynamic verification (Phase 5+, Frida) is designed to step in.

---

## Axis 10 — Obfuscation + attribution interplay

**Research + our handling (green).** When detection code lives in a recognized third-party SDK, a
strict reader expects the *SDK* flagged, not the app. Our attribution layer handles this three ways:
file-namespace vendor detection, **matched-string vendor signal** (Boundary-5: a `SafetyNetApi`
string in the app's own class reads as Google), and native-lib-by-basename. Obfuscation that empties
`matched_text` degrades gracefully (an unattributed detection-shaped block reads coverage-limited,
Boundary-1), never a silent confident `NEITHER`.

---

## Summary of actionable findings (honest)

**Already handled well (green):** multidex; all root-detection idioms (java + native + manifest);
OkHttp/Braze/Sentry/Conscrypt-style java pinning; network-security-config; packer detection;
native UPX; R8 string recovery (flat + int-table); ABI breadth; attribution across app/SDK; honest
coverage for obfuscated/native/virtualized code.

**Fixed 2026-08-16 (previously RED):**
1. Dynamic code loading — now detected via `dynload.py`, downgrades `java` → `partial` (coverage-limited).
2. AAB / split-APK ingest — now normalized by `src/ingest/normalize.py`.
3. Native ABI duplication — now deduped by SHA-256 (`group_identical_so_files`), correctness-preserving.

**Genuine remaining gaps (RED) — worth implementing in the deterministic core:**
1. **JS / Hermes bytecode bundles: FIXED (2026-08-16).** `src/static/hermes.py` `scan_bundle()` recovers
   the ASCII string-constant table from a binary JS bundle (`assets/index.android.bundle`, `.hbc`) and
   matches root/SSL idioms (`js_root_su`, `js_ssl_pinner`, …). Matches become deterministic evidence
   (`_merge_js_evidence`, `src/cli.py`); a binary bundle degrades the new `js` governing surface to
   `partial` (`js_surface_coverage`, `src/static/coverage.py`; `js` added to `GOVERNING_SURFACES` for root
   and ssl). Report renders a "JavaScript / Hermes bundle (coverage-limited)" block. Plain-text JS was
   already scanned by the text engine (`SCANNED_SUFFIXES`). Verified on PG's real 20 MB `index.android.bundle`
   (7864 constants recovered, `isRooted` idiom surfaced) + `tests/unit/test_hermes.py`. Honest boundary: we
   recover constants, not full JS control flow, so the surface stays `partial`.
2. **WebView / JS-bridge checks: FIXED (2026-08-16).** `src/static/webview.py` `find_webview_js()`
   scans the decompiled corpus for `addJavascriptInterface` / `evaluateJavascript` / `loadUrl("javascript:")`
   / `loadDataWithBaseURL` and surfaces each call site (the previously unlabeled gap) in a report block; a
   *remote* `http(s)` JS source (external URL to `loadUrl`/`loadDataWithBaseURL`) degrades the java surface to
   `partial` (unreadable JS). Local HTML/JS WebView containers are now scannable too: `.html`/`.htm` were
   added to `SCANNED_SUFFIXES`, so inlined root/pinning `<script>` checks surface as ordinary evidence. Honest
   boundary (ADR-0006): a plain bridge/eval call labels but never over-degrades — only a remote source forces
   `partial`, and only Phase-5 dynamic reads the JS it actually runs. Verified `tests/unit/test_webview.py` +
   the `.html`-scan and report-render tests (617 unit tests pass).
3. **Keep the Play Integrity corpus current.** `play_integrity_attestation` is present (root_detection.yaml),
   but attestation is optional hardening and the API evolves — absence isn't proof, presence isn't proof
   (already commented in the YAML); calibrate the corpus as Google evolves SafetyNet → Play Integrity.

**Structural, correctly reported as `partial`, NOT "fixable" without violating ADR-0001/0006 (yellow):**
4. Runtime-released code (packers/VMP/Dex2C/DexClassLoader payloads) is statically invisible → `partial`.
5. Static ≠ runtime truth: post-handshake pinning, native-only checks, and detection-without-enforcement
   (an app that *detects* root but *enforces nothing*) can read `partial` and require Phase-5 dynamic.
6. Flutter (`libflutter.so` Dart AOT) / Unity IL2CPP (`libil2cpp.so`) logic is native-compiled → `partial`.
7. String encryption beyond R8 (DexGuard/dProtect expression decryptors) — recovered only for flat-numeric
   R8 shapes; commercial/white-box decryptors stay `partial`.

**Structural, correctly reported, not "fixable" without violating ADR-0001/0006 (yellow):**
4. Static can't see runtime-released code (packers/VMP/Dex2C/DexClassLoader payloads) → `partial`.
5. Static ≠ runtime truth; post-handshake pinning and native-only checks may read `partial`.
6. Flutter/Unity native-compiled logic often reads `partial` without dynamic follow-up.

---

---

## Deep pass (2026-08-16) — organized by the question "which side are we still losing on?"

A research pass over OWASP MASTG, Ostorlab, and framework-reversal literature, cross-checked against the
live codebase. Two distinct failure classes, kept separate per ADR-0006.

### (A) Reachable gaps — a code/config change raises recall (worth doing)

| # | Gap | Which side | Why it misses | Verdict |
|---|---|---|---|---|
| A1 | **RN/Hermes JS bundle unscanned** | code + skipping | `scan_dex_strings` = DEX only; jadx = DEX only; the real logic is Hermes bytecode in `assets/*.bundle` | **FIXED** — `hermes.py` recovers string constants; surface `js` → `partial` |
| A2 | **WebView / JS-bridge checks** unlabeled | code + skipping | `addJavascriptInterface`/`evaluateJavascript` JS is not in DEX | **FIXED** — `webview.py` labels each bridge/`javascript:`/remote-`loadUrl` call site; remote JS degrades java → `partial`; `.html/.htm` added to `SCANNED_SUFFIXES` |
| A3 | **Play Integrity corpus currency** | signature | attestation is optional hardening; API evolves | **PARTIALLY FIXED (2026-08-16)** — verdict tokens apps compare (`MEETS_DEVICE_INTEGRITY`/`MEETS_STRONG_INTEGRITY`/`DEVICE_INTEGRITY`/`STRONG_INTEGRITY`/`BASIC_INTEGRITY`) + boot-integrity property probes (`ro.boot.verifiedbootstate`, `ro.boot.vbmeta.device_state`, `dm-verity`) added to `root_detection.yaml`; keep monitoring Google's API as it evolves |
| A3b | **Hook/instrumentation detection absent (Frida, Cydia Substrate)** | signature | corpus had Xposed/LSPosed/Riru but no Frida or Substrate — the anti-instrumentation surface real apps probe | **FIXED (2026-08-16)** — `frida_detection` + `cydia_substrate_detection` + the missing OWASP-MSTG `detectRootManagementApps` packages (`com.koushikdutta.superuser` et al.) in `root_detection.yaml`; Frida ports deliberately omitted (bare ints not structurally-unlikely) |
| A4 | **Commercial packer breadth** | signature | `packers.yaml` is finite; novel VM/DEX-encryptor shapes undeclared | **PARTIALLY FIXED (2026-08-16)** — added Ijiami, Alibaba/AliProtect, AppSealing to `packers.yaml` (was Legu/Bangcle/Qihoo/APKProtect/DexProtector); novel VM/Dex2C shapes still undeclared → keep broadening |

### (B) Structural limits — correctly `partial`; "fixing" them would violate ADR-0001/0006

| # | Limit | Which side | Honest handling |
|---|---|---|---|
| B1 | Runtime-released code (packer/VMP/Dex2C/DexClassLoader payload) | code | `partial` + coverage-limited (Fix 1) |
| B2 | Flutter Dart AOT (`libflutter.so`/`libapp.so`) | code | native `partial`; only dynamic steps in |
| B3 | Unity IL2CPP (`libil2cpp.so` + `global-metadata.dat`) | code | native `partial` |
| B4 | Post-handshake / detection-without-enforcement (MASTG-TEST-0324; Ostorlab gap) | logic | we see presence, not *robustness* — only dynamic confirms enforcement or a bypass |
| B5 | Stripped lib with a genuinely novel technique and no corpus overlap | stripping | Ghidra gate fires on JNI export OR security-signal overlap (Gap-1); no overlap → body unread → native `partial` |
| B6 | Obfuscated/renamed native symbols (Flutter BoringSSL) + in-memory-only strings | stripping | symbol matching defeated; `.rodata` only; dynamic recovers decrypted strings |
| B7 | String encryption beyond R8 flat-numeric | signature/code | Gap-3 boundary: recovered only for R8 shapes; commercial/white-box decryptors stay `partial` |

### Why the tool is *not* "losing" on a broken axis

The deterministic core already handles: multidex; all root idioms (java/native/manifest); OkHttp/
Conscrypt/native java pinning; NSC `<pin-set>` digests (declarative pinning — the one form R8 *cannot*
rename — is a high-signal surface we parse, RESID-5C); packer detection (Gap-2); native UPX (Gap-4);
R8 string recovery (Gap-3/Boundary-3); dynamic loading (Fix 1); AAB/split ingest (Fix 2); ABI dedup
(Fix 3); JNI dynamic registration + jnibridge (Gap-5/Boundary-3); attribution incl. Play Integrity
(Boundary-4/5). The E2E on PG returns Decision BOTH with an *honest* `java=partial, native=partial`
bound — that bound is the tool being correct about what it cannot see, not a failure.

Where we *are* "losing" today is a short, reachable list: **A1 (RN/Hermes bundle)** is the headline —
modern apps increasingly ship logic in a JS/Hermes blob that neither jadx nor dex-string can read. B1–B7
are not losses; they are the ADR-mandated honest `partial` that only Phase-5 dynamic verification (Frida,
ADR-0003) can lift to `dynamically_confirmed` — and that is the designed path, not a defect.

## Empirical dynamic validation (2026-08-16) — the B4 enforcement gap is now confirmed, not assumed

The "only dynamic confirms enforcement" claim (B4, lines 255-256/292) was tested for real against the live
emulator + Frida. The Phase-5 dynamic stage was run end-to-end on UnCrackable-1/2/3 and AndroGoat (frida-server
as **root**; the project's WSL2 relay path, not raw `adb forward`). **Dynamic confirmed static on every target
that had a matching technique — no static false-positive or false-negative surfaced:**

- **UC1/UC2/UC3**: the bypass hooks fired on the actual root-check methods (`c.a/c.b/c.c/b.a`; native `ptrace`
  antidebug; `checkRoot1/2/3` + tamper neutralization) and the root bypass succeeded → correlation `Matches=True`.
  Static root DETECTED (conf 1.00) each time. SSL correctly Inconclusive on all three — none of them pin (UC3
  is native anti-debug/tamper, not network pinning).
- **AndroGoat**: static SSL DETECTED (conf 1.00); the `okhttp3.CertificatePinner.check` hook fired live
  (`bypassed=true`) — **the SSL-runtime-enforcement gap is now dynamically validated**, static's pinning
  prediction was correct and the bypass defeated it.

**One real bug the run surfaced and fixed:** `--target androgoat` (lowercase) ran the dynamic stage but
`SUCCESS_CHECKS.get("androgoat")` returned None — the registered key is mixed-case `"AndroGoat"` — so the
pipeline halted at success-check and discarded the captured Frida evidence. Fixed with `cli._canonical_target()`
(normalizes AndroGoat casing, applied at both `SCRIPTS_BY_TARGET_ACTION` dispatch and `SUCCESS_CHECKS` lookup),
+3 unit tests; 625 pass.

Net: the deterministic core's root/SSL detections are empirically backed by live ground truth, and the
remaining `partial` surfaces (B1-B7) are the honest ADR-0006 lower bounds that Phase-5 dynamic exists to lift —
exactly as designed.

## Sources

Root detection / arms race:
- [Can Root Detection Be Trusted? A Study of Bypass Techniques (SANS, 2026)](https://www.sans.org/white-papers/can-root-detection-be-trusted-bypass-techniques-mobile-platforms)
- [Android Rooting: An Arms Race between Evasion and Detection (Wiley/SCN, 2017)](https://onlinelibrary.wiley.com/doi/10.1155/2017/4121765)
- [Android Rooting: Methods, Detection, and Evasion (ACM CCS Workshop)](https://upcommons.upc.edu/bitstream/handle/2117/78062/PFC_2015_Andrea_Cuadros.pdf)
- [Gasparis et al., USENIX Sec 2017 — static behavior-graph extraction from ARM root exploit binaries](https://www.usenix.org/system/files/conference/usenixsecurity17/sec17-gasparis.pdf)
- [OWASP MASTG-TEST-0045 (Root Detection)](https://mas.owasp.ac.cn/MASTG/tests/android/MASVS-RESILIENCE/MASTG-TEST-0045/)
- [OWASP MASTG-TEST-0324 (PIN bypass / effective-pinning weakness)](https://mas.owasp.ac.cn/MASTG/tests/android/MASVS-NETWORK/MASTG-TEST-0324/)

Presence vs enforcement / detection robustness:
- [Ostorlab — detection vs enforcement: "detected root correctly, enforced nothing"](https://docs.ostorlab.co/)
- [Android Rooting: An Arms Race between Evasion and Detection (2017) — 89/92 Java checkers evadable; native the hard 18](https://onlinelibrary.wiley.com/doi/10.1155/2017/4121765)

RN / Hermes / Flutter / Unity AOT reversal:
- [Blutter — Flutter/Dart AOT snapshot RE (worawit)](https://github.com/worawit/blutter)
- [Il2CppDumper — Unity IL2CPP metadata RE (Perfare)](https://github.com/Perfare/Il2CppDumper)
- [unflutter — Flutter bundle/Dart AOT analysis](https://github.com/niemand1995/unflutter)
- [OWASP MASTG 0x05c — Reverse Engineering & Tampering (native/AOT blind spots)](https://raw.githubusercontent.com/OWASP/mastg/035cc1fece98462a816fdfd13a55cbfa00209e14/Document/0x05c-Reverse-Engineering-and-Tampering.md)

Dex2C / code virtualization / unpacking:
- [Dex2C vs zShield: Native Transpilation vs RASP (2026)](https://dex2c.com/blog/dex2c-vs-zimperium-zshield-2026)
- [DexHunter — DEX extraction under custom VMs (zyq8709)](https://github.com/zyq8709/DexHunter)
- [Happer — unpacking framework (Dr-TF)](https://github.com/Dr-TF/Happer)
- [DeepVMUnProtect — virtualization-protection RE (technet-encryption/vanigao)](https://github.com/technet-encryption/DeepVMUnProtect)
- [Parema — multi-Dex/VMP unpacking (VJLabs)](https://github.com/VJLabs/Parema)
- [CodeCloak — LLVM/Dex2VM-style code virtualization (academic)](https://scholar.google.com/scholar?q=CodeCloak+code+virtualization+Android)
- [CTF reverse / native anti-debug, su, system properties](https://github.com/ljagiello/ctf-skills/blob/main/ctf-reverse/languages-platforms.md)

SSL pinning / native / obfuscation:
- [A Framework to Secure SSL Pinning in Mobile Apps (Android) — PMC7514482](https://pmc.ncbi.nlm.nih.gov/articles/PMC7514482/)
- [smali-sslpin-patterns (GitHub)](https://github.com/aancw/smali-sslpin-patterns)
- [SSLPinDetect (GitHub)](https://github.com/tov-a/Android-ssl-pinning-detection-)
- [Frida: locating native TLS verify/pinning path (Stack Overflow — Cronet/BoringSSL)](https://stackoverflow.com/questions/79814253/frida-on-android-how-to-locate-native-tls-verify-pinning-path-likely-cronet-whe)
- [OWASP MASTG Reverse-Engineering and Tampering](https://raw.githubusercontent.com/OWASP/mastg/035cc1fece98462a816fdfd13a55cbfa00209e14/Document/0x05c-Reverse-Engineering-and-Tampering.md)

Packers / DEX encryption / VM:
- [Android Packers: Facing the Challenges, Building Solutions (Yu, 2014)](https://www.semanticscholar.org/paper/ANDROID-PACKERS%3A-FACING-THE-CHALLENGES%2C-BUILDING-Yu/d10c688db55b4714c8533a5831d69d50adf16a9a)
- [DexLego: Reassembleable Bytecode Extraction](https://ieeexplore.ieee.org/document/8416527)
- [AppSpear: Bytecode Decrypting and DEX Reassembling (RAID 2015)](https://jyu.finna.fi/Primo/CitedBy?lookfor=%22pci.cdi_springer_books_10_1007_978_3_319_26362_5_17%22)
- [PackerGrind: An Adaptive Unpacking System (IEEE TSE)](https://pure.psu.edu/en/publications/packergrind-an-adaptive-unpacking-system-for-android-apps)
- [AndroPack: Hybrid Packed-Malware Detection (IEEE)](https://ieeexplore.ieee.org/document/10527328)
- [BPFDex: kernel-based unpacking (IEEE)](https://ieeexplore.ieee.org/document/11105512)
- [Android Application Protection against Static RE based on Multidexing (JISIS)](https://jisis.org/article/jisis-2016-vol6-no4-03/69758/)
- [KiwiSEC: VMP / DEX-encryption / SO-hardening 防护边界 (Chinese)](https://www.kiwisec.com/xinwenzixun/apk_jia_gu_ji_shu_yuan_li_chai_jie_vmpdex_jia_mi_so_jia_gu_de_fang_hu_bian_jie_yu_dui_kang_xian_zhuang.html)

String encryption / obfuscation:
- [Android App Obfuscation: Complete Guide (protectt.ai)](https://protectt.ai/feeds/blog/android-app-obfuscation)
- [Ostorlab — Android Obfuscation Not Detected](https://docs.ostorlab.co/zh/kb/ANDROID_OBFUSCATION_NOT_DETECTED/)
- [OWASP MASTG 0x05j — Testing Resiliency Against RE](https://github.com/OWASP/mastg/blob/bbf0d19941069d4483706a9315d6606cdb66aec6/Document/0x05j-Testing-Resiliency-Against-Reverse-Engineering.md)
- [Dex2C vs Zimperium zShield: Native Transpilation vs RASP (2026)](https://dex2c.com/blog/dex2c-vs-zimperium-zshield-2026)

Dynamic code loading:
- [MITRE DET0618 — Download New Code at Runtime detection](https://attack.mitre.org/detectionstrategies/DET0618/)
- [OWASP-aligned dynamic code loading / unsigned loading (HAXORIS)](https://haxoris.com/haxoris-wiki/mobile-owasp-top-10/m2-inadequate-supply-chain-security/unsigned-dynamic-code-loading)
- [Dynamic Code Loading (awakewiki)](https://awakewiki.org/attacks/dynamic-code-loading/)
- [Android dynamic loading file extraction method (patent US10372444)](https://patents.justia.com/patent/10372444)

Split APK / AAB / multidex:
- [droidsaw-apk (multi/split APK parsing)](https://docs.rs/droidsaw-apk/latest/droidsaw_apk/)
- [APK Auditor (multi-DEX support)](https://github.com/thecybersandeep/apkauditor)
- [APKReverse-Engineering toolbox / multidex batch (CSDN)](https://blog.csdn.net/weixin_36382073/article/details/152926624)

ABI coverage:
- [Android CDD — Native API Compatibility / ABIs (AOSP)](https://git.replicant.us/mirrors/AOSP/platform_compatibility_cdd/plain/3_software/3_3_native-api-compatibility.md)
- [armeabi/armeabi-v7a/arm64-v8a/x86 compatibility (Stack Overflow)](https://stackoverflow.com/posts/65918961/revisions)
- [LibChecker — ABI / native-lib metadata analysis](https://cdn.jsdelivr.net/gh/libchecker/libchecker@master/README.md)

RASP / anti-tamper:
- [Exploring Android Protections on RASP Times (Just Mobile Sec)](https://www.justmobilesec.com/en/blog/exploring-android-protections-on-RASP-times)
- [Methodology for Analyzing RASP Protections (dbugs/PTSecurity)](https://dbugs.ptsecurity.com/news/methodology-for-analyzing-rasp-protections-in-android-apps-20260409)
- [Practical Android Software Protection in the Wild (Quarkslab)](https://blog.quarkslab.com/practical-android-software-protection-in-the-wild-an-appetizer.html)
- [Android Assembly Signature Verification (GitHub)](https://github.com/UltraSina/android-assembly-signature-verification)
