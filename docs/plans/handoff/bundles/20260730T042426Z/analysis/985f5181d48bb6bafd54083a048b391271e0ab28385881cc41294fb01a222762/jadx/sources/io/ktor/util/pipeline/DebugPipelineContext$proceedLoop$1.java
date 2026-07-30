package io.ktor.util.pipeline;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: DebugPipelineContext.kt */
/* loaded from: classes.dex */
final class DebugPipelineContext$proceedLoop$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DebugPipelineContext this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DebugPipelineContext$proceedLoop$1(DebugPipelineContext debugPipelineContext, Continuation continuation) {
        super(continuation);
        this.this$0 = debugPipelineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object proceedLoop;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        proceedLoop = this.this$0.proceedLoop(this);
        return proceedLoop;
    }
}
