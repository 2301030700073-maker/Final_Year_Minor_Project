import contextlib
import subprocess

import pytest

from dynamic import device
from dynamic.device import _find_windows_user, _wait_for_relay


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
        raise AssertionError(f"ls/start must NOT run: {cmd}")
    monkeypatch.setattr(subprocess, "run", fake_run)
    _ensure_frida_server("adb", "emulator-5554")
    assert len(calls) == 2  # adb root + ps probe only, no ls/start
    assert calls[0][-1] == "root"
    assert calls[1][-2:] == ["ps", "-A"]


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
    assert seq["n"] == 5  # root + ps + pkill + ls + start


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
    assert seq["n"] == 4  # root + ps + ls + start all ran


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


def test_ensure_frida_server_fails_loudly_when_binary_missing(monkeypatch):
    # _ensure_frida_server: a MISSING binary fails loudly with the exact
    # push/run commands, never a silent hang (principle 3). Had zero coverage.
    from dynamic.device import _ensure_frida_server
    def fake_run(cmd, **kw):
        if cmd[-1] == "root":
            return subprocess.CompletedProcess(cmd, 0, stdout="restarting adbd as root\n", stderr="")
        if cmd[-2:] == ["ps", "-A"]:
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")
        return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="ls: not found")
    monkeypatch.setattr(subprocess, "run", fake_run)
    with pytest.raises(RuntimeError, match="frida-server binary not found"):
        _ensure_frida_server("adb", "emulator-5554")


def test_setup_frida_connection_native_path_delegates_to_get_device(monkeypatch):
    # setup_frida_connection: on non-WSL it delegates straight to frida.get_device
    # (no relay), after ensuring frida-server is running. The transport-selection
    # contract (WSL2 -> relay, native -> direct) must be pinned. Had zero coverage.
    import frida
    from dynamic.device import setup_frida_connection

    ensured = {"n": 0}
    monkeypatch.setattr("dynamic.device._ensure_frida_server", lambda adb, serial: ensured.__setitem__("n", 1))
    monkeypatch.setattr("dynamic.device._in_wsl", lambda: False)
    fake = object()
    monkeypatch.setattr(frida, "get_device", lambda serial, timeout=10: fake)

    got = setup_frida_connection("emulator-5554")
    assert got is fake
    assert ensured["n"] == 1  # the server guard ran before connecting


def test_setup_frida_connection_wsl_path_uses_relay(monkeypatch):
    # setup_frida_connection: on WSL2 it starts the Windows relay and connects
    # via add_remote_device(win_ip:port), then verifies with enumerate_processes
    # (the dead-server guard is what prevents the silent hang). Had zero coverage.
    from dynamic.device import setup_frida_connection

    verified = {"n": 0}
    fake_device = type("F", (), {"enumerate_processes": lambda self: verified.__setitem__("n", 1)})()
    fake_mgr = type("M", (), {"add_remote_device": lambda self, addr: fake_device})()
    fake_frida = type("FF", (), {"get_device_manager": staticmethod(lambda: fake_mgr)})()

    monkeypatch.setattr("dynamic.device._ensure_frida_server", lambda adb, serial: None)
    monkeypatch.setattr("dynamic.device._in_wsl", lambda: True)
    monkeypatch.setattr("dynamic.device._adb_wrapper_path", lambda: "adb")
    monkeypatch.setattr("dynamic.device._start_relay", lambda adb: "172.27.96.1")
    monkeypatch.setattr("dynamic.device.frida", fake_frida)

    got = setup_frida_connection("emulator-5554")
    assert got is fake_device
    assert verified["n"] == 1  # connection verified, not silently accepted
