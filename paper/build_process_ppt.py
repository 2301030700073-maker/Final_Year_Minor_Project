#!/usr/bin/env python3
"""Build the process-walkthrough deck: phase -> step -> sub-step, start to finish.

This is not the review deck. The review deck argues *what* the project is; this
one is an operator's manual in slide form - you open the laptop, follow it in
order, and end with a report. Every command and option name here is taken from
the project's own CLI (`--help` of each command) and README, never invented.
Output lines are either quoted from a stored run's own record or written as the
tool's shape with `<n>` placeholders - a slide never states a number no run
produced, because a fabricated console line is exactly what this project
refuses to ship (CLAUDE.md, non-negotiable 3).

Structure carried on every content slide:
    PART    - which phase of the 7-phase plan
    STEP    - the stage inside that phase
    SUB     - the individual action, with its command and its effect

Usage:
    python3 paper/build_process_ppt.py
    python3 paper/build_process_ppt.py --out "D:/.../Project-Process-Walkthrough.pptx"
"""
from __future__ import annotations

import argparse
from pathlib import Path

from pptx import Presentation
from pptx.dml.color import RGBColor
from pptx.enum.text import PP_ALIGN, MSO_ANCHOR
from pptx.util import Emu, Inches, Pt

# --- geometry (16:9) ----------------------------------------------------------
SW, SH = Inches(13.333), Inches(7.5)
M = Inches(0.62)                      # side margin
BODY_TOP = Inches(1.72)
BODY_W = SW - 2 * M
BODY_BOTTOM_LIMIT = SH - Inches(0.34)  # nothing may be laid out below this

# --- palette ------------------------------------------------------------------
INK = RGBColor(0x1B, 0x1F, 0x24)
MUTED = RGBColor(0x5A, 0x63, 0x6E)
ACCENT = RGBColor(0x0B, 0x5C, 0x8A)
CODE_BG = RGBColor(0xF2, 0xF4, 0xF7)
CODE_INK = RGBColor(0x14, 0x3D, 0x59)
WHITE = RGBColor(0xFF, 0xFF, 0xFF)
RULE = RGBColor(0xD6, 0xDC, 0xE3)
OUT_RULE = RGBColor(0x9A, 0xA6, 0xB2)   # left rule marking a block as output, not a command
WARN = RGBColor(0x8A, 0x4B, 0x0B)

TEXT_FONT = "Calibri"
CODE_FONT = "Consolas"

# Average advance width per point of font size, IN INCHES (so it multiplies with
# a point size to give inches per character). Calibri ~0.43em, Consolas is
# monospace at ~0.55em. Used only to estimate wrapped rows so slides stack
# without overlapping - the real faces are a little narrower than this, so the
# estimate over-reserves rather than under-reserves.
TEXT_EM = 0.43 / 72
CODE_EM = 0.55 / 72

DEFAULT_OUT = Path(
    "/mnt/d/Minor Peoject REview/PPT/Project-Process-Walkthrough.pptx")


# --- the deck -----------------------------------------------------------------
# ("cover", title, subtitle, [body])  title slide
# ("part", PART, title, [body])       section divider - lines[0] becomes the subtitle
# ("step", PART, STEP, [body])        a step slide: body lines are the sub-steps
# ("end", title, "", [body])          closing slide
# Body line conventions:
#   "$ cmd"   -> a command, rendered monospace on its own band
#   "> out"   -> what the tool prints back, monospace, muted
#   "- x"     -> a sub-step bullet
#   "  y"     -> a detail line belonging to the bullet above
#   ""        -> spacing
# A line indented directly under a "$" or ">" line is that command continued onto a new
# line. It stays inside the same monospace band, so a wrapped command reads as one command
# rather than as two entries. Keep it after a blank line if it is really a prose detail.
DECK: list[tuple] = [
    ("cover", "Project Process Walkthrough",
     "Android Root-Detection & SSL/TLS Pinning Analysis Platform - every phase, "
     "step and sub-step, with the real commands",
     ["Phases 1-4 are built and validated end to end. Phases 5-7 are deferred by decision (ADR-0003).",
      "Run this deck top to bottom from a cold boot and you finish with a written report."]),

    # ---------------------------------------------------------------- PART 0
    ("part", "PART 0", "Orientation - what this deck walks through",
     ["PHASE = one of the 7 stages of the plan. Phases 1-4 are the deterministic core; 5-7 are the AI layer.",
      "STEP = a stage inside a phase, and each step is one row in the run's own stage table.",
      "SUB-STEP = one action you take, with the exact command and what it changes.",
      "Every command runs in the WSL2 Ubuntu terminal unless it is marked (Windows)."]),

    ("step", "PART 0", "How to read a step slide",
     ["- Left strip names the PART and STEP so you always know where you are.",
      "- A line starting with $ is a command you type, exactly as written.",
      "- A line starting with > is what the tool prints back. A token in <angle brackets> is a",
      "  placeholder the tool fills in at run time - we never print an invented number.",
      "- Numbers elsewhere are quoted from a stored run. Nothing here is a mock or an estimate."]),

    ("step", "PART 0", "The whole command surface - six commands",
     ["$ PYTHONPATH=src uv run python -m cli --help",
      "",
      "- run                 analyse one APK: ingest, static, decision, dynamic, report, audit.",
      "- calibration-report  score every stored run against the independent ground truth.",
      "- verify-audit-log    re-derive the audit log's hash chain and prove nothing was edited.",
      "- re-attribute        backfill attribution caveats into runs recorded before that feature.",
      "- regen-reports       re-render stored reports from their own rows, in bulk.",
      "- verify-device       prove the Frida path the dynamic stage will use, before you rely on it.",
      "",
      "- Every one of the six is walked through in this deck, with its options and its output."]),

    ("part", "PART 0", "Before anything: what must be up",
     ["A dynamic run needs four things alive at once. A static-only run needs only the last one.",
      "Windows: the rooted AVD booted - Frida_Test_API34, Google APIs image, userdebug, x86_64, API 34.",
      "Windows: a plain python.exe serving the pass-through proxy on :8080 - the emulator's only route out.",
      "Windows: mitmdump 8.1.1 on :8081 - only when you pass --capture-traffic.",
      "Device: frida-server 16.7.19 - step 4 installs it for you.",
      "WSL2: .venv synced from uv.lock, plus jadx, apktool, CFR and Ghidra."]),

    # ---------------------------------------------------------------- PHASE 1
    ("part", "PHASE 1", "Foundation - the environment and the one-time setup",
     ["Nothing here analyses an app. It makes everything after it possible.",
      "Steps: sync the Python environment, boot the device, restore its network, prove the Frida path.",
      "Run this once per machine, then again after every git pull."]),

    ("step", "PHASE 1", "STEP 1 - Sync the Python environment",
     ["$ uv sync",
      "> Resolved 75 packages in 0.59ms",
      "> Checked 73 packages in 0.30ms",
      "",
      "- Reads uv.lock and installs the exact locked versions into .venv/ - this is what makes the",
      "  dev machine and the reference test machine identical.",
      "- Locks 12 runtime dependencies: typer, rich, pyyaml, jinja2, sqlalchemy, androguard,",
      "  pyelftools, capstone, pyaxmlparser, frida, objection, plus pytest in the dev group.",
      "- Sub-step: run anything through that environment with uv run <command>."]),

    ("step", "PHASE 1", "STEP 2 - (Windows) Boot the rooted emulator",
     ["- Frida needs root, so the device must be a userdebug image - Google APIs, never Google Play.",
      "- The SDK's emulator\\ directory is NOT on PATH, so a bare `emulator` throws",
      "  CommandNotFoundException - call it by full path with the & call operator.",
      "",
      "$ & \"C:\\Users\\Divyang\\AppData\\Local\\Android\\Sdk\\emulator\\emulator.exe\" `",
      "      -avd Frida_Test_API34 -no-snapshot",
      "",
      "- Type it in Windows PowerShell, not WSL - and keep that window open: closing it shuts the",
      "  emulator down. -avd names the AVD; -no-snapshot forces a clean boot so a stale snapshot",
      "  cannot fake a working state. A rooted physical device over USB works too.",
      "",
      "- If boot prints FATAL | Running multiple emulators with the same AVD, the AVD is locked -",
      "  one is on it, or a killed one left the lock behind. adb devices from WSL decides: listed =",
      "  already up, use it; empty = stale, so clear it in PowerShell and boot again:",
      "  Remove-Item C:\\Users\\Divyang\\.android\\avd\\Frida_Test_API34.avd\\multiinstance.lock",
      "- Not -read-only (what the message suggests): it discards writes, so APK installs would not",
      "  persist."]),

    ("step", "PHASE 1", "STEP 3 - Restore the emulator's internet path",
     ["$ bash scripts/emulator_up.sh",
      "> [emulator-up] OK: emulator-5554 proxy path restored - device proxy -> 127.0.0.1:8080,",
      "> Windows-host pass-through listening, adb reverse in place (no MITM; pinning apps work).",
      "",
      "- The WSL2-hosted emulator has no NAT, so this adb reverse is its ONLY way out. A fresh boot",
      "  loses it, which is why this runs every time rather than once.",
      "- Safe to run anytime: with no emulator online it prints one line and exits 0.",
      "- If it prints 'internet setup FAILED', the Windows host has no usable python.exe - fix that first."]),

    ("step", "PHASE 1", "STEP 4 - Check the environment and auto-start services",
     ["$ uv run python scripts/check_environment.py --fix",
      "> Mode: --fix (auto-start enabled)",
      "> <n>/<n> check groups passed",
      "",
      "- Runs six check groups: Python/WSL2, uv sync, the Android toolchain, adb + emulator + root,",
      "  the Frida WSL->Windows bridge, and the project's own components.",
      "- Sub-step: --fix is what auto-starts the adb server and the on-device frida-server.",
      "  Drop --fix to check without starting anything.",
      "- A failing group prints the reason it failed and exits non-zero; it never reports a pass."]),

    ("step", "PHASE 1", "STEP 5 - Prove the Frida path the bypass will use",
     ["$ PYTHONPATH=src uv run python -m cli verify-device",
      "> device emulator-5554 present",
      "> FRIDA_OK connected, <n> process(es) on emulator-5554 - ready for a dynamic scan",
      "",
      "- Confirms the device is online and enumerates processes over the SAME connection the dynamic",
      "  stage uses - not a different path that happens to work.",
      "- --device <serial> names a different device; it defaults to emulator-5554.",
      "- Sub-step: it auto-provisions a version-matched frida-server (16.7.19) if the device's copy",
      "  is missing or wrong - so FRIDA_OK is itself proof the versions matched.",
      "- Never substitute frida-ps -U: on a Windows-host emulator its USB auto-discovery cannot see",
      "  the TCP-served device, and it hangs."]),

    # ---------------------------------------------------------------- PHASE 2
    ("part", "PHASE 2", "Ingest - turn an APK file into facts",
     ["Input: one .apk. Output: identity, signature verdict, decoded manifest, extracted code.",
      "This phase never decides anything. It only records what the file is."]),

    ("step", "PHASE 2", "STEP 1 - The command that starts everything",
     ["$ PYTHONPATH=src uv run python -m cli run --apk APK_Test/UnCrackable-Level1.apk \\",
      "      --justification ACADEMIC_TRAINING_TARGET --skip-dynamic",
      "",
      "- --apk <path>        the file to analyse. Required. A path that does not exist is refused.",
      "- --justification     the authorization reason. Required, and it is audited (ADR-0005).",
      "  Accepted forms only: OWN_APP | CTF | AUTHORIZED_ENGAGEMENT:<id> | ACADEMIC_TRAINING_TARGET.",
      "  Free text is rejected and the run aborts before any analysis happens.",
      "- --skip-dynamic      stop after static + report. Needs no device, so Phases 2-3 need only this.",
      "- Sub-step: sha256 and size are recorded FIRST, and that hash names every output directory."]),

    ("step", "PHASE 2", "STEP 2 - What ingest records about the file",
     ["- Real values from stored run 54bca65a, app APK_Test/UnCrackable-Level1.apk (66,651 bytes):",
      "  sha256 1da8bf57d266109f9a07c01bf7111a1975ce01f190b9d914bcd3ae3dbef96f21",
      "  package owasp.mstg.uncrackable1, version 1.0 (code 1), minSdk 19, targetSdk 28",
      "  signer CN=Jeroen Willemsen, OU=OMTG, O=OWASP, L=Amsterdam, C=NL   (1 signer)",
      "",
      "- aapt2 dump badging supplies package, version and declared features.",
      "- apksigner verify --verbose --print-certs supplies the signature schemes: v1 true, v2 true,",
      "  v3 false, v4 false for this APK - recorded as measured facts, not as a verdict.",
      "- Sub-step: pyaxmlparser decodes the binary AndroidManifest.xml into readable XML."]),

    ("step", "PHASE 2", "STEP 3 - The toolchain bound you must know about",
     ["- The build-tools release is load-bearing: only build-tools 33+ reads APK Signature Scheme v3.1.",
      "- An older apksigner meeting a v3.1 APK reports it as NOT SIGNED - a false statement about the",
      "  app. The report therefore renders that case as a measured toolchain bound:",
      "  'Signature verification: NOT EVALUATED', naming the schemes the file really carries.",
      "- Sub-step: where each artefact lands",
      "  outputs/analysis/{sha256}/   extracted code, decoded manifest, per-surface scan records",
      "  outputs/reports/{sha256}/    the rendered Markdown and HTML report",
      "  outputs/audit_log.jsonl      one appended, hash-chained record for this run"]),

    # ---------------------------------------------------------------- PHASE 3
    ("part", "PHASE 3", "Static detection - the rule engine",
     ["120 hand-written YAML rules decide what the code contains: 49 root, 51 ssl, 12 native, 8 packers.",
      "The rule engine is the ONLY source of truth for detection (ADR-0001). Nothing else decides."]),

    ("step", "PHASE 3", "STEP 1 - Scan the code against the rules",
     ["- Same `run` command, no extra flag: the static stages are part of every run.",
      "- Stage rows this produces, in order, from the run record itself:",
      "  ingest -> decompile -> signature_load:root -> signature_load:ssl -> static_scan ->",
      "  manifest_parse -> native_scan -> obfuscation -> packers -> decision_engine",
      "",
      "- androguard walks the DEX bytecode; jadx decompiles to Java; apktool unpacks resources.",
      "- Each match records its file and line as evidence, so a hit can be re-checked by hand.",
      "- Rules live in config/signatures/*.yaml - root_detection, ssl_pinning, native_detection, packers.",
      "- Sub-step: every match is attributed by package name, so a root check inside a bundled ad or",
      "  analytics SDK is separated from the app's own check and never reported as the app's defence."]),

    ("step", "PHASE 3", "STEP 2 - Scan the surfaces a DEX read cannot reach",
     ["- Native .so libraries: pyelftools reads ELF headers and symbols; capstone disassembles.",
      "- Ghidra headless is the primary body decompiler, and is what recovers a technique hidden",
      "  inside a function body - a fork inside a ptrace/fork anti-debug pair, for instance.",
      "  Absent Ghidra, capstone still disassembles but cannot decompile, so native stays partial.",
      "- UPX-packed libraries are unpacked first; one that cannot be unpacked stays partial.",
      "- Sub-step: Hermes/React-Native bundles and WebView JavaScript bridges are scanned too, which",
      "  is what catches a root check living outside Java entirely.",
      "- Sub-step: obfuscation level is measured, and the rule that produced it is recorded with it."]),

    ("step", "PHASE 3", "STEP 3 - Record how completely each surface was scanned",
     ["- Every surface reports its own coverage: fully_analyzed, partial, or not scanned.",
      "- Real coverage map from run 54bca65a:",
      "  java partial   native fully_analyzed   manifest fully_analyzed   js fully_analyzed",
      "",
      "- A category can only be called absent when every surface for it was fully scanned.",
      "  'We found nothing' and 'we could not look' are different statements, never merged.",
      "- Sub-step: a low-confidence result is labelled Inconclusive rather than confident.",
      "- Sub-step: findings from a partially-scanned surface are marked coverage-limited, and a",
      "  negative there is never treated as proof of absence (ADR-0006)."]),

    # ---------------------------------------------------------------- PHASE 4
    ("part", "PHASE 4", "Decision engine - from evidence to a verdict",
     ["This is where the project's central discipline lives: a verdict and its evidence tier",
      "travel together, and the tiers are never blended."]),

    ("step", "PHASE 4", "STEP 1 - Score and decide",
     ["- Matches are weighted into one confidence per category and compared against the thresholds",
      "  in config/settings.yaml - the only place those thresholds live.",
      "- The verdict is one of four: ROOT_ONLY | SSL_ONLY | BOTH | NEITHER.",
      "- Real row from run 54bca65a: action ROOT_ONLY, root_confidence 1.00, ssl_confidence 0.00.",
      "",
      "> Decision: ROOT_ONLY",
      "",
      "- Sub-step: the decision prints to the console as its own stage row, so the verdict is visible",
      "  before any dynamic work begins."]),

    ("step", "PHASE 4", "STEP 2 - Attach the evidence tier to every finding",
     ["- deterministic_matched         a rule matched the code, statically.",
      "- dynamically_confirmed         the app's own check actually ran and was observed.",
      "- ai_hypothesized_unverified    a model suggested it and nothing has verified it (Phases 5-7).",
      "- ai_hypothesized_dynamically_confirmed   a model suggested it AND it was observed.",
      "- Sub-step: reports and confidence scores never blend these tiers. A static match is never",
      "  presented as though it were observed behaviour.",
      "- Sub-step: only a real probe-hit promotes a finding to dynamically_confirmed - not a plausible",
      "  reading of the log, and not a hook that merely attached."]),

    ("step", "PHASE 4", "STEP 3 - Run the dynamic stage",
     ["$ PYTHONPATH=src uv run python -m cli run --apk APK_Test/UnCrackable-Level1.apk \\",
      "      --target owasp.mstg.uncrackable1 --justification ACADEMIC_TRAINING_TARGET",
      "> OK  dynamic  (8312ms)",
      "> root_bypassed = 1",
      "",
      "- --device <serial> pins the run to one device; on a single online device it auto-discovers.",
      "- The stage installs the APK, spawns it, and attaches over the path verify-device just proved.",
      "- Sub-step: the hook script is SYNTHESIZED per target from the rules that matched, so the hooks",
      "  follow the app instead of a fixed list - the direct response to the 1st review comment.",
      "- Sub-step: a target-specific success check then decides programmatically whether the bypass",
      "  worked. It is never eyeballed, and it never assumes: if no check ran, nothing is promoted."]),

    ("step", "PHASE 4", "STEP 4 - Capture live traffic (the SSL proof)",
     ["$ PYTHONPATH=src uv run python -m cli run --apk APK_Test/AndroGoat.apk \\",
      "      --target owasp.sat.agoat --justification ACADEMIC_TRAINING_TARGET --capture-traffic",
      "> FAILED  capture-traffic  (28073ms)",
      "",
      "- --capture-traffic adds the mitmproxy stage: it routes the app through mitmdump, decrypts the",
      "  flows, and records them in the report as SSL-bypass evidence. Off by default.",
      "- --drive-ui (on by default) lets the stage drive the UI during the capture window so an app",
      "  that only fetches after a tap still produces flows. --no-drive-ui hands the tapping to you.",
      "  Both are ignored without --capture-traffic.",
      "- mitmproxy must be on the WINDOWS host: the stage launches mitmdump.exe there, because the",
      "  device reaches the Windows host's localhost and never WSL2's.",
      "- Sub-step: a failed capture fails LOUDLY with its measured reason. AndroGoat needs taps, so 0",
      "  client connections is reported as 'app made no network requests - interactive capture needed',",
      "  never dressed up as a clean empty result."]),

    ("step", "PHASE 4", "STEP 5 - Correlate static against dynamic",
     ["- Correlation compares what the rules predicted with what the app actually did.",
      "- Agreement is recorded per category, so an empty list is never read as agreement.",
      "- A confirmed bypass is recorded as COVERAGE-CONFIRMED. An inconclusive dynamic result is",
      "  recorded as UNVERIFIED - a third state, never rounded up to a pass or down to a failure.",
      "- Sub-step: correlation is skipped, with its own recorded reason, when the run was static-only",
      "  or the device ended the run before the check could fire. 'Not attempted' and 'skipped' are",
      "  different rows and are labelled differently."]),

    ("step", "PHASE 4", "STEP 6 - The remaining run options",
     ["- --target <pkg>     selects the bypass script and success-check module. Optional: omitted, it is",
      "                      auto-derived from the APK's own package name.",
      "                      Omit it for almost everything; pass it only to override that derivation.",
      "- --skip-dynamic      static only. No device, no root, no frida-server - runs anywhere. The",
      "                      verdict stays deterministic_matched and is never promoted.",
      "- --force-dynamic     operator override (ADR-0005) for a NEITHER target whose checks live past",
      "                      the rule engine's reach. Deploys the universal bypass anyway, and does NOT",
      "                      change the static verdict or confidence - the result still depends on real",
      "                      behaviour. No effect unless the static verdict is NEITHER.",
      "- Sub-step: --skip-dynamic is mutually exclusive with --force-dynamic and --capture-traffic:",
      "  a static-only run can neither bypass nor capture."]),

    # ---------------------------------------------------------------- REPORT
    ("part", "PHASE 4", "The report - what you actually hand over",
     ["$ PYTHONPATH=src uv run python -m cli run --apk APK_Test/UnCrackable-Level1.apk \\",
      "      --justification ACADEMIC_TRAINING_TARGET",
      "> Report: outputs/reports/<apk_sha256>/<run_id>.md",
      "",
      "- Rendered by Jinja2 from the run's own stored row, in Markdown and HTML.",
      "- The hash in the path is the APK's and the id is the run's, so two runs of one app never",
      "  overwrite each other - every run keeps its own report.",
      "- Sub-step: the report carries the toolchain line, the per-surface coverage, the evidence tier",
      "  of every finding, and an explicit limitations section. It never claims zero false positives -",
      "  that is not a claim this system makes (ADR-0006)."]),

    # ---------------------------------------------------------------- CALIBRATION
    ("part", "PHASE 4", "Calibration - measure the detector honestly",
     ["$ PYTHONPATH=src uv run python -m cli calibration-report",
      "> Tier 2 - Precision / Recall / F1 (vs independently-sourced ground truth)",
      "> root  | 1.00 | 1.00 | 1.00 | n=6     ssl  | 1.00 | 1.00 | 1.00 | n=4",
      "",
      "- Scores every accumulated run against config/ground_truth.yaml, the independent truth.",
      "- --ground-truth <path> points it at a different registry if you keep one elsewhere.",
      "- --apk <sha256> restricts the report to one app's runs.",
      "- It requires no --apk and no --justification, unlike `run`: it reports over already-audited",
      "  history and performs no fresh analysis act (its own --help states this)."]),

    ("step", "PHASE 4", "Calibration - what the numbers do and do not say",
     ["- Real exclusions the table prints, so a corpus cannot quietly omit a known miss:",
      "  root: 4 excluded for having no ground-truth entry, 9 for a partial surface, 2 known-misses",
      "  ssl:  4 excluded for having no ground-truth entry, 11 for a partial surface, 0 known-misses",
      "",
      "- The tool prints its own caveat verbatim, and it is not decoration:",
      "  'Calibration curve is a skeleton, not a statistically robust result - only 10 ground-truthed",
      "  category-observations exist across all known targets. Read bucket rates as directional at",
      "  best, not as a reliable estimate of confidence-vs-accuracy.'",
      "- Sub-step: a corpus that silently dropped a known miss would report a recall it never earned,",
      "  which is why the exclusions are columns in the table rather than a footnote."]),

    # ---------------------------------------------------------------- MAINTENANCE
    ("part", "MAINTENANCE", "The three commands that keep stored results honest",
     ["Stored reports can go stale relative to their own row. These three commands are how that is",
      "found and fixed - and each one records what it did."]),

    ("step", "MAINTENANCE", "verify-audit-log - prove nothing was edited",
     ["$ PYTHONPATH=src uv run python -m cli verify-audit-log",
      "> Audit log OK - <n> record(s), <m> chained, <k> legacy",
      "",
      "- Re-derives the log's hash chain to confirm no record was edited, deleted or reordered. That",
      "  is the tamper-evidence behind ADR-0005.",
      "- --audit-log <path> points it at a different file; default outputs/audit_log.jsonl.",
      "- It exits non-zero and names the break if the chain does not hold. One such break is known and",
      "  deliberate: a fork recorded on 2026-08-17 is reported rather than repaired, because the log is",
      "  append-only and rewriting it would destroy the very property this command exists to prove.",
      "- Sub-step: expect the OK line above on a clean log; on this corpus the command reports the",
      "  known fork instead. Both are the command working - neither is a silent pass."]),

    ("step", "MAINTENANCE", "re-attribute - backfill attribution into older runs",
     ["$ PYTHONPATH=src uv run python -m cli re-attribute --justification ACADEMIC_TRAINING_TARGET",
      "",
      "- Backfills machine-readable root/ssl attribution caveats into rows that predate the feature,",
      "  so an automated reader stops reading a bundled-SDK-only ROOT_ONLY as the app's own defence.",
      "- Non-destructive: it only attaches caveats. It never rewrites verdict, confidence or evidence.",
      "- --force recomputes even already-attributed rows, for use after a taxonomy fix.",
      "- Requires --justification, because it mutates consumer-visible state.",
      "- Sub-step: it regenerates only the rows it changes, so it is a backfill tool, not a refresh."]),

    ("step", "MAINTENANCE", "regen-reports - the refresh path",
     ["$ PYTHONPATH=src uv run python -m cli regen-reports --justification ACADEMIC_TRAINING_TARGET --dry-run",
      "> would regenerate 301 report(s); 6 refused (unreproducible - left exactly as they are); 0 failed",
      "",
      "- Re-renders stored reports from their own rows, in bulk (ADR-0027), fixing the staleness that",
      "  re-attribute never touches - a rendering fix, or a field the reconstructor missed.",
      "- It re-derives nothing: corpus, obfuscation level and classification all come from the row.",
      "- --dry-run renders into a throwaway tree and writes no report file, reporting the same three",
      "  outcome categories a real sweep does.",
      "- --missing-corpus restricts the sweep to rows recorded before ADR-0022.",
      "- Sub-step: a refusal is not a failure. For those 6 rows the stored report is the only copy of",
      "  its own cause sections, so they are left exactly as they are - backfilling coverage_causes is",
      "  the real fix. And a regenerated report is NOT the artefact the original run produced: its",
      "  Generated: timestamp and wording become today's."]),

    # ---------------------------------------------------------------- PHASES 5-7
    ("part", "PHASES 5-7", "The deferred AI layer - and why it is deferred",
     ["Phases 5-7 of the plan are the AI capability layer. They are not built, and nothing above",
      "depends on them (ADR-0003): the deterministic core is proven first, on real targets.",
      "",
      "- Phase 5 - Knowledge & Reporting Intelligence: index the OWASP MASTG catalogue so report",
      "  wording cites a real technique rather than a model invention.",
      "- Phase 6 - Semantic Hypothesis Generation: a model proposes candidates for code the rules did",
      "  not match; every candidate is stored as ai_hypothesized_unverified until something tests it.",
      "- Phase 7 - Bypass-Technique Synthesis: draft a hook, run it sandboxed on a revertible emulator,",
      "  require two independent positive signals, and still require human review before the technique",
      "  is trusted (ADR-0004).",
      "- No model ever decides whether root-detection or pinning is present. Only the rule engine",
      "  decides, and only observed behaviour confirms."]),

    # ---------------------------------------------------------------- END TO END
    ("part", "END TO END", "The whole thing in order, from a cold boot",
     ["1. uv sync",
      "2. (Windows) C:\\Users\\Divyang\\AppData\\Local\\Android\\Sdk\\emulator\\emulator.exe -avd Frida_Test_API34 -no-snapshot",
      "3. bash scripts/emulator_up.sh",
      "4. uv run python scripts/check_environment.py --fix",
      "5. PYTHONPATH=src uv run python -m cli verify-device",
      "6. PYTHONPATH=src uv run python -m cli run --apk <file> --justification ACADEMIC_TRAINING_TARGET",
      "7. PYTHONPATH=src uv run python -m cli run --apk <file> --justification ... --capture-traffic",
      "8. PYTHONPATH=src uv run python -m cli calibration-report",
      "9. PYTHONPATH=src uv run python -m cli verify-audit-log",
      "",
      "- The emulator\\ directory is not on PATH, so a bare `emulator` fails: in PowerShell call",
      "  the .exe by full path with the call operator &.",
      "- Static-only instead? Do step 1, then step 6 with --skip-dynamic added. Nothing else changes.",
      "- Steps 2-5 are per boot; steps 6-7 are per app; steps 8-9 are whenever you want the numbers."]),

    ("step", "END TO END", "Where the evidence lives",
     ["outputs/analysis/{sha256}/     extracted code, decoded manifest, per-surface scan records",
      "outputs/reports/{sha256}/      the rendered Markdown and HTML reports",
      "outputs/audit_log.jsonl        the hash-chained audit log - one record per analysis run",
      "outputs/analysis/results.db    the run table: verdict, confidences, coverage, stage results",
      "config/settings.yaml           the decision thresholds",
      "config/signatures/*.yaml       120 rules: 49 root, 51 ssl, 12 native, 8 packers",
      "config/ground_truth.yaml       the independent truth calibration-report scores against",
      "",
      "- Every claim in a report traces to one of these. If a number cannot be traced to one of them,",
      "  it does not belong in the report."]),

    ("end", "Where to go next", "",
     ["README.md                      the operator's entry point: prerequisites, the run table, scans",
      "docs/plans/runbook-local-scan.md   the full local runbook this deck follows",
      "docs/plans/architecture/       the target architecture for all 7 phases",
      "docs/plans/adr/                the decision records behind every choice above",
      "docs/plans/handoff/            each finished phase's handoff and its verification bundle",
      "",
      "- Phase 1-4 are done and validated on real targets; Phases 5-7 stay deferred until that core",
      "  is proven beyond doubt (ADR-0003)."]),
]


def _wrap_rows(text: str, size_pt: float, avail_in: float, mono: bool = False) -> int:
    """Estimate how many rendered rows a line occupies, so slides stack without overlap."""
    per_char = (CODE_EM if mono else TEXT_EM) * size_pt
    chars = max(1, int(avail_in / per_char))
    return max(1, -(-len(text) // chars))


def _tf(shape, size, color, bold=False, font=TEXT_FONT):
    tf = shape.text_frame
    tf.word_wrap = True
    tf.margin_left = tf.margin_right = tf.margin_top = tf.margin_bottom = 0
    p = tf.paragraphs[0]
    return tf, p


def _run(p, text, size, color, bold=False, font=TEXT_FONT, italic=False):
    r = p.add_run()
    r.text = text
    r.font.size = Pt(size)
    r.font.color.rgb = color
    r.font.bold = bold
    r.font.italic = italic
    r.font.name = font
    return r


def blank(prs):
    return prs.slides.add_slide(prs.slide_layouts[6])


def rect(slide, l, t, w, h, fill):
    from pptx.enum.shapes import MSO_SHAPE
    s = slide.shapes.add_shape(MSO_SHAPE.RECTANGLE, l, t, w, h)
    s.fill.solid()
    s.fill.fore_color.rgb = fill
    s.line.fill.background()
    s.shadow.inherit = False
    return s


def header(slide, kind, title, subtitle=""):
    """Colour band + title. kind drives the band colour so a phase is visible at a glance."""
    band = ACCENT if kind.startswith("PHASE") else (
        MUTED if kind in ("MAINTENANCE", "END TO END", "PHASES 5-7", "END") else CODE_INK)
    rect(slide, Emu(0), Emu(0), SW, Inches(0.16), band)
    tb = slide.shapes.add_textbox(M, Inches(0.46), BODY_W, Inches(0.5))
    tf, p = _tf(tb, 26, INK)
    _run(p, kind + "   ", 13, band, bold=True)
    _run(p, title, 25, INK, bold=True)
    if subtitle:
        tb2 = slide.shapes.add_textbox(M, Inches(1.06), BODY_W, Inches(0.5))
        tf2, p2 = _tf(tb2, 13, MUTED)
        p2.line_spacing = 1.1
        _run(p2, subtitle, 13, MUTED, italic=True)
    rect(slide, M, Inches(1.56), BODY_W, Emu(9525), RULE)


def body(slide, lines, top=None):
    """Render sub-steps. Commands and outputs become monospace bands.

    Returns the y the content ended at, so the caller can assert it fits.
    """
    y = top or BODY_TOP
    i = 0
    while i < len(lines):
        line = lines[i]
        if line.startswith("$ ") or line.startswith("> "):
            # Collect the contiguous command/output block into one band. A line indented
            # under a command or output line is that line CONTINUED: a wrapped command is
            # one command, so it stays in the same band and the same monospace run instead
            # of being split off as a prose detail.
            block = []
            while i < len(lines) and (lines[i].startswith(("$ ", "> "))
                                      or (block and lines[i].startswith(" "))):
                block.append(lines[i])
                i += 1
            # Group the block into runs of commands and runs of output, and draw each run as
            # its own block. The command you type and the result it prints are different
            # things: merging them into one slab made the output look like more of the
            # command. A command run keeps the filled band; an output run gets a left rule.
            segments: list[tuple[str, list[str]]] = []
            for b in block:
                # A continuation line starts with a space, so it carries no kind of its own.
                # It belongs to the line it continues - without this it reads as a new
                # segment and the wrapped half of a command gets drawn as an output block.
                kind = b[0] if b[0] in ("$", ">") else segments[-1][0]
                if segments and segments[-1][0] == kind:
                    segments[-1][1].append(b)
                else:
                    segments.append((kind, [b]))
            inner_w = BODY_W - Inches(0.32)
            for si, (kind, seg) in enumerate(segments):
                if si:
                    y = y + Inches(0.10)   # a visible gap between a command and its output
                rows = sum(_wrap_rows(b, 12.5, inner_w / Inches(1), mono=True) for b in seg)
                h = Inches(0.30) * rows + Inches(0.22)
                if kind == "$":
                    rect(slide, M, y, BODY_W, h, CODE_BG)
                else:
                    rect(slide, M, y, Inches(0.035), h, OUT_RULE)
                tb = slide.shapes.add_textbox(M + Inches(0.16), y + Inches(0.11),
                                              inner_w, h - Inches(0.22))
                tf = tb.text_frame
                tf.word_wrap = True
                tf.margin_left = tf.margin_right = tf.margin_top = tf.margin_bottom = 0
                for j, b in enumerate(seg):
                    p = tf.paragraphs[0] if j == 0 else tf.add_paragraph()
                    p.line_spacing = 1.0
                    _run(p, b, 12.5, CODE_INK if kind == "$" else MUTED, font=CODE_FONT,
                         bold=(kind == "$"))
                y = y + h
            y = y + Inches(0.13)
            continue
        if not line:
            y = y + Inches(0.12)
            i += 1
            continue
        tb = slide.shapes.add_textbox(M, y, BODY_W, Inches(0.30))
        tf, p = _tf(tb, 14, INK)
        p.line_spacing = 1.06
        bullet = line.startswith("- ")
        detail = line.startswith("  ")
        text = line[2:] if bullet else (line.strip() if detail else line)
        if bullet:
            _run(p, "\u2022  ", 14, ACCENT, bold=True)
        if detail:
            tb.left = M + Inches(0.30)
            tb.width = BODY_W - Inches(0.30)
        size = 13 if detail else 14
        _run(p, text, size, MUTED if detail else INK)
        avail = (BODY_W - (Inches(0.30) if detail else Emu(0))) / Inches(1)
        rows = _wrap_rows(("\u2022  " if bullet else "") + text, size, avail)
        y = y + Inches(0.27) * rows + Inches(0.05)
        i += 1
    return y


def build(out: Path) -> None:
    prs = Presentation()
    prs.slide_width, prs.slide_height = SW, SH
    overflow = []
    for n, slide_spec in enumerate(DECK, start=1):
        kind = slide_spec[0]
        slide = blank(prs)
        if kind == "cover":
            _, title, sub, lines = slide_spec
            rect(slide, Emu(0), Emu(0), SW, Inches(2.9), CODE_INK)
            tb = slide.shapes.add_textbox(M, Inches(1.0), BODY_W, Inches(1.0))
            tf, p = _tf(tb, 40, WHITE)
            _run(p, title, 38, WHITE, bold=True)
            tb2 = slide.shapes.add_textbox(M, Inches(1.95), BODY_W, Inches(0.8))
            tf2, p2 = _tf(tb2, 15, RGBColor(0xC9, 0xD6, 0xE2))
            p2.line_spacing = 1.15
            _run(p2, sub, 15, RGBColor(0xC9, 0xD6, 0xE2))
            end = body(slide, lines, top=Inches(3.35))
        elif kind == "end":
            _, title, sub, lines = slide_spec
            header(slide, "END", title)
            end = body(slide, lines)
        elif kind == "part":
            _, part, title, lines = slide_spec
            # lines[0] is the subtitle only when it is prose. A command or bullet in that
            # position is content, and must reach body() instead of being swallowed into
            # the header - otherwise it disappears from the slide entirely.
            lead = lines[0] if lines and not lines[0].startswith(("$", ">", "-", " ")) else ""
            header(slide, part, title, lead)
            end = body(slide, lines[1:] if lead else lines)
        else:  # step
            _, part, step, lines = slide_spec
            header(slide, part, step,
                   lines[0] if lines and not lines[0].startswith(("$", ">", "-", " ")) else "")
            end = body(slide, lines)
        if end > BODY_BOTTOM_LIMIT:
            over_pt = (end - BODY_BOTTOM_LIMIT) / Emu(12700)
            label = slide_spec[2] if len(slide_spec) > 2 else slide_spec[1]
            overflow.append(f"slide {n} ({label}): {over_pt:.0f}pt past the bottom")
    if overflow:
        raise SystemExit("content overflows the slide - split the slide or shorten it:\n  "
                         + "\n  ".join(overflow))
    out.parent.mkdir(parents=True, exist_ok=True)
    prs.save(out)
    print(f"  output: {out}")
    print(f"  bytes: {out.stat().st_size}")
    print(f"  slides: {len(DECK)}")
    print(f"  fit: every slide's content ends by {BODY_BOTTOM_LIMIT / Emu(12700):.0f}pt of "
          f"{SH / Emu(12700):.0f}pt")


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--out", type=Path, default=DEFAULT_OUT)
    args = ap.parse_args()
    if args.out.suffix != ".pptx":
        raise SystemExit("--out must name a .pptx")
    build(args.out)


if __name__ == "__main__":
    main()
