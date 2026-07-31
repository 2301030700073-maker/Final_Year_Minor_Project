package kotlinx.coroutines.flow;

import net.thunderbird.feature.changelog.internal.ChangeLogManager$changeLogFlow$2$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SubscribedSharedFlow implements SharedFlow {
    public final ChangeLogManager$changeLogFlow$2$1 action;
    public final SharedFlow sharedFlow;

    public SubscribedSharedFlow(SharedFlowImpl sharedFlowImpl, ChangeLogManager$changeLogFlow$2$1 changeLogManager$changeLogFlow$2$1) {
        this.sharedFlow = sharedFlowImpl;
        this.action = changeLogManager$changeLogFlow$2$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.SubscribedSharedFlow$collect$1
            if (r0 == 0) goto L13
            r0 = r6
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
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2c
            if (r1 == r3) goto L28
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L28:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L43
        L2c:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.flow.SubscribedFlowCollector r6 = new kotlinx.coroutines.flow.SubscribedFlowCollector
            net.thunderbird.feature.changelog.internal.ChangeLogManager$changeLogFlow$2$1 r1 = r4.action
            r6.<init>(r5, r1)
            r0.label = r3
            kotlinx.coroutines.flow.SharedFlow r4 = r4.sharedFlow
            java.lang.Object r4 = r4.collect(r6, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L43
            return r5
        L43:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SubscribedSharedFlow.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
