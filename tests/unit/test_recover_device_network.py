"""Tests for the standalone device-network recovery (cli `recover` / recover_device_network).

The recovery must restore a device stranded by an interrupted capture run WITHOUT
relying on a full capture run, and must NEVER swallow a teardown failure (the same
principle-3 honesty the live _cleanup enforces).
"""
from unittest.mock import patch, MagicMock

from dynamic import mitmproxy_capture as mc


def _fake_run(returncode=0, stdout=""):
    m = MagicMock()
    m.returncode = returncode
    m.stdout = stdout
    return m


def _issued(cmd_substr, run_calls):
    return any(
        "reverse" in (c.args[0] if c.args else []) and "--remove-all" in c.args[0]
        for c in run_calls
    )


def test_recover_clears_proxy_and_removes_all_reverse_when_not_wsl2():
    with patch.object(mc.device, "_require_adb", return_value="adb"), \
         patch.object(mc.device, "clear_http_proxy") as clear, \
         patch.object(mc.device, "set_http_proxy") as setp, \
         patch.object(mc, "_on_wsl2", return_value=False), \
         patch.object(mc, "_stop_windows_mitmdump") as stop, \
         patch("dynamic.mitmproxy_capture.subprocess.run",
               return_value=_fake_run()) as run:
        status = mc.recover_device_network("emulator-5554")
        clear.assert_called_once_with("emulator-5554")
        setp.assert_not_called()
        assert _issued("reverse", run.call_args_list)
        stop.assert_not_called()
        assert status["proxy"] == "cleared"
        assert status["reverse"] is True
        assert status["warnings"] == []


def test_recover_restores_proxy_when_restore_port_given():
    with patch.object(mc.device, "_require_adb", return_value="adb"), \
         patch.object(mc.device, "clear_http_proxy") as clear, \
         patch.object(mc.device, "set_http_proxy") as setp, \
         patch.object(mc, "_on_wsl2", return_value=False), \
         patch.object(mc, "_stop_windows_mitmdump") as stop, \
         patch("dynamic.mitmproxy_capture.subprocess.run",
               return_value=_fake_run()):
        status = mc.recover_device_network("emulator-5554", restore_port=8081)
        setp.assert_called_once_with("emulator-5554", "127.0.0.1", 8081)
        clear.assert_not_called()
        assert status["proxy"] == "restored:127.0.0.1:8081"
        stop.assert_not_called()


def test_recover_stops_windows_mitmdump_on_wsl2():
    with patch.object(mc.device, "_require_adb", return_value="adb"), \
         patch.object(mc.device, "clear_http_proxy"), \
         patch.object(mc, "_on_wsl2", return_value=True), \
         patch.object(mc, "_stop_windows_mitmdump", return_value=None) as stop, \
         patch("dynamic.mitmproxy_capture.subprocess.run",
               return_value=_fake_run()):
        status = mc.recover_device_network("emulator-5554")
        stop.assert_called_once_with(None)
        assert status["mitmdump"] is True


def test_recover_collects_warnings_instead_of_swallowing():
    with patch.object(mc.device, "_require_adb", return_value="adb"), \
         patch.object(mc.device, "clear_http_proxy",
                     side_effect=RuntimeError("adb down")), \
         patch.object(mc, "_on_wsl2", return_value=False), \
         patch.object(mc, "_stop_windows_mitmdump"), \
         patch("dynamic.mitmproxy_capture.subprocess.run",
               return_value=_fake_run()):
        status = mc.recover_device_network("emulator-5554")
        assert any("device proxy restore failed" in w for w in status["warnings"])
