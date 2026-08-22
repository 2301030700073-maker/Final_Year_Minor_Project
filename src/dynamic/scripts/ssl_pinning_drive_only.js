"use strict";
// Drive-only: issue an in-process HttpsURLConnection to the PINNED host
// (redshift.co.za) from the app process, WITHOUT installing any bypass hooks.
// This is the "without script" arm of the A/B: the app's own
// networkSecurityConfig pin-set (3 SHA-256 pins for redshift.co.za) applies to
// HttpsURLConnection, so a MITM'd connection carrying the capture CA is
// rejected (SSLPeerUnverifiedException) and no decrypted flow reaches the
// proxy. The connection runs on a background Java thread so it cannot stall the
// app's main thread or the Frida send queue.
Java.perform(function() {
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
