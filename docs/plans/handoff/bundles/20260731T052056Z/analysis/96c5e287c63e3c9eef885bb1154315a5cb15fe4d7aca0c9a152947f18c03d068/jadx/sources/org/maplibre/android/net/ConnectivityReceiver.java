package org.maplibre.android.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.maplibre.android.log.Logger;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConnectivityReceiver extends BroadcastReceiver {
    public static ConnectivityReceiver INSTANCE;
    public int activationCounter;
    public Boolean connected;
    public Context context;
    public CopyOnWriteArrayList listeners;

    public static synchronized ConnectivityReceiver instance(Context context) {
        ConnectivityReceiver connectivityReceiver;
        synchronized (ConnectivityReceiver.class) {
            try {
                if (INSTANCE == null) {
                    Context applicationContext = context.getApplicationContext();
                    ConnectivityReceiver connectivityReceiver2 = new ConnectivityReceiver();
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    connectivityReceiver2.listeners = copyOnWriteArrayList;
                    connectivityReceiver2.context = applicationContext;
                    INSTANCE = connectivityReceiver2;
                    NativeConnectivityListener nativeConnectivityListener = new NativeConnectivityListener();
                    nativeConnectivityListener.initialize();
                    copyOnWriteArrayList.add(nativeConnectivityListener);
                }
                connectivityReceiver = INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return connectivityReceiver;
    }

    public final boolean isNetworkActive() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final void notifyListeners(boolean z) {
        Logger.v("Mbgl-ConnectivityReceiver", z ? "connected - true" : "connected - false");
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((NativeConnectivityListener) ((ConnectivityListener) it.next())).nativeOnConnectivityStateChanged(z);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.connected != null) {
            return;
        }
        notifyListeners(isNetworkActive());
    }
}
