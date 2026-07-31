package kotlinx.coroutines.flow;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowKt__MergeKt$flattenConcat$1$1 implements FlowCollector {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FlowCollector $this_flow;

    public /* synthetic */ FlowKt__MergeKt$flattenConcat$1$1(FlowCollector flowCollector, int i) {
        this.$r8$classId = i;
        this.$this_flow = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0494  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0126  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instructions count: 1290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(kotlinx.coroutines.flow.Flow r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1$emit$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1$emit$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L25
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3c
        L25:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L2c:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.label = r2
            kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_flow
            java.lang.Object r4 = kotlinx.coroutines.flow.FlowKt.emitAll(r0, r5, r4)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L3c
            return r5
        L3c:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$1$1.emit(kotlinx.coroutines.flow.Flow, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
