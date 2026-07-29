# Contributing / Collaboration Protocol

This is the one doc that answers "how do we actually work together on this project" — roles, the git workflow, how status gets communicated, and the ground rules both sides hold to. It doesn't change per phase (see `docs/plans/handoff/phase-N-handoff.md` for that — what to test *this specific phase*). This one should stay stable. Read it once, refer back when something feels unclear rather than re-deriving it from scratch.

Engineering principles (why the architecture is shaped the way it is, what's non-negotiable) live in `CLAUDE.md` — this doc won't repeat them, just link out. One source of truth per concern.

## Roles

- **Reference-machine collaborator**: owns the actual execution environment (WSL2 Ubuntu 24.04, Android toolchain, emulator/device, Frida). Runs the real pipeline against real APKs, runs the verification bundle script, pushes real evidence back. Can and does write code now too — not just a test executor (e.g. the WSL2→Windows Frida relay bridge was built here) — but changes touching the core deterministic pipeline (`src/static/`, `src/dynamic/` beyond environment-specific glue, `src/cli.py`) should still get reviewed against the architecture before being treated as final, same as anything else.
- **Primary developer side**: owns architecture, requirements, docs, ADRs, the detection/decision logic, and reviews + fixes whatever comes back from the reference machine. Per `ADR-0007`, this side cannot directly execute or test anything requiring the Android toolchain — everything toolchain-dependent is verified through the loop below, not assumed.

Both sides can propose changes to any file. Neither side merges silently without the other seeing what changed — that's what the git protocol below is for.

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

**Never**: force-push to `main`, rewrite already-pushed commit history, or resolve a rejected push by discarding either side's commits instead of merging them.

**Commit messages**: explain *why*, not just *what* — every commit in this repo so far follows that pattern; keep doing it. No AI/tool attribution in commits or code comments (see `CLAUDE.md`).

## The phase-handoff loop

1. **Reference-machine collaborator** does the current phase's handoff doc (`docs/plans/handoff/phase-N-handoff.md`): pulls, does any manual verification it calls for, runs `scripts/collect_verification_bundle.py`, reviews the bundle's `SUMMARY.md`, pushes the bundle (and any findings doc) back.
2. **Collaborator → primary developer side**: says the bundle is pushed (however you two actually communicate — call, message, whatever's already working). This is the *only* status update that means anything — see Ground Rules below.
3. **Primary developer side**: pulls, analyzes the actual pushed evidence (reports, run JSON, decompiled source, logs — not a summary of a summary), makes evidence-backed fixes if needed, verifies those fixes locally where possible before pushing, commits, pushes.
4. **Primary developer side → collaborator**: says what changed and gives the exact next command to run — not "try it again," an actual copy-pasteable command.
5. Back to step 1.

Nobody polls or guesses at the other side's status. Whoever's turn it is says so explicitly, then the other side acts.

## Ground rules

- **A status update means a pushed artifact, not a verbal claim.** "It's all green" tells nobody anything actionable — a bundle under `docs/plans/handoff/bundles/` with a `SUMMARY.md`, a report, or a findings doc does. This isn't about trust, it's the same evidence-over-assertion principle the whole detection engine is built on (see `ADR-0006`), applied to how we report progress to each other, not just what the pipeline reports about an APK.
- **No fake outputs, no guessed fixes presented as confirmed.** If a correction comes from reading code rather than an actual re-run confirming it, say so plainly (see how the signature fix after the first real Level 1 run was written up — evidence-backed, but explicitly flagged as still needing empirical re-confirmation, not presented as already done).
- **Fail loud, don't hide it.** If something breaks, breaks weirdly, or you had to work around it, that's worth reporting exactly as much as a clean success — see `docs/setup-log.md`'s "ADB install issue & fix" entry for a good example of this done right.
- **If you're not sure whether something is a "real" bug or working as designed, ask rather than silently patching around it** — e.g. a stage reporting `NEITHER` isn't automatically a bug; it might be the correct answer.
