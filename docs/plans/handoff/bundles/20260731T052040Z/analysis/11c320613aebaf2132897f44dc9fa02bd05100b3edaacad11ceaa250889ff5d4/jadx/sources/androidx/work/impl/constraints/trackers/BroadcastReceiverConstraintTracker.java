package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.Logger$LogcatLogger;
import okhttp3.Dispatcher;
import org.commonmark.node.Node;
import org.schabi.newpipe.MainActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BroadcastReceiverConstraintTracker extends Node {
    public final MainActivity.AnonymousClass3 broadcastReceiver;

    public BroadcastReceiverConstraintTracker(Context context, Dispatcher dispatcher) {
        super(context, dispatcher);
        this.broadcastReceiver = new MainActivity.AnonymousClass3(this, 2);
    }

    public abstract IntentFilter getIntentFilter();

    public abstract void onBroadcastReceive(Intent intent);

    @Override // org.commonmark.node.Node
    public final void startTracking() {
        Logger$LogcatLogger.get().debug(BroadcastReceiverConstraintTrackerKt.TAG, getClass().getSimpleName().concat(": registering receiver"));
        ((Context) this.firstChild).registerReceiver(this.broadcastReceiver, getIntentFilter());
    }

    @Override // org.commonmark.node.Node
    public final void stopTracking() {
        Logger$LogcatLogger.get().debug(BroadcastReceiverConstraintTrackerKt.TAG, getClass().getSimpleName().concat(": unregistering receiver"));
        ((Context) this.firstChild).unregisterReceiver(this.broadcastReceiver);
    }
}
