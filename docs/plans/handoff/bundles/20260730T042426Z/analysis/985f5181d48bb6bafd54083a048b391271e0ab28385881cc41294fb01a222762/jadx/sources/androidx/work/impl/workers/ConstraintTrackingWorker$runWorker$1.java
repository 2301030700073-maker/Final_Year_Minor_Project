package androidx.work.impl.workers;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: ConstraintTrackingWorker.kt */
/* loaded from: classes.dex */
final class ConstraintTrackingWorker$runWorker$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ConstraintTrackingWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConstraintTrackingWorker$runWorker$1(ConstraintTrackingWorker constraintTrackingWorker, Continuation continuation) {
        super(continuation);
        this.this$0 = constraintTrackingWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object runWorker;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        runWorker = this.this$0.runWorker(null, null, null, this);
        return runWorker;
    }
}
