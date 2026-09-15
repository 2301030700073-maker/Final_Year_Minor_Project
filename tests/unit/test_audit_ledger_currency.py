"""The audit ledger must not go stale silently.

The ledger is a per-module audit driven over many turns, so each row recorded
the module's size at the moment it was read. Nothing kept those figures honest
afterwards: the Scope block still advertised 15,742 LOC / 61 test files, and 31
of the 35 rows had outgrown their recorded size by 4,200 LOC in total, while the
rows kept reading ✅. A reader taking the ledger at face value was reading an
audit of code that is no longer there.

Two things fix that, and this file is the second one: the ledger now carries a
Currency section (what each ✅ covers, and what has changed since), and these
tests fail when the ledger and the tree disagree. The failure mode is
deliberate - the ledger cannot be left stale AND cannot be quietly re-stamped,
because the only way to make the assert pass is to record the change in a commit
that says whether the audit followed. Per the project's own rule, growth gets
NAMED, never absorbed.

Bound, stated because a guard that overclaims is the defect it guards against:
the comparison is LOC, a coarse proxy. An edit that leaves a module's line count
unchanged (a rewrite of equal length) escapes it.
"""

from __future__ import annotations

import re
from pathlib import Path

_REPO = Path(__file__).resolve().parents[2]
_LEDGER = _REPO / "docs" / "plans" / "audit" / "full-project-audit-ledger.md"

# A per-module row: | module.py | 1,243 | ✅ | notes…  (basename, path, or glob)
_ROW_RE = re.compile(
    r"^\|\s*`?([A-Za-z0-9_./*]+\.py)`?\s*\|\s*~?([0-9,]+)\s*\|\s*(?:✅|🟡|⬜)\s*\|"
)
# A currency row: | `module.py` | 1,243 | 1,794 | +551 | 2026-09-10 |
_CUR_RE = re.compile(
    r"^\|\s*`([A-Za-z0-9_./*]+\.py)`\s*\|\s*([0-9,]+)\s*\|\s*([0-9,]+)\s*\|"
    r"\s*[+-]?[0-9,]+\s*\|\s*(.+?)\s*\|"
)


def _text() -> str:
    return _LEDGER.read_text()


def _audited_rows(text: str) -> dict[str, int]:
    """The size each row claims it was audited at."""
    rows: dict[str, int] = {}
    for line in text.splitlines():
        m = _ROW_RE.match(line)
        if m:
            rows.setdefault(m.group(1), int(m.group(2).replace(",", "")))
    return rows


def _currency(text: str) -> dict[str, tuple[int, int, str]]:
    """key -> (audited at, measured now, re-read since)."""
    sec = text[text.index("## Currency") :]
    sec = sec[: sec.index("\n## ", 1)]
    out: dict[str, tuple[int, int, str]] = {}
    for line in sec.splitlines():
        m = _CUR_RE.match(line)
        if m:
            out[m.group(1)] = (
                int(m.group(2).replace(",", "")),
                int(m.group(3).replace(",", "")),
                m.group(4),
            )
    return out


def _files(key: str) -> list[Path]:
    src = _REPO / "src"
    if key.endswith("/*.py"):
        return sorted(src.rglob(key[: -len("/*.py")] + "/*.py"))
    if "/" in key:
        return [src / key]
    return sorted(src.rglob(key))


def _loc(key: str) -> int:
    return sum(len(p.read_text(errors="replace").splitlines()) for p in _files(key))


def _measure(root: str) -> tuple[int, int]:
    files = sorted((_REPO / root).rglob("*.py"))
    return len(files), sum(len(p.read_text(errors="replace").splitlines()) for p in files)


def test_every_ledger_row_carries_a_currency_entry():
    # A row added for a module that no currency entry follows would be a ✅ with
    # no recorded basis - the exact thing the section exists to prevent.
    assert set(_audited_rows(_text())) == set(_currency(_text()))


def test_no_currency_entry_is_stale():
    text = _text()
    for key, (audited, now, _) in _currency(text).items():
        assert audited == _audited_rows(text)[key], f"{key}: ✅ at disagrees with its row"
        assert now == _loc(key), f"{key}: currency says {now} LOC, the module has {_loc(key)}"


def test_a_module_that_changed_since_its_audit_records_the_change():
    # The load-bearing one. Copying today's size into the `✅ at` column would
    # re-certify a module nobody re-read - claiming the audit covers code written
    # after it - so the two columns must still disagree for a changed module.
    text = _text()
    audited = _audited_rows(text)
    for key, (at, now, _) in _currency(text).items():
        assert audited[key] == at
        if _loc(key) != at:
            assert now != at, (
                f"{key} changed since its audit (was {at}, now {now}) but the currency "
                "table restates the old figure in both columns - record the change, do "
                "not re-stamp the row"
            )


def test_scope_src_denominator_is_exact():
    # src/ is the audit's denominator: the modules the ledger's rows audit. A
    # module growing means a currency row changed, so this figure cannot move
    # without the ledger already being touched.
    n_src, loc_src = _measure("src")
    m = re.search(r"- `src/`: ([0-9,]+) files, \*\*([0-9,]+) LOC\*\*", _text())
    assert m, "Scope no longer states the src denominator in the audited form"
    assert tuple(int(g.replace(",", "")) for g in m.groups()) == (n_src, loc_src)


def test_scope_informational_figures_are_not_grossly_stale():
    # tests/ and scripts/ are context, not the denominator, and they move on
    # ordinary churn (this guard's own file moved them). Held to 10%: enough to
    # pass a normal commit, far too little to hide the 58% drift this fixed.
    text = _text()
    n_src, loc_src = _measure("src")
    for pattern, root, claim in (
        (r"- `tests/`: ([0-9,]+) files, \*\*([0-9,]+) LOC\*\*", "tests", True),
        (r"- `scripts/`: ([0-9,]+) files, ([0-9,]+) LOC", "scripts", False),
    ):
        m = re.search(pattern, text)
        assert m, f"Scope no longer states {root}/ in the audited form"
        n, loc = _measure(root)
        stated_n, stated_loc = (int(g.replace(",", "")) for g in m.groups())
        assert abs(stated_loc - loc) <= 0.10 * loc, (
            f"Scope says {root}/ is {stated_loc:,} LOC; the tree has {loc:,} - "
            "re-measure the Scope block"
        )
        assert abs(stated_n - n) <= max(2, 0.10 * n), f"Scope says {root}/ has {stated_n} files, the tree has {n}"
    assert loc_src < _measure("tests")[1], "the 'more test than source' claim no longer holds"


def test_currency_states_the_bound_it_is_relied_on():
    # The section is only honest with its caveats; a rewrite that keeps the table
    # but drops the bound would turn a per-module audit into an implied claim
    # about the current tree.
    sec = _text()
    sec = sec[sec.index("## Currency") : sec.index("\n## ", sec.index("## Currency") + 1)]
    assert "nothing about code added since" in sec
    assert "measured, not estimated" in sec
    assert "has NOT been re-read" in sec
    assert "coarse proxy" in sec
