package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.model.WorkSpec;
import com.fsck.k9.Preferences$getAccountFlow$1;
import kotlinx.coroutines.flow.CallbackFlowBuilder;
import kotlinx.coroutines.flow.FlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkRequestConstraintController implements ConstraintController {
    public final ConnectivityManager connManager;

    public NetworkRequestConstraintController(ConnectivityManager connectivityManager) {
        this.connManager = connectivityManager;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean hasConstraint(WorkSpec workSpec) {
        workSpec.getClass();
        return (workSpec.constraints.getRequiredNetworkRequest() == null && workSpec.constraints.requiredNetworkType == NetworkType.NOT_REQUIRED) ? false : true;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean isCurrentlyConstrained(WorkSpec workSpec) {
        if (!hasConstraint(workSpec)) {
            return false;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn't supported");
        return false;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final CallbackFlowBuilder track(Constraints constraints) {
        constraints.getClass();
        return FlowKt.callbackFlow(new Preferences$getAccountFlow$1(constraints, this, null, 12));
    }
}
