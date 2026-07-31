package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.Logger$LogcatLogger;
import com.fsck.k9.backends.AndroidAlarmManager;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BroadcastReceiverConstraintTracker extends ConstraintTracker {
    public final AndroidAlarmManager.AnonymousClass1 broadcastReceiver;

    public BroadcastReceiverConstraintTracker(Context context, Dispatcher dispatcher) {
        super(context, dispatcher);
        this.broadcastReceiver = new AndroidAlarmManager.AnonymousClass1(2, this);
    }

    public abstract IntentFilter getIntentFilter();

    public abstract void onBroadcastReceive(Intent intent);

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void startTracking() {
        Logger$LogcatLogger.get().debug(BroadcastReceiverConstraintTrackerKt.TAG, getClass().getSimpleName().concat(": registering receiver"));
        this.appContext.registerReceiver(this.broadcastReceiver, getIntentFilter());
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void stopTracking() {
        Logger$LogcatLogger.get().debug(BroadcastReceiverConstraintTrackerKt.TAG, getClass().getSimpleName().concat(": unregistering receiver"));
        this.appContext.unregisterReceiver(this.broadcastReceiver);
    }
}
