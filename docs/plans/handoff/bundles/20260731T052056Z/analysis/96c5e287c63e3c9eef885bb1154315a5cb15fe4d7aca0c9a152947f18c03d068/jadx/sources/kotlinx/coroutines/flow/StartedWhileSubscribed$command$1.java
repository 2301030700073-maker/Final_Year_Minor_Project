package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3 {
    public /* synthetic */ int I$0;
    public /* synthetic */ FlowCollector L$0;
    public int label;
    public final /* synthetic */ StartedWhileSubscribed this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartedWhileSubscribed$command$1(StartedWhileSubscribed startedWhileSubscribed, Continuation continuation) {
        super(3, continuation);
        this.this$0 = startedWhileSubscribed;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int intValue = ((Number) obj2).intValue();
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this.this$0, (Continuation) obj3);
        startedWhileSubscribed$command$1.L$0 = (FlowCollector) obj;
        startedWhileSubscribed$command$1.I$0 = intValue;
        return startedWhileSubscribed$command$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0081, code lost:
    
        if (r0.emit(r13, r12) == r3) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0074, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(r1, r12) == r3) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0069, code lost:
    
        if (r0.emit(r13, r12) == r3) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0048, code lost:
    
        if (r13.emit(r0, r12) == r3) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlinx.coroutines.flow.StartedWhileSubscribed r0 = r12.this$0
            long r1 = r0.replayExpiration
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r4 = r12.label
            r5 = 0
            r6 = 5
            r7 = 4
            r8 = 3
            r9 = 2
            r10 = 1
            if (r4 == 0) goto L37
            if (r4 == r10) goto L33
            if (r4 == r9) goto L2d
            if (r4 == r8) goto L27
            if (r4 == r7) goto L21
            if (r4 != r6) goto L1b
            goto L33
        L1b:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r12)
            return r5
        L21:
            kotlinx.coroutines.flow.FlowCollector r0 = r12.L$0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L77
        L27:
            kotlinx.coroutines.flow.FlowCollector r0 = r12.L$0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L6c
        L2d:
            kotlinx.coroutines.flow.FlowCollector r0 = r12.L$0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L59
        L33:
            kotlin.ResultKt.throwOnFailure(r13)
            goto L84
        L37:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlinx.coroutines.flow.FlowCollector r13 = r12.L$0
            int r4 = r12.I$0
            if (r4 <= 0) goto L4b
            kotlinx.coroutines.flow.SharingCommand r0 = kotlinx.coroutines.flow.SharingCommand.START
            r12.label = r10
            java.lang.Object r12 = r13.emit(r0, r12)
            if (r12 != r3) goto L84
            goto L83
        L4b:
            long r10 = r0.stopTimeout
            r12.L$0 = r13
            r12.label = r9
            java.lang.Object r0 = kotlinx.coroutines.AwaitKt.delay(r10, r12)
            if (r0 != r3) goto L58
            goto L83
        L58:
            r0 = r13
        L59:
            r9 = 0
            int r13 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r13 <= 0) goto L77
            kotlinx.coroutines.flow.SharingCommand r13 = kotlinx.coroutines.flow.SharingCommand.STOP
            r12.L$0 = r0
            r12.label = r8
            java.lang.Object r13 = r0.emit(r13, r12)
            if (r13 != r3) goto L6c
            goto L83
        L6c:
            r12.L$0 = r0
            r12.label = r7
            java.lang.Object r13 = kotlinx.coroutines.AwaitKt.delay(r1, r12)
            if (r13 != r3) goto L77
            goto L83
        L77:
            kotlinx.coroutines.flow.SharingCommand r13 = kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE
            r12.L$0 = r5
            r12.label = r6
            java.lang.Object r12 = r0.emit(r13, r12)
            if (r12 != r3) goto L84
        L83:
            return r3
        L84:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
