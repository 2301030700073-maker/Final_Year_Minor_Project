package kotlinx.coroutines.flow;

import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DistinctFlowImpl$collect$2 implements FlowCollector {
    public final /* synthetic */ FlowCollector $collector;
    public final /* synthetic */ Ref$ObjectRef $previousKey;
    public final /* synthetic */ int $r8$classId = 0;

    public DistinctFlowImpl$collect$2(DistinctFlowImpl distinctFlowImpl, Ref$ObjectRef ref$ObjectRef, FlowCollector flowCollector) {
        this.$previousKey = ref$ObjectRef;
        this.$collector = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0073  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
        /*
            r11 = this;
            int r0 = r11.$r8$classId
            kotlin.jvm.internal.Ref$ObjectRef r1 = r11.$previousKey
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            kotlinx.coroutines.flow.FlowCollector r3 = r11.$collector
            r4 = 0
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            r8 = 1
            switch(r0) {
                case 0: goto L4c;
                default: goto L13;
            }
        L13:
            boolean r0 = r13 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1
            if (r0 == 0) goto L24
            r0 = r13
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1) r0
            int r9 = r0.label
            r10 = r9 & r7
            if (r10 == 0) goto L24
            int r9 = r9 - r7
            r0.label = r9
            goto L29
        L24:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1
            r0.<init>(r11, r13)
        L29:
            java.lang.Object r11 = r0.result
            int r13 = r0.label
            if (r13 == 0) goto L3c
            if (r13 != r8) goto L37
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L35
            goto L48
        L35:
            r11 = move-exception
            goto L49
        L37:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r2 = r4
            goto L48
        L3c:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.label = r8     // Catch: java.lang.Throwable -> L35
            java.lang.Object r11 = r3.emit(r12, r0)     // Catch: java.lang.Throwable -> L35
            if (r11 != r6) goto L48
            r2 = r6
        L48:
            return r2
        L49:
            r1.element = r11
            throw r11
        L4c:
            boolean r0 = r13 instanceof kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1
            if (r0 == 0) goto L5d
            r0 = r13
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1 r0 = (kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1) r0
            int r9 = r0.label
            r10 = r9 & r7
            if (r10 == 0) goto L5d
            int r9 = r9 - r7
            r0.label = r9
            goto L62
        L5d:
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1 r0 = new kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1
            r0.<init>(r11, r13)
        L62:
            java.lang.Object r11 = r0.result
            int r13 = r0.label
            if (r13 == 0) goto L73
            if (r13 != r8) goto L6e
            kotlin.ResultKt.throwOnFailure(r11)
            goto L8d
        L6e:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r2 = r4
            goto L8d
        L73:
            kotlin.ResultKt.throwOnFailure(r11)
            java.lang.Object r11 = r1.element
            com.fsck.k9.mailstore.LocalStore$8 r13 = kotlinx.coroutines.flow.internal.CombineKt.NULL
            if (r11 == r13) goto L82
            boolean r11 = kotlin.jvm.internal.Intrinsics.areEqual(r11, r12)
            if (r11 != 0) goto L8d
        L82:
            r1.element = r12
            r0.label = r8
            java.lang.Object r11 = r3.emit(r12, r0)
            if (r11 != r6) goto L8d
            r2 = r6
        L8d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.DistinctFlowImpl$collect$2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public DistinctFlowImpl$collect$2(FlowCollector flowCollector, Ref$ObjectRef ref$ObjectRef) {
        this.$collector = flowCollector;
        this.$previousKey = ref$ObjectRef;
    }
}
