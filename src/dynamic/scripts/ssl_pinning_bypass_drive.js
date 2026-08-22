"use strict";
// Pinning bypass + self-drive. Installs the deterministic SSL-pinning bypass
// hooks (OkHttp, Conscrypt, X509TrustManager, native libssl/BoringSSL) then, on
// a background Java thread, issues an in-process HttpsURLConnection to the
// PINNED host (redshift.co.za). With the hooks live the capture CA is accepted,
// so the connection succeeds and a decrypted redshift.co.za flow appears in the
// proxy capture - the "with script" arm of the A/B. The drive runs on a
// background thread so it cannot stall the app's main thread.
Java.perform(function() {
    // ---- deterministic pinning bypass (no broad class enumeration) ----
    try {
        var WebViewClient = Java.use('android.webkit.WebViewClient');
        WebViewClient.onReceivedSslError.implementation = function(view, handler, error) {
            handler.proceed();
        };
    } catch (e) {}
    try {
        var OkHostnameVerifier = Java.use('okhttp3.internal.tls.OkHostnameVerifier');
        OkHostnameVerifier.verify.overload('java.lang.String', 'javax.net.ssl.SSLSession').implementation = function(host, session) {
            return true;
        };
    } catch (e) {}
    try {
        var conscrypt_TM = Java.use('com.android.org.conscrypt.TrustManagerImpl');
        var ArrayList = Java.use('java.util.ArrayList');
        conscrypt_TM.checkTrustedRecursive.implementation = function() {
            return ArrayList.$new();
        };
    } catch (e) {}
    try {
        var bouncy_TM = Java.use('org.bouncycastle.jsse.provider.BouncyCastleJsseProvider');
        bouncy_TM.checkServerTrusted.implementation = function() {};
    } catch (e) {}
    try {
        var SSLPeerUnverifiedException = Java.use('javax.net.ssl.SSLPeerUnverifiedException');
        SSLPeerUnverifiedException.$init.implementation = function(reason) {
            return this.$init('');
        };
    } catch (e) {}
    try {
        var SSLSocketFactory = Java.use('javax.net.ssl.SSLSocketFactory');
        SSLSocketFactory.createSocket.overload('java.net.Socket', 'java.lang.String', 'int', 'boolean').implementation = function() {
            return this.createSocket.apply(this, arguments);
        };
    } catch (e) {}
    try {
        var TrustManagerFactory = Java.use('javax.net.ssl.TrustManagerFactory');
        TrustManagerFactory.init.overload('java.security.KeyStore').implementation = function(ks) {
            return this.init(ks);
        };
    } catch (e) {}
    var f = Module.findExportByName('libssl.so', 'SSL_CTX_set_custom_verify');
    if (f) Interceptor.attach(f, { onEnter: function(a) { a[1] = ptr(0); } });
    f = Module.findExportByName('libssl.so', 'SSL_CTX_set_verify');
    if (f) Interceptor.attach(f, { onEnter: function(a) { a[1] = ptr(0); } });
    f = Module.findExportByName(null, 'SSL_set_custom_verify');
    if (f) Interceptor.attach(f, { onEnter: function(a) { a[1] = ptr(0); } });
    f = Module.findExportByName(null, 'SSL_get_verify_result');
    if (f) Interceptor.attach(f, { onLeave: function(r) { r.replace(0); } });
    send({hook: 'universal-ssl-pinning', bypassed: true});

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
