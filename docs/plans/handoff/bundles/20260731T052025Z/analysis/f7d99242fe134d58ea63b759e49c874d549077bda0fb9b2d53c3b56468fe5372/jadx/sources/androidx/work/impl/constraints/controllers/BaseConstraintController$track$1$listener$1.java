package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.ConstraintsState;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        producerCoroutine.mo1016trySendJP2dKIU(constraintsNotMet);
    }
}
