package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CombineKt$combineInternal$2$1$1 implements FlowCollector {
    public final /* synthetic */ int $i;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $resultChannel;

    public /* synthetic */ CombineKt$combineInternal$2$1$1(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.$resultChannel = obj;
        this.$i = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        if (((kotlinx.coroutines.channels.BufferedChannel) r3).send(r10, r0) == r12) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0080  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r11, kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            int r0 = r10.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            int r2 = r10.$i
            java.lang.Object r3 = r10.$resultChannel
            r4 = 0
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            r7 = 1
            switch(r0) {
                case 0: goto L50;
                default: goto L11;
            }
        L11:
            boolean r0 = r12 instanceof androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1
            if (r0 == 0) goto L22
            r0 = r12
            androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1 r0 = (androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1) r0
            int r8 = r0.label
            r9 = r8 & r6
            if (r9 == 0) goto L22
            int r8 = r8 - r6
            r0.label = r8
            goto L27
        L22:
            androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1 r0 = new androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1
            r0.<init>(r10, r12)
        L27:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r12 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r0.label
            if (r6 == 0) goto L3a
            if (r6 != r7) goto L35
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4f
        L35:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            r1 = r4
            goto L4f
        L3a:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.flow.FlowCollector r3 = (kotlinx.coroutines.flow.FlowCollector) r3
            androidx.paging.ViewportHint r11 = (androidx.paging.ViewportHint) r11
            androidx.paging.GenerationalViewportHint r10 = new androidx.paging.GenerationalViewportHint
            r10.<init>(r2, r11)
            r0.label = r7
            java.lang.Object r10 = r3.emit(r10, r0)
            if (r10 != r12) goto L4f
            r1 = r12
        L4f:
            return r1
        L50:
            boolean r0 = r12 instanceof kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1
            if (r0 == 0) goto L61
            r0 = r12
            kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1 r0 = (kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1) r0
            int r8 = r0.label
            r9 = r8 & r6
            if (r9 == 0) goto L61
            int r8 = r8 - r6
            r0.label = r8
            goto L66
        L61:
            kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1 r0 = new kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1$emit$1
            r0.<init>(r10, r12)
        L66:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r12 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r0.label
            r8 = 2
            if (r6 == 0) goto L80
            if (r6 == r7) goto L7c
            if (r6 != r8) goto L77
            kotlin.ResultKt.throwOnFailure(r10)
            goto L9c
        L77:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            r1 = r4
            goto L9c
        L7c:
            kotlin.ResultKt.throwOnFailure(r10)
            goto L93
        L80:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.channels.BufferedChannel r3 = (kotlinx.coroutines.channels.BufferedChannel) r3
            kotlin.collections.IndexedValue r10 = new kotlin.collections.IndexedValue
            r10.<init>(r2, r11)
            r0.label = r7
            java.lang.Object r10 = r3.send(r10, r0)
            if (r10 != r12) goto L93
            goto L9b
        L93:
            r0.label = r8
            java.lang.Object r10 = kotlinx.coroutines.AwaitKt.yield(r0)
            if (r10 != r12) goto L9c
        L9b:
            r1 = r12
        L9c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
