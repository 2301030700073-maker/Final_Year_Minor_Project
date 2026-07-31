package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.Logger$LogcatLogger;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkNotRoamingControllerPre28 extends BaseConstraintController {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("NetworkNotRoamingCtrlr");
    public final int reason;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkNotRoamingControllerPre28(ConstraintTracker constraintTracker) {
        super(constraintTracker);
        constraintTracker.getClass();
        this.reason = 7;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public final int getReason() {
        return this.reason;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean hasConstraint(WorkSpec workSpec) {
        workSpec.getClass();
        return workSpec.constraints.requiredNetworkType == NetworkType.NOT_ROAMING;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public final boolean isConstrained(Object obj) {
        NetworkState networkState = (NetworkState) obj;
        networkState.getClass();
        boolean z = networkState.isBlocked;
        boolean z2 = networkState.isConnected;
        if (Build.VERSION.SDK_INT >= 24) {
            return (z2 && networkState.isNotRoaming && !z) ? false : true;
        }
        Logger$LogcatLogger.get().debug(TAG, "Not-roaming network constraint is not supported before API 24, only checking for connected state.");
        return !z2 || z;
    }
}
