package androidx.work.impl.workers;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: ConstraintTrackingWorker.kt */
/* loaded from: classes.dex */
final class ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;

    ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object awaitConstraintsNotMet;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        awaitConstraintsNotMet = ConstraintTrackingWorkerKt.awaitConstraintsNotMet(null, null, this);
        return awaitConstraintsNotMet;
    }
}
