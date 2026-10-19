// Generic SSL/TLS pinning bypass. PROVISIONAL pending Step 0's confirmation
// of whether UnCrackable1 implements pinning at all, and if so, by which
// mechanism (docs/plans/research/phase0-uncrackable1-manual-findings.md).
// Hooks the two most common public mechanisms; if neither is present in
// this app, both try/catch blocks simply report "not present" - that is a
// legitimate, expected outcome, not a script failure.

Java.perform(function () {
    try {
        var CertificatePinner = Java.use("okhttp3.CertificatePinner");
        // Enumerate every overload of check and wrap each. The exact argument-type
        // strings vary across OkHttp builds; a hardcoded overload('java.lang.String',
        // 'java.util.List') that does not match this app's build fails to install and
        // the pinning hook silently never engages (observed live on AndroGoat).
        var overloads = CertificatePinner.check.overloads;
        for (var i = 0; i < overloads.length; i++) {
            (function (ov) {
                ov.implementation = function () {
                    var hostname = arguments[0];
                    send({ hook: "OkHttp CertificatePinner.check", hostname: hostname, bypassed: true });
                };
            })(overloads[i]);
        }
        if (overloads.length === 0) {
            send({ hook: "OkHttp CertificatePinner", present: false });
        }
    } catch (e) {
        send({ hook: "OkHttp CertificatePinner", present: false });
    }

    try {
        var TrustManagerImpl = Java.use("com.android.org.conscrypt.TrustManagerImpl");
        TrustManagerImpl.verifyChain.implementation = function (untrustedChain, trustAnchorChain, host, clientAuth, ocspData, tlsSctData) {
            send({ hook: "TrustManagerImpl.verifyChain", host: host, bypassed: true });
            return untrustedChain;
        };
    } catch (e) {
        send({ hook: "TrustManagerImpl.verifyChain", present: false });
    }
});
