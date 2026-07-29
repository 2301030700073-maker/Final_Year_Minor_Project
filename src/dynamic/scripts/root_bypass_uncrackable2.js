// Root-detection bypass for OWASP UnCrackable Level 2.
// Same three root checks as Level 1 (PATH-split su lookup, Build.TAGS
// test-keys, 7-path known-indicator-file array) - confirmed byte-for-byte
// identical against the real decompiled sg/vantagepoint/a/b.java, just
// moved to a different class than Level 1's sg.vantagepoint.a.c. The
// debug-flag check moved too, from Level 1's sg.vantagepoint.a.b to
// sg.vantagepoint.a.a here.
//
// Hook ids below are fully-qualified on purpose (unlike root_bypass_v1.js's
// short "c.a"/"b.a") - Level 2's classes happen to reuse the same short
// letters as Level 1's for a different purpose ("a.b" is Level 1's debug
// check but Level 2's root checks), so the full path avoids ambiguity for
// anyone reading both scripts side by side. The two scripts never actually
// run against each other's target, so this isn't a runtime correctness
// issue - purely a readability one worth avoiding.

var JAVA_POLL_INTERVAL_MS = 50;
var JAVA_POLL_TIMEOUT_MS = 15000; // generous margin for emulator/cold-start jitter
var _javaPollStartedAt = null;

function hook_root_checks() {
    if (typeof Java === 'undefined' || !Java.available) {
        if (_javaPollStartedAt === null) {
            _javaPollStartedAt = Date.now();
        }
        if (Date.now() - _javaPollStartedAt >= JAVA_POLL_TIMEOUT_MS) {
            send({
                hook: "java_bridge",
                status: "failed",
                error: "Java.available never became true within " + JAVA_POLL_TIMEOUT_MS + "ms"
            });
            return; // stop retrying - surfaces as a real failure, not a silent hang
        }
        setTimeout(hook_root_checks, JAVA_POLL_INTERVAL_MS);
        return;
    }
    Java.perform(function () {
        try {
            var B = Java.use("sg.vantagepoint.a.b");
            B.a.implementation = function () {
                send({ hook: "sg.vantagepoint.a.b.a", forced_result: false });
                return false;
            };
            B.b.implementation = function () {
                send({ hook: "sg.vantagepoint.a.b.b", forced_result: false });
                return false;
            };
            B.c.implementation = function () {
                send({ hook: "sg.vantagepoint.a.b.c", forced_result: false });
                return false;
            };
            send({ hook: "sg.vantagepoint.a.b", status: "all three hooked" });
        } catch (e) {
            send({ hook: "sg.vantagepoint.a.b", present: false, error: e.toString() });
        }

        // Also hook the debug-build check
        try {
            var A = Java.use("sg.vantagepoint.a.a");
            A.a.implementation = function (ctx) {
                send({ hook: "sg.vantagepoint.a.a.a", forced_result: false });
                return false;
            };
        } catch (e) {
            send({ hook: "sg.vantagepoint.a.a", present: false, error: e.toString() });
        }

        // Defensive precaution, NOT root-detection evidence: Level 2 also
        // runs a background AsyncTask polling Debug.isDebuggerConnected()
        // and shows a "Debugger detected!" dialog if it ever returns true.
        // Whether this can actually fire against this project's WSL2-to-
        // Windows Frida relay bridge is unconfirmed either way - the real
        // decompiled dialog only calls System.exit(0) from its own OK
        // button, which this pipeline never taps, so the app likely
        // survives even without this hook. Included anyway as a zero-cost
        // hedge, not because it's known to be necessary - see
        // docs/plans/handoff/phase-2-handoff.md.
        try {
            var Debug = Java.use("android.os.Debug");
            Debug.isDebuggerConnected.implementation = function () {
                send({ hook: "android.os.Debug.isDebuggerConnected", forced_result: false });
                return false;
            };
        } catch (e) {
            send({ hook: "android.os.Debug.isDebuggerConnected", present: false, error: e.toString() });
        }
    });
}

hook_root_checks();
