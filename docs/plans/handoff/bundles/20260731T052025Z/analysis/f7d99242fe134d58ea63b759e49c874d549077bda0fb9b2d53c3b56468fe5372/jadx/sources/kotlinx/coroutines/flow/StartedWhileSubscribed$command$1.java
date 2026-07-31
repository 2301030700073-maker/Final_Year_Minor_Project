package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0084, code lost:
    
        if (r2.emit(kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE, r14) != r13) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0075, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(r0, r14) == r13) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
    
        if (r2.emit(kotlinx.coroutines.flow.SharingCommand.STOP, r14) == r13) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0048, code lost:
    
        if (r2.emit(kotlinx.coroutines.flow.SharingCommand.START, r14) == r13) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0055, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(0, r14) == r13) goto L34;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            kotlinx.coroutines.flow.StartedWhileSubscribed r0 = r14.this$0
            long r0 = r0.replayExpiration
            kotlinx.coroutines.flow.FlowCollector r2 = r14.L$0
            int r3 = r14.I$0
            int r4 = r14.label
            r5 = 0
            r7 = 0
            r8 = 5
            r9 = 4
            r10 = 3
            r11 = 2
            r12 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r13 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 == 0) goto L37
            if (r4 == r12) goto L33
            if (r4 == r11) goto L2f
            if (r4 == r10) goto L2b
            if (r4 == r9) goto L27
            if (r4 != r8) goto L21
            goto L33
        L21:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r14)
            return r7
        L27:
            kotlin.ResultKt.throwOnFailure(r15)
            goto L78
        L2b:
            kotlin.ResultKt.throwOnFailure(r15)
            goto L6b
        L2f:
            kotlin.ResultKt.throwOnFailure(r15)
            goto L58
        L33:
            kotlin.ResultKt.throwOnFailure(r15)
            goto L87
        L37:
            kotlin.ResultKt.throwOnFailure(r15)
            if (r3 <= 0) goto L4b
            r14.L$0 = r7
            r14.I$0 = r3
            r14.label = r12
            kotlinx.coroutines.flow.SharingCommand r15 = kotlinx.coroutines.flow.SharingCommand.START
            java.lang.Object r14 = r2.emit(r15, r14)
            if (r14 != r13) goto L87
            goto L86
        L4b:
            r14.L$0 = r2
            r14.I$0 = r3
            r14.label = r11
            java.lang.Object r15 = kotlinx.coroutines.JobKt.delay(r5, r14)
            if (r15 != r13) goto L58
            goto L86
        L58:
            int r15 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r15 <= 0) goto L78
            r14.L$0 = r2
            r14.I$0 = r3
            r14.label = r10
            kotlinx.coroutines.flow.SharingCommand r15 = kotlinx.coroutines.flow.SharingCommand.STOP
            java.lang.Object r15 = r2.emit(r15, r14)
            if (r15 != r13) goto L6b
            goto L86
        L6b:
            r14.L$0 = r2
            r14.I$0 = r3
            r14.label = r9
            java.lang.Object r15 = kotlinx.coroutines.JobKt.delay(r0, r14)
            if (r15 != r13) goto L78
            goto L86
        L78:
            r14.L$0 = r7
            r14.I$0 = r3
            r14.label = r8
            kotlinx.coroutines.flow.SharingCommand r15 = kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE
            java.lang.Object r14 = r2.emit(r15, r14)
            if (r14 != r13) goto L87
        L86:
            return r13
        L87:
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
