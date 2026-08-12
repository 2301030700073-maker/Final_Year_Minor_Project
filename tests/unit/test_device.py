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
