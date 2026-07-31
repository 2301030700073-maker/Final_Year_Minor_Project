package expo.modules.updates.procedures;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: StateMachineSerialExecutorQueue.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "expo.modules.updates.procedures.StateMachineSerialExecutorQueue", f = "StateMachineSerialExecutorQueue.kt", i = {0}, l = {41, 72}, m = "executeProcedure", n = {"holder"}, s = {"L$0"})
/* loaded from: classes5.dex */
final class StateMachineSerialExecutorQueue$executeProcedure$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ StateMachineSerialExecutorQueue this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StateMachineSerialExecutorQueue$executeProcedure$1(StateMachineSerialExecutorQueue stateMachineSerialExecutorQueue, Continuation<? super StateMachineSerialExecutorQueue$executeProcedure$1> continuation) {
        super(continuation);
        this.this$0 = stateMachineSerialExecutorQueue;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.executeProcedure(null, this);
    }
}
