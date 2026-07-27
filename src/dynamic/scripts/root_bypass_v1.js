// Generic root-detection bypass. PROVISIONAL pending Step 0's confirmation
// of the actual check methods UnCrackable1 uses
// (docs/plans/research/phase0-uncrackable1-manual-findings.md) - hooks
// common, publicly-documented root-check patterns rather than anything
// specific to this app's exact implementation yet.

Java.perform(function () {
    var File = Java.use("java.io.File");
    File.exists.implementation = function () {
        var path = this.getAbsolutePath();
        var suspicious = ["su", "magisk", "busybox", "supersu"];
        for (var i = 0; i < suspicious.length; i++) {
            if (path.indexOf(suspicious[i]) !== -1) {
                send({ hook: "File.exists", path: path, forced_result: false });
                return false;
            }
        }
        return this.exists();
    };

    try {
        var Runtime = Java.use("java.lang.Runtime");
        Runtime.exec.overload("java.lang.String").implementation = function (command) {
            if (command.indexOf("su") !== -1) {
                send({ hook: "Runtime.exec", command: command, blocked: true });
                throw Java.use("java.io.IOException").$new("blocked by analysis hook");
            }
            return this.exec(command);
        };
    } catch (e) {
        send({ hook: "Runtime.exec(String)", present: false, error: e.toString() });
    }
});
