package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: Distinct.kt */
/* loaded from: classes2.dex */
final class DistinctFlowImpl$collect$2$emit$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DistinctFlowImpl$collect$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DistinctFlowImpl$collect$2$emit$1(DistinctFlowImpl$collect$2 distinctFlowImpl$collect$2, Continuation continuation) {
        super(continuation);
        this.this$0 = distinctFlowImpl$collect$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
