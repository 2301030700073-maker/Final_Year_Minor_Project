package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.ConstraintsState;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BaseConstraintController$track$1$listener$1 {
    public final /* synthetic */ ProducerScope $$this$callbackFlow;
    public final /* synthetic */ BaseConstraintController this$0;

    public BaseConstraintController$track$1$listener$1(BaseConstraintController baseConstraintController, ProducerScope producerScope) {
        this.this$0 = baseConstraintController;
        this.$$this$callbackFlow = producerScope;
    }

    public final void onConstraintChanged(Object obj) {
        BaseConstraintController baseConstraintController = this.this$0;
        Object constraintsNotMet = baseConstraintController.isConstrained(obj) ? new ConstraintsState.ConstraintsNotMet(baseConstraintController.getReason()) : ConstraintsState.ConstraintsMet.INSTANCE;
        ProducerCoroutine producerCoroutine = (ProducerCoroutine) this.$$this$callbackFlow;
        producerCoroutine.getClass();
        producerCoroutine.mo691trySendJP2dKIU(constraintsNotMet);
    }
}
