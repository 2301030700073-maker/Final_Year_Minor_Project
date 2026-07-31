package coil3.compose;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConstraintsSizeResolver$size$1 extends ContinuationImpl {
    public Ref$ObjectRef L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ConstraintsSizeResolver this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintsSizeResolver$size$1(ConstraintsSizeResolver constraintsSizeResolver, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = constraintsSizeResolver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.size(this);
    }
}
