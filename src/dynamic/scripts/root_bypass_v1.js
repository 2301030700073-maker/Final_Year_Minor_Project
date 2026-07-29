// Root-detection bypass for OWASP UnCrackable Level 1-3.
// Hooks the three static root-check methods directly on
// sg.vantagepoint.a.c, plus the debug-build check.

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
            var C = Java.use("sg.vantagepoint.a.c");
            C.a.implementation = function () {
                send({ hook: "c.a", forced_result: false });
                return false;
            };
            C.b.implementation = function () {
                send({ hook: "c.b", forced_result: false });
                return false;
            };
            C.c.implementation = function () {
                send({ hook: "c.c", forced_result: false });
                return false;
            };
            send({ hook: "sg.vantagepoint.a.c", status: "all three hooked" });
        } catch (e) {
            send({ hook: "sg.vantagepoint.a.c", present: false, error: e.toString() });
        }

        // Also hook the debug-build check
        try {
            var B = Java.use("sg.vantagepoint.a.b");
            B.a.implementation = function (ctx) {
                send({ hook: "b.a", forced_result: false });
                return false;
            };
        } catch (e) {
            send({ hook: "sg.vantagepoint.a.b", present: false, error: e.toString() });
        }
    });
}

hook_root_checks();
