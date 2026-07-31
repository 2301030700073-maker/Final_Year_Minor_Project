package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import net.thunderbird.feature.changelog.internal.ChangeLogManager$changeLogFlow$2$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SubscribedFlowCollector implements FlowCollector {
    public final ChangeLogManager$changeLogFlow$2$1 action;
    public final FlowCollector collector;

    public SubscribedFlowCollector(FlowCollector flowCollector, ChangeLogManager$changeLogFlow$2$1 changeLogManager$changeLogFlow$2$1) {
        this.collector = flowCollector;
        this.action = changeLogManager$changeLogFlow$2$1;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        return this.collector.emit(obj, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
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
            int r1 = r0.label
            r2 = 0
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            kotlinx.coroutines.flow.FlowCollector r4 = r9.collector
            r5 = 2
            r6 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3d
            if (r1 == r6) goto L35
            if (r1 != r5) goto L2f
            kotlin.ResultKt.throwOnFailure(r10)
            return r3
        L2f:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r2
        L35:
            kotlinx.coroutines.flow.internal.SafeCollector r9 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L3b
            goto L57
        L3b:
            r10 = move-exception
            goto L70
        L3d:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.flow.internal.SafeCollector r10 = new kotlinx.coroutines.flow.internal.SafeCollector
            kotlin.coroutines.CoroutineContext r1 = r0.getContext()
            r10.<init>(r4, r1)
            net.thunderbird.feature.changelog.internal.ChangeLogManager$changeLogFlow$2$1 r9 = r9.action     // Catch: java.lang.Throwable -> L6c
            r0.L$0 = r10     // Catch: java.lang.Throwable -> L6c
            r0.label = r6     // Catch: java.lang.Throwable -> L6c
            java.lang.Object r9 = r9.invoke(r10, r0)     // Catch: java.lang.Throwable -> L6c
            if (r9 != r7) goto L56
            goto L6a
        L56:
            r9 = r10
        L57:
            r9.releaseIntercepted()
            boolean r9 = r4 instanceof kotlinx.coroutines.flow.SubscribedFlowCollector
            if (r9 == 0) goto L6b
            kotlinx.coroutines.flow.SubscribedFlowCollector r4 = (kotlinx.coroutines.flow.SubscribedFlowCollector) r4
            r0.L$0 = r2
            r0.label = r5
            java.lang.Object r9 = r4.onSubscription(r0)
            if (r9 != r7) goto L6b
        L6a:
            return r7
        L6b:
            return r3
        L6c:
            r9 = move-exception
            r8 = r10
            r10 = r9
            r9 = r8
        L70:
            r9.releaseIntercepted()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SubscribedFlowCollector.onSubscription(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
