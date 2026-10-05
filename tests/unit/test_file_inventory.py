"""FILE_INVENTORY.md calls itself "Complete File Inventory" - so something must
check it.

Measured 2026-10-05, before this guard existed: the file was dated 2026-09-05 and
listed **202** entries against **306** tracked files. 104 were missing - every ADR
from 0011 to 0042, ~60 test files, three `src/` modules - and nothing failed,
because no test read the file. The audit ledger stays honest because three guards
fail when it drifts; the inventory rotted for a month precisely because nothing
did.

The contract is the file's OWN stated rule, quoted from its header:

    Regenerate with: git ls-files | grep -v '^docs/plans/handoff/bundles/' | sort

So this compares the fenced block to exactly that set. It is deliberately a
SNAPSHOT check, not a live one: the inventory is dated, and committing a new file
is supposed to fail this until the inventory is regenerated - that is the point of
having an owner for the claim.
"""
from __future__ import annotations

import subprocess
from pathlib import Path

_REPO = Path(__file__).resolve().parents[2]
_INVENTORY = _REPO / "FILE_INVENTORY.md"
_BUNDLE_PREFIX = "docs/plans/handoff/bundles/"


def _listed() -> list[str]:
    lines = _INVENTORY.read_text().splitlines()
    start = lines.index("```")
    end = lines.index("```", start + 1)
    return [ln.strip() for ln in lines[start + 1:end] if ln.strip()]


def _tracked() -> list[str] | None:
    """The set the inventory claims to enumerate, or None outside a git checkout."""
    try:
        r = subprocess.run(["git", "ls-files"], cwd=_REPO,
                           capture_output=True, text=True, timeout=60)
    except (OSError, subprocess.SubprocessError):
        return None
    if r.returncode != 0:
        return None
    return sorted(ln for ln in r.stdout.splitlines()
                  if ln.strip() and not ln.startswith(_BUNDLE_PREFIX))


def test_the_inventory_lists_every_tracked_file():
    tracked = _tracked()
    if tracked is None:
        return  # not a git checkout; the claim is about git, so it is vacuous here
    missing = sorted(set(tracked) - set(_listed()))
    assert not missing, (
        f"FILE_INVENTORY.md says 'Complete File Inventory' but is missing "
        f"{len(missing)} tracked file(s): {missing[:8]}"
        f"{' ...' if len(missing) > 8 else ''} - regenerate with the command in "
        f"its own header"
    )


def test_the_inventory_lists_nothing_that_is_gone():
    tracked = _tracked()
    if tracked is None:
        return
    extra = sorted(set(_listed()) - set(tracked))
    assert not extra, (
        f"FILE_INVENTORY.md lists {len(extra)} file(s) that are not in the tree: "
        f"{extra[:8]}{' ...' if len(extra) > 8 else ''}"
    )


def test_the_inventory_header_states_the_counts_it_names():
    # The prose names a date and two counts. A regenerated block with a stale
    # header is the same defect one line up.
    text = _INVENTORY.read_text()
    tracked = _tracked()
    if tracked is None:
        return
    bundles = subprocess.run(["git", "ls-files"], cwd=_REPO,
                             capture_output=True, text=True, timeout=60).stdout
    n_bundles = sum(1 for ln in bundles.splitlines() if ln.startswith(_BUNDLE_PREFIX))
    assert f"drowned the {len(tracked)} real project files" in text, (
        "the header's 'real project files' count disagrees with the tree"
    )
    assert f"excluding the {n_bundles} generated verification-bundle artifacts" in text, (
        "the header's bundle-artifact count disagrees with the tree"
    )
