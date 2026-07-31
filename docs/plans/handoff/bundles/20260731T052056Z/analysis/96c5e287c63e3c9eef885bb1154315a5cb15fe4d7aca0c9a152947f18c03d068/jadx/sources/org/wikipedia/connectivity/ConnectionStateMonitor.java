package org.wikipedia.connectivity;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Build;
import java.util.ArrayList;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConnectionStateMonitor extends ConnectivityManager.NetworkCallback {
    public long lastCheckedMillis;
    public boolean networkCallbackRegistered;
    public boolean online = true;
    public boolean prevOnline = true;
    public final ArrayList callbacks = new ArrayList();

    public final void ensureNetworkCallbackRegistered() {
        if (this.networkCallbackRegistered) {
            return;
        }
        try {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            Object systemService = Jsoup.getInstance().getSystemService("connectivity");
            systemService.getClass();
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            if (Build.VERSION.SDK_INT >= 24) {
                connectivityManager.registerDefaultNetworkCallback(this);
            } else {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(0).addTransportType(1).build(), this);
            }
            this.networkCallbackRegistered = true;
        } catch (Exception unused) {
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        network.getClass();
        super.onAvailable(network);
        updateOnlineState(Boolean.TRUE);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        network.getClass();
        super.onLost(network);
        updateOnlineState(Boolean.FALSE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0032, code lost:
    
        if (r5.hasCapability(12) == true) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateOnlineState(java.lang.Boolean r5) {
        /*
            r4 = this;
            r0 = 0
            r1 = 1
            if (r5 == 0) goto L11
            boolean r5 = r5.booleanValue()
            r4.online = r5
            long r2 = java.lang.System.currentTimeMillis()
            r4.lastCheckedMillis = r2
            goto L3a
        L11:
            org.wikipedia.WikipediaApp r5 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r5 = org.jsoup.Jsoup.getInstance()
            java.lang.String r2 = "connectivity"
            java.lang.Object r5 = r5.getSystemService(r2)
            r5.getClass()
            android.net.ConnectivityManager r5 = (android.net.ConnectivityManager) r5
            android.net.Network r2 = r5.getActiveNetwork()     // Catch: java.lang.Exception -> L37
            android.net.NetworkCapabilities r5 = r5.getNetworkCapabilities(r2)     // Catch: java.lang.Exception -> L37
            if (r5 == 0) goto L35
            r2 = 12
            boolean r5 = r5.hasCapability(r2)     // Catch: java.lang.Exception -> L37
            if (r5 != r1) goto L35
            goto L37
        L35:
            r5 = r0
            goto L38
        L37:
            r5 = r1
        L38:
            r4.online = r5
        L3a:
            org.wikipedia.analytics.eventplatform.EventPlatformClient r5 = org.wikipedia.analytics.eventplatform.EventPlatformClient.INSTANCE
            boolean r5 = r4.online
            org.wikipedia.analytics.eventplatform.EventPlatformClient.ENABLED = r5
            if (r5 == 0) goto L45
            org.wikipedia.analytics.eventplatform.EventPlatformClient.OutputBuffer.sendAllScheduled()
        L45:
            boolean r5 = r4.online
            boolean r2 = r4.prevOnline
            if (r5 == r2) goto L79
            if (r5 == 0) goto L63
            org.wikipedia.WikipediaApp r5 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r5 = org.jsoup.Jsoup.getInstance()
            android.os.Handler r5 = r5.getMainThreadHandler()
            org.wikipedia.connectivity.ConnectionStateMonitor$$ExternalSyntheticLambda0 r1 = new org.wikipedia.connectivity.ConnectionStateMonitor$$ExternalSyntheticLambda0
            r1.<init>(r4)
            r5.post(r1)
            org.wikipedia.readinglist.ReadingListFragment.MultiSelectCallback.enqueue()
            goto L75
        L63:
            org.wikipedia.WikipediaApp r5 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r5 = org.jsoup.Jsoup.getInstance()
            android.os.Handler r5 = r5.getMainThreadHandler()
            org.wikipedia.connectivity.ConnectionStateMonitor$$ExternalSyntheticLambda0 r0 = new org.wikipedia.connectivity.ConnectionStateMonitor$$ExternalSyntheticLambda0
            r0.<init>(r4)
            r5.post(r0)
        L75:
            boolean r5 = r4.online
            r4.prevOnline = r5
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.connectivity.ConnectionStateMonitor.updateOnlineState(java.lang.Boolean):void");
    }
}
