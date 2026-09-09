"""Regression: _classify_screen must count DISTINCT visible strings, not the raw
text-node count, so a splash/loading frame that repeats one label across several
nodes is not mislabelled "content rendered" - which would OVERSTATE UI liveness,
the direction dynamic/ui_liveness.py explicitly guards against. Pure function,
no device / no adb needed."""

from dynamic.ui_liveness import _classify_screen, _SPLASH_TEXT_LIMIT

_SPLASH = "splash/loading (no interactive widgets, minimal text) - NOT an interactive page"
_CONTENT = "content rendered but no tappable widgets (RN/Flutter surface)"
_INTERACTIVE = "interactive (has tappable widgets)"


def test_repeated_splash_label_stays_splash_not_content():
    # A splash frame echoing one tagline across many nodes: raw list length is
    # high, distinct count is 1. The old len(list) form called this "content
    # rendered" (overstating liveness); distinct-count keeps it splash.
    nodes = ["Acme"] * (_SPLASH_TEXT_LIMIT + 5)
    assert _classify_screen(nodes, 0) == _SPLASH


def test_whitespace_variants_are_not_distinct():
    # "Loading", "Loading " and " Loading" are one visible string, not three.
    nodes = ["Loading", "Loading ", " Loading"]
    assert _classify_screen(nodes, 0) == _SPLASH


def test_genuinely_varied_content_still_reads_as_content():
    # A real RN/Flutter content surface (0 per-node clickables) shows many
    # DISTINCT strings - distinct count exceeds the limit, so it is not
    # downgraded to splash by the dedup.
    nodes = [f"listing item {i}" for i in range(_SPLASH_TEXT_LIMIT + 4)]
    assert _classify_screen(nodes, 0) == _CONTENT


def test_clickables_still_win_over_text_count():
    # The interactive-widget branch precedes the text heuristic, so a tappable
    # widget makes the screen interactive regardless of (de-duplicated) text.
    assert _classify_screen(["Acme"] * 9, 2) == _INTERACTIVE


def test_exactly_at_limit_distinct_is_still_splash():
    # Boundary: <= _SPLASH_TEXT_LIMIT distinct strings is splash; one more is not.
    at_limit = [f"w{i}" for i in range(_SPLASH_TEXT_LIMIT)]
    assert _classify_screen(at_limit, 0) == _SPLASH
    over = [f"w{i}" for i in range(_SPLASH_TEXT_LIMIT + 1)]
    assert _classify_screen(over, 0) == _CONTENT
