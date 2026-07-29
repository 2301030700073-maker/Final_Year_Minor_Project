// Root-detection bypass for OWASP UnCrackable Level 1-3.
// Hooks the three static root-check methods directly on
// sg.vantagepoint.a.c, plus the debug-build check.

function hook_root_checks() {
    if (typeof Java === 'undefined' || !Java.available) {
        setTimeout(hook_root_checks, 50);
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
