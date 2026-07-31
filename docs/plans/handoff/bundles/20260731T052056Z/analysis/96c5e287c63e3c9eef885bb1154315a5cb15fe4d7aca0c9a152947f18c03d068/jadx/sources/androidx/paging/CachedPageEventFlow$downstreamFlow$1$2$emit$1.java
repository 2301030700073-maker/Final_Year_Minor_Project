package androidx.paging;

import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CachedPageEventFlow$downstreamFlow$1$2$emit$1 extends ContinuationImpl {
    public IndexedValue L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ CachedPageEventFlow$downstreamFlow$1$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CachedPageEventFlow$downstreamFlow$1$2$emit$1(CachedPageEventFlow$downstreamFlow$1$2 cachedPageEventFlow$downstreamFlow$1$2, Continuation continuation) {
        super(continuation);
        this.this$0 = cachedPageEventFlow$downstreamFlow$1$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit((IndexedValue) null, (Continuation) this);
    }
}
