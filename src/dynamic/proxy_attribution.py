"""Attribute traffic captured through the proxy to the app that produced it.

The capture proxy is installed device-wide (as the device's HTTP proxy), and the
mitmproxy addon records host/scheme/method/path/status with **no client
identity** - so nothing in the capture log says which app opened a flow. That
bound is `project-limitations.md` D4, and it is why a captured flow could be
read as the target app's when it was a Chromium service's.

This module answers the question the log cannot, from the device's own kernel
socket table instead: `/proc/net/tcp` carries a **uid per socket**, and a socket
whose REMOTE port is the capture proxy's is a connection someone made *to that
proxy*. The uid on that row is who made it.

The result is deliberately **uid-level, not flow-level**. It answers "did the
app itself reach the capture proxy in this window?" - which is the question a
pinning claim actually rests on - rather than joining individual flows to
individual sockets, which a short-lived socket would defeat and which the
device-wide proxy's port translation makes unreliable anyway.

Every function here is pure except the three that read the device, and those
report `measured` so an unreadable table becomes a recorded not-measured rather
than an empty set that reads as "the app stayed away".
"""

from __future__ import annotations

import subprocess
import time

from dynamic import device


def port_of(hex_address: str) -> int:
    """The port half of a /proc/net address (`0100007F:1F91` -> 8081).

    The address is hex regardless of family, and IPv6 rows carry a 32-hex-digit
    group instead of a dotted quad - both end in `:PORT`, so only the suffix is
    read.
    """
    return int(hex_address.rsplit(":", 1)[1], 16)


def parse_proc_net_tcp(text: str) -> list[dict]:
    """Parse /proc/net/tcp (or tcp6) into socket rows.

    The kernel's seq_file columns are positional and fixed:

        sl  local_address rem_address  st tx:rx tr:tm retrnsmt uid timeout inode

    Only the two ports, the state and the uid are kept - the rest (queues,
    timers, inode) is not evidence about who owns the socket. A row that does
    not parse is SKIPPED, never repaired: a misread uid would attribute another
    process's traffic to the app.
    """
    rows: list[dict] = []
    for line in text.splitlines():
        parts = line.split()
        # The header ("  sl  local_address ...") has no `N:` first token, and any
        # short line is not a socket row.
        if len(parts) < 8 or not parts[0].endswith(":"):
            continue
        try:
            rows.append({
                "local_port": port_of(parts[1]),
                "remote_port": port_of(parts[2]),
                "state": parts[3],
                "uid": int(parts[7]),
            })
        except (ValueError, IndexError):
            continue
    return rows


def proxy_client_uids(rows: list[dict], proxy_port: int) -> set[int]:
    """uids owning a socket whose REMOTE port is the capture proxy's.

    State is deliberately NOT filtered. A `CLOSE_WAIT` row is still a completed
    connection to the proxy, and requiring `ESTABLISHED` would miss the ordinary
    case: a flow that finished before the sample was taken. The question is
    whether the app EVER reached the proxy, and a closed socket answers it.
    """
    return {r["uid"] for r in rows if r["remote_port"] == proxy_port}


def parse_package_uids(pm_list_output: str) -> dict[int, list[str]]:
    """`pm list packages -U` output -> {uid: [package, ...]}.

    The value is a LIST because a uid can carry several packages - any app pair
    declaring the same `android:sharedUserId` shares one. A caller that assumed
    one package per uid would report a shared uid's traffic as unambiguously the
    target's.
    """
    out: dict[int, list[str]] = {}
    for line in pm_list_output.splitlines():
        line = line.strip()
        if not line.startswith("package:") or " uid:" not in line:
            continue
        name, _, uid_s = line[len("package:"):].rpartition(" uid:")
        try:
            uid = int(uid_s.strip())
        except ValueError:
            continue
        if name.strip():
            out.setdefault(uid, []).append(name.strip())
    return out


def sample_proxy_clients(serial: str, proxy_port: int, adb: str | None = None) -> dict:
    """One device-side read of the socket table.

    Both families are read; a failure of one is recorded and the other still
    contributes, since an IPv4-only kernel serves no /proc/net/tcp6 and that is
    not a fault. `measured` is False only when NEITHER could be read - a fact
    about the probe, never evidence that the app stayed off the proxy.
    """
    adb = adb or device._require_adb()
    uids: set[int] = set()
    errors: list[str] = []
    read = 0
    for path in ("/proc/net/tcp", "/proc/net/tcp6"):
        try:
            res = subprocess.run([adb, "-s", serial, "shell", "cat", path],
                                 capture_output=True, text=True, timeout=15)
        except (subprocess.SubprocessError, OSError) as e:
            errors.append(f"{path}: {e}")
            continue
        if res.returncode != 0 or not res.stdout.strip():
            errors.append(f"{path}: not readable (rc={res.returncode})")
            continue
        read += 1
        uids |= proxy_client_uids(parse_proc_net_tcp(res.stdout), proxy_port)
    return {"uids": uids, "measured": read > 0, "paths_read": read, "errors": errors}


def sample_proxy_clients_during(serial: str, proxy_port: int, seconds: float,
                                interval: float = 2.0, adb: str | None = None) -> dict:
    """Sample the socket table repeatedly across the capture window.

    One read at the end of the window can miss the very connection in question: a
    socket to the proxy may live for a fraction of a second, and a pinned app's
    handshake is exactly that short. Samples ACCUMULATE, so a uid seen in any
    sample is reported - the question is whether the app ever reached the proxy,
    not whether it was still connected when the last read happened.
    """
    adb = adb or device._require_adb()
    uids: set[int] = set()
    samples = 0
    taken = 0
    errors: list[str] = []
    deadline = time.monotonic() + max(0.0, seconds)
    while True:
        got = sample_proxy_clients(serial, proxy_port, adb=adb)
        samples += 1
        if got["measured"]:
            taken += 1
            uids |= got["uids"]
        errors.extend(got["errors"])
        remaining = deadline - time.monotonic()
        if remaining <= 0:
            break
        time.sleep(min(interval, remaining))
    return {"uids": uids, "samples": samples, "samples_measured": taken,
            "measured": taken > 0, "errors": errors}


def package_uid_map(serial: str, adb: str | None = None) -> dict | None:
    """uid -> packages, from the device's own package manager.

    None means the list could not be read, so the target's uid is unknown and no
    verdict can be reached about it.
    """
    adb = adb or device._require_adb()
    try:
        res = subprocess.run([adb, "-s", serial, "shell", "pm", "list", "packages", "-U"],
                             capture_output=True, text=True, timeout=30)
    except (subprocess.SubprocessError, OSError):
        return None
    if res.returncode != 0:
        return None
    mapping = parse_package_uids(res.stdout)
    return mapping or None


def attribute_proxy_clients(sampled: dict | None, uid_packages: dict | None,
                            package: str, proxy_port: int | None = None,
                            target_running: bool | None = None) -> dict:
    """Did THIS app itself reach the capture proxy?

    `reached` is True (a uid carrying this package was seen with a socket to the
    proxy), False (the target's uid was resolved and no sample showed it), or
    None (not measured - the table could not be read, or the package's uid could
    not be resolved). It is never False on unmeasured evidence, because False is
    the assertion that the app stayed away.

    `shared_uid` names packages sharing the target's uid. They are why a True is
    uid-level and not package-level: a socket from a shared uid is not proof that
    THIS package opened it, and a caller that hid that would be upgrading
    uid-level evidence to a package-level claim.

    `target_running` is the premise a False rests on: was the app running during
    the window at all? A False says "this app stayed away from the proxy", and an
    app that was never started cannot stay away from anything - it makes no
    requests for a reason that has nothing to do with the proxy. Measured on the
    reference emulator: a launch form that started nothing still exited 0, and
    the resulting capture was reported as the app choosing not to use the proxy.
    So a False requires `target_running is True`; False and unmeasured liveness
    both yield None (not measured). A True needs no such premise - a socket from
    the target's uid is positive proof the process existed.
    """
    if sampled is None or not sampled.get("measured"):
        return {"reached": None, "uid": None, "shared_uid": [], "proxy_port": proxy_port,
                "reason": ("the device's socket table could not be read, so whether "
                           f"{package} reached the capture proxy was not measured")}
    if uid_packages is None:
        return {"reached": None, "uid": None, "shared_uid": [], "proxy_port": proxy_port,
                "reason": (f"the device's package list could not be read, so {package}'s uid "
                           "is unknown and whether it reached the proxy was not measured")}
    target_uids = {u for u, pkgs in uid_packages.items() if package in pkgs}
    if not target_uids:
        return {"reached": None, "uid": None, "shared_uid": [], "proxy_port": proxy_port,
                "reason": (f"{package} has no uid in the device's package list, so whether it "
                           "reached the proxy was not measured")}
    hit = target_uids & set(sampled.get("uids") or ())
    uid = sorted(hit)[0] if hit else sorted(target_uids)[0]
    shared = sorted(p for p in uid_packages.get(uid, []) if p != package)
    shared_note = (f"; uid {uid} is shared with {', '.join(shared)}, so this is uid-level "
                   "evidence and not proof that this package opened it") if shared else ""
    if hit:
        return {"reached": True, "uid": uid, "shared_uid": shared, "proxy_port": proxy_port,
                "reason": f"uid {uid} held a socket to the capture proxy{shared_note}"}
    if target_running is not True:
        why = (
            "was not running during the capture window, so it made no requests for a "
            "reason that has nothing to do with the proxy"
            if target_running is False else
            "could not be measured as running during the capture window, so its absence "
            "from the socket table is not evidence that it stayed away"
        )
        return {"reached": None, "uid": uid, "shared_uid": shared, "proxy_port": proxy_port,
                "reason": (f"{package} (uid {uid}) {why} - whether it reached the capture "
                           "proxy was therefore not measured")}
    return {"reached": False, "uid": uid, "shared_uid": shared, "proxy_port": proxy_port,
            "reason": (f"uid {uid} ({package}) held no socket to the capture proxy in any of "
                       f"{sampled.get('samples_measured')} readable sample(s) of the window"
                       + (f"; uid {uid} is shared with {', '.join(shared)}" if shared else ""))}
