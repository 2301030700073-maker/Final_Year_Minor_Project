package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.constraints.trackers.BatteryNotLowTracker;
import androidx.work.impl.model.WorkSpec;
import org.commonmark.node.Node;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BatteryNotLowController extends BaseConstraintController {
    public final /* synthetic */ int $r8$classId;
    public final int reason;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatteryNotLowController(Node node, int i) {
        super(node);
        this.$r8$classId = i;
        node.getClass();
        switch (i) {
            case 2:
                super(node);
                this.reason = 7;
                break;
            case 3:
                super(node);
                this.reason = 7;
                break;
            case 4:
                super(node);
                this.reason = 9;
                break;
            default:
                this.reason = 6;
                break;
        }
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public final int getReason() {
        switch (this.$r8$classId) {
        }
        return this.reason;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean hasConstraint(WorkSpec workSpec) {
        int i = this.$r8$classId;
        workSpec.getClass();
        switch (i) {
            case 0:
                return workSpec.constraints.requiresBatteryNotLow;
            case 1:
                return workSpec.constraints.requiresCharging;
            case 2:
                return workSpec.constraints.requiredNetworkType == NetworkType.CONNECTED;
            case 3:
                return workSpec.constraints.requiredNetworkType == NetworkType.UNMETERED;
            default:
                return workSpec.constraints.requiresStorageNotLow;
        }
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public final boolean isConstrained(Object obj) {
        boolean booleanValue;
        switch (this.$r8$classId) {
            case 0:
                booleanValue = ((Boolean) obj).booleanValue();
                break;
            case 1:
                booleanValue = ((Boolean) obj).booleanValue();
                break;
            case 2:
                NetworkState networkState = (NetworkState) obj;
                networkState.getClass();
                return networkState.isBlocked || !networkState.isConnected || (Build.VERSION.SDK_INT >= 26 && !networkState.isValidated);
            case 3:
                NetworkState networkState2 = (NetworkState) obj;
                networkState2.getClass();
                return !networkState2.isConnected || networkState2.isMetered || networkState2.isBlocked;
            default:
                booleanValue = ((Boolean) obj).booleanValue();
                break;
        }
        return !booleanValue;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatteryNotLowController(BatteryNotLowTracker batteryNotLowTracker) {
        super(batteryNotLowTracker);
        this.$r8$classId = 0;
        batteryNotLowTracker.getClass();
        this.reason = 5;
    }
}
