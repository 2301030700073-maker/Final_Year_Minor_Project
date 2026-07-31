package com.bumptech.glide.manager;

import android.net.ConnectivityManager;
import android.util.Log;
import androidx.work.impl.constraints.IndividualNetworkCallback;
import com.bumptech.glide.util.GlideSuppliers$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24 implements SingletonConnectivityReceiver$FrameworkConnectivityMonitor {
    public final GlideSuppliers$1 connectivityManager;
    public boolean isConnected;
    public final SingletonConnectivityReceiver$2 listener;
    public final IndividualNetworkCallback networkCallback = new IndividualNetworkCallback(2, this);

    public SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24(GlideSuppliers$1 glideSuppliers$1, SingletonConnectivityReceiver$2 singletonConnectivityReceiver$2) {
        this.connectivityManager = glideSuppliers$1;
        this.listener = singletonConnectivityReceiver$2;
    }

    @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitor
    public final boolean register() {
        GlideSuppliers$1 glideSuppliers$1 = this.connectivityManager;
        this.isConnected = ((ConnectivityManager) glideSuppliers$1.get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) glideSuppliers$1.get()).registerDefaultNetworkCallback(this.networkCallback);
            return true;
        } catch (RuntimeException e) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register callback", e);
            }
            return false;
        }
    }

    @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitor
    public final void unregister() {
        ((ConnectivityManager) this.connectivityManager.get()).unregisterNetworkCallback(this.networkCallback);
    }
}
