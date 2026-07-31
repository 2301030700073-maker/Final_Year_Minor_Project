package androidx.paging;

import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CachedPageEventFlow$downstreamFlow$1$2 implements FlowCollector {
    public final /* synthetic */ FlowCollector $$this$flow;
    public final /* synthetic */ Ref$IntRef $maxEventIndex;
    public final /* synthetic */ int $r8$classId = 0;

    public CachedPageEventFlow$downstreamFlow$1$2(Ref$IntRef ref$IntRef, FlowCollector flowCollector) {
        this.$maxEventIndex = ref$IntRef;
        this.$$this$flow = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            int r0 = r6.$r8$classId
            switch(r0) {
                case 0: goto L5b;
                default: goto L5;
            }
        L5:
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$1$1$emit$1
            if (r0 == 0) goto L18
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$1$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$1$1$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L18
            int r1 = r1 - r2
            r0.label = r1
            goto L1d
        L18:
            kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$1$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$1$1$emit$1
            r0.<init>(r6, r8)
        L1d:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L50
        L2c:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            r1 = 0
            goto L52
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.collections.IndexedValue r8 = new kotlin.collections.IndexedValue
            kotlin.jvm.internal.Ref$IntRef r2 = r6.$maxEventIndex
            int r4 = r2.element
            int r5 = r4 + 1
            r2.element = r5
            if (r4 < 0) goto L53
            r8.<init>(r4, r7)
            r0.label = r3
            kotlinx.coroutines.flow.FlowCollector r6 = r6.$$this$flow
            java.lang.Object r6 = r6.emit(r8, r0)
            if (r6 != r1) goto L50
            goto L52
        L50:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
        L52:
            return r1
        L53:
            java.lang.ArithmeticException r6 = new java.lang.ArithmeticException
            java.lang.String r7 = "Index overflow has happened"
            r6.<init>(r7)
            throw r6
        L5b:
            kotlin.collections.IndexedValue r7 = (kotlin.collections.IndexedValue) r7
            java.lang.Object r6 = r6.emit(r7, r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.CachedPageEventFlow$downstreamFlow$1$2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public CachedPageEventFlow$downstreamFlow$1$2(FlowCollector flowCollector, Ref$IntRef ref$IntRef) {
        this.$$this$flow = flowCollector;
        this.$maxEventIndex = ref$IntRef;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(kotlin.collections.IndexedValue r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.paging.CachedPageEventFlow$downstreamFlow$1$2$emit$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.paging.CachedPageEventFlow$downstreamFlow$1$2$emit$1 r0 = (androidx.paging.CachedPageEventFlow$downstreamFlow$1$2$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.CachedPageEventFlow$downstreamFlow$1$2$emit$1 r0 = new androidx.paging.CachedPageEventFlow$downstreamFlow$1$2$emit$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            kotlin.jvm.internal.Ref$IntRef r3 = r5.$maxEventIndex
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2b
            kotlin.collections.IndexedValue r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4d
        L2b:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            r5 = 0
            return r5
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            r6.getClass()
            int r7 = r6.index
            int r2 = r3.element
            if (r7 <= r2) goto L51
            java.lang.Object r7 = r6.value
            r0.L$0 = r6
            r0.label = r4
            kotlinx.coroutines.flow.FlowCollector r5 = r5.$$this$flow
            java.lang.Object r5 = r5.emit(r7, r0)
            if (r5 != r1) goto L4d
            return r1
        L4d:
            int r5 = r6.index
            r3.element = r5
        L51:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.CachedPageEventFlow$downstreamFlow$1$2.emit(kotlin.collections.IndexedValue, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
