"""The stored-claim re-check must not pass over the claims it cannot measure.

`native_coverage_recheck.py` exists to find stored `native: fully_analyzed` claims
the current gate would refuse - the ones recorded while `_recover_body_calls`
returned `scanned=True` regardless of how much of a lib it decoded. It applies
that gate to the APK's already-extracted `.so` files, so an APK with none on disk
was skipped in silence, and the output was identical to an APK whose claim the
gate confirmed. That silence is the whole problem: a directory left empty because
the shipped libraries failed to extract (EXTRACT-FAIL1) is indistinguishable, from
here, from an APK that ships no native code - and `fully_analyzed` is the claim
that licenses a confident negative, so it is the one the script must not skip.

`main()` is `__main__`-guarded and takes its paths from module constants, so these
tests drive the real function against a fixture DB and a fixture extraction tree
rather than re-implementing its loop.
"""

from __future__ import annotations

import contextlib
import importlib.util
import io
import json
import sqlite3
import sys
from pathlib import Path

_REPO = Path(__file__).resolve().parents[2]
_SCRIPT = _REPO / "scripts" / "native_coverage_recheck.py"


def _load(tmp_path: Path, rows: list[tuple[str, str]]):
    """Import the script with DB/ANALYSIS pointed at a fixture of the given rows."""
    db = tmp_path / "results.db"
    con = sqlite3.connect(db)
    con.execute(
        "create table runs (apk_sha256 text, timestamp text, coverage text, package_name text)"
    )
    for sha, native in rows:
        con.execute(
            "insert into runs values (?,?,?,?)",
            (sha, "2026-09-19T00:00:00", json.dumps({"native": native}), f"com.{sha[:4]}"),
        )
    con.commit()
    con.close()

    spec = importlib.util.spec_from_file_location("native_coverage_recheck", _SCRIPT)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    # The module calls logger.remove() at import (it is a CLI script). Put the
    # default handler back so importing it cannot silence the suite's own logging.
    from loguru import logger as _loguru

    _loguru.remove()
    _loguru.add(sys.stderr)

    mod.DB = db
    mod.ANALYSIS = tmp_path / "analysis"
    return mod


def _run(mod, monkeypatch, *args: str) -> str:
    # main() reads sys.argv[1:] as sha prefixes; under pytest that is pytest's own
    # command line, which would filter every row away and make these tests vacuous.
    monkeypatch.setattr(sys, "argv", ["native_coverage_recheck.py", *args])
    buf = io.StringIO()
    with contextlib.redirect_stdout(buf):
        rc = mod.main()
    assert rc == 0
    return buf.getvalue()


def test_a_fully_analyzed_claim_with_nothing_on_disk_is_reported_not_skipped(
    tmp_path, monkeypatch
):
    sha = "a" * 64
    out = _run(_load(tmp_path, [(sha, "fully_analyzed")]), monkeypatch)

    assert "NOT RE-MEASURABLE" in out, out
    assert sha in out, "the unmeasurable run must be named, not only counted"
    assert "only a re-run separates them" in out, out
    # And the caveat has to come BEFORE the all-clear: printing "no claim is
    # refused" last would let this row read as a clean one.
    assert out.index("NOT re-measurable here") < out.index("refused by the current gate")


def test_a_lib_free_apk_that_claims_nothing_extra_is_counted_not_flagged(tmp_path, monkeypatch):
    out = _run(_load(tmp_path, [("c" * 64, "partial")]), monkeypatch)

    assert "NOT RE-MEASURABLE" not in out, out
    assert "STORED CLAIM IS UNEARNED" not in out, out
    assert "1 stored run(s) had no extracted .so" in out, out


def test_a_gate_refusal_still_flags_the_stored_claim(tmp_path, monkeypatch):
    """The control: the arm that already worked must keep working, so a fix to the
    empty-directory case cannot quietly disable the reason the script exists."""
    sha = "b" * 64
    mod = _load(tmp_path, [(sha, "fully_analyzed")])
    so = mod.ANALYSIS / sha / "native" / "arm64-v8a" / "libapp.so"
    so.parent.mkdir(parents=True)
    so.write_bytes(b"\x7fELF not actually an ELF file")

    out = _run(mod, monkeypatch)

    assert "STORED CLAIM IS UNEARNED, RE-RUN" in out, out
    assert "Re-run required" in out, out
    # The re-measured column is the body-sweep gate ALONE, and says so. For a
    # library the pipeline held `partial` for a reason the sweep does not model,
    # "gate=fully_analyzed" beside "stored=partial" must not read as the stored
    # verdict having been wrong - real output on 2026-09-19 produced exactly that
    # pairing (com.whatsapp, 16 extracted .so).
    assert "gate=NOT fully_analyzed" in out, out
    assert "now=" not in out, out


def _one_decodable_lib(mod, sha: str) -> None:
    """A run with an extracted lib the gate will pass. The decoder is stubbed by the
    caller: the sweep itself is exercised elsewhere, and what these two tests are
    about is the text printed beside its verdict."""
    so = mod.ANALYSIS / sha / "native" / "arm64-v8a" / "libapp.so"
    so.parent.mkdir(parents=True)
    so.write_bytes(b"\x7fELF (contents are the stub's business)")


def test_a_gate_pass_over_a_stored_partial_is_labelled_not_a_finding(tmp_path, monkeypatch):
    """Real output on 2026-09-20 printed this pairing (com.allproperty.android.
    consumer.my, 90 extracted .so): stored=partial beside gate=fully_analyzed. The
    column is the body-sweep gate ALONE, so its pass does not make the pipeline's
    `partial` wrong - a scan error or a rule outside the sweep can hold a library
    there. The docstring says as much and the console said nothing, which is the
    reader's only channel."""
    sha = "d" * 64
    mod = _load(tmp_path, [(sha, "partial")])
    _one_decodable_lib(mod, sha)
    monkeypatch.setattr(mod, "_recover_body_calls", lambda _p: (True, [("a", "b")]))

    out = _run(mod, monkeypatch)

    assert "gate=fully_analyzed" in out, out
    assert "NOT a finding" in out, out
    assert "UNEARNED" not in out, out
    assert "Re-run required" not in out, out


def test_a_confirmed_claim_does_not_get_the_not_a_finding_label(tmp_path, monkeypatch):
    """The control for the label above: a stored `fully_analyzed` the gate agrees
    with is a confirmation, and must not be annotated as a non-finding - the label
    would then say nothing about which row a reader should act on."""
    sha = "e" * 64
    mod = _load(tmp_path, [(sha, "fully_analyzed")])
    _one_decodable_lib(mod, sha)
    monkeypatch.setattr(mod, "_recover_body_calls", lambda _p: (True, [("a", "b")]))

    out = _run(mod, monkeypatch)

    assert "gate=fully_analyzed" in out, out
    assert "NOT a finding" not in out, out
    assert "UNEARNED" not in out, out
