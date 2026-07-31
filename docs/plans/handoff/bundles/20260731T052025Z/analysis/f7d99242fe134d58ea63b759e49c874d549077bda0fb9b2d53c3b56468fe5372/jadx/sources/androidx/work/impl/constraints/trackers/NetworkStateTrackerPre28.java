package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.constraints.IndividualNetworkCallback;
import androidx.work.impl.utils.NetworkApi24;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkStateTrackerPre28 extends ConstraintTracker {
    public final ConnectivityManager connectivityManager;
    public volatile boolean isBlocked;
    public final Object lock;
    public final IndividualNetworkCallback networkCallback;

    public NetworkStateTrackerPre28(Context context, Dispatcher dispatcher) {
        super(context, dispatcher);
        Object systemService = this.appContext.getSystemService("connectivity");
        systemService.getClass();
        this.connectivityManager = (ConnectivityManager) systemService;
        this.lock = new Object();
        this.networkCallback = new IndividualNetworkCallback(1, this);
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final Object readSystemState() {
        return NetworkStateTrackerKt.getActiveNetworkState(this.connectivityManager, this.isBlocked);
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void startTracking() {
        try {
            Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Registering network callback");
            NetworkApi24.registerDefaultNetworkCallbackCompat(this.connectivityManager, this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger$LogcatLogger.get().error(NetworkStateTrackerKt.TAG, "Received exception while registering network callback", e);
        } catch (SecurityException e2) {
            Logger$LogcatLogger.get().error(NetworkStateTrackerKt.TAG, "Received exception while registering network callback", e2);
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void stopTracking() {
        try {
            Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Unregistering network callback");
            this.connectivityManager.unregisterNetworkCallback(this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger$LogcatLogger.get().error(NetworkStateTrackerKt.TAG, "Received exception while unregistering network callback", e);
        } catch (SecurityException e2) {
            Logger$LogcatLogger.get().error(NetworkStateTrackerKt.TAG, "Received exception while unregistering network callback", e2);
        }
    }
}
