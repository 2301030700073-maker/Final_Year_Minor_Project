"""F-3: the xref evidence table is this scan's mirror, not an accumulating log.

The table sits at outputs/analysis/<apk_hash>/xref.sqlite, so it is keyed by APK
rather than by run. It was only ever appended to: re-running a target, or
re-scanning it after the signature corpus changed, stacked another full set of
rows on top of the previous one, with no column recording which run or corpus
wrote a row. Measured on the real outputs before the fix - 12 of 17 tables held
duplicates, the PropertyGuru run's table 86 rows for 28 distinct matches, one
test APK 593 rows for 13. L-M1 advertises this table as a complete, queryable
cross-reference, so a reader would have been reading a union of several runs as
one run's findings.

These tests scan the same database twice, which is exactly what a re-run does.
"""

import sqlite3

from static.signatures import _EVIDENCE_TABLE_SCHEMA_VERSION, load_signatures, scan

SIG_SU = ("- id: root_su\n  category: root\n  weight: 0.8\n"
          "  pattern_type: string_literal\n  patterns: ['/system/bin/su']\n"
          "  evidence_type: root\n")
SIG_MAGISK = ("- id: root_magisk\n  category: root\n  weight: 0.8\n"
              "  pattern_type: string_literal\n  patterns: ['/sbin/magisk']\n"
              "  evidence_type: root\n")


def _scan(tmp_path, db, sig_text, *java_sources):
    sig = tmp_path / "sigs.yaml"
    sig.write_text(sig_text, encoding="utf-8")
    src = tmp_path / "decompiled"
    src.mkdir(exist_ok=True)
    for i, text in enumerate(java_sources):
        (src / f"F{i}.java").write_text(text, encoding="utf-8")
    return scan(src, load_signatures(sig), sqlite_path=db)


def _rows(db, where="1=1"):
    con = sqlite3.connect(db)
    try:
        return con.execute(f"SELECT count(*) FROM evidence WHERE {where}").fetchone()[0]
    finally:
        con.close()


def test_the_cache_lock_is_not_held_while_the_scan_matches(tmp_path, monkeypatch):
    # A second run of the same APK is a real case - the tests above are exactly
    # that shape - and it used to block on one write transaction that stayed open
    # from the first match to the final commit: 2,057s of static_scan on the
    # facebook corpus, against a 30s busy timeout whose own comment claims to
    # cover this contention, so the second run waited and then died with
    # "database is locked". The rows now stage in a per-connection temp table and
    # are swapped in at the end, so a competing writer's wait is another swap
    # rather than another scan.
    db = tmp_path / "xref.sqlite"
    real_connect = sqlite3.connect
    probes = []

    class _Probe:
        """The scan's own connection, watching for its first staged insert."""

        def __init__(self, con):
            self._con = con

        def __getattr__(self, name):
            return getattr(self._con, name)

        def execute(self, sql, *args):
            if not probes and sql.lstrip().upper().startswith("INSERT INTO EVIDENCE_STAGE"):
                # The competing writer, mid-scan, with a timeout far shorter than
                # this scan: the write that used to raise "database is locked".
                other = real_connect(str(db), timeout=0.5)
                try:
                    other.execute("CREATE TABLE IF NOT EXISTS competing_writer(x)")
                    other.commit()
                finally:
                    other.close()
                probes.append(sql)
            return self._con.execute(sql, *args)

    monkeypatch.setattr(sqlite3, "connect",
                        lambda *a, **kw: _Probe(real_connect(*a, **kw)))
    _scan(tmp_path, db, SIG_SU,
          'String a = "/system/bin/su";\nString b = "/system/bin/su";\n')
    assert probes, "no staged insert ran - the probe never reached the live path"
    # And the staged rows still land: the swap is the write, not a lost one.
    con = real_connect(str(db))
    try:
        assert con.execute("SELECT count(*) FROM evidence").fetchone()[0] == 2
    finally:
        con.close()


def test_a_rerun_replaces_rows_instead_of_stacking_them(tmp_path):
    db = tmp_path / "xref.sqlite"
    body = 'String a = "/system/bin/su";\nString b = "/system/bin/su";\nString c = "/system/bin/su";\n'
    _scan(tmp_path, db, SIG_SU, body)
    assert _rows(db) == 3
    _scan(tmp_path, db, SIG_SU, body)          # the re-run
    assert _rows(db) == 3, "a re-run stacked rows instead of replacing them"


def test_rows_from_a_previous_corpus_are_not_read_as_this_runs(tmp_path):
    # The hazard the duplicates created: after the corpus changes, rows written by
    # the OLD corpus sat in the same table as the new run's, indistinguishable.
    db = tmp_path / "xref.sqlite"
    _scan(tmp_path, db, SIG_SU, 'String a = "/system/bin/su";\n')
    _scan(tmp_path, db, SIG_MAGISK, 'String a = "/sbin/magisk";\n')
    assert _rows(db, "signature_id='root_su'") == 0
    assert _rows(db, "signature_id='root_magisk'") == 1


def test_a_table_written_by_an_older_schema_is_rebuilt(tmp_path):
    # Without the version guard, CREATE TABLE IF NOT EXISTS keeps the old shape and
    # the 5-column INSERT fails (or mis-maps) against it.
    db = tmp_path / "xref.sqlite"
    con = sqlite3.connect(db)
    con.execute("CREATE TABLE evidence (file TEXT)")
    con.execute("INSERT INTO evidence VALUES ('stale-from-an-older-build')")
    con.commit()
    con.close()
    _scan(tmp_path, db, SIG_SU, 'String a = "/system/bin/su";\n')
    assert _rows(db) == 1
    assert _rows(db, "file='stale-from-an-older-build'") == 0


def test_the_schema_version_is_recorded(tmp_path):
    db = tmp_path / "xref.sqlite"
    _scan(tmp_path, db, SIG_SU, 'String a = "/system/bin/su";\n')
    con = sqlite3.connect(db)
    try:
        (v,) = con.execute("SELECT value FROM scan_meta WHERE key='schema_version'").fetchone()
    finally:
        con.close()
    assert v == str(_EVIDENCE_TABLE_SCHEMA_VERSION)
