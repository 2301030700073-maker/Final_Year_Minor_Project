package kotlinx.coroutines.flow;

import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowKt__LimitKt$dropWhile$1$1 implements FlowCollector {
    public final /* synthetic */ Ref$BooleanRef $matched;
    public final /* synthetic */ StartedWhileSubscribed$command$2 $predicate;
    public final /* synthetic */ FlowCollector $this_flow;

    public FlowKt__LimitKt$dropWhile$1$1(Ref$BooleanRef ref$BooleanRef, FlowCollector flowCollector, StartedWhileSubscribed$command$2 startedWhileSubscribed$command$2) {
        this.$matched = ref$BooleanRef;
        this.$this_flow = flowCollector;
        this.$predicate = startedWhileSubscribed$command$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
    
        if (r12 == r9) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r11, kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1
            if (r0 == 0) goto L13
            r0 = r12
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            int r1 = r0.label
            r2 = 0
            kotlinx.coroutines.flow.FlowCollector r3 = r10.$this_flow
            kotlin.jvm.internal.Ref$BooleanRef r4 = r10.$matched
            r5 = 3
            r6 = 2
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            r8 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L44
            if (r1 == r8) goto L40
            if (r1 == r6) goto L3a
            if (r1 != r5) goto L34
            kotlin.ResultKt.throwOnFailure(r12)
            return r7
        L34:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r10)
            return r2
        L3a:
            java.lang.Object r11 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            goto L63
        L40:
            kotlin.ResultKt.throwOnFailure(r12)
            return r7
        L44:
            kotlin.ResultKt.throwOnFailure(r12)
            boolean r12 = r4.element
            if (r12 == 0) goto L56
            r0.L$0 = r2
            r0.label = r8
            java.lang.Object r10 = r3.emit(r11, r0)
            if (r10 != r9) goto L78
            goto L77
        L56:
            r0.L$0 = r11
            r0.label = r6
            kotlinx.coroutines.flow.StartedWhileSubscribed$command$2 r10 = r10.$predicate
            java.lang.Object r12 = r10.invoke(r11, r0)
            if (r12 != r9) goto L63
            goto L77
        L63:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r10 = r12.booleanValue()
            if (r10 != 0) goto L78
            r4.element = r8
            r0.L$0 = r2
            r0.label = r5
            java.lang.Object r10 = r3.emit(r11, r0)
            if (r10 != r9) goto L78
        L77:
            return r9
        L78:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
