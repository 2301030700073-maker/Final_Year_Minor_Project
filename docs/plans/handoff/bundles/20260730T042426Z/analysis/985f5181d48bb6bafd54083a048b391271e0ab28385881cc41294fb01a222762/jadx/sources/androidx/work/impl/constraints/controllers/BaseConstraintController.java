package androidx.work.impl.constraints.controllers;

import androidx.work.Constraints;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: ContraintControllers.kt */
/* loaded from: classes.dex */
public abstract class BaseConstraintController implements ConstraintController {
    private final ConstraintTracker tracker;

    protected abstract int getReason();

    protected abstract boolean isConstrained(Object obj);

    public BaseConstraintController(ConstraintTracker tracker) {
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        this.tracker = tracker;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public Flow track(Constraints constraints) {
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        return FlowKt.callbackFlow(new BaseConstraintController$track$1(this, null));
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean isCurrentlyConstrained(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        return hasConstraint(workSpec) && isConstrained(this.tracker.readSystemState());
    }
}
