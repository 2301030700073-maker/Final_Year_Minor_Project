# Session work log — 2026-08-22

Complete record of everything done in this session on the Android Root-Detection &
SSL-Pinning Analysis Platform. Nothing here is inferred — every entry is backed by a
command output or a file the session actually touched.

## Legend / honesty rules used

- **[authored]** = a change this session made to a file or the git index.
- **[verified]** = something inspected/confirmed this session but **not** authored here
  (fixed in an earlier session; I only proved it is present and correct).
- **[audit]** = a read-only investigation with a finding, no code change.
- **[blocked]** = could not be done from this environment; the real reason is stated.
- Zero LLM/AI calls were made (deterministic core, per ADR-0001 / CLAUDE.md principle 1).
- Per-turn dollar spend is **not measurable** here (`api.deepseek.com` is not in the sandbox
  network allowlist — only `agentrouter.org` + `api.anthropic.com`), so no cost figure is invented.

---

## 1. Changes authored this session

### 1.1 — Untrack the committed handoff-bundle `analysis/` trees (A1 repo bloat)
- **Classification:** repo hygiene / **High** (99.9% of the tracked tree was regenerable output).
- **Location:** git index → branch `chore/untrack-handoff-analysis`, commit `90b85bb1f`.
- **What changed:** removed every tracked file under `docs/plans/handoff/bundles/*/analysis/`
  from the index (kept on disk via `--cached`).
- **Reason:** `collect_verification_bundle.py` copies the full jadx/apktool `analysis/` output
  into each handoff bundle. That regenerable decompiler output, duplicated across every
  timestamped snapshot of the same APKs, had been committed *before* `.gitignore` excluded it —
  630,778 files / ~7.6 GB, defeating the `.gitignore`'s own stated intent.
- **Command (the working form):**
  ```bash
  git checkout -b chore/untrack-handoff-analysis
  git rm -r --cached -q --ignore-unmatch docs/plans/handoff/bundles/*/analysis
  git add .gitignore
  git commit    # message below
  ```
- **Proof:**
  ```
  commit 90b85bb1f676f5eb46c543b0c5b82ca58be8426c
  subject: Untrack committed handoff-bundle analysis trees
   630779 files changed, 22 insertions(+), 127709239 deletions(-)
  tracked before = 631,443   →   tracked after = 665
  bundle files surviving (reports/, SUMMARY.md, environment.json, logs) = 498
  ```
- **Scope check:** the 19 other modified files (`cli.py`, `db.py`, `README.md`, …) were left
  untouched — the commit staged only the index deletions plus `.gitignore`.
- **Reversibility:** `--cached` keeps all files on disk; the change lives on a branch, so `main`
  is untouched until a deliberate merge.

### 1.2 — Fix the one-time-untrack command documented in `.gitignore`
- **Classification:** bug fix (tooling/doc) / **Medium** (a silent no-op that looked correct).
- **Location:** `.gitignore`, comment block above the `docs/plans/handoff/bundles/*/analysis/` rule.
- **Reason:** the previously-documented command used a **quoted** git pathspec. In a git pathspec
  `*` matches `/`, so `'docs/plans/handoff/bundles/*/analysis'` (no trailing `/*`) matches paths
  that *end* at `analysis` — but every tracked entry continues past it, so it removed **nothing**,
  and matching that wildcard against the whole tree also timed out (>120 s). Discovered by dry-run:
  the quoted form reported `0` would-remove; `git ls-files -- '.../analysis/*'` reported `630778`.
- **Before:**
  ```
  # never re-bloats the repo. Already-tracked trees still need one-time untracking:
  #   git rm -r --cached -q -- 'docs/plans/handoff/bundles/*/analysis'
  ```
- **After:**
  ```
  # never re-bloats the repo. Already-tracked trees still need one-time untracking.
  # Use an UNQUOTED shell glob so it expands to the real per-bundle dirs before git
  # sees it: a quoted git pathspec '.../*/analysis' treats * as matching / and
  # removes nothing (a silent no-op), and matching the wildcard against the whole
  # tree is pathologically slow. --ignore-unmatch tolerates not-yet-committed
  # bundles whose analysis/ is on disk but not in the index:
  #   git rm -r --cached -q --ignore-unmatch docs/plans/handoff/bundles/*/analysis
  ```
- **Committed in:** `90b85bb1f` (bundled with 1.1, since ignore-rule + untrack belong together).

### 1.3 — README §4: replace `frida-ps -U` with `verify-device`
- **Classification:** doc fix / **Medium** (README contradicted the runbook; would hang users).
- **Location:** `README.md` §4 ("Rooted emulator or device"). Uncommitted (` M README.md`).
- **Reason:** README told users to run `frida-ps -U` to check the device, but on WSL2 with a
  Windows-host emulator Frida's USB auto-discovery cannot see the TCP-served emulator and **hangs**.
  The runbook already warned against exactly this.
- **Current text (proof of applied state):**
  ```
  Frida requires root. Use a Google APIs (not Google Play) x86_64 system image if using an AVD
  emulator, or a rooted physical device. Confirm `adb root` succeeds, then verify the Frida path with:

      PYTHONPATH=src uv run python -m cli verify-device

  `verify-device` checks the device is online and runs the *same* connection path the dynamic
  stage uses, auto-provisioning a version-matched `frida-server` … On WSL2 with a Windows-host
  emulator, do **not** use `frida-ps -U` … it hangs (`frida-ps -U` is fine for a USB-attached
  physical device) … see the runbook (`docs/plans/runbook-local-scan.md`).
  ```

### 1.4 — README §5: where the commands run + full-sequence pointer
- **Classification:** doc / additive.
- **Location:** `README.md` §5 ("Run an analysis"), after the `--help` line. Uncommitted.
- **Reason:** the project needed to state *where* each command runs (WSL2 vs Windows) and point at
  the end-to-end runbook, so a reader does not try to boot the emulator inside WSL.
- **Current text (proof):**
  ```
  **Where these commands run, and the full sequence.** Every scan command runs in the **WSL2
  Ubuntu** terminal — the repo, `uv`, and `adb` all live there; Windows is used only to boot the
  emulator/AVD. For the complete boot → static-only → static + dynamic → static + dynamic +
  traffic-capture sequence … follow the local scan runbook: `docs/plans/runbook-local-scan.md`.
  Static-only (`--skip-dynamic`) needs no device, root, or frida-server …
  ```

### 1.5 — Memory files (persistent notes for future sessions)
- **Classification:** project memory / housekeeping. Location: user memory dir (outside the repo).
- **`skip-trim-wiring-audit-2026-08-22.md`** — **[authored/created]** this session. Records the
  audit conclusion (no essential info lost; skips safe; trims display-only; dynamic/capture blocked
  on the WSL adb relay) so the audit need not be re-run.
- **`audit-findings-2026-08-22.md`** — **[authored/updated]** this session: the A1 entry was
  rewritten from "deferred to the user / run this command" to "DONE on branch `chore/…` (commit
  90b85bb1f), 631,443→665", and the no-op-command gotcha was recorded.
- **`MEMORY.md`** — **[authored/updated]**: added the one-line pointer to the skip/trim/wiring memo.

---

## 2. Audits & verifications performed this session (read-only)

### 2.1 — Skip audit: "are we skipping any essential files/info?" → **No** [audit]
| Mechanism | What actually happens | Verdict |
|---|---|---|
| Per-DEX decompile (`static/decompile.py`) | jadx runs once per **every** `classes*.dex`; CFR secondary fallback recovers classes jadx misses; loud `fallback_unavailable` if CFR absent | memory-safety, not loss |
| Source-walk suffix filter (`static/signatures.py:33 SCANNED_SUFFIXES`) | allowlist covers `.java .xml .smali .js .jsbundle .bundle .json .properties .txt .html .htm`; DEX bytecode + `.so` have their own engines | scoped, no gap |
| Native ABI dedup (`static/native.py:166`) | only **byte-identical** `.so` analyzed once (SHA-256); distinct libs all analyzed; per-ABI coverage; Boundary-4 tracks `.so` loaded from outside `lib/<abi>/` | content-hash safe |
| DEX strings (`static/androguard_scanner.py`) | iterates all dex objects and all strings; no `islice`/sample/cap | complete |
| Undecodable file | `errors="strict"` (no silent half-read); counted **degraded/coverage-limited** | ADR-0006 honest |

### 2.2 — Trim audit: "are we trimming any essential info?" → **No** [audit]
| Trim | Reality | Verdict |
|---|---|---|
| `MAX_EVIDENCE_PER_SIGNATURE = 50` (`signatures.py:59`) | caps stored evidence **rows**; true total tracked + printed ("matched Nx"); report discloses "Evidence truncated (RESID-4F cap)". Detection = presence, unaffected | display cap, disclosed |
| `hosts[:5]` (`report/generator.py:494`) | one-line **preview**; report renders full `capture_flows` (`{% for f in capture_flows %}`) + full `capture_hosts` | no loss |
| decompile log tails | display only; full jadx/apktool logs on disk; detection never reads the tail | no loss |

### 2.3 — Wiring audit: "working as coded/configured/wired?" → **Yes** [audit]
- All pipeline stages imported and invoked in `cli.py`, each returns `StageResult`; `failed` halts loudly (NFR-1). Live order confirmed in prior runs: ingest → audit → decompile → sig_load:root → sig_load:ssl → static_scan → manifest → native → obfuscation → packers → decision → audit → report.
- All **4** signature YAMLs explicitly loaded: `root_detection.yaml`, `ssl_pinning.yaml`,
  `native_detection.yaml` (`cli.py:248`), `packers.yaml`. No orphan rule file.
- Dynamic (`dynamic/frida_runner.py`): `spawn → attach → load → success-check`; hard timeout
  (RESID-6B, no hang); self-termination handled first-class; **two-spawn** for SSL+root.
- Capture (`dynamic/mitmproxy_capture.py`): WSL2-aware — launches `mitmdump.exe` on the Windows
  host, `adb reverse`, `:8080` pass-through / `:8081` capture split, flow decrypt, full flow render;
  **loud `failed` with the real reason** if nothing decrypts (never a fabricated flow).

### 2.4 — Device retry (dynamic + traffic capture), the runbook way [audit + validation]
- Ran only WSL-side adb against the Windows adb server (did **not** boot an emulator inside WSL).
- **Proof (verbatim):**
  ```
  == adb binary: /home/ubuntu/.local/bin/adb ==
  <3>WSL (22 - ) ERROR: UtilConnectUnix:524: socket failed 1
  == adb devices (talks to the Windows-host adb server) ==
  <3>WSL (25 - ) ERROR: UtilConnectUnix:524: socket failed 1
  rc=1
  == cli verify-device (runs the SAME connection path the dynamic stage uses) ==
  `adb devices` failed (exit 1) - the adb daemon is unreachable, not merely
  missing an emulator:
  <3>WSL (31 - ) ERROR: UtilConnectUnix:524: socket failed 1
  Fix the adb/WSL2 relay (restart the Windows adb server) before a dynamic scan.
  VERIFY_RC=1
  ```
- **Two conclusions:** (1) the blocker is the WSL↔Windows adb-relay socket, not "no emulator";
  (2) this **validated the Bug #2 fix on the real failure** — `verify-device` gives the precise
  "daemon unreachable, not merely missing an emulator" diagnosis instead of misleading boot advice.

---

## 3. Per-file change breakdown — every changed file, what changed inside, why

This is the file-by-file map. **Authorship is stated per file and not over-claimed:** only the
files tagged **[this session]** were edited in this session; every file tagged **[earlier]** was
authored in a prior session and merely *inspected this turn* (I read its diff — I did not run its
tests this turn). Diff magnitudes are from `git diff --stat` against HEAD (`90b85bb1f`).

### 3.1 Committed in `90b85bb1f` (branch `chore/untrack-handoff-analysis`)
| File | Δ | What changed inside | Why | Who |
|---|---|---|---|---|
| `.gitignore` | +22 | ignore rules for `docs/plans/handoff/bundles/*/analysis/`, `.coverage`, `.pytest-tmp/`; rewrote the untrack-command comment (see §1.2) | stop the 7.6 GB bloat recurring + document the *working* untrack command | **[this session]** (comment); ignore rules staged from worktree |
| `docs/plans/handoff/bundles/*/analysis/**` | −127,709,239 lines / 630,778 files | removed from the index (kept on disk, `--cached`) | regenerable decompiler output should never have been tracked (see §1.1) | **[this session]** |

### 3.2 Uncommitted — modified source files (11)
- **`README.md`** (+10) — **[this session]**. §4: replaced the `frida-ps -U` device check with
  `verify-device` + a WSL2 "do not use `frida-ps -U`, it hangs" note. §5: added the "Where these
  commands run" paragraph + runbook link. *Why:* README contradicted the runbook and would hang
  WSL2 users. (Full text in §1.3 / §1.4.)
- **`src/audit/attestation.py`** (+113) — **[earlier]**. Audit-log hash-chain hardened against
  concurrent appenders. The per-path tail cache went from `{path: hash}` to `{path: (file_size,
  hash)}` — the file size is a *validity witness* (append-only log ⇒ unchanged size proves the
  cached tail is still the real tail). Added `_exclusive_append_lock` (`fcntl.flock`, guarded so
  the module still imports on non-POSIX) and moved *read-tail → compute-hash → write* **inside**
  the lock. *Why:* the old path-only cache assumed a single process; two concurrent CLIs could
  chain onto the same tail and **fork the hash chain** — the exact tampering shape ADR-0005's chain
  exists to detect. This fix was **not in my earlier §3** — surfaced by reading the diff this turn.
  ```python
  _tail_by_path: dict[str, tuple[int, str | None]] = {}   # (size-witness, tail hash)
  @contextmanager
  def _exclusive_append_lock(fileobj):
      if fcntl is None: yield; return          # non-POSIX host → unlocked (was always single-proc)
      fcntl.flock(fileobj.fileno(), fcntl.LOCK_EX)
      try: yield
      finally: fcntl.flock(fileobj.fileno(), fcntl.LOCK_UN)
  ```
- **`src/calibration/ground_truth.py`** (+8) — **[earlier]**. `DEFAULT_PATH` anchored to
  `Path(__file__).resolve().parents[2] / "config" / "ground_truth.yaml"` (was bare
  `Path("config/ground_truth.yaml")`). *Why:* A2 — the bare relative path falsely raised
  `FileNotFoundError` whenever invoked from any cwd other than the project root.
- **`src/cli.py`** (+279, the largest) — **[earlier]**. Four distinct fixes:
  - **A2:** `PROJECT_ROOT`/`CONFIG_ROOT` anchors (line ~119); all four signature loads
    (`root` 739, `ssl` 742, `native` 248, `packers` 968) + `settings.yaml` now resolve via
    `CONFIG_ROOT`. `_load_thresholds` now **raises** on a present-but-unparseable `settings.yaml`
    (was a silent fall-back to 0.7/0.7 — a moved decision boundary with no signal).
  - **A4:** `except BrokenSignatureError` → emits a **loud `failed` `dex_string_scan` stage** and
    halts, deliberately placed *above* the tolerant `except Exception` (which would otherwise
    mislabel it "androguard unavailable").
  - **Attribution-degraded coverage:** new `_dex_attribution_degraded` flag (only set by a scan
    that *ran*) drives a `console.print` operator warning + `apply_attribution_degraded_java`.
  - **Bug #1 / GAP-2:** `discover_device` / `install_apk` / `verify_installed` wrapped in
    try/except → `failed` dynamic stage that **keeps the already-complete static report** and
    resets `serial=None`; previously an unguarded traceback discarded the whole report.
- **`src/ingest/normalize.py`** (+11) — **[earlier]**. Split-APK merge now orders
  `[base] + [splits]` so the base APK's non-dex entries win collisions **by construction**
  (`setdefault` keeps first writer). *Why:* the old `for p in apks` (filename-sorted) only made
  "base wins" true when `base.apk` happened to sort first — a split like `aaa.apk` could shadow the
  base's manifest-side resources/libs. Not in my earlier §3.
- **`src/report/generator.py`** (+35) — **[earlier]**. Two Jinja disclosure blocks +
  two `generate_report` params: `{% if regenerated_from_stored_data %}` (A3 annotation-loss notice)
  and `{% if dex_attribution_degraded %}` (coverage-limited notice). *Why:* A3 — a regenerated
  report must announce that cause annotations aren't reconstructible from storage (ADR-0006).
- **`src/static/androguard_scanner.py`** (+131) — **[earlier]**. Defines `BrokenSignatureError`
  (raised when a matcher throws on *every* DEX string); adds the whole-pool `attribution_degraded`
  fallback flag when no app-owned namespace is derivable / the xref walk fails. *Why:* A4 — a
  broken rule must halt loudly, not `except: continue` into a false clean (NFR-1).
- **`src/static/coverage.py`** (+60) — **[earlier]**. Three things: renamed
  `apply_unresolved_java` → `apply_dynamic_loading_java` (+ param, clearer Boundary-4 name so the
  wrong flag can't be fed); **new** `apply_attribution_degraded_java` downgrade fold; **bug fix** in
  `apply_unattributed_indicators` — now honors the bool *value* (`if not present: continue`), so a
  `{cat: False}` no longer manufactures a spurious "unknown" (an ADR-0006 confident-negative-vs-unknown
  violation). The rename + value-bug-fix were not in my earlier §3.
- **`src/static/signatures.py`** (−1) — **[earlier]**. Removed a dead
  `lines = text.splitlines()` local (unused after the whole-file read). Trivial cleanup.
- **`src/storage/db.py`** (+12) — **[earlier]**. A3 — new `coverage_causes: Mapped[dict | None]`
  JSON column on `RunRecord` (auto-migrates; NULL on pre-existing runs, which the regen path detects
  to keep the annotation-loss disclosure honest).
- **`src/storage/results.py`** (+6) — **[earlier]**. A3 — `save_run` persists
  `run_data.get("coverage_causes")` (already `_to_serializable`-flattened).

### 3.3 Uncommitted — modified test files (8, all **[earlier]** regression guards)
| Test file | Δ | Guards |
|---|---|---|
| `test_audit_attestation.py` | +71 | append-lock / size-witness cache / no forked chain |
| `test_androguard_scanner.py` | +81 | `BrokenSignatureError` raises; not-flagged when a sig matches |
| `test_cli_helpers.py` | +14 | A2 — present-but-non-numeric `settings.yaml` raises loudly |
| `test_cli_run_e2e.py` | +57 | Bug#1/GAP-2 — static report survives a dynamic-setup failure |
| `test_coverage.py` | +50 | attribution-degraded + dynamic-loading + unattributed-*value* folds |
| `test_normalize.py` | +12 | base-APK-first collision precedence |
| `test_report_generator.py` | +67 | A3 disclosure blocks render |
| `test_storage_results.py` | +47 | A3 `coverage_causes` round-trip + None-when-absent |

### 3.4 Untracked — new files (not yet `git add`-ed)
- **[this session]** `SESSION-CHANGES-2026-08-22.md` — this document.
- **[earlier]** dynamic/capture code: `src/dynamic/mitmproxy_capture.py`,
  `src/dynamic/pass_through_proxy.py`, and Frida scripts
  `src/dynamic/scripts/ssl_pinning_bypass_universal.js`, `…_drive.js`, `…_drive_only.js`.
- **[earlier]** helpers: `scripts/emulator_proxy.py`, `scripts/rs_certpinning_ab.py`.
- **[earlier]** docs: `docs/plans/runbook-local-scan.md`, `docs/plans/bypass-techniques.md`.
- **[earlier]** tests: `tests/unit/test_mitmproxy_capture.py`, `test_pass_through_proxy.py`,
  `test_cli_verify_device.py`.
- **[earlier]** `run_logs/` — per-APK scan logs (UnCrackable 1–3, AndroGoat, DIVA, InsecureBankv2,
  RS_CertPinning, RS_Vapour, telegram, paytm, pokemongo, aves, jerboa, …), pytest logs,
  `sweep.sh`/`sweep.out`, `SUMMARY.tsv`.
- **excluded (not project work):** `.claude/*`, `.mcp.json` — Claude Code harness/session config
  that lives in the working dir; not part of this project's source and not authored as a deliverable.

---

## 4. Blocked — not fixable from this environment

- **Dynamic + traffic-capture execution** — `[blocked]`. WSL↔Windows adb relay socket is down
  (`UtilConnectUnix:524: socket failed`); even `adb version` fails. This is an environment/host
  issue, **not a code bug** — the code is correctly wired (§2.3) and fails loudly with the right
  reason (§2.4). Remediation is a **Windows-host action** I cannot perform from the WSL sandbox:
  ```powershell
  # Windows:
  C:\Users\Divyang\AppData\Local\Android\Sdk\emulator\emulator.exe -avd Frida_Test
  ```
  ```bash
  # WSL2 Ubuntu:
  adb kill-server && adb start-server && adb devices   # expect: emulator-5554  device
  PYTHONPATH=src uv run python -m cli verify-device
  ```

---

## 5. Master classification table

| # | Item | Class | Authored / Verified | State |
|---|---|---|---|---|
| 1.1 | Untrack 630,778 bundle-analysis files | repo hygiene / High | authored | committed on branch `chore/untrack-handoff-analysis` |
| 1.2 | Fix no-op untrack command in `.gitignore` | bug (tooling) / Medium | authored | committed (`90b85bb1f`) |
| 1.3 | README §4 → `verify-device` | doc / Medium | authored | uncommitted (` M README.md`) |
| 1.4 | README §5 where-to-run + runbook pointer | doc / additive | authored | uncommitted |
| 1.5 | 3 memory files | memory | authored | saved (outside repo) |
| 2.1–2.3 | Skip / trim / wiring audit | audit | verified | no change needed |
| 2.4 | Device retry + Bug #2 live validation | audit | verified | blocked (env) |
| 3/A2 | cwd-relative config (`cli.py`,`ground_truth.py`) | correctness | earlier·inspected | uncommitted, present |
| 3/A3 | regen annotation loss (`generator.py`,`db.py`,`results.py`) | data-integrity | earlier·inspected | uncommitted, present |
| 3/A4 | DEX broken-sig swallow (`androguard_scanner.py`,`cli.py`) | principle-3 | earlier·inspected | uncommitted, present |
| 3/Bug1 | dynamic-setup crash discarded static report (`cli.py`) | robustness | earlier·inspected | uncommitted, present |
| 3/Bug2 | verify-device stderr | diagnosability | earlier·live-validated | uncommitted + validated §2.4 |
| 3/att | audit-log hash-chain fork under concurrent CLIs (`attestation.py`) | integrity (ADR-0005) | earlier·inspected | uncommitted, present |
| 3/cov | attribution-degraded java fold + `{cat:False}` false-unknown bug (`coverage.py`) | ADR-0006 | earlier·inspected | uncommitted, present |
| 3/nrm | split-APK base-wins-collision was filename-sort-incidental (`normalize.py`) | correctness | earlier·inspected | uncommitted, present |
| 3/sig | dead `splitlines()` local removed (`signatures.py`) | cleanup | earlier·inspected | uncommitted, present |
| 4 | Dynamic + capture execution | limitation | — | blocked (Windows-host adb relay) |

---

## 6. Repository state at session end

- **Branch:** `chore/untrack-handoff-analysis` (1 commit ahead of `main`: `90b85bb1f`).
- **Tracked files:** 665 (was 631,443).
- **Uncommitted worktree (19 modified + untracked new files):** the A2/A3/A4 fixes, dynamic/capture
  modules, Frida scripts, runbook, README edits, and regression tests. **Deliberately left
  uncommitted** — a multi-session worktree is the owner's to commit, not something to sweep up.
- **To bring A1 onto `main`:**
  ```bash
  git checkout main && git merge --ff-only chore/untrack-handoff-analysis
  ```

## 7. Constraints honored

- No AI/tool attribution in the commit message or code (CLAUDE.md commit-style rule; overrides the
  generic Co-Authored-By default).
- No workflows, no subagents, no deep-research — none were requested.
- Commit made only after an explicit "fix all" instruction; branched first because `main` is the
  default branch.
