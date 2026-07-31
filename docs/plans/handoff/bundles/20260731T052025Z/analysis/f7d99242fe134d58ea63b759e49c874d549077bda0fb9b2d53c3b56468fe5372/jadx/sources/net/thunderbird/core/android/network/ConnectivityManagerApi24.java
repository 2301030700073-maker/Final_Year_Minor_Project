package net.thunderbird.core.android.network;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.work.impl.constraints.IndividualNetworkCallback;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConnectivityManagerApi24 extends ConnectivityManagerBase {
    public Boolean isNetworkAvailable;
    public boolean isRunning;
    public final IndividualNetworkCallback networkCallback = new IndividualNetworkCallback(4, this);
    public final ConnectivityManager systemConnectivityManager;

    public ConnectivityManagerApi24(ConnectivityManager connectivityManager) {
        this.systemConnectivityManager = connectivityManager;
    }

    @Override // net.thunderbird.core.android.network.ConnectivityManagerBase
    public final boolean isNetworkAvailable() {
        Boolean bool;
        NetworkCapabilities networkCapabilities;
        synchronized (this) {
            bool = this.isNetworkAvailable;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        ConnectivityManager connectivityManager = this.systemConnectivityManager;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        return (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null || !networkCapabilities.hasCapability(12)) ? false : true;
    }

    @Override // net.thunderbird.core.android.network.ConnectivityManagerBase
    public final synchronized void start() {
        if (!this.isRunning) {
            this.isRunning = true;
            this.systemConnectivityManager.registerDefaultNetworkCallback(this.networkCallback);
        }
    }

    @Override // net.thunderbird.core.android.network.ConnectivityManagerBase
    public final synchronized void stop() {
        if (this.isRunning) {
            this.isRunning = false;
            this.systemConnectivityManager.unregisterNetworkCallback(this.networkCallback);
        }
    }
}
