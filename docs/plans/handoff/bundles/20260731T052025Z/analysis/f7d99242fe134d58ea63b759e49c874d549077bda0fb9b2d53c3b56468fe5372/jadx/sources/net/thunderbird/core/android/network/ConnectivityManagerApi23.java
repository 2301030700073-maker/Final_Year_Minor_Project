package net.thunderbird.core.android.network;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.impl.constraints.IndividualNetworkCallback;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConnectivityManagerApi23 extends ConnectivityManagerBase {
    public boolean isRunning;
    public Network lastActiveNetwork;
    public final IndividualNetworkCallback networkCallback = new IndividualNetworkCallback(3, this);
    public final ConnectivityManager systemConnectivityManager;
    public Boolean wasConnected;

    public ConnectivityManagerApi23(ConnectivityManager connectivityManager) {
        this.systemConnectivityManager = connectivityManager;
    }

    @Override // net.thunderbird.core.android.network.ConnectivityManagerBase
    public final boolean isNetworkAvailable() {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = this.systemConnectivityManager;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        return (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null || !networkCapabilities.hasCapability(12)) ? false : true;
    }

    @Override // net.thunderbird.core.android.network.ConnectivityManagerBase
    public final synchronized void start() {
        if (!this.isRunning) {
            this.isRunning = true;
            this.systemConnectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), this.networkCallback);
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
