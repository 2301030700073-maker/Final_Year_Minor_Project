package kotlinx.coroutines.flow;

import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowKt__LimitKt$drop$2$1 implements FlowCollector {
    public final /* synthetic */ int $count;
    public final /* synthetic */ Ref$IntRef $skipped;
    public final /* synthetic */ FlowCollector $this_flow;

    public FlowKt__LimitKt$drop$2$1(Ref$IntRef ref$IntRef, int i, FlowCollector flowCollector) {
        this.$skipped = ref$IntRef;
        this.$count = i;
        this.$this_flow = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1$emit$1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1$emit$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            r4 = 1
            if (r2 == 0) goto L30
            if (r2 != r4) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            return r3
        L29:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            r6 = 0
            return r6
        L30:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$IntRef r8 = r6.$skipped
            int r2 = r8.element
            int r5 = r6.$count
            if (r2 < r5) goto L47
            r0.label = r4
            kotlinx.coroutines.flow.FlowCollector r6 = r6.$this_flow
            java.lang.Object r6 = r6.emit(r7, r0)
            if (r6 != r1) goto L46
            return r1
        L46:
            return r3
        L47:
            int r2 = r2 + r4
            r8.element = r2
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
