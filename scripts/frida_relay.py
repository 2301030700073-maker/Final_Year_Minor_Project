"""Frida TCP relay for WSL2 → ADB bridge.

Runs on Windows (via ``python`` from WSL) to bridge the gap between WSL2
and the Windows ADB forward listener.

Usage:
    python frida_relay.py <listen_port> <forward_host> <forward_port>

The relay listens on 0.0.0.0 (reachable from WSL) and forwards to
a Windows-local address (where ``adb forward`` creates its listener).

Start ADB forward first:
    adb forward tcp:27044 tcp:27042
Then start this relay:
    python frida_relay.py 27043 127.0.0.1 27044
Then from WSL, connect Frida to Windows-IP:27043.
"""

import socket
import sys
import threading


def relay(src, dst):
    """Bidirectional copy between two sockets."""
    try:
        while True:
            data = src.recv(65536)
            if not data:
                break
            dst.sendall(data)
    except (ConnectionResetError, BrokenPipeError, OSError):
        pass
    finally:
        try:
            src.close()
        except OSError:
            pass
        try:
            dst.close()
        except OSError:
            pass


def handle_client(client, forward_host, forward_port):
    """Relay one client connection to the forward target."""
    target = None
    try:
        target = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        target.connect((forward_host, forward_port))
        print(f"relay: target connected", flush=True)
        t1 = threading.Thread(target=relay, args=(client, target), daemon=True)
        t2 = threading.Thread(target=relay, args=(target, client), daemon=True)
        t1.start()
        t2.start()
        t1.join()
        t2.join()
    except Exception as e:
        print(f"relay: error: {e}", flush=True)
    finally:
        try:
            client.close()
        except OSError:
            pass
        if target is not None:
            try:
                target.close()
            except OSError:
                pass


def main():
    listen_port = int(sys.argv[1])
    forward_host = sys.argv[2]
    forward_port = int(sys.argv[3])

    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server.bind(("0.0.0.0", listen_port))
    server.listen(10)

    print(f"relay: listening on 0.0.0.0:{listen_port}", flush=True)
    print(f"relay: forwarding to {forward_host}:{forward_port}", flush=True)

    while True:
        conn, addr = server.accept()
        print(f"relay: client {addr}", flush=True)
        t = threading.Thread(
            target=handle_client, args=(conn, forward_host, forward_port), daemon=True,
        )
        t.start()


if __name__ == "__main__":
    main()
