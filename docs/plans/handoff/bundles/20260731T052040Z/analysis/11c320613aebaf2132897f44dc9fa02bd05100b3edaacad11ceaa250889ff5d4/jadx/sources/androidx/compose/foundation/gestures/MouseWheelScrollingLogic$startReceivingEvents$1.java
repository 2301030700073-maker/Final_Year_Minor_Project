package androidx.compose.foundation.gestures;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MouseWheelScrollingLogic$startReceivingEvents$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MouseWheelScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MouseWheelScrollingLogic$startReceivingEvents$1(MouseWheelScrollingLogic mouseWheelScrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.this$0 = mouseWheelScrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MouseWheelScrollingLogic$startReceivingEvents$1 mouseWheelScrollingLogic$startReceivingEvents$1 = new MouseWheelScrollingLogic$startReceivingEvents$1(this.this$0, continuation);
        mouseWheelScrollingLogic$startReceivingEvents$1.L$0 = obj;
        return mouseWheelScrollingLogic$startReceivingEvents$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MouseWheelScrollingLogic$startReceivingEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0074, code lost:
    
        if (androidx.compose.foundation.gestures.MouseWheelScrollingLogic.access$dispatchMouseWheelScroll(r5, r6, r7, r8, r9, r10) != r4) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003d A[Catch: all -> 0x007c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x007c, blocks: (B:5:0x0031, B:8:0x003d, B:13:0x0050), top: B:4:0x0031 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0077 -> B:4:0x0031). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            int r0 = r12.label
            r1 = 0
            r2 = 2
            r3 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L2a
            if (r0 == r3) goto L22
            if (r0 != r2) goto L1c
            java.lang.Object r0 = r12.L$0
            kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L17
            r10 = r12
        L15:
            r13 = r0
            goto L77
        L17:
            r0 = move-exception
            r13 = r0
            r10 = r12
            goto L89
        L1c:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r12)
            return r1
        L22:
            java.lang.Object r0 = r12.L$0
            kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L17
            goto L50
        L2a:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.Object r13 = r12.L$0
            kotlinx.coroutines.CoroutineScope r13 = (kotlinx.coroutines.CoroutineScope) r13
        L31:
            kotlin.coroutines.CoroutineContext r0 = r13.getCoroutineContext()     // Catch: java.lang.Throwable -> L7c
            boolean r0 = kotlinx.coroutines.JobKt.isActive(r0)     // Catch: java.lang.Throwable -> L7c
            androidx.compose.foundation.gestures.MouseWheelScrollingLogic r5 = r12.this$0
            if (r0 == 0) goto L84
            kotlinx.coroutines.channels.BufferedChannel r0 = r5.channel     // Catch: java.lang.Throwable -> L7c
            r12.L$0 = r13     // Catch: java.lang.Throwable -> L7c
            r12.label = r3     // Catch: java.lang.Throwable -> L7c
            r0.getClass()     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r0 = kotlinx.coroutines.channels.BufferedChannel.receive$suspendImpl(r0, r12)     // Catch: java.lang.Throwable -> L7f
            if (r0 != r4) goto L4d
            goto L76
        L4d:
            r11 = r0
            r0 = r13
            r13 = r11
        L50:
            r7 = r13
            androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta r7 = (androidx.compose.foundation.gestures.MouseWheelScrollingLogic.MouseWheelScrollDelta) r7     // Catch: java.lang.Throwable -> L7c
            androidx.compose.foundation.gestures.MouseWheelScrollingLogic r13 = r12.this$0     // Catch: java.lang.Throwable -> L7c
            androidx.compose.ui.unit.Density r13 = r13.density     // Catch: java.lang.Throwable -> L7c
            r5 = 1086324736(0x40c00000, float:6.0)
            float r8 = r13.mo63toPx0680j_4(r5)     // Catch: java.lang.Throwable -> L7c
            androidx.compose.foundation.gestures.MouseWheelScrollingLogic r13 = r12.this$0     // Catch: java.lang.Throwable -> L7c
            androidx.compose.ui.unit.Density r13 = r13.density     // Catch: java.lang.Throwable -> L7c
            r5 = 1065353216(0x3f800000, float:1.0)
            float r9 = r13.mo63toPx0680j_4(r5)     // Catch: java.lang.Throwable -> L7c
            androidx.compose.foundation.gestures.MouseWheelScrollingLogic r5 = r12.this$0     // Catch: java.lang.Throwable -> L7c
            androidx.compose.foundation.gestures.ScrollingLogic r6 = r5.scrollingLogic     // Catch: java.lang.Throwable -> L7c
            r12.L$0 = r0     // Catch: java.lang.Throwable -> L7c
            r12.label = r2     // Catch: java.lang.Throwable -> L7c
            r10 = r12
            java.lang.Object r12 = androidx.compose.foundation.gestures.MouseWheelScrollingLogic.access$dispatchMouseWheelScroll(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L79
            if (r12 != r4) goto L15
        L76:
            return r4
        L77:
            r12 = r10
            goto L31
        L79:
            r0 = move-exception
        L7a:
            r13 = r0
            goto L89
        L7c:
            r0 = move-exception
            r10 = r12
            goto L7a
        L7f:
            r0 = move-exception
            r10 = r12
            r12 = r0
            r13 = r12
            goto L89
        L84:
            r5.receivingMouseWheelEventsJob = r1
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        L89:
            androidx.compose.foundation.gestures.MouseWheelScrollingLogic r12 = r10.this$0
            r12.receivingMouseWheelEventsJob = r1
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$startReceivingEvents$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
