package androidx.work.impl.constraints.controllers;

import androidx.paging.PageFetcher$flow$1;
import androidx.work.Constraints;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.CallbackFlowBuilder;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        return StateFlowKt.callbackFlow(new PageFetcher$flow$1(20, this, (Continuation) null));
    }
}
