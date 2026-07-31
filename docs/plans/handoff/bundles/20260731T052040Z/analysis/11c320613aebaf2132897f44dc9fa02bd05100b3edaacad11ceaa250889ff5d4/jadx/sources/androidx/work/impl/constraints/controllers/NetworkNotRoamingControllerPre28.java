package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.Logger$LogcatLogger;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.model.WorkSpec;
import org.commonmark.node.Node;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NetworkNotRoamingControllerPre28 extends BaseConstraintController {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("NetworkNotRoamingCtrlr");
    public final int reason;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkNotRoamingControllerPre28(Node node) {
        super(node);
        node.getClass();
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
