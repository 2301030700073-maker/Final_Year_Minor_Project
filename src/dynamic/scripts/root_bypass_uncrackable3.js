// Root-detection + anti-tampering bypass for OWASP UnCrackable Level 3.
// Root checks moved to sg.vantagepoint.util.RootDetection (checkRoot1/2/3)
// - byte-for-byte identical to Level 1/2. Debug-flag check renamed again,
// to sg.vantagepoint.util.IntegrityCheck.isDebuggable. Confirmed against
// the real decompiled RootDetection.java/IntegrityCheck.java.
//
// Two new things, both feeding the same "Rooting or tampering detected."
// dialog as the three root checks and isDebuggable:
//
// 1. MainActivity.verifyLibs() - CRC32 check of lib/<abi>/libfoo.so +
//    classes.dex, sets a static tampered=31337 on mismatch, and silently
//    System.exit(0)s on any ZipFile IOException unrelated to real
//    tampering. It's void - no boolean to force - so hooked to a full
//    no-op instead. Confirmed safe: the only field it populates (this.crc)
//    has zero readers anywhere else in the decompiled tree, and tampered
//    is only ever assigned inside this method, so skipping it entirely
//    leaves tampered at its default 0. init(xorkey.getBytes()), the
//    secret-verification seed, is a separate onCreate() call, unaffected.
// 2. Debug.isDebuggerConnected() poll - onPostExecute calls
//    showDialog("Debugger detected!") and System.exit(0) unconditionally,
//    no OK-tap gating either one this time (unlike Level 2, where a tap
//    this pipeline never performs stood between the dialog and the exit).
//    That makes this hook structurally mandatory by consequence-severity
//    if it ever does fire - not confirmed necessary by observed behavior:
//    an earlier baseline run against this exact APK left the poll
//    completely unhooked for a full 5-second settle window and the
//    dynamic stage still reported success, no crash. Hooked anyway, since
//    the downside if it ever does trip is total process death with no
//    evidence at all.

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
            var RootDetection = Java.use("sg.vantagepoint.util.RootDetection");
            RootDetection.checkRoot1.implementation = function () {
                send({ hook: "sg.vantagepoint.util.RootDetection.checkRoot1", forced_result: false });
                return false;
            };
            RootDetection.checkRoot2.implementation = function () {
                send({ hook: "sg.vantagepoint.util.RootDetection.checkRoot2", forced_result: false });
                return false;
            };
            RootDetection.checkRoot3.implementation = function () {
                send({ hook: "sg.vantagepoint.util.RootDetection.checkRoot3", forced_result: false });
                return false;
            };
            send({ hook: "sg.vantagepoint.util.RootDetection", status: "all three hooked" });
        } catch (e) {
            send({ hook: "sg.vantagepoint.util.RootDetection", present: false, error: e.toString() });
        }

        // Also hook the debug-build check
        try {
            var IntegrityCheck = Java.use("sg.vantagepoint.util.IntegrityCheck");
            IntegrityCheck.isDebuggable.implementation = function (ctx) {
                send({ hook: "sg.vantagepoint.util.IntegrityCheck.isDebuggable", forced_result: false });
                return false;
            };
        } catch (e) {
            send({ hook: "sg.vantagepoint.util.IntegrityCheck", present: false, error: e.toString() });
        }

        // Structurally mandatory - see header comment.
        try {
            var Debug = Java.use("android.os.Debug");
            Debug.isDebuggerConnected.implementation = function () {
                send({ hook: "android.os.Debug.isDebuggerConnected", forced_result: false });
                return false;
            };
        } catch (e) {
            send({ hook: "android.os.Debug.isDebuggerConnected", present: false, error: e.toString() });
        }

        // Void method - no boolean to force, so a full no-op instead of a
        // forced return value. Marked "neutralized", not "forced_result" -
        // see uncrackable3.py's docstring for why the two are tracked
        // differently.
        try {
            var MainActivity = Java.use("sg.vantagepoint.uncrackable3.MainActivity");
            MainActivity.verifyLibs.implementation = function () {
                send({ hook: "sg.vantagepoint.uncrackable3.MainActivity.verifyLibs", neutralized: true });
                // deliberately empty - skips the CRC/ZipFile body entirely
            };
        } catch (e) {
            send({ hook: "sg.vantagepoint.uncrackable3.MainActivity.verifyLibs", present: false, error: e.toString() });
        }
    });
}

hook_root_checks();
