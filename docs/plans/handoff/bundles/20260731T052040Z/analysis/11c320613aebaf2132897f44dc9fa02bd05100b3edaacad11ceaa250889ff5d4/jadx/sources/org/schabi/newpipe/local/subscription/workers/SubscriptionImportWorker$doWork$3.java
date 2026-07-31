package org.schabi.newpipe.local.subscription.workers;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SafeFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionImportWorker$doWork$3 extends SuspendLambda implements Function2 {
    final /* synthetic */ Ref$IntRef $index;
    final /* synthetic */ String $title;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SubscriptionImportWorker this$0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.local.subscription.workers.SubscriptionImportWorker$doWork$3$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ Ref$IntRef $index;
        final /* synthetic */ SubscriptionItem $subscription;
        final /* synthetic */ String $title;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        final /* synthetic */ SubscriptionImportWorker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SubscriptionItem subscriptionItem, SubscriptionImportWorker subscriptionImportWorker, Ref$IntRef ref$IntRef, String str, Continuation continuation) {
            super(2, continuation);
            this.$subscription = subscriptionItem;
            this.this$0 = subscriptionImportWorker;
            this.$index = ref$IntRef;
            this.$title = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$subscription, this.this$0, this.$index, this.$title, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x019d, code lost:
        
            if (r1.emit(r14, r13) != r10) goto L61;
         */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0147  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0156  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0133  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                Method dump skipped, instructions count: 424
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.local.subscription.workers.SubscriptionImportWorker$doWork$3.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionImportWorker$doWork$3(SubscriptionImportWorker subscriptionImportWorker, Ref$IntRef ref$IntRef, String str, Continuation continuation) {
        super(2, continuation);
        this.this$0 = subscriptionImportWorker;
        this.$index = ref$IntRef;
        this.$title = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SubscriptionImportWorker$doWork$3 subscriptionImportWorker$doWork$3 = new SubscriptionImportWorker$doWork$3(this.this$0, this.$index, this.$title, continuation);
        subscriptionImportWorker$doWork$3.L$0 = obj;
        return subscriptionImportWorker$doWork$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SubscriptionImportWorker$doWork$3) create((SubscriptionItem) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SubscriptionItem subscriptionItem = (SubscriptionItem) this.L$0;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return new SafeFlow(new AnonymousClass1(subscriptionItem, this.this$0, this.$index, this.$title, null));
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
