package kotlinx.coroutines.flow;

import androidx.paging.SingleRunner$runInIsolation$2;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SubscribedFlowCollector implements FlowCollector {
    public final SingleRunner$runInIsolation$2 action;
    public final FlowCollector collector;

    public SubscribedFlowCollector(FlowCollector flowCollector, SingleRunner$runInIsolation$2 singleRunner$runInIsolation$2) {
        this.collector = flowCollector;
        this.action = singleRunner$runInIsolation$2;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        return this.collector.emit(obj, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onSubscription(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1 r0 = (kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1 r0 = new kotlinx.coroutines.flow.SubscribedFlowCollector$onSubscription$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            r4 = 0
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L3d
            if (r2 == r6) goto L33
            if (r2 != r5) goto L2d
            kotlin.ResultKt.throwOnFailure(r10)
            return r3
        L2d:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            return r4
        L33:
            kotlinx.coroutines.flow.internal.SafeCollector r9 = r0.L$1
            kotlinx.coroutines.flow.SubscribedFlowCollector r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L3b
            goto L5d
        L3b:
            r10 = move-exception
            goto L7a
        L3d:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.flow.internal.SafeCollector r10 = new kotlinx.coroutines.flow.internal.SafeCollector
            kotlin.coroutines.CoroutineContext r2 = r0._context
            r2.getClass()
            kotlinx.coroutines.flow.FlowCollector r7 = r9.collector
            r10.<init>(r7, r2)
            androidx.paging.SingleRunner$runInIsolation$2 r2 = r9.action     // Catch: java.lang.Throwable -> L76
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L76
            r0.L$1 = r10     // Catch: java.lang.Throwable -> L76
            r0.label = r6     // Catch: java.lang.Throwable -> L76
            java.lang.Object r2 = r2.invoke(r10, r0)     // Catch: java.lang.Throwable -> L76
            if (r2 != r1) goto L5b
            goto L74
        L5b:
            r2 = r9
            r9 = r10
        L5d:
            r9.releaseIntercepted()
            kotlinx.coroutines.flow.FlowCollector r9 = r2.collector
            boolean r10 = r9 instanceof kotlinx.coroutines.flow.SubscribedFlowCollector
            if (r10 == 0) goto L75
            kotlinx.coroutines.flow.SubscribedFlowCollector r9 = (kotlinx.coroutines.flow.SubscribedFlowCollector) r9
            r0.L$0 = r4
            r0.L$1 = r4
            r0.label = r5
            java.lang.Object r9 = r9.onSubscription(r0)
            if (r9 != r1) goto L75
        L74:
            return r1
        L75:
            return r3
        L76:
            r9 = move-exception
            r8 = r10
            r10 = r9
            r9 = r8
        L7a:
            r9.releaseIntercepted()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SubscribedFlowCollector.onSubscription(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
