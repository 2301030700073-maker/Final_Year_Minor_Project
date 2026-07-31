package kotlinx.coroutines.flow;

import androidx.paging.SingleRunner$runInIsolation$2;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SubscribedSharedFlow implements SharedFlow {
    public final SingleRunner$runInIsolation$2 action;
    public final SharedFlowImpl sharedFlow;

    public SubscribedSharedFlow(SharedFlowImpl sharedFlowImpl, SingleRunner$runInIsolation$2 singleRunner$runInIsolation$2) {
        this.sharedFlow = sharedFlowImpl;
        this.action = singleRunner$runInIsolation$2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1 r0 = (kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1 r0 = new kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 == r4) goto L2a
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2a:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L43
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.flow.SubscribedFlowCollector r7 = new kotlinx.coroutines.flow.SubscribedFlowCollector
            androidx.paging.SingleRunner$runInIsolation$2 r2 = r5.action
            r7.<init>(r6, r2)
            r0.label = r4
            kotlinx.coroutines.flow.SharedFlowImpl r5 = r5.sharedFlow
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlinx.coroutines.flow.SharedFlowImpl.collect$suspendImpl(r5, r7, r0)
            if (r5 != r1) goto L43
            return r1
        L43:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SubscribedSharedFlow.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    public final List getReplayCache() {
        return this.sharedFlow.getReplayCache();
    }
}
