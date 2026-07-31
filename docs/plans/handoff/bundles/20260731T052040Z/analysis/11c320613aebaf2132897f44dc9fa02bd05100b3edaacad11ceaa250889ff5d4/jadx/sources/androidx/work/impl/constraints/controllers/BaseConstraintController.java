package androidx.work.impl.constraints.controllers;

import androidx.work.Constraints;
import androidx.work.impl.model.WorkSpec;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.CallbackFlowBuilder;
import org.commonmark.node.Node;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BaseConstraintController implements ConstraintController {
    public final Node tracker;

    public BaseConstraintController(Node node) {
        node.getClass();
        this.tracker = node;
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
        return new CallbackFlowBuilder(new BaseConstraintController$track$1(this, null), EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND);
    }
}
