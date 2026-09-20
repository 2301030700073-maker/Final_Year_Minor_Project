"""The two integrity-node reads that a real DEX contained and no signature covered.

Found by `scripts/gap_hunt_idioms.py`, then verified where it counts - in the
binary, not in jadx's rendering. com.facebook.katana (a485cd3f), classes14.dex,
read with `strings -a` on the .dex itself: both "/sys/fs/selinux/enforce" and
"/proc/self/mounts" are string constants of that dex, and of no other (1 of its 20).

The call sites make the intent unambiguous. The enforce node holds "0" when SELinux
is permissive - i.e. tampered - and the method returns true when its first line
equals "0". /proc/self/mounts is read in the same method, which then reads
ro.debuggable and ro.secure, the pair `build_props_probe` already matches. So the
method is root detection, and these were the only lines in it with no rule.

The mounts one is an asymmetry rather than an omission: the native analog
(native_proc_mounts_check) has always listed both spellings, while the java rule
carried only "/proc/mounts" - which as a regex cannot match "/proc/self/mounts".

Assertions use truthiness rather than `is not None` so they hold whichever a
matcher returns for a hit, and the negative arms are the point: each pattern is
anchored on the full node path, so a shortening of it has to fail here.
"""

from __future__ import annotations

from pathlib import Path

from static.signatures import _line_matches, load_signatures

ROOT = load_signatures(
    Path(__file__).resolve().parents[2] / "config" / "signatures" / "root_detection.yaml"
)


def _sig(sig_id: str):
    return next(s for s in ROOT if s.id == sig_id)


def test_the_enforce_node_read_is_a_root_signature():
    sig = _sig("selinux_enforce_node_read")
    assert sig.category == "root"
    assert sig.weight == 0.3
    # The DEX-verified line form, verbatim from the decompiled call site.
    assert _line_matches('fileA0E = 001.A0E("/sys/fs/selinux/enforce");', sig)


def test_the_enforce_signature_does_not_subume_other_selinux_nodes():
    """The full path is the whole specificity of this signal. Shortened to
    "/sys/fs/selinux" it would reach the policy, context and boolean nodes, which
    say nothing about a permissive device."""
    sig = _sig("selinux_enforce_node_read")
    for unrelated in (
        'readFile("/sys/fs/selinux/context");',
        'readFile("/sys/fs/selinux/policy");',
        'readFile("/sys/fs/selinux/booleans");',
        'File dir = new File("/sys/fs/selinux");',
    ):
        assert not _line_matches(unrelated, sig), unrelated


def test_both_proc_mounts_spellings_match_the_java_rule():
    sig = _sig("rw_system_mount_check")
    assert _line_matches(
        'bufferedReader = new BufferedReader(new FileReader("/proc/self/mounts"));', sig
    ), "the spelling the native sibling has always carried"
    assert _line_matches(
        'bufferedReader = new BufferedReader(new FileReader("/proc/mounts"));', sig
    ), "the spelling that was already there"


def test_the_mount_rule_is_about_the_mount_table_not_the_word_mount():
    sig = _sig("rw_system_mount_check")
    for unrelated in (
        'if (mount.contains("overlay")) {',
        "public boolean isMounted() {",
        'android.os.Environment.getExternalStorageState()',
    ):
        assert not _line_matches(unrelated, sig), unrelated
