package kotlinx.coroutines.flow;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractFlow implements Flow {
    /* JADX WARN: Removed duplicated region for block: B:21:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.AbstractFlow$collect$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.AbstractFlow$collect$1 r0 = (kotlinx.coroutines.flow.AbstractFlow$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.AbstractFlow$collect$1 r0 = new kotlinx.coroutines.flow.AbstractFlow$collect$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 0
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            r4 = 1
            if (r1 == 0) goto L38
            if (r1 != r4) goto L32
            java.lang.Object r5 = r0.L$1
            kotlinx.coroutines.flow.internal.SafeCollector r5 = (kotlinx.coroutines.flow.internal.SafeCollector) r5
            java.lang.Object r6 = r0.L$0
            kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L30
            goto L5c
        L30:
            r6 = move-exception
            goto L68
        L32:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r2
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.flow.internal.SafeCollector r7 = new kotlinx.coroutines.flow.internal.SafeCollector
            kotlin.coroutines.CoroutineContext r1 = r0.getContext()
            r7.<init>(r6, r1)
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L66
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L66
            r0.label = r4     // Catch: java.lang.Throwable -> L66
            kotlinx.coroutines.flow.SafeFlow r5 = (kotlinx.coroutines.flow.SafeFlow) r5     // Catch: java.lang.Throwable -> L62
            kotlin.jvm.functions.Function2 r5 = r5.block     // Catch: java.lang.Throwable -> L62
            java.lang.Object r5 = r5.invoke(r7, r0)     // Catch: java.lang.Throwable -> L62
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r6) goto L57
            goto L58
        L57:
            r5 = r3
        L58:
            if (r5 != r6) goto L5b
            return r6
        L5b:
            r5 = r7
        L5c:
            r5.releaseIntercepted()
            return r3
        L60:
            r6 = r5
            goto L64
        L62:
            r5 = move-exception
            goto L60
        L64:
            r5 = r7
            goto L68
        L66:
            r6 = move-exception
            goto L64
        L68:
            r5.releaseIntercepted()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.AbstractFlow.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
