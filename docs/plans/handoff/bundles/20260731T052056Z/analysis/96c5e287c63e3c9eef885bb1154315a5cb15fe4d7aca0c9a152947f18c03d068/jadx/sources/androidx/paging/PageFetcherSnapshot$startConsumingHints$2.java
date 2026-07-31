package androidx.paging;

import androidx.paging.PageFetcherSnapshotState;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFetcherSnapshot$startConsumingHints$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public PageFetcherSnapshotState.Holder L$0;
    public MutexImpl L$1;
    public PageFetcherSnapshot L$2;
    public int label;
    public final /* synthetic */ PageFetcherSnapshot this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageFetcherSnapshot$startConsumingHints$2(PageFetcherSnapshot pageFetcherSnapshot, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = pageFetcherSnapshot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PageFetcherSnapshot pageFetcherSnapshot = this.this$0;
        switch (i) {
            case 0:
                return new PageFetcherSnapshot$startConsumingHints$2(pageFetcherSnapshot, continuation, 0);
            default:
                return new PageFetcherSnapshot$startConsumingHints$2(pageFetcherSnapshot, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((PageFetcherSnapshot$startConsumingHints$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x009f, code lost:
    
        if (r3.lock(r9) == r0) goto L36;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            int r0 = r9.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            androidx.paging.PageFetcherSnapshot r2 = r9.this$0
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            r4 = 2
            r5 = 1
            r6 = 0
            switch(r0) {
                case 0: goto L6f;
                default: goto Le;
            }
        Le:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r7 = r9.label
            if (r7 == 0) goto L2b
            if (r7 == r5) goto L21
            if (r7 != r4) goto L1c
            kotlin.ResultKt.throwOnFailure(r10)
            goto L69
        L1c:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            r1 = r6
            goto L69
        L21:
            androidx.paging.PageFetcherSnapshot r2 = r9.L$2
            kotlinx.coroutines.sync.MutexImpl r3 = r9.L$1
            androidx.paging.PageFetcherSnapshotState$Holder r5 = r9.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L42
        L2b:
            kotlin.ResultKt.throwOnFailure(r10)
            androidx.paging.PageFetcherSnapshotState$Holder r10 = r2.stateHolder
            kotlinx.coroutines.sync.MutexImpl r3 = r10.lock
            r9.L$0 = r10
            r9.L$1 = r3
            r9.L$2 = r2
            r9.label = r5
            java.lang.Object r5 = r3.lock(r9)
            if (r5 != r0) goto L41
            goto L68
        L41:
            r5 = r10
        L42:
            androidx.paging.PageFetcherSnapshotState r10 = r5.state     // Catch: java.lang.Throwable -> L6a
            kotlinx.coroutines.channels.BufferedChannel r5 = r10.appendGenerationIdCh     // Catch: java.lang.Throwable -> L6a
            kotlinx.coroutines.flow.ChannelAsFlow r5 = kotlinx.coroutines.flow.StateFlowKt.consumeAsFlow(r5)     // Catch: java.lang.Throwable -> L6a
            androidx.paging.PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1 r7 = new androidx.paging.PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1     // Catch: java.lang.Throwable -> L6a
            r8 = 0
            r7.<init>(r10, r6, r8)     // Catch: java.lang.Throwable -> L6a
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 r10 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1     // Catch: java.lang.Throwable -> L6a
            r10.<init>(r7, r5)     // Catch: java.lang.Throwable -> L6a
            r3.unlock(r6)
            androidx.paging.LoadType r3 = androidx.paging.LoadType.APPEND
            r9.L$0 = r6
            r9.L$1 = r6
            r9.L$2 = r6
            r9.label = r4
            java.lang.Object r9 = r2.collectAsGenerationalViewportHints(r10, r3, r9)
            if (r9 != r0) goto L69
        L68:
            r1 = r0
        L69:
            return r1
        L6a:
            r9 = move-exception
            r3.unlock(r6)
            throw r9
        L6f:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r7 = r9.label
            if (r7 == 0) goto L8c
            if (r7 == r5) goto L82
            if (r7 != r4) goto L7d
            kotlin.ResultKt.throwOnFailure(r10)
            goto Lc8
        L7d:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            r1 = r6
            goto Lc8
        L82:
            androidx.paging.PageFetcherSnapshot r2 = r9.L$2
            kotlinx.coroutines.sync.MutexImpl r3 = r9.L$1
            androidx.paging.PageFetcherSnapshotState$Holder r7 = r9.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto La2
        L8c:
            kotlin.ResultKt.throwOnFailure(r10)
            androidx.paging.PageFetcherSnapshotState$Holder r7 = r2.stateHolder
            kotlinx.coroutines.sync.MutexImpl r3 = r7.lock
            r9.L$0 = r7
            r9.L$1 = r3
            r9.L$2 = r2
            r9.label = r5
            java.lang.Object r10 = r3.lock(r9)
            if (r10 != r0) goto La2
            goto Lc7
        La2:
            androidx.paging.PageFetcherSnapshotState r10 = r7.state     // Catch: java.lang.Throwable -> Lc9
            kotlinx.coroutines.channels.BufferedChannel r7 = r10.prependGenerationIdCh     // Catch: java.lang.Throwable -> Lc9
            kotlinx.coroutines.flow.ChannelAsFlow r7 = kotlinx.coroutines.flow.StateFlowKt.consumeAsFlow(r7)     // Catch: java.lang.Throwable -> Lc9
            androidx.paging.PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1 r8 = new androidx.paging.PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1     // Catch: java.lang.Throwable -> Lc9
            r8.<init>(r10, r6, r5)     // Catch: java.lang.Throwable -> Lc9
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 r10 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1     // Catch: java.lang.Throwable -> Lc9
            r10.<init>(r8, r7)     // Catch: java.lang.Throwable -> Lc9
            r3.unlock(r6)
            androidx.paging.LoadType r3 = androidx.paging.LoadType.PREPEND
            r9.L$0 = r6
            r9.L$1 = r6
            r9.L$2 = r6
            r9.label = r4
            java.lang.Object r9 = r2.collectAsGenerationalViewportHints(r10, r3, r9)
            if (r9 != r0) goto Lc8
        Lc7:
            r1 = r0
        Lc8:
            return r1
        Lc9:
            r9 = move-exception
            r3.unlock(r6)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot$startConsumingHints$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
