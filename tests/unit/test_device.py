import pytest

from dynamic.device import _find_windows_user, _wait_for_relay


def test_find_windows_user_fails_loudly_when_not_under_wsl():
    # This dev machine is plain Windows (Git Bash), not WSL2, so /mnt/c/Users
    # genuinely doesn't exist here - exercising the real "not found" path,
    # not a mock. Locks in that this raises instead of silently returning a
    # hardcoded/guessed username (the bug this replaced).
    with pytest.raises(RuntimeError, match="mnt/c/Users"):
        _find_windows_user()


def test_wait_for_relay_raises_loudly_on_timeout_rather_than_hanging_or_succeeding_silently():
    with pytest.raises(RuntimeError, match="never started listening"):
        _wait_for_relay("127.0.0.1", 1, timeout=0.5)  # port 1 - nothing listens there
