package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import androidx.work.Logger$LogcatLogger;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NetworkStateTrackerPre24 extends BroadcastReceiverConstraintTracker {
    public final ConnectivityManager connectivityManager;

    public NetworkStateTrackerPre24(Context context, Dispatcher dispatcher) {
        super(context, dispatcher);
        Object systemService = ((Context) this.firstChild).getSystemService("connectivity");
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

    @Override // org.commonmark.node.Node
    public final Object readSystemState() {
        return NetworkStateTrackerKt.getActiveNetworkState(this.connectivityManager, false);
    }
}
