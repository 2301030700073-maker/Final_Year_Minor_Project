package androidx.work.impl.constraints.controllers;

import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.work.Constraints;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.CallbackFlowBuilder;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BaseConstraintController implements ConstraintController {
    public final ConstraintTracker tracker;

    public BaseConstraintController(ConstraintTracker constraintTracker) {
        constraintTracker.getClass();
        this.tracker = constraintTracker;
    }

    public abstract int getReason();

    public abstract boolean isConstrained(Object obj);

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final boolean isCurrentlyConstrained(WorkSpec workSpec) {
        return hasConstraint(workSpec) && isConstrained(this.tracker.readSystemState());
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public final CallbackFlowBuilder track(Constraints constraints) {
        constraints.getClass();
        return FlowKt.callbackFlow(new BlockRunner$maybeRun$1(this, (Continuation) null, 19));
    }
}
