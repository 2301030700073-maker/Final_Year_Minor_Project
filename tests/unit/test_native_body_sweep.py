"""Instruction-level body sweep: encoding selection, resync, and the honesty gate
on `body_scanned` (2026-09-04).

Two defects are pinned here, both found by measuring the real corpus rather than
reading the code:

1. `_recover_body_calls` mapped EM_ARM to CS_MODE_ARM, but the NDK builds
   armeabi-v7a as Thumb-2. Disassembling Thumb-2 in ARM mode decodes almost
   nothing, so 43 of 120 sampled corpus libs examined 0.0-2.5% of their
   executable bytes. EM_MIPS was not mapped at all, so every mips .so was skipped
   outright - which, through _min_coverage over ABIs, held an entire APK's native
   surface at `partial`.
2. Worse than either miss: the function returned `scanned=True` regardless. Since
   _lib_coverage promotes a stripped-but-body_scanned lib to `fully_analyzed`, and
   that is what licenses a confident negative, the pipeline was certifying libs it
   had not read. `scanned` is now gated on the decoded-byte ratio.
"""
from __future__ import annotations

import pytest

from static.native import (
    _BRANCH_MNEMONICS,
    _MIN_DECODE_RATIO,
    _MODE_PROBE_BYTES,
    _SWEEP_WINDOW_BYTES,
    _branch_target,
    _cs_candidates,
    _linear_sweep,
    _pick_mode,
)

capstone = pytest.importorskip("capstone")

BASE = 0x1000
# AArch64 is used for the sweep tests: fixed 4-byte instructions make the decoded-
# byte accounting exact. Every constant is asserted against capstone in
# test_fixture_bytes_are_what_these_tests_assume, so a capstone upgrade that changed
# any of them fails loudly instead of leaving the rest of this file vacuous.
NOP = bytes.fromhex("1f2003d5")   # nop
BL = bytes.fromhex("04000094")    # bl #<own address + 0x10>
BAD = bytes.fromhex("ffffffff")   # capstone decodes nothing at all here


def _a64():
    return capstone.Cs(capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM)


def test_fixture_bytes_are_what_these_tests_assume():
    md = _a64()
    assert [(a, s, m, o) for a, s, m, o in md.disasm_lite(NOP, BASE)] == [
        (BASE, 4, "nop", "")
    ]
    assert [(a, s, m, o) for a, s, m, o in md.disasm_lite(BL, BASE)] == [
        (BASE, 4, "bl", f"#{hex(BASE + 0x10)}")
    ]
    assert list(md.disasm_lite(BAD, BASE)) == [], "BAD must be undecodable"


# --- the resync: bytes after an undecodable region are still examined ----------

def test_sweep_decodes_every_byte_of_pure_code():
    data = NOP * 64
    decoded, targets = _linear_sweep(_a64(), data, BASE, 4)
    assert decoded == len(data)
    assert targets == set()


def test_sweep_recovers_direct_branch_target():
    data = NOP + NOP + BL
    decoded, targets = _linear_sweep(_a64(), data, BASE, 4)
    assert decoded == len(data)
    assert targets == {BASE + 8 + 0x10}


def test_sweep_resumes_after_an_undecodable_region():
    """The regression this fix exists for. capstone's generator stops at the first
    byte it cannot decode, so without the resync everything past the first literal
    pool or jump table goes unexamined."""
    data = BL + BAD * 4 + BL
    decoded, targets = _linear_sweep(_a64(), data, BASE, 4)
    second_bl_addr = BASE + len(BL) + 4 * len(BAD)
    assert targets == {BASE + 0x10, second_bl_addr + 0x10}
    # only the two real instructions count as decoded - the undecodable bytes must
    # not be credited, or the ratio gate below would be meaningless
    assert decoded == 2 * len(BL)


def test_naive_sweep_would_have_missed_it():
    """Pins the old behaviour, so this file documents a real difference rather than
    asserting a property that held all along."""
    data = BL + BAD * 4 + BL
    naive = {a for a, _, m, _ in _a64().disasm_lite(data, BASE) if m == "bl"}
    assert naive == {BASE}, "plain disasm stops at the undecodable region"


def test_sweep_terminates_on_all_garbage():
    decoded, targets = _linear_sweep(_a64(), BAD * 256, BASE, 4)
    assert (decoded, targets) == (0, set())


def test_sweep_crosses_its_own_window_boundary():
    """The window is an internal performance bound (64 KiB per capstone call), not a
    limit on how much of a section is examined."""
    data = NOP * (_SWEEP_WINDOW_BYTES // len(NOP) + 3)
    assert len(data) > _SWEEP_WINDOW_BYTES
    decoded, _ = _linear_sweep(_a64(), data, BASE, 4)
    assert decoded == len(data)


# --- direct vs indirect branch operands ---------------------------------------

@pytest.mark.parametrize(
    ("op_str", "expected"),
    [
        ("#0x1010", 0x1010),      # ARM/ARM64 direct
        ("0x1010", 0x1010),       # x86/MIPS direct
        ("4096", 4096),           # bare decimal
        ("  #0x20  ", 0x20),      # capstone pads some operands
        ("lr", None),             # bx lr
        ("x8", None),             # br x8
        ("rax", None),            # call rax
        ("$t9", None),            # MIPS jalr $t9
        ("qword ptr [rip + 0x8]", None),
        ("r0, #0x10", None),      # two operands: never a branch, must not parse
        ("", None),
    ],
)
def test_branch_target_accepts_only_absolute_immediates(op_str, expected):
    assert _branch_target(op_str) is expected if expected is None else _branch_target(op_str) == expected


def test_branch_mnemonics_cover_every_disassembled_arch():
    for mnemonic in ("bl", "blx", "b", "call", "jmp"):
        assert mnemonic in _BRANCH_MNEMONICS
    for mnemonic in ("jal", "bal", "j"):
        assert mnemonic in _BRANCH_MNEMONICS, "MIPS immediate-target forms"


# --- encoding selection --------------------------------------------------------

def test_arm32_offers_thumb_first_then_arm():
    """armeabi-v7a is Thumb-2 in practice, so Thumb leads - but ARM-mode armeabi
    libs exist, so both stay candidates and _pick_mode decides by measurement."""
    cands = _cs_candidates("EM_ARM", 32, True)
    assert len(cands) == 2
    assert cands[0] == (capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB, 2)
    assert cands[1] == (capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM, 4)


@pytest.mark.parametrize(
    ("machine", "elfclass", "expected"),
    [
        ("EM_AARCH64", 64, (capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM, 4)),
        ("EM_386", 32, (capstone.CS_ARCH_X86, capstone.CS_MODE_32, 1)),
        ("EM_X86_64", 64, (capstone.CS_ARCH_X86, capstone.CS_MODE_64, 1)),
        ("EM_MIPS", 32, (capstone.CS_ARCH_MIPS, capstone.CS_MODE_MIPS32, 4)),
        ("EM_MIPS", 64, (capstone.CS_ARCH_MIPS, capstone.CS_MODE_MIPS64, 4)),
    ],
)
def test_unambiguous_machines_yield_exactly_one_candidate(machine, elfclass, expected):
    assert _cs_candidates(machine, elfclass, True) == [expected]


def test_mips_endianness_comes_from_the_elf_not_an_assumption():
    (_, little_mode, _), = _cs_candidates("EM_MIPS", 32, True)
    (_, big_mode, _), = _cs_candidates("EM_MIPS", 32, False)
    assert not little_mode & capstone.CS_MODE_BIG_ENDIAN
    assert big_mode & capstone.CS_MODE_BIG_ENDIAN
    assert big_mode & capstone.CS_MODE_MIPS32


def test_mips_was_the_arch_that_used_to_be_skipped_entirely():
    """Before 2026-09-04 EM_MIPS had no entry, so _recover_body_calls returned
    (False, []) for every mips .so and _min_coverage over ABIs pinned the whole
    native surface of an otherwise fully-scanned APK to `partial`."""
    assert _cs_candidates("EM_MIPS", 32, True) != []


def test_unknown_machine_yields_no_candidates():
    """An arch we cannot disassemble must produce "not recovered", never a claim of
    absence - the caller turns an empty list into scanned=False."""
    assert _cs_candidates("EM_RISCV", 64, True) == []
    assert _cs_candidates("", 32, True) == []


def test_pick_mode_is_a_noop_for_a_single_candidate():
    only = _cs_candidates("EM_AARCH64", 64, True)
    assert _pick_mode(only, NOP * 16, BASE) == only[0]


def test_pick_mode_selects_the_encoding_that_decodes_more():
    """Selection is by measurement, not by list order: the winning candidate here is
    the SECOND one. ARM32 `mov r0, r0` words are undecodable as AArch64 (measured
    0.000) and fully decodable as Thumb (1.000), which is the same shape as the real
    armeabi-v7a case this mechanism fixes (Thumb 0.996 vs ARM 0.750 on
    libhermes.so)."""
    a64 = (capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM, 4)
    thumb = (capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB, 2)
    data = bytes.fromhex("0000a0e1") * 64
    assert _linear_sweep(capstone.Cs(*a64[:2]), data, BASE, 4)[0] == 0, "precondition"
    assert _pick_mode([a64, thumb], data, BASE) == thumb


def test_pick_mode_tie_breaks_on_candidate_order():
    """Honest bound on the probe: a 16-bit or variable-length ISA decodes almost any
    byte pattern, so the ratio only separates encodings on real compiled code, where
    wrong-mode decoding hits invalid words often enough to show. Measured: an
    AArch64 nop buffer decodes 1.000 under ARM, Thumb AND MIPS32. When candidates
    tie, the first wins - which is why _cs_candidates lists Thumb first for EM_ARM,
    the encoding the NDK actually emits for armeabi-v7a."""
    thumb = (capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB, 2)
    arm = (capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM, 4)
    for a, b in ((thumb, arm), (arm, thumb)):
        assert _pick_mode([a, b], NOP * 64, BASE) == a


def test_pick_mode_falls_back_to_the_first_candidate_without_data():
    cands = _cs_candidates("EM_ARM", 32, True)
    assert _pick_mode(cands, b"", BASE) == cands[0]


# --- the honesty gate on `scanned` --------------------------------------------

def test_decode_ratio_threshold_sits_between_measured_real_and_measured_broken():
    """Set from measurement, not taste. Worst real-lib ratio observed under the
    winning encoding was 0.9479 (libtmessages.49.so armeabi-v7a, 14.8 MB .text -
    literal pools and jump tables are why a real lib never reaches 1.0). Worst
    broken ratio that used to report a complete scan was 0.025, and several libs
    reported one after decoding 0.000."""
    assert 0.025 < _MIN_DECODE_RATIO <= 0.9479
    assert _MIN_DECODE_RATIO > 0.5, "a lib decoded less than half is not scanned"


def test_probe_and_window_bounds_are_sane():
    assert _MODE_PROBE_BYTES > 0 and _SWEEP_WINDOW_BYTES > 0
    # the window must hold several instructions of any arch, or the sweep would
    # spend its life on boundary restarts
    assert _SWEEP_WINDOW_BYTES >= 4096
