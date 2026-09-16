"""Unit tests for dynamic/proxy_attribution.py - attributing captured traffic to
the app that produced it, from the device's own kernel socket table.

The /proc/net and pm fixtures below are copied verbatim from the reference
emulator (emulator-5554, 2026-09-16) rather than hand-written, because a parser
that matches an invented format is a parser that has never seen the real one.
Note the two rows in the real table whose remote port is 8080 and 8081: those
are the pass-through and capture proxies, and their uid is the whole signal."""

from dynamic import proxy_attribution as pa

# Verbatim `cat /proc/net/tcp`, columns intact (trailing inode padding included).
REAL_PROC_NET_TCP = (
    "  sl  local_address rem_address   st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode                                                     \n"
    "   0: 0100007F:69A2 00000000:0000 0A 00000000:00000000 00:00000000 00000000     0        0 126376 1 0000000000000000 100 0 0 10 0                    \n"
    "   1: 0100007F:B644 0100007F:1F90 08 00000000:00000001 00:00000000 00000000 10131        0 173400 1 0000000000000000 20 4 0 10 -1                   \n"
    "   2: 0100007F:DFAE 0100007F:1F91 08 00000000:00000001 00:00000000 00000000 10131        0 249657 1 0000000000000000 20 4 30 10 -1                   \n"
)

# Verbatim `pm list packages -U`.
REAL_PM_LIST_U = (
    "package:com.google.android.networkstack.tethering uid:1073\n"
    "package:com.android.cts.priv.ctsshim uid:10163\n"
    "package:com.google.android.youtube uid:10147\n"
)

# An IPv6 row (32-hex-digit group) with the same remote-port shape.
IPV6_ROW = ("   0: 00000000000000000000000001000000:1F91 "
            "00000000000000000000000001000000:1F91 01 00000000:00000000 "
            "00:00000000 00000000 10131 0 0 1 0000000000000000 20 4 30 10 -1\n")


def test_parse_proc_net_tcp_reads_the_real_table():
    rows = pa.parse_proc_net_tcp(REAL_PROC_NET_TCP)
    assert len(rows) == 3  # the header line is not a socket row
    assert rows[0] == {"local_port": 0x69A2, "remote_port": 0, "state": "0A", "uid": 0}
    assert rows[1]["remote_port"] == 8080  # 0x1F90, the pass-through proxy
    assert rows[2]["remote_port"] == 8081  # 0x1F91, the capture proxy
    assert rows[2]["uid"] == 10131


def test_proxy_client_uids_matches_the_capture_port_only():
    rows = pa.parse_proc_net_tcp(REAL_PROC_NET_TCP)
    assert pa.proxy_client_uids(rows, 8081) == {10131}
    # A different port is a different question and must not answer this one.
    assert pa.proxy_client_uids(rows, 8080) == {10131}
    assert pa.proxy_client_uids(rows, 9999) == set()


def test_a_listening_socket_is_not_a_client_of_the_proxy():
    """The LISTEN row's remote port is 0. Nothing may read that as a connection
    to a proxy, or every uid on the device would look like a client of port 0."""
    rows = pa.parse_proc_net_tcp(REAL_PROC_NET_TCP)
    listen = [r for r in rows if r["state"] == "0A"]
    assert listen and all(r["remote_port"] == 0 for r in listen)
    assert pa.proxy_client_uids(listen, 8080) == set()


def test_a_closed_socket_still_counts_as_having_reached_the_proxy():
    """State is not filtered on purpose: a short-lived flow is CLOSE_WAIT (or
    gone) by the time a sample is taken, and requiring ESTABLISHED would report
    the very traffic being asked about as absent."""
    rows = pa.parse_proc_net_tcp(REAL_PROC_NET_TCP)
    assert rows[2]["state"] == "08"
    assert pa.proxy_client_uids(rows, 8081) == {10131}


def test_ipv6_rows_parse_too():
    rows = pa.parse_proc_net_tcp(IPV6_ROW)
    assert rows == [{"local_port": 8081, "remote_port": 8081, "state": "01", "uid": 10131}]


def test_an_unparseable_row_is_skipped_not_repaired():
    """A repaired row would misattribute another process's traffic to the app."""
    junk = ("  sl  local_address rem_address   st\n"
            "   0: NOTHEX:ZZZZ 00000000:0000 0A 00 00 00 0\n"
            "   1: 0100007F:B644 0100007F:1F91 08 0:0 0:0 0 10131 0 7 1 x 2 0 0 1 -1\n")
    rows = pa.parse_proc_net_tcp(junk)
    assert [r["uid"] for r in rows] == [10131]
    assert pa.proxy_client_uids(rows, 8081) == {10131}


def test_parse_package_uids_reads_the_real_list():
    m = pa.parse_package_uids(REAL_PM_LIST_U)
    assert m[1073] == ["com.google.android.networkstack.tethering"]
    assert m[10147] == ["com.google.android.youtube"]


def test_parse_package_uids_keeps_every_package_on_a_shared_uid():
    """`android:sharedUserId` puts several packages on one uid. Collapsing them
    to one package would report shared traffic as unambiguously the target's."""
    m = pa.parse_package_uids("package:com.a uid:10131\npackage:com.b uid:10131\n")
    assert m[10131] == ["com.a", "com.b"]


def test_parse_package_uids_ignores_lines_without_a_uid():
    m = pa.parse_package_uids("package:com.a\nError: no such tool\n\npackage:com.b uid:5\n")
    assert m == {5: ["com.b"]}


# --- the verdict: did THIS app reach the proxy? -------------------------------


def _sampled(uids, measured=True, samples=3):
    return {"uids": set(uids), "measured": measured, "samples_measured": samples,
            "samples": samples, "errors": []}


def test_the_target_is_attributed_when_its_uid_held_a_proxy_socket():
    got = pa.attribute_proxy_clients(_sampled({10131}), {10131: ["com.test.app"]},
                                     "com.test.app", 8081)
    assert got["reached"] is True and got["uid"] == 10131 and got["shared_uid"] == []
    assert "held a socket to the capture proxy" in got["reason"]


def test_a_shared_uid_is_reported_as_uid_level_not_package_level():
    """The socket is proof SOME package on that uid opened it. Saying otherwise
    would be upgrading uid-level evidence into a package-level claim."""
    got = pa.attribute_proxy_clients(_sampled({10131}),
                                     {10131: ["com.test.app", "com.other.app"]},
                                     "com.test.app", 8081)
    assert got["reached"] is True
    assert got["shared_uid"] == ["com.other.app"]
    assert "uid-level" in got["reason"] and "not proof that this package" in got["reason"]


def test_a_target_that_never_reached_the_proxy_is_a_measured_absence():
    """False is licensed only with the app's liveness as its premise - see the
    three tests below for what happens without it."""
    got = pa.attribute_proxy_clients(_sampled({999}), {10131: ["com.test.app"]},
                                     "com.test.app", 8081, target_running=True)
    assert got["reached"] is False and got["uid"] == 10131
    assert "held no socket to the capture proxy" in got["reason"]


def test_a_target_that_was_not_running_is_never_a_measured_absence():
    """Measured on the reference emulator: `am start -a MAIN -c LAUNCHER -p <pkg>`
    starts nothing on a device with no launcher app AND EXITS 0, so the stage's
    launch silently did nothing and the capture was reported as "this app did NOT
    reach the proxy" - for an app that was never running. An app that does not
    exist cannot stay away from anything: it makes no requests for a reason that
    has nothing to do with the proxy."""
    got = pa.attribute_proxy_clients(_sampled({999}), {10131: ["com.test.app"]},
                                     "com.test.app", 8081, target_running=False)
    assert got["reached"] is None and got["reached"] is not False
    assert "was not running during the capture window" in got["reason"]


def test_unmeasured_liveness_does_not_license_an_absence_either():
    got = pa.attribute_proxy_clients(_sampled({999}), {10131: ["com.test.app"]},
                                     "com.test.app", 8081, target_running=None)
    assert got["reached"] is None
    assert "not evidence that it stayed away" in got["reason"]


def test_a_uid_that_reached_the_proxy_needs_no_liveness_premise():
    """Proof positive: the socket IS the app having existed. Gating this on
    liveness would throw away the strongest evidence the module has."""
    got = pa.attribute_proxy_clients(_sampled({10131}), {10131: ["com.test.app"]},
                                     "com.test.app", 8081, target_running=False)
    assert got["reached"] is True


def test_an_unreadable_socket_table_is_not_measured_and_never_false():
    got = pa.attribute_proxy_clients(_sampled(set(), measured=False),
                                     {10131: ["com.test.app"]}, "com.test.app", 8081)
    assert got["reached"] is None and got["reached"] is not False
    assert "could not be read" in got["reason"]


def test_an_unreadable_package_list_is_not_measured():
    got = pa.attribute_proxy_clients(_sampled({10131}), None, "com.test.app", 8081)
    assert got["reached"] is None
    assert "package list could not be read" in got["reason"]


def test_a_package_absent_from_the_device_list_is_not_measured():
    """No uid means the question was never asked - not that the app was absent
    from the proxy."""
    got = pa.attribute_proxy_clients(_sampled({10131}), {10131: ["com.other"]},
                                     "com.test.app", 8081)
    assert got["reached"] is None
    assert "has no uid in the device's package list" in got["reason"]


def test_no_samples_at_all_is_not_measured():
    got = pa.attribute_proxy_clients(None, {10131: ["com.test.app"]}, "com.test.app", 8081)
    assert got["reached"] is None


# --- the device readers: failure must be recorded, not become an empty set ----


class _R:
    def __init__(self, stdout="", returncode=0):
        self.stdout, self.returncode = stdout, returncode


def test_sample_proxy_clients_records_not_measured_when_neither_path_reads(monkeypatch):
    monkeypatch.setattr(pa.subprocess, "run", lambda *a, **k: _R("", 1))
    got = pa.sample_proxy_clients("s", 8081, adb="adb")
    assert got["measured"] is False and got["uids"] == set() and got["paths_read"] == 0
    assert len(got["errors"]) == 2


def test_sample_proxy_clients_survives_one_unreadable_family(monkeypatch):
    """An IPv4-only kernel serves no /proc/net/tcp6, and that is not a fault."""
    def _run(cmd, **k):
        return _R(REAL_PROC_NET_TCP, 0) if cmd[-1].endswith("/tcp") else _R("", 1)
    monkeypatch.setattr(pa.subprocess, "run", _run)
    got = pa.sample_proxy_clients("s", 8081, adb="adb")
    assert got["measured"] is True and got["uids"] == {10131} and got["paths_read"] == 1


def test_sampling_accumulates_so_a_short_lived_socket_is_not_lost(monkeypatch):
    """The whole reason for sampling repeatedly: a socket that exists for a
    fraction of a second must still be attributed. A single read at the end of
    the window would report the app as never having reached the proxy."""
    calls = {"n": 0}

    def _run(cmd, **k):
        if cmd[-1].endswith("/tcp"):
            calls["n"] += 1
            return _R(REAL_PROC_NET_TCP, 0) if calls["n"] == 1 else _R("", 0)
        return _R("", 1)
    monkeypatch.setattr(pa.subprocess, "run", _run)
    got = pa.sample_proxy_clients_during("s", 8081, seconds=0.05, interval=0.0, adb="adb")
    assert got["samples"] >= 2
    assert got["uids"] == {10131}
    assert calls["n"] > got["samples_measured"] - 1


def test_all_samples_failing_is_not_measured(monkeypatch):
    monkeypatch.setattr(pa.subprocess, "run", lambda *a, **k: _R("", 1))
    got = pa.sample_proxy_clients_during("s", 8081, seconds=0.01, interval=0.0, adb="adb")
    assert got["measured"] is False and got["uids"] == set()
    assert pa.attribute_proxy_clients(got, {10131: ["com.test.app"]},
                                      "com.test.app", 8081)["reached"] is None


def test_package_uid_map_is_none_when_the_device_cannot_be_asked(monkeypatch):
    def _boom(*a, **k):
        raise OSError("adb: no devices/emulators found")
    monkeypatch.setattr(pa.subprocess, "run", _boom)
    assert pa.package_uid_map("s", adb="adb") is None


def test_package_uid_map_reads_the_real_output(monkeypatch):
    monkeypatch.setattr(pa.subprocess, "run", lambda *a, **k: _R(REAL_PM_LIST_U, 0))
    m = pa.package_uid_map("s", adb="adb")
    assert m[10147] == ["com.google.android.youtube"]
