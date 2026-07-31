package kotlinx.coroutines.flow;

import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowKt__TransformKt$chunked$2$1 implements FlowCollector {
    public final /* synthetic */ Ref$ObjectRef $result;
    public final /* synthetic */ FlowCollector $this_flow;

    public FlowKt__TransformKt$chunked$2$1(Ref$ObjectRef ref$ObjectRef, FlowCollector flowCollector) {
        this.$result = ref$ObjectRef;
        this.$this_flow = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$chunked$2$1$emit$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__TransformKt$chunked$2$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$chunked$2$1$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__TransformKt$chunked$2$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$chunked$2$1$emit$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            kotlin.jvm.internal.Ref$ObjectRef r4 = r5.$result
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2c
            java.lang.Object r5 = r0.L$1
            java.util.ArrayList r5 = (java.util.ArrayList) r5
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5e
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r4.element
            java.util.ArrayList r7 = (java.util.ArrayList) r7
            r1 = 50
            if (r7 != 0) goto L44
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>(r1)
            r4.element = r7
        L44:
            r7.add(r6)
            int r6 = r7.size()
            if (r6 != r1) goto L60
            r0.L$0 = r3
            r0.L$1 = r3
            r0.label = r2
            kotlinx.coroutines.flow.FlowCollector r5 = r5.$this_flow
            java.lang.Object r5 = r5.emit(r7, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r6) goto L5e
            return r6
        L5e:
            r4.element = r3
        L60:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$chunked$2$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
