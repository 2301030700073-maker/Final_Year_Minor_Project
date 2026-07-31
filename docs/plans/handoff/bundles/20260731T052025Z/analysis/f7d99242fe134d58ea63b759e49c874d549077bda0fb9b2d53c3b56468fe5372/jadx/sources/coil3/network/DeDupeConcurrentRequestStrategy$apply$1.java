package coil3.network;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "coil3.network.DeDupeConcurrentRequestStrategy", f = "ConcurrentRequestStrategy.kt", l = {58, 62}, m = "apply", v = 1)
/* loaded from: classes.dex */
public final class DeDupeConcurrentRequestStrategy$apply$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DeDupeConcurrentRequestStrategy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeDupeConcurrentRequestStrategy$apply$1(DeDupeConcurrentRequestStrategy deDupeConcurrentRequestStrategy, Continuation continuation) {
        super(continuation);
        this.this$0 = deDupeConcurrentRequestStrategy;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.apply(null, null, this);
    }
}
