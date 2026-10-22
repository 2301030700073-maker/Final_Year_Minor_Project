"use strict";
// Pinning bypass + self-drive. Installs the deterministic SSL-pinning bypass
// hooks (OkHttp, Conscrypt, X509TrustManager, native libssl/BoringSSL) then, on
// a background Java thread, issues an in-process HttpsURLConnection to the
// PINNED host (redshift.co.za). With the hooks live the capture CA is accepted,
// so the connection succeeds and a decrypted redshift.co.za flow appears in the
// proxy capture - the "with script" arm of the A/B. The drive runs on a
// background thread so it cannot stall the app's main thread.
//
// HONESTY CONTRACT (Task #11): the install marker reports bypassed:true only
// when at least one hook actually loaded; a script that installed nothing
// reports bypassed:false with the hook count, never a false success.
var _drive_hooks_loaded = 0;

function _drive_try_hook(name, fn) {
    try {
        fn();
        _drive_hooks_loaded++;
        send({ type: 'hook_loaded', name: name, ok: true });
    } catch (e) {
        send({ type: 'hook_skipped', name: name, reason: String(e) });
    }
}

Java.perform(function() {
    // ---- deterministic pinning bypass (no broad class enumeration) ----
    _drive_try_hook('android.webkit.WebViewClient.onReceivedSslError', function() {
        var WebViewClient = Java.use('android.webkit.WebViewClient');
        WebViewClient.onReceivedSslError.implementation = function(view, handler, error) {
            handler.proceed();
        };
    });
    _drive_try_hook('okhttp3.internal.tls.OkHostnameVerifier.verify', function() {
        var OkHostnameVerifier = Java.use('okhttp3.internal.tls.OkHostnameVerifier');
        OkHostnameVerifier.verify.overload('java.lang.String', 'javax.net.ssl.SSLSession').implementation = function(host, session) {
            return true;
        };
    });
    // OkHttp3 CertificatePinner.check - the most common Android SSL-pinning
    // method, previously NOT neutralized here, so an OkHttp-pinning app/SDK
    // rejected the capture CA and its handshake failed (stuck network). check()
    // returns void and throws on a mismatch, so a no-op accepts any chain.
    _drive_try_hook('okhttp3.CertificatePinner.check', function() {
        var CP = Java.use('okhttp3.CertificatePinner');
        var _ovs = CP.check.overloads;
        for (var _i = 0; _i < _ovs.length; _i++) {
            (function (ov) {
                ov.implementation = function () {
                    console.log('[+] OkHttp3 CertificatePinner.check() bypassed');
                };
            })(_ovs[_i]);
        }
        if (_ovs.length === 0) { throw new Error('okhttp3.CertificatePinner.check: no overloads to neutralize'); }
    });
    _drive_try_hook('com.android.org.conscrypt.TrustManagerImpl.checkTrustedRecursive', function() {
        var conscrypt_TM = Java.use('com.android.org.conscrypt.TrustManagerImpl');
        var ArrayList = Java.use('java.util.ArrayList');
        conscrypt_TM.checkTrustedRecursive.implementation = function() {
            // Return the PRESENTED peer chain (trust it), NOT an empty list - an
            // empty list empties the verified chain and the handshake fails
            // downstream (no peer cert -> the app's network call hangs -> a frozen
            // splash). Same fix as ssl_pinning_bypass_universal.js.
            try {
                var _chain = arguments[0];
                if (_chain && _chain.length) {
                    var _list = ArrayList.$new();
                    for (var _i = 0; _i < _chain.length; _i++) { _list.add(_chain[_i]); }
                    return _list;
                }
            } catch (e) { console.log('[!] checkTrustedRecursive chain wrap failed: ' + e); }
            return ArrayList.$new();
        };
    });
    _drive_try_hook('org.bouncycastle.jsse.provider.BouncyCastleJsseProvider.checkServerTrusted', function() {
        var bouncy_TM = Java.use('org.bouncycastle.jsse.provider.BouncyCastleJsseProvider');
        bouncy_TM.checkServerTrusted.implementation = function() {};
    });
    _drive_try_hook('javax.net.ssl.SSLPeerUnverifiedException.$init', function() {
        var SSLPeerUnverifiedException = Java.use('javax.net.ssl.SSLPeerUnverifiedException');
        SSLPeerUnverifiedException.$init.implementation = function(reason) {
            return this.$init('');
        };
    });
    _drive_try_hook('javax.net.ssl.SSLSocketFactory.createSocket', function() {
        var SSLSocketFactory = Java.use('javax.net.ssl.SSLSocketFactory');
        SSLSocketFactory.createSocket.overload('java.net.Socket', 'java.lang.String', 'int', 'boolean').implementation = function() {
            return this.createSocket.apply(this, arguments);
        };
    });
    _drive_try_hook('javax.net.ssl.TrustManagerFactory.init', function() {
        var TrustManagerFactory = Java.use('javax.net.ssl.TrustManagerFactory');
        TrustManagerFactory.init.overload('java.security.KeyStore').implementation = function(ks) {
            return this.init(ks);
        };
    });
    var f = Module.findExportByName('libssl.so', 'SSL_CTX_set_custom_verify');
    if (f) { Interceptor.attach(f, { onEnter: function(a) { a[1] = ptr(0); } }); _drive_hooks_loaded++; send({ type: 'hook_loaded', name: 'SSL_CTX_set_custom_verify', ok: true }); }
    f = Module.findExportByName('libssl.so', 'SSL_CTX_set_verify');
    if (f) { Interceptor.attach(f, { onEnter: function(a) { a[1] = ptr(0); } }); _drive_hooks_loaded++; send({ type: 'hook_loaded', name: 'SSL_CTX_set_verify', ok: true }); }
    f = Module.findExportByName(null, 'SSL_set_custom_verify');
    if (f) { Interceptor.attach(f, { onEnter: function(a) { a[1] = ptr(0); } }); _drive_hooks_loaded++; send({ type: 'hook_loaded', name: 'SSL_set_custom_verify', ok: true }); }
    f = Module.findExportByName(null, 'SSL_get_verify_result');
    if (f) { Interceptor.attach(f, { onLeave: function(r) { r.replace(0); } }); _drive_hooks_loaded++; send({ type: 'hook_loaded', name: 'SSL_get_verify_result', ok: true }); }

    if (_drive_hooks_loaded > 0) {
        send({ hook: 'universal-ssl-pinning', bypassed: true, hooks_loaded: _drive_hooks_loaded });
    } else {
        send({ hook: 'universal-ssl-pinning', bypassed: false, hooks_loaded: 0, reason: 'no SSL hooks could be installed' });
    }

    // ---- self-drive on a background thread ----
    var URL = Java.use('java.net.URL');
    var Thread = Java.use('java.lang.Thread');
    var Runnable = Java.use('java.lang.Runnable');
    var DriveRunnable = Java.registerClass({
        name: 'com.redshift.DriveRunnable',
        implements: [Runnable],
        methods: {
            run: function() {
                send({hook: 'drive-start'});
                try {
                    var url = URL.$new('https://redshift.co.za/');
                    var conn = Java.cast(url.openConnection(), Java.use('java.net.HttpURLConnection'));
                    conn.setConnectTimeout(6000);
                    conn.setReadTimeout(6000);
                    conn.setRequestMethod('GET');
                    var code = conn.getResponseCode();
                    send({hook: 'pinned-drive', host: 'redshift.co.za', status: code});
                    conn.disconnect();
                } catch (e) {
                    send({hook: 'pinned-drive', host: 'redshift.co.za', error: String(e)});
                }
            }
        }
    });
    Thread.$new(DriveRunnable.$new()).start();
});
