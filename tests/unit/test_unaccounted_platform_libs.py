"""PLATFORM-LIB1: the unaccounted-loads coverage bound must not fire on the OS's
own libraries.

A loadLibrary("log") resolves to the platform's liblog.so, which is not the app's
native code and is not in the APK to analyze. Counting it held the native surface
at `partial` for essentially every app that touches a platform library - and the
soundness of the bound rests on the app-shipped case, where the library IS in the
APK and therefore IS analyzed.
"""

from static.native import unaccounted_native_loads


def test_platform_library_is_not_an_unexamined_app_surface():
    assert unaccounted_native_loads(["log"], set()) == []


def test_a_declared_load_path_to_a_platform_library_is_exempt_too():
    assert unaccounted_native_loads(["/system/lib64/liblog.so"], set()) == []


def test_an_app_library_not_in_the_apk_still_bounds_coverage():
    assert unaccounted_native_loads(["mycode"], set()) == ["mycode"]
    assert unaccounted_native_loads(["/data/app/x/lib/libsecret.so"], set()) == [
        "/data/app/x/lib/libsecret.so"]


def test_a_shipped_platform_named_library_is_accounted_once_analyzed():
    # The soundness argument for the exemption: a lib the app ships is in the APK
    # and gets analyzed, so it is in analyzed_names and never reaches it.
    assert unaccounted_native_loads(["log"], {"liblog.so"}) == []


def test_only_the_app_side_of_a_mixed_load_set_is_reported():
    assert unaccounted_native_loads(["log", "z", "EGL", "mycode"], set()) == ["mycode"]


def test_app_shipped_react_native_libraries_are_never_exempt():
    # These ship inside APKs - they must stay a real unexamined surface.
    assert unaccounted_native_loads(["hermes", "jsc", "c++_shared"], set()) == [
        "hermes", "jsc", "c++_shared"]
