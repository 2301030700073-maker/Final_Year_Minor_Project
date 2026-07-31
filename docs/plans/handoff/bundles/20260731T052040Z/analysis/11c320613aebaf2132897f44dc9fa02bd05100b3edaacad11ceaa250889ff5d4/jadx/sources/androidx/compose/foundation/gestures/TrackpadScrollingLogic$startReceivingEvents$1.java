package androidx.compose.foundation.gestures;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TrackpadScrollingLogic$startReceivingEvents$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ TrackpadScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrackpadScrollingLogic$startReceivingEvents$1(TrackpadScrollingLogic trackpadScrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.this$0 = trackpadScrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TrackpadScrollingLogic$startReceivingEvents$1 trackpadScrollingLogic$startReceivingEvents$1 = new TrackpadScrollingLogic$startReceivingEvents$1(this.this$0, continuation);
        trackpadScrollingLogic$startReceivingEvents$1.L$0 = obj;
        return trackpadScrollingLogic$startReceivingEvents$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TrackpadScrollingLogic$startReceivingEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006b -> B:9:0x0035). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            int r0 = r8.label
            r1 = 2
            r2 = 1
            r3 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L2e
            if (r0 == r2) goto L1e
            if (r0 != r1) goto L18
            java.lang.Object r0 = r8.L$0
            kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L16
            r9 = r0
            goto L35
        L16:
            r9 = move-exception
            goto L72
        L18:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r8)
            return r3
        L1e:
            java.lang.Object r0 = r8.L$2
            androidx.compose.foundation.gestures.ScrollingLogic r0 = (androidx.compose.foundation.gestures.ScrollingLogic) r0
            java.lang.Object r5 = r8.L$1
            androidx.compose.foundation.gestures.TrackpadScrollingLogic r5 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic) r5
            java.lang.Object r6 = r8.L$0
            kotlinx.coroutines.CoroutineScope r6 = (kotlinx.coroutines.CoroutineScope) r6
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L16
            goto L5a
        L2e:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            kotlinx.coroutines.CoroutineScope r9 = (kotlinx.coroutines.CoroutineScope) r9
        L35:
            kotlin.coroutines.CoroutineContext r0 = r9.getCoroutineContext()     // Catch: java.lang.Throwable -> L16
            boolean r0 = kotlinx.coroutines.JobKt.isActive(r0)     // Catch: java.lang.Throwable -> L16
            androidx.compose.foundation.gestures.TrackpadScrollingLogic r5 = r8.this$0
            if (r0 == 0) goto L6d
            androidx.compose.foundation.gestures.ScrollingLogic r0 = r5.scrollingLogic     // Catch: java.lang.Throwable -> L16
            kotlinx.coroutines.channels.BufferedChannel r6 = r5.channel     // Catch: java.lang.Throwable -> L16
            r8.L$0 = r9     // Catch: java.lang.Throwable -> L16
            r8.L$1 = r5     // Catch: java.lang.Throwable -> L16
            r8.L$2 = r0     // Catch: java.lang.Throwable -> L16
            r8.label = r2     // Catch: java.lang.Throwable -> L16
            r6.getClass()     // Catch: java.lang.Throwable -> L16
            java.lang.Object r6 = kotlinx.coroutines.channels.BufferedChannel.receive$suspendImpl(r6, r8)     // Catch: java.lang.Throwable -> L16
            if (r6 != r4) goto L57
            goto L6a
        L57:
            r7 = r6
            r6 = r9
            r9 = r7
        L5a:
            androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta r9 = (androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta) r9     // Catch: java.lang.Throwable -> L16
            r8.L$0 = r6     // Catch: java.lang.Throwable -> L16
            r8.L$1 = r3     // Catch: java.lang.Throwable -> L16
            r8.L$2 = r3     // Catch: java.lang.Throwable -> L16
            r8.label = r1     // Catch: java.lang.Throwable -> L16
            java.lang.Object r9 = androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$dispatchTrackpadScroll(r5, r0, r9, r8)     // Catch: java.lang.Throwable -> L16
            if (r9 != r4) goto L6b
        L6a:
            return r4
        L6b:
            r9 = r6
            goto L35
        L6d:
            r5.receivingPanEventsJob = r3
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L72:
            androidx.compose.foundation.gestures.TrackpadScrollingLogic r8 = r8.this$0
            r8.receivingPanEventsJob = r3
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TrackpadScrollingLogic$startReceivingEvents$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
