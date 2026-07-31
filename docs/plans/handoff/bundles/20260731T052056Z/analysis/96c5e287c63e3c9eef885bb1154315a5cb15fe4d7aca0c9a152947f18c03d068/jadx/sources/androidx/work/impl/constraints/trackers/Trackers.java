package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.os.Build;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Trackers {
    public final ConstraintTracker batteryChargingTracker;
    public final BatteryNotLowTracker batteryNotLowTracker;
    public final Context context;
    public final ConstraintTracker networkStateTracker;
    public final ConstraintTracker storageNotLowTracker;

    public Trackers(Context context, WorkManagerTaskExecutor workManagerTaskExecutor) {
        ConstraintTracker constraintTracker;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        BatteryNotLowTracker batteryNotLowTracker = new BatteryNotLowTracker(applicationContext, workManagerTaskExecutor, 1);
        Context applicationContext2 = context.getApplicationContext();
        applicationContext2.getClass();
        BatteryNotLowTracker batteryNotLowTracker2 = new BatteryNotLowTracker(applicationContext2, workManagerTaskExecutor, 0);
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            Context applicationContext3 = context.getApplicationContext();
            applicationContext3.getClass();
            String str = NetworkStateTrackerKt.TAG;
            constraintTracker = i >= 24 ? new NetworkStateTrackerPre28(applicationContext3, workManagerTaskExecutor) : new NetworkStateTrackerPre24(applicationContext3, workManagerTaskExecutor);
        } else {
            constraintTracker = null;
        }
        Context applicationContext4 = context.getApplicationContext();
        applicationContext4.getClass();
        BatteryNotLowTracker batteryNotLowTracker3 = new BatteryNotLowTracker(applicationContext4, workManagerTaskExecutor, 2);
        this.context = context;
        this.batteryChargingTracker = batteryNotLowTracker;
        this.batteryNotLowTracker = batteryNotLowTracker2;
        this.networkStateTracker = constraintTracker;
        this.storageNotLowTracker = batteryNotLowTracker3;
    }
}
