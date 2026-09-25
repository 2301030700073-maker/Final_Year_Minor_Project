# Contributing / Collaboration Protocol

This is the one doc that answers "how do we actually work together on this project" — roles, the git workflow, how status gets communicated, and the ground rules both sides hold to. It doesn't change per phase (see `docs/plans/handoff/phase-N-handoff.md` for that — what to test *this specific phase*). This one should stay stable. Read it once, refer back when something feels unclear rather than re-deriving it from scratch.

Engineering principles (why the architecture is shaped the way it is, what's non-negotiable) live in `CLAUDE.md` — this doc won't repeat them, just link out. One source of truth per concern.

## Roles

- **Reference-machine collaborator**: owns the actual execution environment (WSL2 Ubuntu 24.04, Android toolchain, emulator/device, Frida). Runs the real pipeline against real APKs, runs the verification bundle script, pushes real evidence back. Can and does write code now too — not just a test executor (e.g. the WSL2→Windows Frida relay bridge was built here) — but changes touching the core deterministic pipeline (`src/static/`, `src/dynamic/` beyond environment-specific glue, `src/cli.py`) should still get reviewed against the architecture before being treated as final, same as anything else.
- **Primary developer side**: owns architecture, requirements, docs, ADRs, the detection/decision logic, and reviews + fixes whatever comes back from the reference machine. Per `ADR-0007`, this side cannot directly execute or test anything requiring the Android toolchain — everything toolchain-dependent is verified through the loop below, not assumed.

Both sides can propose changes to any file. Neither side merges silently without the other seeing what changed — that's what the git protocol below is for.

## Collaborator's responsibilities, explicitly

**Does:**
- Keeps the reference environment working — toolchain, emulator/device, `frida-server` — including fixing environment-specific problems directly when they're clearly about the environment, not the core detection logic (the Frida relay bridge is a real example of this working as intended).
- Pulls when told there's new work, and starts from the current phase's handoff doc, not guesswork.
- Runs exactly the commands that doc lists.
- Places test target APKs under `APK_Test/` (the convention already in use) so paths in commands and docs stay consistent for both sides.
- Pushes real output — the verification bundle, findings docs, reports — never just a verbal summary.
- Follows the same fetch/merge/push procedure as everyone else if a push gets rejected.

**Does not:**
- Decide or redesign the core architecture, signatures, or detection logic — that's decided on the primary developer side, informed by the evidence provided.
- Report status verbally as if that were sufficient evidence on its own.
- Force-push, rewrite history, or resolve a real content conflict unilaterally — flag it instead.
- Need to produce a deep diagnosis of *why* something didn't match. Nice to have if there's time (that was the original intent of the Step 0 manual spike), but not required — pushing real raw evidence is enough; the analysis happens on the primary developer side.

## Git workflow

**Before starting any new work:**
```bash
git fetch origin
git log --oneline HEAD..origin/main   # see what's new before you build on top of stale state
git pull
```

**Before pushing:**
```bash
git fetch origin
git status
git push
```

**If the push is rejected** (`! [rejected] ... fetch first`) — this is normal, expected behavior when both sides have been working concurrently, not an error to avoid. It means the other side pushed first. Handle it the same way every time:
```bash
git fetch origin
git log --oneline HEAD..origin/main       # see exactly what's incoming before merging blindly
git diff --stat HEAD origin/main          # see which files, so you know if there's real overlap
git merge origin/main -m "Merge <what the incoming commits are>"
# only if git reports real conflicts (same lines in the same file changed both sides -
# hasn't happened yet as of this writing, every divergence so far has been disjoint files):
#   resolve them by hand, understanding both sides' intent before picking one
git push
```

This procedure is **the same for both sides** — whoever hits the rejection runs it, no handoff needed, no waiting for the other side to do it for you. The only escalation rule: if `git merge` reports *actual* conflicts (same lines, same file, changed on both sides — hasn't happened yet, every divergence so far has been disjoint files), stop and flag it rather than guessing at a resolution. Mechanical merge, proceed and push. Real conflict, don't pick a side blind.

**Never**: force-push to `main`, rewrite already-pushed commit history, or resolve a rejected push by discarding either side's commits instead of merging them.

**Branches**: default is direct commits to `main`, small and frequent — this project runs on a tight prove-it-and-push loop, and batching work into a long-lived branch delays exactly the feedback that loop depends on. The one exception: if either side is about to do something large and genuinely risky that would leave the repo broken partway through (a big refactor, something that needs several commits before it's usable again), use a short-lived branch for just that piece and merge it back the moment it's done — not something left open for days.

**Commit messages**: explain *why*, not just *what* — every commit in this repo so far follows that pattern; keep doing it. No AI/tool attribution in commits or code comments (see `CLAUDE.md`).

## The phase-handoff loop

1. **Reference-machine collaborator** does the current phase's handoff doc (`docs/plans/handoff/phase-N-handoff.md`): pulls, does any manual verification it calls for, runs `scripts/collect_verification_bundle.py`, reviews the bundle's `SUMMARY.md`, pushes the bundle (and any findings doc) back.
2. **Collaborator → primary developer side**: says the bundle is pushed (however you two actually communicate — call, message, whatever's already working). This is the *only* status update that means anything — see Ground Rules below.
3. **Primary developer side**: pulls, analyzes the actual pushed evidence (the `reports/` markdown, `cli_output.txt`, `pytest_output.txt`, `environment.json` and the calibration markdown — not a summary of a summary), makes evidence-backed fixes if needed, verifies those fixes locally where possible before pushing, commits, pushes. The decompiled tree and the run JSON do **not** travel: `.gitignore` excludes every bundle's `analysis/` subtree (policy A1), so a file that is needed from it must be asked for and force-added (`git add -f <path>`) — the bundle's own `SUMMARY.md` states the same split.
4. **Primary developer side → collaborator**: says what changed and gives the exact next command to run — not "try it again," an actual copy-pasteable command.
5. Back to step 1.

Nobody polls or guesses at the other side's status. Whoever's turn it is says so explicitly, then the other side acts.

## Ground rules

- **A status update means a pushed artifact, not a verbal claim.** "It's all green" tells nobody anything actionable — a bundle under `docs/plans/handoff/bundles/` with a `SUMMARY.md`, a report, or a findings doc does. This isn't about trust, it's the same evidence-over-assertion principle the whole detection engine is built on (see `ADR-0006`), applied to how we report progress to each other, not just what the pipeline reports about an APK.
- **No fake outputs, no guessed fixes presented as confirmed.** If a correction comes from reading code rather than an actual re-run confirming it, say so plainly (see how the signature fix after the first real Level 1 run was written up — evidence-backed, but explicitly flagged as still needing empirical re-confirmation, not presented as already done).
- **Fail loud, don't hide it.** If something breaks, breaks weirdly, or you had to work around it, that's worth reporting exactly as much as a clean success — see `docs/setup-log.md`'s "ADB install issue & fix" entry for a good example of this done right.
- **If you're not sure whether something is a "real" bug or working as designed, ask rather than silently patching around it** — e.g. a stage reporting `NEITHER` isn't automatically a bug; it might be the correct answer.
- **The `tests/unit` suite must stay toolchain-free (ADR-0007), and `tests/unit/conftest.py` now enforces that locally.** CI runs the suite on a bare runner with no Android toolchain; a unit test that shells out to a real `jadx`/`apktool`/`adb`/`frida`/... passes on the reference box and goes red on CI. The autouse guard in `conftest.py` hides the *ambient* system toolchain during the unit run (test-provided fakes under the pytest temp tree are left alone, since CI can reproduce those), so `uv run pytest tests/unit -q` green on the reference machine now means green on CI. If a new unit test needs a tool, mock the discovery boundary (`_find_jadx`, `_find_cfr_jar`, `_adb_wrapper_path`, `shutil.which`) or fabricate a fake under `tmp_path` — never rely on the real binary being installed.
- **`outputs/` can be committed directly by either side - this is a deliberate policy change, not an oversight.** Earlier phases treated `outputs/` as gitignored-only, with the verification bundle script as the sole sanctioned path evidence took into git. That restriction is dropped: the collaborator tests from multiple angles and legitimately produces extra decompiled/analysis output beyond a single clean run, and it's fine for that to end up in the repo rather than being untracked after the fact. The verification bundle script is still the recommended way to push a *specific, complete* run's evidence (it's still what produces a readable, timestamped `SUMMARY.md`), but an incidental `outputs/...` file landing in a broader commit is no longer something to flag or remove. The bundle itself also carries the generated calibration markdown (`calibration/<timestamp>.md`, ADR-0036) - the curve, its sample and its threshold markers exist only in that file, and `outputs/` is gitignored, so the bundle is where a reviewer can actually read them.

  **This does not relax any of the other ground rules above.** Evidence-over-assertion for *claims* (a classification, a confidence number, "this worked") is unchanged and non-negotiable - a specific result still needs a real, checkable artifact behind it before it's treated as confirmed. Only the git-hygiene rule about *which files* are allowed in the repo changed; the discipline about *trusting what those files actually say* did not.
