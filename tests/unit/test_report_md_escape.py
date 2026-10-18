"""Regression tests for the `md` Jinja filter (report.generator._md) - the
Markdown-injection sanitizer applied to adversarial APK-derived strings
(matched_text, and captured host/path/method/status) before they land in the
report's tables and code spans. Pure function, no toolchain needed.

This surface previously had no direct test: the filter escaped a bare pipe but
not a value's own backslash sitting right before a pipe, so `\\|` re-exposed a
live table-column delimiter (report/generator.py flows table renders host/path
in PLAIN cells, not code spans)."""

import re

from report.generator import _md


def test_md_none_and_scalars_pass_through():
    assert _md(None) == ""
    assert _md("check_root") == "check_root"
    assert _md(123) == "123"


def test_md_newlines_become_spaces_no_row_injection():
    # A newline in a value would otherwise inject a new table row / list item.
    assert _md("a\r\nb") == "a  b"
    assert _md("a\nb") == "a b"
    assert "\n" not in _md("line1\nline2") and "\r" not in _md("x\ry")


def test_md_backtick_becomes_apostrophe():
    # A backtick would close the code span the value is rendered inside.
    assert _md("a`b`c") == "a'b'c"
    assert "`" not in _md("os`command`")


def test_md_bare_pipe_is_escaped_as_before():
    # The common case is unchanged: a pipe renders as an escaped literal pipe.
    assert _md("a|b") == "a\\|b"


def _backslashes_before_first_pipe(s: str) -> int | None:
    m = re.search(r"(\\*)\|", s)
    return None if m is None else len(m.group(1))


def test_md_backslash_pipe_does_not_reexpose_a_live_column_delimiter():
    # Regression / the reason this file exists: under a bare |->\|, a value of
    # `\|` (backslash then pipe) became `\\|`, which GFM reads as an escaped
    # backslash plus a LIVE pipe -> a new table column in a plain cell. The fix
    # must leave an ODD number of backslashes immediately before the pipe so the
    # table parser treats it as escaped, for EVERY starting backslash-run length.
    for run in range(0, 6):
        value = "\\" * run + "|"          # run backslashes then a pipe
        out = _md(value)
        n = _backslashes_before_first_pipe(out)
        assert n is not None and n % 2 == 1, (run, value, out, n)


def test_md_lone_backslash_left_verbatim_for_code_span_display():
    # A matched token like a regex `\d+` or a Windows path has lone backslashes
    # and NO pipe; the fix must not blanket-double backslashes (only those before
    # a pipe), so these render exactly as-is inside their code span.
    assert _md("\\d+su") == "\\d+su"
    assert _md("C:\\Users\\x") == "C:\\Users\\x"


def test_md_adjacent_escaped_pipes_each_stay_escaped():
    # Two back-to-back `\|` sequences must each end up escaped, not just the
    # first (single-pass, non-overlapping substitution).
    out = _md("\\|\\|")                    # value: \ | \ |
    for m in re.finditer(r"(\\*)\|", out):
        assert len(m.group(1)) % 2 == 1, out


def test_md_escapes_html_sensitive_chars():
    # M3 hardening: an APK-derived string may be rendered into a report that a
    # consumer converts to HTML, so &, < and > must be entity-escaped to stop
    # markup injection (the gap the M3 fix closed). These chars are not
    # table/markdown delimiters, but they are HTML ones.
    assert _md("<script>alert(1)</script>") == "&lt;script&gt;alert(1)&lt;/script&gt;"
    assert _md("a&b") == "a&amp;b"
    assert _md("<>") == "&lt;&gt;"
    # No RAW angle brackets survive (the escaped forms use entities).
    assert "<" not in _md("x<y>")
    assert ">" not in _md("x>y")
    # The bare '&' must never survive as itself; it becomes '&amp;'.
    out = _md("x<y>z&w")
    assert out == "x&lt;y&gt;z&amp;w"
    assert "&" in out and out.count("&") == 3  # each entity carries exactly one &


def test_md_code_preserves_angle_brackets_inside_a_code_span():
    # CommonMark does NOT decode entity references inside code spans, so `_md`'s
    # `&lt;` renders literally as the six characters `&lt;`. Evidence inside a
    # backtick span (a matched_text like `<pin-set`, a regex, a class name) must
    # render verbatim; `_md_code` drops the entity escaping but still neutralises
    # the table/span delimiters (pipe, backtick, newline).
    from report.generator import _md_code

    assert _md_code("<pin-set") == "<pin-set"      # NOT "&lt;pin-set"
    assert _md_code("a<b>c&d") == "a<b>c&d"         # angle/ampersand verbatim
    assert _md_code("x\ny") == "x y"                # newline -> space
    assert "`" not in _md_code("a`b")               # backtick -> apostrophe
    out = _md_code("a|b")                           # pipe still escaped
    for m in re.finditer(r"(\\*)\|", out):
        assert len(m.group(1)) % 2 == 1, out
