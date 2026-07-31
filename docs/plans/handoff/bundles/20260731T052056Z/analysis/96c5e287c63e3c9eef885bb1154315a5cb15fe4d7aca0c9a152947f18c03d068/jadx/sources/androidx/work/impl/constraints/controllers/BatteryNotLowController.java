package androidx.work.impl.constraints.controllers;

import android.os.Build;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BatteryNotLowController extends BaseConstraintController {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BatteryNotLowController(ConstraintTracker constraintTracker, int i) {
        super(constraintTracker);
        this.$r8$classId = i;
    }

    @Override // androidx.work.impl.constraints.controllers.BaseConstraintController
    public final int getReason() {
        switch (this.$r8$classId) {
            case 0:
                return 5;
            case 1:
                return 6;
            case 2:
                return 7;
            case 3:
                return 7;
            default:
                return 9;
        }
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
}
