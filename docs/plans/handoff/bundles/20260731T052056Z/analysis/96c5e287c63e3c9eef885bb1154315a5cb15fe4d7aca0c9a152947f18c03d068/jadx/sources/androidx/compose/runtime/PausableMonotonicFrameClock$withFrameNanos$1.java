package androidx.compose.runtime;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PausableMonotonicFrameClock$withFrameNanos$1 extends ContinuationImpl {
    public Function1 L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ BroadcastFrameClock this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PausableMonotonicFrameClock$withFrameNanos$1(BroadcastFrameClock broadcastFrameClock, Continuation continuation) {
        super(continuation);
        this.this$0 = broadcastFrameClock;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.withFrameNanos(null, this);
    }
}
