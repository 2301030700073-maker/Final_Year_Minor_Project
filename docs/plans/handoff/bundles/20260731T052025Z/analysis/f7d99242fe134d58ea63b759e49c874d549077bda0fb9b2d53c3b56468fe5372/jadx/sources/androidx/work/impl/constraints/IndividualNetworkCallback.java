package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerKt;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerPre28;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import com.bumptech.glide.util.Util;
import com.takisoft.datetimepicker.widget.NumberPicker;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.network.ConnectivityManagerApi23;
import net.thunderbird.core.android.network.ConnectivityManagerApi24;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IndividualNetworkCallback extends ConnectivityManager.NetworkCallback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final /* synthetic */ int $r8$classId;
    public final Object onConstraintState;

    public IndividualNetworkCallback(DI$$ExternalSyntheticLambda0 dI$$ExternalSyntheticLambda0) {
        this.$r8$classId = 0;
        this.onConstraintState = dI$$ExternalSyntheticLambda0;
    }

    public void notifyIfActiveNetworkOrConnectivityHasChanged() {
        Network activeNetwork = ((ConnectivityManagerApi23) this.onConstraintState).systemConnectivityManager.getActiveNetwork();
        boolean isNetworkAvailable = ((ConnectivityManagerApi23) this.onConstraintState).isNetworkAvailable();
        ConnectivityManagerApi23 connectivityManagerApi23 = (ConnectivityManagerApi23) this.onConstraintState;
        synchronized (connectivityManagerApi23) {
            try {
                if (Intrinsics.areEqual(activeNetwork, connectivityManagerApi23.lastActiveNetwork)) {
                    if (!Boolean.valueOf(isNetworkAvailable).equals(connectivityManagerApi23.wasConnected)) {
                    }
                }
                connectivityManagerApi23.lastActiveNetwork = activeNetwork;
                connectivityManagerApi23.wasConnected = Boolean.valueOf(isNetworkAvailable);
                if (isNetworkAvailable) {
                    connectivityManagerApi23.notifyOnConnectivityChanged();
                } else {
                    connectivityManagerApi23.notifyOnConnectivityLost();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        switch (this.$r8$classId) {
            case 2:
                Util.getUiThreadHandler().post(new NumberPicker.ChangeCurrentByOneFromLongPressCommand(1, this, 1 == true ? 1 : 0));
                return;
            case 3:
                network.getClass();
                Log.v("Network available: " + network, new Object[0]);
                notifyIfActiveNetworkOrConnectivityHasChanged();
                return;
            case 4:
                network.getClass();
                Log.v("Network available: " + network, new Object[0]);
                ConnectivityManagerApi24 connectivityManagerApi24 = (ConnectivityManagerApi24) this.onConstraintState;
                synchronized (connectivityManagerApi24) {
                    connectivityManagerApi24.isNetworkAvailable = Boolean.TRUE;
                    connectivityManagerApi24.notifyOnConnectivityChanged();
                }
                return;
            default:
                super.onAvailable(network);
                return;
        }
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
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        switch (this.$r8$classId) {
            case 0:
                network.getClass();
                networkCapabilities.getClass();
                Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onCapabilitiesChanged callback");
                ((DI$$ExternalSyntheticLambda0) this.onConstraintState).invoke(ConstraintsState.ConstraintsMet.INSTANCE);
                break;
            case 1:
                network.getClass();
                networkCapabilities.getClass();
                Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Network capabilities changed: " + networkCapabilities);
                NetworkStateTrackerPre28 networkStateTrackerPre28 = (NetworkStateTrackerPre28) this.onConstraintState;
                networkStateTrackerPre28.setState(NetworkStateTrackerKt.getActiveNetworkState(networkStateTrackerPre28.connectivityManager, networkStateTrackerPre28.isBlocked));
                break;
            default:
                super.onCapabilitiesChanged(network, networkCapabilities);
                break;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                network.getClass();
                Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onLost callback");
                ((DI$$ExternalSyntheticLambda0) this.onConstraintState).invoke(new ConstraintsState.ConstraintsNotMet(7));
                return;
            case 1:
                network.getClass();
                Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Network connection lost");
                ((NetworkStateTrackerPre28) this.onConstraintState).setState(new NetworkState(false, false, false, false, false));
                return;
            case 2:
                Util.getUiThreadHandler().post(new NumberPicker.ChangeCurrentByOneFromLongPressCommand(1, this, z));
                return;
            case 3:
                network.getClass();
                Log.v("Network lost: " + network, new Object[0]);
                notifyIfActiveNetworkOrConnectivityHasChanged();
                return;
            default:
                network.getClass();
                Log.v("Network lost: " + network, new Object[0]);
                ConnectivityManagerApi24 connectivityManagerApi24 = (ConnectivityManagerApi24) this.onConstraintState;
                synchronized (connectivityManagerApi24) {
                    connectivityManagerApi24.isNetworkAvailable = Boolean.FALSE;
                    connectivityManagerApi24.notifyOnConnectivityLost();
                }
                return;
        }
    }

    public /* synthetic */ IndividualNetworkCallback(int i, Object obj) {
        this.$r8$classId = i;
        this.onConstraintState = obj;
    }
}
