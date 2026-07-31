package androidx.glance.session;

import androidx.paging.PageFetcher$flow$1;
import coil3.util.ContextsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TimerScopeKt$withTimerOrNull$1 extends ContinuationImpl {
    public PageFetcher$flow$1 L$0;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ContextsKt.withTimerOrNull(null, null, this);
    }
}
