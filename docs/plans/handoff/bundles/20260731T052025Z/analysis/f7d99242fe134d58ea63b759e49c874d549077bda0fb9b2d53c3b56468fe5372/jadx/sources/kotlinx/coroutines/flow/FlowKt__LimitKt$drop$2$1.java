package kotlinx.coroutines.flow;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowKt__LimitKt$drop$2$1 implements FlowCollector {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $skipped;
    public final /* synthetic */ Object $this_flow;

    public /* synthetic */ FlowKt__LimitKt$drop$2$1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.$skipped = obj;
        this.$this_flow = obj2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:184:0x032a, code lost:
    
        if (r0.emit(r1, r3) == r4) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0311, code lost:
    
        if (r2 == r4) goto L166;
     */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x077c  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0153  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r18, kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instructions count: 2012
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public /* synthetic */ FlowKt__LimitKt$drop$2$1(FlowCollector flowCollector, Object obj, int i) {
        this.$r8$classId = i;
        this.$this_flow = flowCollector;
        this.$skipped = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(int r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1 r0 = (kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1 r0 = new kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L27
            kotlin.ResultKt.throwOnFailure(r6)
            return r2
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r6)
            if (r5 <= 0) goto L4e
            java.lang.Object r5 = r4.$skipped
            kotlin.jvm.internal.Ref$BooleanRef r5 = (kotlin.jvm.internal.Ref$BooleanRef) r5
            boolean r6 = r5.element
            if (r6 != 0) goto L4e
            r5.element = r3
            java.lang.Object r4 = r4.$this_flow
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            r0.label = r3
            kotlinx.coroutines.flow.SharingCommand r5 = kotlinx.coroutines.flow.SharingCommand.START
            java.lang.Object r4 = r4.emit(r5, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L4e
            return r5
        L4e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1.emit(int, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
