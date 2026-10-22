#!/usr/bin/env bash
# Per-target runner for the realworld sweep: the default CLI invocation plus the
# structured step trace (--debug). Kept IN THE REPO (not /tmp) so a sweep launched
# later does not fail on a missing wrapper - the 2026-10-22 04:08 run did exactly
# that (rc 127, every target, "timeout: failed to run command '/tmp/sweep_one.sh'").
#
# The sweep invokes this as: <runner> --apk <apk> --justification ... --capture-traffic
# --force-dynamic --device <serial>. We forward those and append --debug.
set -u
exec env PYTHONPATH=src .venv/bin/python3 src/cli.py run "$@" --debug
