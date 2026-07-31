package androidx.paging;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1;

/* loaded from: classes.dex */
public final class PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ CombineKt$combineInternal$2$1$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1(CombineKt$combineInternal$2$1$1 combineKt$combineInternal$2$1$1, Continuation continuation) {
        super(continuation);
        this.this$0 = combineKt$combineInternal$2$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
