"""The cause token -> text map exists twice, and nothing kept the copies in step.

The console line (cli.py, UNCOV-CAUSE1) and the report's Decision line
(generator.py) each turn a machine cause token into the sentence an operator
reads: `incomplete_coverage` -> "governing surface not fully analyzed",
`unattributed_indicator` -> "detection-shaped code matched no signature". Both
also fall back to the raw token for a cause neither knows, and to an honest
or-clause for a row that predates the cause recording.

Two copies of one mapping is a drift site: add a cause to the console alone and
the report prints a bare `some_new_cause` on the page the operator reads; add it
to the report alone and the console omits it. Nothing asserted they agree. This
does, over the extracted pairs - so it fails on an addition to either side, not
merely on a rewording.
"""

from __future__ import annotations

import re
from pathlib import Path

_REPO = Path(__file__).resolve().parents[2]
# The report's inline chain: "text" if c == "token" else ("text" if c == "token" else c)
_PAIR = re.compile(r'"([^"]+)" if c == "([a-z_]+)"')
# The console's dict literal: "token": "text",
_CLI_ENTRY = re.compile(r'"([a-z_]+)":\s*"([^"]+)"')


def _sources() -> tuple[str, str]:
    return (
        (_REPO / "src" / "cli.py").read_text(),
        (_REPO / "src" / "report" / "generator.py").read_text(),
    )


def test_the_console_and_the_report_map_the_same_tokens_to_the_same_text():
    cli, gen = _sources()
    start = cli.index("_CAUSE_TEXT = {")
    cli_map = dict(_CLI_ENTRY.findall(cli[start:cli.index("}", start)]))
    tmpl_map = {tok: text for text, tok in _PAIR.findall(gen)}

    # If either extraction stops finding anything the shapes changed, and a guard
    # that silently compares two empty dicts would pass while checking nothing.
    assert cli_map, "the console's cause map changed shape - update this test"
    assert tmpl_map, "the report's cause chain changed shape - update this test"

    assert set(cli_map) == set(tmpl_map), (
        f"a cause token exists in one copy only: {set(cli_map) ^ set(tmpl_map)}"
    )
    assert cli_map == tmpl_map, (cli_map, tmpl_map)


def test_both_copies_fall_back_to_the_raw_token_and_keep_the_or_clause():
    cli, gen = _sources()
    # An unknown cause prints as its raw token rather than being dropped: dropping
    # it would read as "no cause recorded", which is a different claim.
    assert "_CAUSE_TEXT.get(c, c)" in cli
    assert re.search(r"else\s+c\b", gen), "the report's chain no longer ends on c"
    # And a row predating the cause recording still gets the honest or-clause on
    # BOTH surfaces, not a specific cause invented for it.
    phrase = "governing surface not fully analyzed, or detection-shaped"
    assert phrase in cli, "the console lost its or-clause"
    assert phrase in gen, "the report lost its or-clause"
