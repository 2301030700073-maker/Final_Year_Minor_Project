package org.schabi.newpipe.local.subscription.workers;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionImportWorker$loadSubscriptionsFromInput$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ SubscriptionImportInput $input;
    int label;
    final /* synthetic */ SubscriptionImportWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionImportWorker$loadSubscriptionsFromInput$2(SubscriptionImportInput subscriptionImportInput, SubscriptionImportWorker subscriptionImportWorker, Continuation continuation) {
        super(2, continuation);
        this.$input = subscriptionImportInput;
        this.this$0 = subscriptionImportWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SubscriptionImportWorker$loadSubscriptionsFromInput$2(this.$input, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SubscriptionImportWorker$loadSubscriptionsFromInput$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e5 A[Catch: all -> 0x0106, LOOP:1: B:28:0x00df->B:30:0x00e5, LOOP_END, TRY_LEAVE, TryCatch #0 {all -> 0x0106, blocks: (B:19:0x0084, B:21:0x008f, B:24:0x0096, B:27:0x00bf, B:28:0x00df, B:30:0x00e5, B:34:0x009e, B:37:0x00a5, B:39:0x00b0, B:42:0x00b9), top: B:18:0x0084 }] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.local.subscription.workers.SubscriptionImportWorker$loadSubscriptionsFromInput$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
