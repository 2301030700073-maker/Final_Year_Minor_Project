import contextlib
import subprocess
from pathlib import Path

import pytest

from dynamic import device
from dynamic.device import _find_windows_user, _wait_for_relay

# The `is_listening` gate that `setup_frida_connection` re-asserts behind is a
# real Windows-host probe, and taking it drives the live device. The unit suite
# stubs it off wholesale in conftest (`_no_live_host_or_device`); the two tests
# below open it deliberately, and stub `ensure_internet` beside it so that even
# an open gate cannot reach the device.


def test_setup_frida_connection_reasserts_internet_after_provisioning(monkeypatch):
    """Order is the point, as it is for the reverse itself. Provisioning runs
    `adb root`, which restarts adbd and takes the device-side tcp:8080 reverse
    with it; the device-proxy setting survives, so the device is left pointed at
    a loopback nothing answers. The baseline has to be re-asserted AFTER
    provisioning, not before."""
    from dynamic import pass_through_proxy
    from dynamic.device import setup_frida_connection

    order = []
    instrument = {"client": "16.7", "server": "16.7",
                  "server_source": "already_running", "handshake": None}
    fake_device = type("F", (), {"enumerate_processes": lambda self: None})()
    fake_mgr = type("M", (), {"add_remote_device": lambda self, addr: fake_device})()
    fake_frida = type("FF", (), {"get_device_manager": staticmethod(lambda: fake_mgr)})()

    def _provision(adb, serial):
        order.append("provision")
        return instrument

    monkeypatch.setattr("dynamic.device._ensure_frida_server", _provision)
    monkeypatch.setattr("dynamic.device._in_wsl", lambda: True)
    monkeypatch.setattr("dynamic.device._adb_wrapper_path", lambda: "adb")
    monkeypatch.setattr("dynamic.device._start_relay", lambda adb: "172.27.96.1")
    monkeypatch.setattr("dynamic.device.frida", fake_frida)
    monkeypatch.setattr("dynamic.pass_through_proxy.is_listening",
                        lambda *a, **k: True)
    monkeypatch.setattr(
        "dynamic.pass_through_proxy.ensure_internet",
        lambda serial, port: order.append(("internet", serial, port)))

    setup_frida_connection("emulator-5554")
    assert order == ["provision", ("internet", "emulator-5554",
                                   pass_through_proxy.INTERNET_PROXY_PORT)]


def test_setup_frida_connection_leaves_internet_alone_when_no_pass_through(monkeypatch):
    # The gate is real: with nothing listening on the internet port the
    # re-assert must not fire, because there is no baseline to restore - running
    # it anyway would place a reverse toward a port no process owns.
    from dynamic.device import setup_frida_connection

    called = []
    instrument = {"client": "16.7", "server": "16.7",
                  "server_source": "already_running", "handshake": None}
    fake_device = type("F", (), {"enumerate_processes": lambda self: None})()
    fake_mgr = type("M", (), {"add_remote_device": lambda self, addr: fake_device})()
    fake_frida = type("FF", (), {"get_device_manager": staticmethod(lambda: fake_mgr)})()

    monkeypatch.setattr("dynamic.device._ensure_frida_server",
                        lambda adb, serial: instrument)
    monkeypatch.setattr("dynamic.device._in_wsl", lambda: True)
    monkeypatch.setattr("dynamic.device._adb_wrapper_path", lambda: "adb")
    monkeypatch.setattr("dynamic.device._start_relay", lambda adb: "172.27.96.1")
    monkeypatch.setattr("dynamic.device.frida", fake_frida)
    monkeypatch.setattr("dynamic.pass_through_proxy.ensure_internet",
                        lambda *a, **k: called.append(a))

    setup_frida_connection("emulator-5554")
    assert called == []


def test_find_windows_user_fails_loudly_when_directory_does_not_exist(tmp_path):
    # tmp_path-based, not ambient reality - /mnt/c/Users genuinely exists on
    # real WSL2 but not on this Windows dev machine, so a test relying on
    # which real environment it happens to run in isn't portable (this is
    # exactly what broke on the collaborator's WSL2 machine before this fix).
    missing = tmp_path / "NoSuchUsersDir"
    with pytest.raises(RuntimeError, match="not found"):
        _find_windows_user(users_dir=missing)


def test_find_windows_user_fails_loudly_when_only_special_entries_exist(tmp_path):
    users_dir = tmp_path / "Users"
    for name in ("Public", "Default", "Default User", "All Users"):
        (users_dir / name).mkdir(parents=True)
    with pytest.raises(RuntimeError, match="No user directory found"):
        _find_windows_user(users_dir=users_dir)


# ---------------------------------------------------------------------------
# G13: screen-resolution guard - integration brittleness surfaced, not silent
# ---------------------------------------------------------------------------


def _patch_wm_size(monkeypatch, *, stdout="", returncode=0):
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")

    def fake_run(cmd, **kwargs):
        return subprocess.CompletedProcess(cmd, returncode, stdout=stdout, stderr="")

    monkeypatch.setattr(device.subprocess, "run", fake_run)


def test_screen_resolution_unset_reports_detected_physical(monkeypatch):
    monkeypatch.delenv("EXPECTED_AVD_RESOLUTION", raising=False)
    _patch_wm_size(monkeypatch, stdout="Physical size: 1080x1920\n")
    res = device.screen_resolution_check("emulator-5554", expected=None)
    assert res["status"] == "unset"
    assert res["detected"] == "1080x1920"
    assert res["physical"] == "1080x1920" and res["override"] is None


def test_screen_resolution_override_is_the_effective_size(monkeypatch):
    # A resized/scaled AVD reports both; the Override size is what taps hit.
    _patch_wm_size(
        monkeypatch,
        stdout="Physical size: 1080x1920\nOverride size: 720x1280\n",
    )
    res = device.screen_resolution_check("emulator-5554", expected="720x1280")
    assert res["status"] == "ok"
    assert res["detected"] == "720x1280"
    assert res["physical"] == "1080x1920" and res["override"] == "720x1280"


def test_screen_resolution_mismatch_is_flagged_loudly(monkeypatch):
    _patch_wm_size(monkeypatch, stdout="Physical size: 720x1280\n")
    res = device.screen_resolution_check("emulator-5554", expected="1080x1920")
    assert res["status"] == "mismatch"
    assert "720x1280" in res["message"] and "1080x1920" in res["message"]


def test_screen_resolution_env_supplies_expected(monkeypatch):
    monkeypatch.setenv("EXPECTED_AVD_RESOLUTION", "1080x1920")
    _patch_wm_size(monkeypatch, stdout="Physical size: 1080x1920\n")
    res = device.screen_resolution_check("emulator-5554")
    assert res["status"] == "ok" and res["expected"] == "1080x1920"


def test_screen_resolution_adb_nonzero_is_unknown_not_silent(monkeypatch):
    _patch_wm_size(monkeypatch, returncode=1, stdout="")
    res = device.screen_resolution_check("emulator-5554", expected="1080x1920")
    assert res["status"] == "unknown"
    assert res["detected"] is None and "failed" in res["message"]


def test_screen_resolution_unparseable_output_is_unknown(monkeypatch):
    _patch_wm_size(monkeypatch, stdout="wm: not found\n")
    res = device.screen_resolution_check("emulator-5554", expected="1080x1920")
    assert res["status"] == "unknown"
    assert "could not parse" in res["message"]


def test_find_windows_user_returns_first_real_user_directory(tmp_path):
    users_dir = tmp_path / "Users"
    (users_dir / "Public").mkdir(parents=True)
    (users_dir / "testuser").mkdir(parents=True)
    assert _find_windows_user(users_dir=users_dir) == "testuser"


def test_wait_for_relay_raises_loudly_on_timeout_rather_than_hanging_or_succeeding_silently():
    with pytest.raises(RuntimeError, match="never started listening"):
        _wait_for_relay("127.0.0.1", 1, timeout=0.5)  # port 1 - nothing listens there


def test_clear_logcat_raises_loudly_on_adb_failure(monkeypatch):
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")

    def fake_run(cmd, **kwargs):
        assert kwargs.get("check") is True
        raise subprocess.CalledProcessError(returncode=1, cmd=cmd, stderr="device offline")

    monkeypatch.setattr(subprocess, "run", fake_run)
    with pytest.raises(subprocess.CalledProcessError):
        device.clear_logcat("emulator-5554")


def test_clear_logcat_tolerates_transient_failure_and_succeeds_on_retry(monkeypatch):
    # clear_logcat: `adb logcat -c` can transiently exit 1 under load right
    # after a dynamic stage. It is best-effort bookkeeping, so a single
    # transient failure is retried - and only a persistent failure raises. Here
    # the first call fails, the retry succeeds: no raise, run returns.
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")
    calls = {"n": 0}

    def fake_run(cmd, **kwargs):
        calls["n"] += 1
        if calls["n"] == 1:
            raise subprocess.CalledProcessError(
                returncode=1, cmd=cmd, stderr="failed to clear log buffer")
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(subprocess, "run", fake_run)
    device.clear_logcat("emulator-5554")  # must not raise
    assert calls["n"] == 2  # first failed, retry succeeded


def test_all_adb_calls_are_timeout_bounded(monkeypatch):
    # NFR-7 / principle 3: every adb subprocess call in this module must be
    # timeout-bounded so a stuck adb transport fails loudly instead of hanging
    # the pipeline forever. discover_device (the FIRST dynamic call), install_apk
    # and verify_installed were the three that lacked a timeout while every other
    # adb call in the module carried one - a stated-discipline-vs-code gap. This
    # pins the "every adb call is bounded" invariant so it can't silently regress.
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")
    seen = []

    def fake_run(cmd, **kwargs):
        seen.append(kwargs.get("timeout"))
        return subprocess.CompletedProcess(
            cmd, 0, stdout="List of devices attached\nemulator-5554\tdevice\n", stderr="")

    monkeypatch.setattr(device.subprocess, "run", fake_run)
    device.discover_device()
    device.install_apk("emulator-5554", "/x/app.apk")
    device.verify_installed("emulator-5554", "com.example")

    assert len(seen) == 3, f"expected 3 adb calls, saw {len(seen)}"
    assert all(isinstance(t, (int, float)) and t > 0 for t in seen), \
        f"an adb call was not timeout-bounded (timeouts seen: {seen})"


def test_verify_installed_requires_exact_package_match(monkeypatch):
    # FR-4.2: a similarly-prefixed package (com.example.app.prod) installed
    # without the target (com.example.app) must NOT "verify" it - substring
    # containment in pm output is a false positive. Match the package: lines
    # exactly.
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")

    def fake_run(cmd, **kwargs):
        # stdout contains the prefixed package but not the exact target name
        return subprocess.CompletedProcess(
            args=cmd, returncode=0,
            stdout="package:com.example.app.prod\n",
        )

    monkeypatch.setattr(subprocess, "run", fake_run)
    assert device.verify_installed("emulator-5554", "com.example.app") is False
    assert device.verify_installed("emulator-5554", "com.example.app.prod") is True


def test_discover_device_fails_loudly_on_multiple_devices_without_serial(monkeypatch):
    # NFR-7: with several devices and no --serial, pick none rather than an
    # arbitrary one - silently analyzing the wrong device is worse than failing.
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")

    def fake_run(cmd, **kwargs):
        return subprocess.CompletedProcess(
            args=cmd, returncode=0,
            stdout="List of devices attached\nemulator-5554\tdevice\nemulator-5556\tdevice\n",
        )

    monkeypatch.setattr(subprocess, "run", fake_run)
    with pytest.raises(RuntimeError, match="pass --serial"):
        device.discover_device()


def test_discover_device_single_device_returns_serial(monkeypatch):
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")

    def fake_run(cmd, **kwargs):
        return subprocess.CompletedProcess(
            args=cmd, returncode=0,
            stdout="List of devices attached\nemulator-5554\tdevice\n",
        )

    monkeypatch.setattr(subprocess, "run", fake_run)
    assert device.discover_device() == "emulator-5554"


def test_discover_device_requested_serial_found_returns_it(monkeypatch):
    # device.py:290: when an explicit --serial is present in the device list, it
    # is returned as-is (no re-derivation). The sibling tests only exercise the
    # no-serial paths.
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")

    def fake_run(cmd, **kwargs):
        return subprocess.CompletedProcess(
            args=cmd, returncode=0,
            stdout="List of devices attached\nemulator-5554\tdevice\nemulator-5556\tdevice\n",
        )

    monkeypatch.setattr(subprocess, "run", fake_run)
    assert device.discover_device("emulator-5556") == "emulator-5556"


def test_discover_device_requested_serial_not_found_raises(monkeypatch):
    # device.py:288-289: an explicit --serial that is NOT among the connected
    # devices fails loudly rather than silently falling back to some other
    # device (NFR-7 "never guess").
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")

    def fake_run(cmd, **kwargs):
        return subprocess.CompletedProcess(
            args=cmd, returncode=0,
            stdout="List of devices attached\nemulator-5554\tdevice\n",
        )

    monkeypatch.setattr(subprocess, "run", fake_run)
    with pytest.raises(RuntimeError, match="requested device serial"):
        device.discover_device("emulator-9999")


def test_discover_device_no_devices_raises(monkeypatch):
    # device.py:292: no connected device at all fails loudly with the actionable
    # hint (--skip-dynamic), never a silent empty pick.
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")

    def fake_run(cmd, **kwargs):
        return subprocess.CompletedProcess(
            args=cmd, returncode=0,
            stdout="List of devices attached\n",  # header only - no device rows
        )

    monkeypatch.setattr(subprocess, "run", fake_run)
    with pytest.raises(RuntimeError, match="no connected device"):
        device.discover_device()


def test_wait_for_relay_returns_when_relay_is_up(monkeypatch):
    # device.py:94: once the relay accepts a connection, _wait_for_relay returns
    # without raising - the success side of the poll loop (the sibling test
    # covers only the timeout raise).
    monkeypatch.setattr(
        device.socket, "create_connection",
        lambda *a, **k: contextlib.nullcontext(),
    )
    _wait_for_relay("127.0.0.1", 1, timeout=1.0)  # does not raise


def test_install_apk_passes_test_only_flag(monkeypatch):
    # FR-4.1/4.2 generality: install must include -t so testOnly training APKs
    # install instead of failing with INSTALL_FAILED_TEST_ONLY.
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")
    seen: dict = {}

    def fake_run(cmd, **kwargs):
        seen["cmd"] = cmd
        return subprocess.CompletedProcess(args=cmd, returncode=0)

    monkeypatch.setattr(subprocess, "run", fake_run)
    device.install_apk("emulator-5554", "/tmp/app.apk")
    assert "-t" in seen["cmd"]


# --- install refusals: the diagnostic, and the one case that is recovered -----
#
# An `adb install` refusal is the first thing a real-world target hits, and the
# reason adb gives is the only thing that makes the failure actionable. It lives
# on CalledProcessError.stderr, which str() drops.

_CONFLICT = (
    "Performing Streamed Install\n"
    "adb: failed to install /x/app.apk: Failure "
    "[INSTALL_FAILED_UPDATE_INCOMPATIBLE: Package owasp.sat.agoat signatures do "
    "not match previously installed version; ignoring!]\n"
)


def _install_harness(monkeypatch, refusals, uninstall_removes=True):
    """Drive install_apk with scripted adb answers; returns the commands issued.

    ``refusals`` is the stderr for each successive `adb install`; None means that
    attempt succeeds. Any command that is neither an install nor an uninstall is
    a test bug, so it asserts rather than silently passing."""
    calls: list = []
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")

    def fake_run(cmd, **kwargs):
        calls.append(list(cmd))
        if cmd[3] == "install":
            n = sum(1 for c in calls if c[3] == "install") - 1
            msg = refusals[min(n, len(refusals) - 1)]
            if msg is None:
                return subprocess.CompletedProcess(args=cmd, returncode=0, stdout="Success", stderr="")
            raise subprocess.CalledProcessError(1, cmd, output="", stderr=msg)
        if cmd[3] == "uninstall":
            return subprocess.CompletedProcess(
                args=cmd, returncode=0 if uninstall_removes else 1,
                stdout="Success" if uninstall_removes else "Failure [DELETE_FAILED_INTERNAL_ERROR]",
                stderr="",
            )
        raise AssertionError(f"unexpected adb subcommand: {cmd}")

    monkeypatch.setattr(subprocess, "run", fake_run)
    return calls


def test_a_refused_install_carries_adb_own_diagnostic(monkeypatch):
    # The measured defect: a second AndroGoat build failed to install and the
    # stage reported "returned non-zero exit status 1" - the line naming the
    # conflict had been captured and thrown away. Whatever adb said must be what
    # the operator sees.
    _install_harness(monkeypatch, [_CONFLICT])
    with pytest.raises(RuntimeError) as raised:
        device.install_apk("emulator-5554", "/x/app.apk")
    message = str(raised.value)
    assert "INSTALL_FAILED_UPDATE_INCOMPATIBLE" in message
    assert "owasp.sat.agoat" in message


def test_a_conflict_naming_another_package_is_never_uninstalled(monkeypatch):
    # The recovery is destructive, so its target has to be the package adb named
    # AND the package being installed. A conflict about some other package is a
    # refusal, not a licence to remove that other package.
    calls = _install_harness(monkeypatch, [_CONFLICT])
    with pytest.raises(RuntimeError):
        device.install_apk("emulator-5554", "/x/app.apk", "com.example.somethingelse")
    assert [c[3] for c in calls] == ["install"]


def test_a_signature_conflict_without_an_expected_package_is_not_recovered(monkeypatch):
    # No expected package means the caller has not told us which package this
    # APK is; without that, nothing may be removed.
    calls = _install_harness(monkeypatch, [_CONFLICT])
    with pytest.raises(RuntimeError):
        device.install_apk("emulator-5554", "/x/app.apk")
    assert [c[3] for c in calls] == ["install"]


def test_a_non_signature_install_failure_is_never_recovered(monkeypatch):
    # ABI, minSdk and storage refusals are real incompatibilities. Retrying them
    # past an uninstall would destroy the installed copy and still fail.
    calls = _install_harness(monkeypatch, ["adb: failed to install /x/app.apk: Failure "
                                          "[INSTALL_FAILED_INSUFFICIENT_STORAGE]"])
    with pytest.raises(RuntimeError) as raised:
        device.install_apk("emulator-5554", "/x/app.apk", "owasp.sat.agoat")
    assert "INSTALL_FAILED_INSUFFICIENT_STORAGE" in str(raised.value)
    assert [c[3] for c in calls] == ["install"]


def test_a_signature_conflict_on_the_target_package_is_recovered(monkeypatch):
    # The case that made the second build of a target unanalyzable: adb cannot
    # replace a package signed with a different key, so the stale copy goes and
    # the install is retried - and the removal is reported, not silent.
    calls = _install_harness(monkeypatch, [_CONFLICT, None])
    result = device.install_apk("emulator-5554", "/x/app.apk", "owasp.sat.agoat")
    assert result["recovered_from_signature_conflict"] is True
    assert result["uninstalled_package"] == "owasp.sat.agoat"
    assert "INSTALL_FAILED_UPDATE_INCOMPATIBLE" in result["first_refusal"]
    uninstalls = [c for c in calls if c[3] == "uninstall"]
    assert len(uninstalls) == 1 and uninstalls[0][4] == "owasp.sat.agoat"
    assert sum(1 for c in calls if c[3] == "install") == 2


def test_a_successful_install_reports_no_recovery(monkeypatch):
    calls = _install_harness(monkeypatch, [None])
    assert device.install_apk("emulator-5554", "/x/app.apk", "owasp.sat.agoat") == {
        "recovered_from_signature_conflict": False
    }
    assert [c[3] for c in calls] == ["install"]


def test_recovery_that_cannot_remove_the_stale_copy_names_both_reasons(monkeypatch):
    # A recovery that fails must not read like the original refusal: the operator
    # needs to know the removal was attempted and why it did not work.
    _install_harness(monkeypatch, [_CONFLICT], uninstall_removes=False)
    with pytest.raises(RuntimeError) as raised:
        device.install_apk("emulator-5554", "/x/app.apk", "owasp.sat.agoat")
    message = str(raised.value)
    assert "could not be removed" in message
    assert "DELETE_FAILED_INTERNAL_ERROR" in message


def test_a_recovered_install_that_still_fails_says_the_removal_already_happened(monkeypatch):
    _install_harness(monkeypatch, [_CONFLICT, "adb: failed to install: Failure [INSTALL_FAILED_OLDER_SDK]"])
    with pytest.raises(RuntimeError) as raised:
        device.install_apk("emulator-5554", "/x/app.apk", "owasp.sat.agoat")
    message = str(raised.value)
    assert "even after removing" in message
    assert "INSTALL_FAILED_OLDER_SDK" in message


def test_in_wsl_detects_microsoft_kernel(monkeypatch, tmp_path):
    # _in_wsl: the reference env is WSL2; the transport decision (adb over the
    # Windows-side relay vs direct) keys off this. Reads /proc/version - must be
    # true only when 'microsoft' appears, and degrade to False (never crash) if
    # the file is unreadable. Had zero coverage.
    from pathlib import Path
    from dynamic.device import _in_wsl

    fake = tmp_path / "version"
    # _in_wsl hardcodes Path("/proc/version"), so redirect read_text to the tmp
    # file regardless of self (and open() directly to avoid re-entering the patch)
    def fake_read(self, **k):
        with open(fake, encoding="utf-8") as f:
            return f.read()
    fake.write_text("Linux version 5.15 ... microsoft-standard-WSL2", encoding="utf-8")
    monkeypatch.setattr(Path, "read_text", fake_read)
    assert _in_wsl() is True

    fake.write_text("Linux version 5.15 ... ubuntu", encoding="utf-8")
    assert _in_wsl() is False

    def unreadable(*a, **k):
        raise OSError("no /proc")
    monkeypatch.setattr(Path, "read_text", unreadable)
    assert _in_wsl() is False


def test_wsl_windows_ip_parses_via_gateway(monkeypatch):
    # _wsl_windows_ip: parses `ip route show default` for the gateway (the WSL
    # host's IP on the virtual NAT). Returns None on parse failure or a probe
    # exception, never raises. Had zero coverage.
    import subprocess as _sp
    from dynamic.device import _wsl_windows_ip

    monkeypatch.setattr(_sp, "run", lambda *a, **k: _sp.CompletedProcess(
        [], 0, stdout="default via 172.27.96.1 dev eth0 proto kernel\n", stderr=""))
    assert _wsl_windows_ip() == "172.27.96.1"

    # no 'via' -> None
    monkeypatch.setattr(_sp, "run", lambda *a, **k: _sp.CompletedProcess(
        [], 0, stdout="default dev eth0\n", stderr=""))
    assert _wsl_windows_ip() is None

    # probe exception -> None, never a crash
    def boom(*a, **k):
        raise FileNotFoundError("ip missing")
    monkeypatch.setattr(_sp, "run", boom)
    assert _wsl_windows_ip() is None


def test_adb_wrapper_path_prefers_local_then_path_then_raises(monkeypatch, tmp_path):
    # _adb_wrapper_path: the reference env resolves adb via the ~/.local/bin
    # wrapper (calls Windows adb.exe). Resolution order is local wrapper ->
    # PATH -> loud RuntimeError (never silent no-op). Had zero coverage.
    import shutil
    from pathlib import Path
    from dynamic.device import _adb_wrapper_path

    wrapper = tmp_path / "adb"
    wrapper.write_text("#!/bin/sh\n", encoding="utf-8")
    monkeypatch.setattr(Path, "home", lambda: tmp_path)
    monkeypatch.setattr(Path, "is_file", lambda self: self == tmp_path / ".local/bin/adb")
    assert _adb_wrapper_path() == str(tmp_path / ".local/bin/adb")

    # no local wrapper -> fall back to PATH
    monkeypatch.setattr(Path, "is_file", lambda self: False)
    monkeypatch.setattr(shutil, "which", lambda n: "/usr/bin/adb")
    assert _adb_wrapper_path() == "/usr/bin/adb"

    # neither -> loud RuntimeError, not a silent empty path
    monkeypatch.setattr(shutil, "which", lambda n: None)
    try:
        _adb_wrapper_path()
        assert False, "expected RuntimeError"
    except RuntimeError as e:
        assert "adb not found" in str(e)


def test_start_relay_fails_loudly_when_wsl_ip_unresolvable(monkeypatch):
    # _start_relay: without a Windows host IP there is no relay target - fail
    # loudly (never silently continue with a broken Frida transport). Had zero
    # coverage.
    import subprocess as _sp
    from dynamic.device import _start_relay
    monkeypatch.setattr("dynamic.device._wsl_windows_ip", lambda: None)
    with pytest.raises(RuntimeError, match="Could not determine Windows host IP"):
        _start_relay("adb")


def test_start_relay_fails_loudly_when_adb_forward_fails(monkeypatch):
    # _start_relay: a failed adb forward means no listener on the Windows side -
    # surface it naming the port and the tool's stderr, not a later confusing
    # failure. Had zero coverage.
    from dynamic.device import _start_relay
    monkeypatch.setattr("dynamic.device._wsl_windows_ip", lambda: "172.27.96.1")
    def fake_run(cmd, **kw):
        assert cmd[1] == "forward"
        return subprocess.CompletedProcess(cmd, 2, stdout="", stderr="cannot bind 27044")
    monkeypatch.setattr(subprocess, "run", fake_run)
    with pytest.raises(RuntimeError, match="27044.*cannot bind 27044"):
        _start_relay("adb")


def test_stop_relay_kills_tracked_proc_and_cleans_orphans(monkeypatch):
    # _stop_relay: kills the tracked relay process (guarding OSError) and runs
    # the Get-CimInstance orphan cleanup (the fix that prevents silently leaked
    # orphaned relays). Had zero coverage.
    from dynamic import device

    killed = []
    class FakeProc:
        def kill(self):
            killed.append(1)
            raise OSError("already dead")  # must be swallowed, not propagated
    device._RELAY_PROC = FakeProc()

    cmds = []
    def fake_run(cmd, **kw):
        cmds.append(" ".join(cmd))
        return subprocess.CompletedProcess(cmd, 0)
    monkeypatch.setattr(subprocess, "run", fake_run)

    device._stop_relay()

    assert killed == [1]                     # the tracked proc was killed
    assert device._RELAY_PROC is None        # and reset (not left dangling)
    assert any("Get-CimInstance" in c for c in cmds)  # orphan cleanup ran
    assert any("frida_relay" in c for c in cmds)      # ...filtering for the relay


def test_ensure_frida_server_noops_when_root_server_already_running(monkeypatch):
    # _ensure_frida_server: if a ROOT frida-server is already running, do
    # nothing - no needless ls/start (principle 3 is about not hanging, not
    # about restarting a healthy server). adb root + the ps probe run, then
    # stop. Had zero coverage.
    from dynamic.device import _ensure_frida_server
    calls = []
    def fake_run(cmd, **kw):
        calls.append(cmd)
        if cmd[-1] == "root":
            return subprocess.CompletedProcess(cmd, 0, stdout="already running as root\n", stderr="")
        if cmd[-2] == "ps" and cmd[-1] == "-A":
            return subprocess.CompletedProcess(cmd, 0, stdout="root 1234 frida-server\n", stderr="")
        if cmd[-1] == "--version":
            return subprocess.CompletedProcess(cmd, 0, stdout="16.7.19\n", stderr="")
        raise AssertionError(f"ls/start must NOT run: {cmd}")
    monkeypatch.setattr(subprocess, "run", fake_run)
    _ensure_frida_server("adb", "emulator-5554")
    assert len(calls) == 3  # adb root + ps probe + version probe only, no ls/start
    assert calls[0][-1] == "root"
    assert calls[1][-2:] == ["ps", "-A"]
    assert calls[2][-1] == "--version"


def test_ensure_frida_server_restarts_shell_run_server_as_root(monkeypatch):
    # _ensure_frida_server: a frida-server running as 'shell' (not root) can't
    # attach to system_server - this is the "unable to find process with name
    # 'system_server'" failure. It must be killed and restarted as root, never
    # left running as shell. Had zero coverage.
    from dynamic.device import _ensure_frida_server
    seq = {"n": 0}
    def fake_run(cmd, **kw):
        seq["n"] += 1
        if cmd[-1] == "root":
            return subprocess.CompletedProcess(cmd, 0, stdout="restarting adbd as root\n", stderr="")
        if seq["n"] == 2:  # ps -A: server running as SHELL
            return subprocess.CompletedProcess(cmd, 0, stdout="shell 9623 1 frida-server\n", stderr="")
        if seq["n"] == 3:  # pkill the shell-run server
            assert "pkill" in cmd
            return subprocess.CompletedProcess(cmd, 0)
        if seq["n"] == 4:  # ls - present
            return subprocess.CompletedProcess(cmd, 0, stdout="/data/local/tmp/frida-server\n", stderr="")
        return subprocess.CompletedProcess(cmd, 0)  # nohup start (as root)
    monkeypatch.setattr(subprocess, "run", fake_run)
    _ensure_frida_server("adb", "emulator-5554")
    # DEV5: root + ps + pkill + ls + (wait-for-gone ps) + start + the ADR-0020
    # read-back of the version the device was left with. The wait ps is the
    # bounded wait that lets the SIGTERM'd shell server exit before the root
    # restart, so the new server never races the old one for the frida socket.
    assert seq["n"] == 7


def test_ensure_frida_server_starts_when_present_but_not_running(monkeypatch):
    # _ensure_frida_server: pushed-but-not-started is the usual silent-hang
    # cause - the binary is present (ls succeeds) so start it as root. Had zero
    # coverage.
    from dynamic.device import _ensure_frida_server
    seq = {"n": 0}
    def fake_run(cmd, **kw):
        seq["n"] += 1
        if seq["n"] == 1:  # adb root
            return subprocess.CompletedProcess(cmd, 0, stdout="restarting adbd as root\n", stderr="")
        if seq["n"] == 2:  # ps -A (must NOT name frida-server, or it's "already running")
            return subprocess.CompletedProcess(cmd, 0, stdout="  PID 1234 com.android.systemui\n", stderr="")
        if seq["n"] == 3:  # ls - present
            return subprocess.CompletedProcess(cmd, 0, stdout="/data/local/tmp/frida-server\n", stderr="")
        return subprocess.CompletedProcess(cmd, 0)  # nohup start
    monkeypatch.setattr(subprocess, "run", fake_run)
    _ensure_frida_server("adb", "emulator-5554")
    assert seq["n"] == 5  # root + ps + ls + start + the ADR-0020 read-back


def test_ensure_frida_server_autopushes_local_copy_when_missing(monkeypatch, tmp_path):
    # _ensure_frida_server: when the binary is missing on the device, the stage
    # provisions its own prerequisite by pushing the local tools/ copy, then
    # starts it - instead of failing and demanding a manual push. The device
    # must never be left without frida-server, and nothing is fabricated.
    from dynamic import device as dev
    local = tmp_path / "frida-server-16.7.19-x86_64"
    local.write_bytes(b"frida-binary")
    monkeypatch.setattr(dev, "_FRIDA_SERVER_LOCAL", local)
    seq = {"n": 0, "pushed": False}
    def fake_run(cmd, **kw):
        seq["n"] += 1
        n = seq["n"]
        if n == 1:  # adb root
            return subprocess.CompletedProcess(cmd, 0, stdout="restarting adbd as root\n", stderr="")
        if n == 2:  # ps -A - no frida-server running
            return subprocess.CompletedProcess(cmd, 0, stdout="  PID 1 init\n", stderr="")
        if n == 3:  # ls - MISSING on device
            return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="No such file")
        if n == 4:  # rm -f stale
            assert "rm" in cmd
            return subprocess.CompletedProcess(cmd, 0)
        if n == 5:  # push the local copy
            assert "push" in cmd
            assert str(local) in cmd
            seq["pushed"] = True
            return subprocess.CompletedProcess(cmd, 0)
        if n == 6:  # chmod 755
            assert "chmod" in cmd
            return subprocess.CompletedProcess(cmd, 0)
        return subprocess.CompletedProcess(cmd, 0)  # nohup start + ADR-0020 read-back
    monkeypatch.setattr(subprocess, "run", fake_run)
    dev._ensure_frida_server("adb", "emulator-5554")
    assert seq["pushed"] is True  # the local copy was auto-pushed
    # root + ps + ls + rm + push + chmod + start + the ADR-0020 read-back
    assert seq["n"] == 8


def test_frida_provisioning_records_the_server_it_left_running(monkeypatch):
    # ADR-0020: the version reads the guard already made ARE the record. A root
    # server that already matched is called what it is - already running - and not
    # attributed to a copy this stage pushed.
    from dynamic.device import _ensure_frida_server

    def fake_run(cmd, **kw):
        if cmd[-1] == "root":
            return subprocess.CompletedProcess(cmd, 0, stdout="restarting adbd as root\n", stderr="")
        if cmd[-2:] == ["ps", "-A"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="root 1234 1 frida-server\n", stderr="")
        if cmd[-1] == "--version":
            return subprocess.CompletedProcess(cmd, 0, stdout="16.7.19\n", stderr="")
        raise AssertionError(f"must not re-provision a matching root server: {cmd}")

    monkeypatch.setattr(subprocess, "run", fake_run)
    monkeypatch.setattr("dynamic.device._frida_venv_version", lambda: "16.7")

    instrument = _ensure_frida_server("adb", "emulator-5554")
    assert instrument["client"] == "16.7"
    assert instrument["server_source"] == "already_running"
    assert instrument["server_before"] == "16.7" == instrument["server"]
    assert instrument["replaced"] is False
    assert instrument["replace_reason"] is None
    assert instrument["unreadable"] is None  # read, and it read fine


def test_frida_provisioning_records_a_replacement_and_its_reason(monkeypatch, tmp_path):
    # ADR-0020: a run that silently replaced the device's instrumentation must not
    # be indistinguishable in the record from one that did not. The reason is
    # recorded, and so is the version the device was left with - the read-back,
    # not the pinned copy that was pushed to it.
    from dynamic.device import _ensure_frida_server

    local = tmp_path / "frida-server-16.7.19-x86_64"
    local.write_bytes(b"#!/bin/sh\n")
    monkeypatch.setattr("dynamic.device._FRIDA_SERVER_LOCAL", local)
    monkeypatch.setattr("dynamic.device._frida_venv_version", lambda: "16.7")
    state = {"killed": False}

    def fake_run(cmd, **kw):
        if cmd[-1] == "root":
            return subprocess.CompletedProcess(cmd, 0, stdout="restarting adbd as root\n", stderr="")
        if cmd[-2:] == ["ps", "-A"]:
            out = "  PID 1 init\n" if state["killed"] else "shell 1234 1 frida-server\n"
            return subprocess.CompletedProcess(cmd, 0, stdout=out, stderr="")
        if "pkill" in cmd:
            state["killed"] = True
            return subprocess.CompletedProcess(cmd, 0)
        if "ls" in cmd:  # not present on the device -> push the local copy
            return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="No such file")
        if cmd[-1] == "--version":  # the read-back, after the push
            return subprocess.CompletedProcess(cmd, 0, stdout="16.7.19\n", stderr="")
        return subprocess.CompletedProcess(cmd, 0)  # rm / push / chmod / nohup start

    monkeypatch.setattr(subprocess, "run", fake_run)

    instrument = _ensure_frida_server("adb", "emulator-5554")
    assert instrument["replaced"] is True
    assert "as 'shell', not root" in instrument["replace_reason"]
    assert instrument["server_source"] == "pushed_from_tools"
    assert instrument["server"] == "16.7"  # what the device reported afterwards
    # A shell-run server's version was never read - the asymmetry is recorded
    # rather than back-filled with the client's own version.
    assert instrument["server_before"] is None
    assert instrument["unreadable"] is None


def test_frida_provisioning_records_an_unreadable_version_as_unreadable(monkeypatch):
    # ADR-0020: unmeasured is recorded as unmeasured. A device server whose
    # version cannot be read must never be rendered as the pinned version.
    from dynamic.device import _SERVER_VERSION_UNREADABLE, _ensure_frida_server

    def fake_run(cmd, **kw):
        if cmd[-1] == "root":
            return subprocess.CompletedProcess(cmd, 0, stdout="restarting adbd as root\n", stderr="")
        if cmd[-2:] == ["ps", "-A"]:  # nothing running
            return subprocess.CompletedProcess(cmd, 0, stdout="  PID 1 init\n", stderr="")
        if "ls" in cmd:  # already on the device
            return subprocess.CompletedProcess(cmd, 0, stdout="/data/local/tmp/frida-server\n", stderr="")
        if cmd[-1] == "--version":  # the read-back cannot read it
            return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="not found")
        return subprocess.CompletedProcess(cmd, 0)  # nohup start

    monkeypatch.setattr(subprocess, "run", fake_run)
    monkeypatch.setattr("dynamic.device._frida_venv_version", lambda: "16.7")

    instrument = _ensure_frida_server("adb", "emulator-5554")
    assert instrument["server"] is None
    assert instrument["server_source"] == "device_copy"
    assert instrument["unreadable"] == _SERVER_VERSION_UNREADABLE


def test_frida_provisioning_failure_carries_the_instrument(monkeypatch):
    # ADR-0020: the run that never got as far as a server is exactly the run that
    # has to say so, so the record rides out on the exception instead of going
    # down with the local variable.
    from dynamic.device import FridaProvisioningError, _ensure_frida_server

    def fake_run(cmd, **kw):
        return subprocess.CompletedProcess(
            cmd, 1, stdout="",
            stderr="adbd cannot run as root in production builds",
        )

    monkeypatch.setattr(subprocess, "run", fake_run)
    monkeypatch.setattr("dynamic.device._frida_venv_version", lambda: "16.7")

    with pytest.raises(FridaProvisioningError) as excinfo:
        _ensure_frida_server("adb", "emulator-5554")
    recorded = excinfo.value.instrument  # the record survives the raise
    assert recorded["client"] == "16.7"
    assert recorded["server"] is None
    assert recorded["server_source"] == "provisioning_failed"
    # "never inspected" is not the same claim as "inspected and unreadable".
    assert recorded["unreadable"] == "not read - adbd could not be made root"


def test_ensure_frida_server_fails_loudly_when_local_copy_missing(monkeypatch, tmp_path):
    # NFR-7: if neither the device nor the local tools/ copy has frida-server,
    # fail loudly with the restore hint - never fabricate the binary.
    from dynamic import device as dev
    missing = tmp_path / "no-such-server"
    monkeypatch.setattr(dev, "_FRIDA_SERVER_LOCAL", missing)
    def fake_run(cmd, **kw):
        if cmd[-1] == "root":
            return subprocess.CompletedProcess(cmd, 0, stdout="restarting adbd as root\n", stderr="")
        if cmd[-2] == "ps" and cmd[-1] == "-A":
            return subprocess.CompletedProcess(cmd, 0, stdout="  PID 1 init\n", stderr="")
        if "ls" in cmd:  # device missing too (ls <server_path> -> last token is the path)
            return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="No such file")
        raise AssertionError(f"must not push: {cmd}")
    monkeypatch.setattr(subprocess, "run", fake_run)
    with pytest.raises(RuntimeError, match="restore"):
        dev._ensure_frida_server("adb", "emulator-5554")


def test_ensure_frida_server_fails_loudly_when_adb_root_fails(monkeypatch):
    # _ensure_frida_server: a non-rootable device (adb root fails) is surfaced
    # loudly with the actionable hint, not deferred to the cryptic
    # "unable to find process" Frida error during attach. Had zero coverage.
    from dynamic.device import _ensure_frida_server
    def fake_run(cmd, **kw):
        if cmd[-1] == "root":
            return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="adbd cannot run as root in production builds")
        raise AssertionError(f"must stop after adb root fails: {cmd}")
    monkeypatch.setattr(subprocess, "run", fake_run)
    with pytest.raises(RuntimeError, match="adb root.*cannot run as root"):
        _ensure_frida_server("adb", "emulator-5554")




def test_setup_frida_connection_native_path_delegates_to_get_device(monkeypatch):
    # setup_frida_connection: on non-WSL it delegates straight to frida.get_device
    # (no relay), after ensuring frida-server is running. The transport-selection
    # contract (WSL2 -> relay, native -> direct) must be pinned. Had zero coverage.
    import frida
    from dynamic.device import setup_frida_connection

    ensured = {"n": 0}
    instrument = {"client": "16.7", "server": "16.7",
                  "server_source": "already_running", "handshake": None}

    def fake_ensure(adb, serial):
        ensured["n"] = 1
        return instrument

    monkeypatch.setattr("dynamic.device._ensure_frida_server", fake_ensure)
    monkeypatch.setattr("dynamic.device._in_wsl", lambda: False)
    monkeypatch.setattr("dynamic.device._adb_wrapper_path", lambda: "adb")
    fake = object()
    monkeypatch.setattr(frida, "get_device", lambda serial, timeout=10: fake)

    got, got_instrument = setup_frida_connection("emulator-5554")
    assert got is fake
    assert ensured["n"] == 1  # the server guard ran before connecting
    # ADR-0020: the record is the provisioning's, and this path talks to no
    # server - so it must say no handshake happened rather than imply one did.
    assert got_instrument is instrument
    assert got_instrument["handshake"] is None


def test_setup_frida_connection_wsl_path_uses_relay(monkeypatch):
    # setup_frida_connection: on WSL2 it starts the Windows relay and connects
    # via add_remote_device(win_ip:port), then verifies with enumerate_processes
    # (the dead-server guard is what prevents the silent hang). Had zero coverage.
    from dynamic.device import setup_frida_connection

    verified = {"n": 0}
    fake_device = type("F", (), {"enumerate_processes": lambda self: verified.__setitem__("n", 1)})()
    fake_mgr = type("M", (), {"add_remote_device": lambda self, addr: fake_device})()
    fake_frida = type("FF", (), {"get_device_manager": staticmethod(lambda: fake_mgr)})()

    instrument = {"client": "16.7", "server": "16.7",
                  "server_source": "already_running", "handshake": None}
    monkeypatch.setattr("dynamic.device._ensure_frida_server", lambda adb, serial: instrument)
    monkeypatch.setattr("dynamic.device._in_wsl", lambda: True)
    monkeypatch.setattr("dynamic.device._adb_wrapper_path", lambda: "adb")
    monkeypatch.setattr("dynamic.device._start_relay", lambda adb: "172.27.96.1")
    monkeypatch.setattr("dynamic.device.frida", fake_frida)

    got, got_instrument = setup_frida_connection("emulator-5554")
    assert got is fake_device
    assert verified["n"] == 1  # connection verified, not silently accepted
    # ADR-0020: this is the one path that talks to the server, so the handshake
    # effect it observed is what the record carries.
    assert "enumerate_processes returned" in got_instrument["handshake"]


def test_setup_frida_connection_carries_a_failed_handshake_on_the_exception(monkeypatch):
    # ADR-0020: a run that dies at the handshake is exactly the run whose
    # instrumentation matters most, so the record rides out on the exception
    # instead of being lost with the local variable.
    from dynamic.device import FridaProvisioningError, setup_frida_connection

    instrument = {"client": "16.7", "server": "16.6",
                  "server_source": "already_running", "handshake": None}

    def boom(self):
        raise RuntimeError("unable to communicate with remote frida-server")

    fake_device = type("F", (), {"enumerate_processes": boom})()
    fake_mgr = type("M", (), {"add_remote_device": lambda self, addr: fake_device})()
    fake_frida = type("FF", (), {"get_device_manager": staticmethod(lambda: fake_mgr)})()
    monkeypatch.setattr("dynamic.device._ensure_frida_server", lambda adb, serial: instrument)
    monkeypatch.setattr("dynamic.device._in_wsl", lambda: True)
    monkeypatch.setattr("dynamic.device._adb_wrapper_path", lambda: "adb")
    monkeypatch.setattr("dynamic.device._start_relay", lambda adb: "172.27.96.1")
    monkeypatch.setattr("dynamic.device.frida", fake_frida)

    with pytest.raises(FridaProvisioningError) as excinfo:
        setup_frida_connection("emulator-5554")
    assert "protocol handshake failed" in str(excinfo.value)
    recorded = excinfo.value.instrument
    assert recorded["server"] == "16.6"  # the mismatch that explains the failure
    assert recorded["handshake"].startswith("failed:")


# ---------------------------------------------------------------------------
# mitmproxy capture helpers (set_http_proxy / clear_http_proxy / adb_reverse /
# _subject_hash_old / push_system_ca / create_mitm_ca) - wrapper-contract tests
# ---------------------------------------------------------------------------


def test_set_http_proxy_issues_exact_settings_command(monkeypatch):
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(subprocess, "run", fake_run)
    device.set_http_proxy("emulator-5554", "127.0.0.1", 8080)
    assert calls[0][:4] == ["adb", "-s", "emulator-5554", "shell"]
    assert calls[0][4:] == ["settings", "put", "global", "http_proxy", "127.0.0.1:8080"]


def test_clear_http_proxy_issues_exact_settings_delete_command(monkeypatch):
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(subprocess, "run", fake_run)
    device.clear_http_proxy("emulator-5554")
    assert calls[0][4:] == ["settings", "delete", "global", "http_proxy"]


def test_adb_reverse_add_and_remove_command_shapes(monkeypatch):
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(subprocess, "run", fake_run)
    device.adb_reverse("emulator-5554", 8080, 8080, add=True)
    device.adb_reverse("emulator-5554", 8080, 8080, add=False)
    assert calls[0][3:] == ["reverse", "tcp:8080", "tcp:8080"]
    assert calls[1][3:] == ["reverse", "--remove", "tcp:8080"]


def test_subject_hash_old_returns_first_token(monkeypatch):
    # _subject_hash_old parses `openssl x509 -subject_hash_old` first stdout
    # token - the authoritative Android system-cert filename component.
    monkeypatch.setattr(subprocess, "run", lambda *a, **k: subprocess.CompletedProcess(
        ["openssl"], 0, stdout="1a2b3c4d\n", stderr=""))
    assert device._subject_hash_old(Path("/fake/cert.pem")) == "1a2b3c4d"


def test_subject_hash_old_raises_when_openssl_produces_no_hash(monkeypatch):
    monkeypatch.setattr(subprocess, "run", lambda *a, **k: subprocess.CompletedProcess(
        ["openssl"], 0, stdout="", stderr=""))
    with pytest.raises(RuntimeError, match="no subject hash"):
        device._subject_hash_old(Path("/fake/cert.pem"))


def test_push_system_ca_issues_push_root_bindmount_cp_chmod_and_returns_system_path(monkeypatch):
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")
    monkeypatch.setattr(device, "_subject_hash_old", lambda cert_path: "1a2b3c4d")
    calls = []

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(subprocess, "run", fake_run)
    cert = Path("/tmp/cert.pem")
    got = device.push_system_ca("emulator-5554", cert)
    assert got == "/system/etc/security/cacerts/1a2b3c4d.0"
    # Exact order: wait-for-device, push (with retry), then adb root, then a
    # single bind-mount shell command that makes the read-only system store
    # writable (no remount, no reboot), then the cp + chmod into the mounted store.
    #
    # SEPARATOR: the product pushes str(cert_path) verbatim, so the expectation
    # is derived the same way rather than hardcoding the POSIX spelling - on
    # Windows str(Path("/tmp/cert.pem")) is "\\tmp\\cert.pem", which is the
    # correct value to compare against. The device-side targets stay POSIX
    # (they are paths on the Android device, not on the host).
    assert calls[0][3:] == ["wait-for-device"]
    assert calls[1][3:] == ["push", str(cert), "/data/local/tmp/1a2b3c4d.0"]
    assert calls[2][3:] == ["root"]
    assert calls[3][0] == "adb"
    assert calls[3][3] == "shell"
    assert "mount --bind /data/local/tmp/cacerts /system/etc/security/cacerts" in calls[3][4]
    assert calls[4][4:] == ["cp", "/data/local/tmp/1a2b3c4d.0", "/system/etc/security/cacerts/1a2b3c4d.0"]
    assert calls[5][4:] == ["chmod", "644", "/system/etc/security/cacerts/1a2b3c4d.0"]


def test_push_system_ca_fails_loudly_when_bind_mount_setup_fails(monkeypatch):
    # The system CA store is on a baked read-only partition; push_system_ca
    # makes it writable via a bind mount of a writable /data/local/tmp staging
    # dir. If that mount fails (e.g. build not rootable), it must raise loudly
    # with the hint (NFR-7), never silently leave the CA uninstalled.
    monkeypatch.setattr(device, "_require_adb", lambda: "adb")
    monkeypatch.setattr(device, "_subject_hash_old", lambda cert_path: "1a2b3c4d")
    state = {"mount": False, "cp": 0}

    def fake_run(cmd, **kwargs):
        text = " ".join(cmd)
        if "mount --bind" in text:
            state["mount"] = True
            raise subprocess.CalledProcessError(
                returncode=1, cmd=cmd, stderr="operation not permitted")
        if "shell cp" in text or text.endswith("cp"):
            state["cp"] += 1
            raise subprocess.CalledProcessError(returncode=1, cmd=cmd, stderr="read-only file system")
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(subprocess, "run", fake_run)
    with pytest.raises(subprocess.CalledProcessError, match="mount"):
        device.push_system_ca("emulator-5554", Path("/tmp/cert.pem"))
    assert state["mount"] is True  # the read-only fixup was attempted
    assert state["cp"] == 0  # the cp never runs if the mount failed


def test_create_mitm_ca_builds_bundle_and_removes_key(tmp_path, monkeypatch):
    # create_mitm_ca: openssl generates key.pem + cert; the CA is deterministic
    # because mitmdump is pointed at this same confdir (self-consistent CA, no
    # silent device/confdir mismatch). Test fakes the openssl subprocess and
    # pre-seeds the two output files it would have written, then asserts the
    # bundle is key+cert and key.pem is removed.
    confdir = tmp_path / "mitm-conf"
    confdir.mkdir(parents=True)

    def fake_run(cmd, **kwargs):
        # Fake openssl writing its two outputs.
        (confdir / "key.pem").write_bytes(b"KEY")
        (confdir / "mitmproxy-ca-cert.pem").write_bytes(b"CERT")
        return subprocess.CompletedProcess(cmd, 0)

    monkeypatch.setattr(subprocess, "run", fake_run)
    cert = device.create_mitm_ca(confdir)
    assert cert == confdir / "mitmproxy-ca-cert.pem"
    assert (confdir / "mitmproxy-ca.pem").read_bytes() == b"KEYCERT"
    assert not (confdir / "key.pem").exists()


def test_create_mitm_ca_reuses_existing_ca_without_running_openssl(tmp_path, monkeypatch):
    # Get-or-create: a confdir that already has the bundle + cert must be reused,
    # NOT regenerated - regenerating every run would make a long-lived mitmdump
    # (which loads its CA once at startup) serve a stale CA while the device is
    # given a fresh one, a silent decryption mismatch. No subprocess.run here.
    confdir = tmp_path / "mitm-conf"
    confdir.mkdir(parents=True)
    (confdir / "mitmproxy-ca.pem").write_bytes(b"BUNDLE")
    (confdir / "mitmproxy-ca-cert.pem").write_bytes(b"CERT")

    def fake_run(cmd, **kwargs):  # must never fire
        raise AssertionError("create_mitm_ca regenerated an existing CA")

    monkeypatch.setattr(subprocess, "run", fake_run)
    cert = device.create_mitm_ca(confdir)
    assert cert == confdir / "mitmproxy-ca-cert.pem"
    assert (confdir / "mitmproxy-ca.pem").read_bytes() == b"BUNDLE"


def test_create_mitm_ca_raises_loudly_when_openssl_fails(tmp_path, monkeypatch):
    monkeypatch.setattr(subprocess, "run", lambda *a, **k: subprocess.CompletedProcess(
        ["openssl"], 1, stderr="bad params"))
    with pytest.raises(RuntimeError, match="failed to generate"):
        device.create_mitm_ca(tmp_path / "mitm-conf")


def _frida_server_fake_run(version_stdout, *, root_line=True, binary_present=True):
    """Build a subprocess.run fake that simulates the adb calls inside
    _ensure_frida_server. `version_stdout` is what `frida-server --version`
    prints on the device; root_line controls whether ps reports a root server."""
    calls = []
    state = {"killed": False}

    def fake_run(cmd, **kwargs):
        calls.append(cmd)
        if "root" in cmd and "shell" not in cmd:
            return subprocess.CompletedProcess(cmd, 0, stdout="restarting adbd as root\n")
        if cmd[-2:] == ["shell", "ps", "-A"] or ("ps" in cmd and "-A" in cmd):
            # DEV5: once the server has been SIGTERM'd, a real device's ps shows
            # it GONE. Model that so the restart's bounded wait-for-gone poll
            # observes the exit in one poll instead of spinning its full timeout.
            if state["killed"]:
                return subprocess.CompletedProcess(cmd, 0, stdout="")
            body = "root   frida-server\n" if root_line else "shell  frida-server\n"
            return subprocess.CompletedProcess(cmd, 0, stdout=body)
        if "--version" in cmd:
            return subprocess.CompletedProcess(cmd, 0, stdout=version_stdout)
        if "pkill" in cmd:
            state["killed"] = True
            return subprocess.CompletedProcess(cmd, 0, stdout="")
        if "ls" in cmd:
            rc = 0 if binary_present else 1
            return subprocess.CompletedProcess(cmd, rc, stdout="frida-server\n")
        if "rm" in cmd:
            return subprocess.CompletedProcess(cmd, 0, stdout="")
        if "push" in cmd:
            return subprocess.CompletedProcess(cmd, 0, stdout="1 file pushed\n")
        if "chmod" in cmd:
            return subprocess.CompletedProcess(cmd, 0, stdout="")
        if "nohup" in cmd:
            return subprocess.CompletedProcess(cmd, 0, stdout="")
        return subprocess.CompletedProcess(cmd, 0, stdout="")

    return fake_run, calls


def test_ensure_frida_server_returns_when_root_server_version_matches(monkeypatch):
    # A root frida-server already running at the venv-matching major.minor must
    # be left alone - no re-push, no restart. This is the happy path that was
    # being broken by the wrong-version server.
    fake_run, calls = _frida_server_fake_run(device._frida_venv_version() + ".9\n")
    monkeypatch.setattr(subprocess, "run", fake_run)

    device._ensure_frida_server("adb", "emulator-5554")

    assert not any("push" in c for c in calls)
    assert not any("nohup" in c for c in calls)


def test_ensure_frida_server_reprovisions_on_version_mismatch(monkeypatch, tmp_path):
    # A root server running the WRONG major.minor (here 17.16 vs venv 16.7)
    # must be killed and the pinned tools/ binary re-pushed+restarted. Without
    # this, the mismatched server sails through and fails later at
    # enumerate_processes with "ensure that major versions match".
    # The pinned binary is gitignored, so point _FRIDA_SERVER_LOCAL at a real
    # temp file to keep this test toolchain-free (the re-push path checks
    # .exists()); the push itself is mocked by _frida_server_fake_run.
    local = tmp_path / "frida-server-16.7.19-x86_64"
    local.write_bytes(b"frida-binary")
    monkeypatch.setattr(device, "_FRIDA_SERVER_LOCAL", local)
    fake_run, calls = _frida_server_fake_run("17.16.4\n")
    monkeypatch.setattr(subprocess, "run", fake_run)

    device._ensure_frida_server("adb", "emulator-5554")

    assert any("pkill" in c for c in calls)
    assert any("push" in c for c in calls)
    assert any("nohup" in c for c in calls)
    # ...even though the binary is already present (present.returncode == 0).
    assert any("ls" in c for c in calls)
