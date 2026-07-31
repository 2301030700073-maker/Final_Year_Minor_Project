package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerKt;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerPre28;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IndividualNetworkCallback extends ConnectivityManager.NetworkCallback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final /* synthetic */ int $r8$classId = 0;
    public final Object onConstraintState;

    public IndividualNetworkCallback(NetworkStateTrackerPre28 networkStateTrackerPre28) {
        this.onConstraintState = networkStateTrackerPre28;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onBlockedStatusChanged(Network network, boolean z) {
        switch (this.$r8$classId) {
            case 1:
                network.getClass();
                if (network.equals(((NetworkStateTrackerPre28) this.onConstraintState).connectivityManager.getActiveNetwork())) {
                    Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Network blocked status changed: " + z);
                    NetworkStateTrackerPre28 networkStateTrackerPre28 = (NetworkStateTrackerPre28) this.onConstraintState;
                    Object obj = networkStateTrackerPre28.currentState;
                    if (obj == null) {
                        obj = networkStateTrackerPre28.readSystemState();
                    }
                    NetworkState networkState = (NetworkState) obj;
                    NetworkStateTrackerPre28 networkStateTrackerPre282 = (NetworkStateTrackerPre28) this.onConstraintState;
                    synchronized (networkStateTrackerPre282.lock) {
                        if (networkStateTrackerPre282.isBlocked == z) {
                            return;
                        }
                        networkStateTrackerPre282.isBlocked = z;
                        ((NetworkStateTrackerPre28) this.onConstraintState).setState(new NetworkState(networkState.isConnected, networkState.isValidated, networkState.isMetered, networkState.isNotRoaming, z));
                        return;
                    }
                }
                return;
            default:
                super.onBlockedStatusChanged(network, z);
                return;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        int i = this.$r8$classId;
        network.getClass();
        networkCapabilities.getClass();
        switch (i) {
            case 0:
                Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onCapabilitiesChanged callback");
                ((NavController$$ExternalSyntheticLambda3) this.onConstraintState).invoke(ConstraintsState.ConstraintsMet.INSTANCE);
                break;
            default:
                Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Network capabilities changed: " + networkCapabilities);
                NetworkStateTrackerPre28 networkStateTrackerPre28 = (NetworkStateTrackerPre28) this.onConstraintState;
                networkStateTrackerPre28.setState(NetworkStateTrackerKt.getActiveNetworkState(networkStateTrackerPre28.connectivityManager, networkStateTrackerPre28.isBlocked));
                break;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        int i = this.$r8$classId;
        Object obj = this.onConstraintState;
        network.getClass();
        switch (i) {
            case 0:
                Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onLost callback");
                ((NavController$$ExternalSyntheticLambda3) obj).invoke(new ConstraintsState.ConstraintsNotMet(7));
                break;
            default:
                Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Network connection lost");
                ((NetworkStateTrackerPre28) obj).setState(new NetworkState(false, false, false, false, false));
                break;
        }
    }

    public IndividualNetworkCallback(NavController$$ExternalSyntheticLambda3 navController$$ExternalSyntheticLambda3) {
        this.onConstraintState = navController$$ExternalSyntheticLambda3;
    }
}
