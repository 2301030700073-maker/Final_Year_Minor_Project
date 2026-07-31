package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import androidx.work.Logger$LogcatLogger;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkStateTrackerPre24 extends BroadcastReceiverConstraintTracker {
    public final ConnectivityManager connectivityManager;

    public NetworkStateTrackerPre24(Context context, Dispatcher dispatcher) {
        super(context, dispatcher);
        Object systemService = this.appContext.getSystemService("connectivity");
        systemService.getClass();
        this.connectivityManager = (ConnectivityManager) systemService;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public final IntentFilter getIntentFilter() {
        return new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public final void onBroadcastReceive(Intent intent) {
        if (Intrinsics.areEqual(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
            Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Network broadcast received");
            setState(NetworkStateTrackerKt.getActiveNetworkState(this.connectivityManager, false));
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final Object readSystemState() {
        return NetworkStateTrackerKt.getActiveNetworkState(this.connectivityManager, false);
    }
}
