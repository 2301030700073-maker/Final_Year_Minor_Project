"""The environment pre-flight must not report a healthy relay as broken.

`check_environment.py` runs its WSL2 Frida probe in a subprocess (`uv run python
-c ...`), so no test in this suite ever executed the probe itself - and the probe
called `.enumerate_processes()` on the value `setup_frida_connection` returns.
That value is `(device, instrument)` - the instrumentation record ADR-0020
requires the caller to carry - not a device. On WSL2 the check therefore failed
by construction, whatever the relay's real state: an operator-facing tool
reporting an environment fault that was its own, and one that also masked the
genuine relay failures it exists to catch (the failing output was a
`[:60]`-truncated traceback naming the AttributeError, not the relay).

The probe text is exec'd here against a stub of the real return contract, so this
test fails on exactly the defect it describes rather than on the snippet's
wording.
"""

from __future__ import annotations

import re
import sys
import types
from pathlib import Path

_REPO = Path(__file__).resolve().parents[2]

# The three adjacent literals that make up the probe: the import, the connect,
# and the read. Matched as a triple so a rewrite that drops a piece is a loud
# failure here rather than a silently untested snippet.
_PROBE = re.compile(
    r'"from dynamic\.device import setup_frida_connection, discover_device; "\s*'
    r'"([^"]+)"\s*'
    r'"([^"]+)"'
)


def test_the_relay_probe_handles_the_real_return_shape(monkeypatch):
    src = (_REPO / "scripts" / "check_environment.py").read_text()
    hits = _PROBE.findall(src)
    assert hits, "the relay probe snippet changed shape - update this test"

    class _Device:
        id = "emulator-5554"

        def enumerate_processes(self):
            seen.append("enumerated")
            return [1, 2, 3]

    seen: list[str] = []
    fake = types.ModuleType("dynamic.device")
    # The real contract, from dynamic/device.py:451: a TUPLE. A probe that binds
    # it to one name raises AttributeError on the next line.
    fake.setup_frida_connection = lambda serial: (_Device(), {"connected": True})
    fake.discover_device = lambda: "emulator-5554"
    monkeypatch.setitem(sys.modules, "dynamic.device", fake)

    for g1, g2 in hits:
        exec(
            "from dynamic.device import setup_frida_connection, discover_device; " + g1 + g2,
            {},
        )
    assert seen, "the probe never enumerated processes on the device"


def test_no_probe_site_binds_the_connection_result_to_a_single_name():
    # The generalisation of the above: the exec test only covers the snippet
    # shapes it can find, so the invariant is stated over the whole file.
    src = (_REPO / "scripts" / "check_environment.py").read_text()
    assert "d=setup_frida_connection(" not in src
    assert src.count("d,_i=setup_frida_connection(") == 2
