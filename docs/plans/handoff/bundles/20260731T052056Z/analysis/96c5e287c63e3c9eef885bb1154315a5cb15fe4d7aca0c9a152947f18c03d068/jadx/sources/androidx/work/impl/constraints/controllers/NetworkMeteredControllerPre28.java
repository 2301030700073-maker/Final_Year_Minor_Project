package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.Logger$LogcatLogger;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.model.WorkSpec;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NetworkMeteredControllerPre28 extends BaseConstraintController {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("NetworkMeteredCtrlr");

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public final int getReason() {
        return 7;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean hasConstraint(WorkSpec workSpec) {
        workSpec.getClass();
        return workSpec.constraints.requiredNetworkType == NetworkType.METERED;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public final boolean isConstrained(Object obj) {
        NetworkState networkState = (NetworkState) obj;
        networkState.getClass();
        boolean z = networkState.isBlocked;
        boolean z2 = networkState.isConnected;
        if (Build.VERSION.SDK_INT >= 26) {
            return (z2 && networkState.isMetered && !z) ? false : true;
        }
        Logger$LogcatLogger.get().debug(TAG, "Metered network constraint is not supported before API 26, only checking for connected state.");
        return !z2 || z;
    }
}
