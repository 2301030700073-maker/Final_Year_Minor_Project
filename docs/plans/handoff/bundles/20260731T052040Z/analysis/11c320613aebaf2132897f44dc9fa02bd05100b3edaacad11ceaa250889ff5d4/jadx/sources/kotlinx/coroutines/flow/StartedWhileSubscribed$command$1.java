package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3 {
    /* synthetic */ int I$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ StartedWhileSubscribed this$0;

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

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0092, code lost:
    
        if (r0.emit(kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE, r10) == r9) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0083, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(Long.MAX_VALUE, r10) == r9) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        if (r0.emit(kotlinx.coroutines.flow.SharingCommand.STOP, r10) == r9) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0044, code lost:
    
        if (r0.emit(kotlinx.coroutines.flow.SharingCommand.START, r10) == r9) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0058, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(0, r10) == r9) goto L32;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = r10.L$0
            kotlinx.coroutines.flow.FlowCollector r0 = (kotlinx.coroutines.flow.FlowCollector) r0
            int r1 = r10.I$0
            int r2 = r10.label
            r3 = 0
            r4 = 5
            r5 = 4
            r6 = 3
            r7 = 2
            r8 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L33
            if (r2 == r8) goto L2f
            if (r2 == r7) goto L2b
            if (r2 == r6) goto L27
            if (r2 == r5) goto L23
            if (r2 != r4) goto L1d
            goto L2f
        L1d:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r10)
            return r3
        L23:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L86
        L27:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L6f
        L2b:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L5b
        L2f:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L95
        L33:
            kotlin.ResultKt.throwOnFailure(r11)
            if (r1 <= 0) goto L47
            r10.L$0 = r3
            r10.I$0 = r1
            r10.label = r8
            kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.START
            java.lang.Object r10 = r0.emit(r11, r10)
            if (r10 != r9) goto L95
            goto L94
        L47:
            kotlinx.coroutines.flow.StartedWhileSubscribed r11 = r10.this$0
            r11.getClass()
            r10.L$0 = r0
            r10.I$0 = r1
            r10.label = r7
            r7 = 0
            java.lang.Object r11 = kotlinx.coroutines.JobKt.delay(r7, r10)
            if (r11 != r9) goto L5b
            goto L94
        L5b:
            kotlinx.coroutines.flow.StartedWhileSubscribed r11 = r10.this$0
            r11.getClass()
            r10.L$0 = r0
            r10.I$0 = r1
            r10.label = r6
            kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.STOP
            java.lang.Object r11 = r0.emit(r11, r10)
            if (r11 != r9) goto L6f
            goto L94
        L6f:
            kotlinx.coroutines.flow.StartedWhileSubscribed r11 = r10.this$0
            r11.getClass()
            r10.L$0 = r0
            r10.I$0 = r1
            r10.label = r5
            r5 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            java.lang.Object r11 = kotlinx.coroutines.JobKt.delay(r5, r10)
            if (r11 != r9) goto L86
            goto L94
        L86:
            r10.L$0 = r3
            r10.I$0 = r1
            r10.label = r4
            kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE
            java.lang.Object r10 = r0.emit(r11, r10)
            if (r10 != r9) goto L95
        L94:
            return r9
        L95:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
