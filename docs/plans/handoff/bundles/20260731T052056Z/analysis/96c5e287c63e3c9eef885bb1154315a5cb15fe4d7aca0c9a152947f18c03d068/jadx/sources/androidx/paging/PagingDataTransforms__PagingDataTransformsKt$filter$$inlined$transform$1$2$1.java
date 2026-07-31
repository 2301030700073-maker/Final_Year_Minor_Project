package androidx.paging;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;

/* loaded from: classes.dex */
public final class PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1 extends ContinuationImpl {
    public FlowCollector L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1(FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2, Continuation continuation) {
        super(continuation);
        this.this$0 = flowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
