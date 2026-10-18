"""Regression tests for the native root exec-blocking recipe
(dynamic.synthesizer._native_root_exec_blocking).

The generated Frida hook blocks a native root check that shells out to a root
binary through libc execve(path,...) or system(cmd). Two matchers decide that:
isRootBin(basename) for execve, and isRootExecStr(shellString) for system().
Both must cover the SAME set of binaries - previously isRootExecStr enumerated
only a subset (all forms for `su`, just the bare form for magisk/ksu, and
nothing for apatch), so an absolute-path magisk shell-out or any apatch shell-out
slipped the system() block while the identical execve form was blocked.

Pure string generator - no Frida, no device. We assert the generated JS derives
both matchers from one shared ROOT_BINS array so they cannot drift apart."""

from dynamic.synthesizer import _native_root_exec_blocking

ROOT_BINS = ["su", "magisk", "ksu", "apatch"]


def test_exec_blocking_root_bin_set_is_single_source_of_truth():
    src = _native_root_exec_blocking()
    # One list feeds both matchers, so the system() check can never cover fewer
    # binaries than the execve basename check.
    assert "var ROOT_BINS = ['su', 'magisk', 'ksu', 'apatch'];" in src
    assert "function isRootBin(b) { return ROOT_BINS.indexOf(b) !== -1; }" in src


def test_exec_blocking_system_matcher_iterates_the_shared_set():
    src = _native_root_exec_blocking()
    # isRootExecStr loops ROOT_BINS rather than hand-enumerating per binary.
    assert "for (var i = 0; i < ROOT_BINS.length; i++) {" in src
    assert "var b = ROOT_BINS[i];" in src
    # Each of the five shell-out forms is built for EVERY binary in the loop:
    # bare name, absolute path, and the which / command -v / type probe idioms.
    assert "t.indexOf(' ' + b + ' ')" in src
    assert "t.indexOf('/' + b + ' ')" in src
    assert "t.indexOf('which ' + b)" in src
    assert "t.indexOf('command -v ' + b)" in src
    assert "t.indexOf('type ' + b)" in src


def test_exec_blocking_every_root_bin_is_reachable_in_the_system_path():
    # Regression: apatch was in isRootBin (execve) but absent from the old
    # isRootExecStr, and magisk/ksu had only the bare form. All four must now be
    # in the shared set the system() matcher iterates.
    src = _native_root_exec_blocking()
    root_bins_line = next(l for l in src.splitlines() if "var ROOT_BINS =" in l)
    for b in ROOT_BINS:
        assert f"'{b}'" in root_bins_line, b


def test_exec_blocking_no_su_only_literals_survive_outside_the_loop():
    # The old code hand-wrote su-only literals (' su ', 'type su', ...) that
    # covered su more thoroughly than the other binaries. The loop-based form
    # must not contain those per-binary literals - their presence would mean the
    # asymmetry is back.
    src = _native_root_exec_blocking()
    assert "t.indexOf(' su ')" not in src
    assert "t.indexOf('/su ')" not in src
    assert "t.indexOf('type su')" not in src
    assert "t.indexOf('which magisk')" not in src


# --- M4: the execve block must land BEFORE the syscall -----------------------
# execve does not return on success (it replaces the image, or fails with -1), so
# an onLeave `ret.replace(ptr(-1))` is dead code: the success case never fires it
# and the failure case is already -1. The block has to change the call on entry.

def _execve_attach_block(src: str) -> str:
    start = src.index("var ev = Module.findExportByName")
    end = src.index("var sy = Module.findExportByName")
    return src[start:end]


def test_execve_block_is_installed_on_entry_not_on_leave():
    src = _native_root_exec_blocking()
    block = _execve_attach_block(src)
    assert "onEnter: function (args)" in block
    assert "onLeave: function" not in block, (
        "the execve block still relies on onLeave, which execve never reaches on "
        "success - the block would be dead code"
    )
    # It must redirect the path BEFORE the syscall so the kernel fails the exec.
    assert "args[0] = BLOCKED_EXEC;" in block
    assert "Memory.allocUtf8String('/nonexistent/.frida-blocked-exec')" in block
    # ...and still emit the probeHit that confirms the app's own check ran.
    assert "send({probeHit: 'root', path: p})" in block


def test_execve_block_still_matches_only_root_binaries():
    src = _native_root_exec_blocking()
    block = _execve_attach_block(src)
    assert "isRootBin(nbasename(p))" in block
    # a benign exec must reach the real syscall untouched: the rewrite is inside
    # the root-binary branch only
    guard = block.index("isRootBin(nbasename(p))")
    assert block.index("args[0] = BLOCKED_EXEC;") > guard


def test_system_block_keeps_its_on_leave_override():
    # system() DOES return, so its onLeave -1 override is correct and must stay.
    src = _native_root_exec_blocking()
    system_part = src[src.index("var sy = Module.findExportByName"):]
    assert "onLeave: function (ret)" in system_part
    assert "ret.replace(ptr(-1))" in system_part
