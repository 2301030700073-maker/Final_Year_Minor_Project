package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StartedLazily$command$$inlined$unsafeFlow$1 implements Flow {
    public final /* synthetic */ SubscriptionCountStateFlow $subscriptionCount$inlined;

    /* renamed from: kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            StartedLazily$command$$inlined$unsafeFlow$1.this.collect(null, this);
            return CoroutineSingletons.COROUTINE_SUSPENDED;
        }
    }

    public StartedLazily$command$$inlined$unsafeFlow$1(SubscriptionCountStateFlow subscriptionCountStateFlow) {
        this.$subscriptionCount$inlined = subscriptionCountStateFlow;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L3f
            if (r1 == r2) goto L28
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return r3
        L28:
            java.lang.Object r4 = r0.L$3
            kotlin.jvm.internal.Ref$BooleanRef r4 = (kotlin.jvm.internal.Ref$BooleanRef) r4
            java.lang.Object r4 = r0.L$2
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            java.lang.Object r4 = r0.L$1
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            java.lang.Object r4 = r0.L$0
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0.m322m()
            return r3
        L3f:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$BooleanRef r6 = new kotlin.jvm.internal.Ref$BooleanRef
            r6.<init>()
            kotlinx.coroutines.flow.StartedLazily$command$1$1 r1 = new kotlinx.coroutines.flow.StartedLazily$command$1$1
            r1.<init>(r6, r5)
            r0.L$0 = r3
            r0.L$1 = r3
            r0.L$2 = r3
            r0.L$3 = r3
            r5 = 0
            r0.I$0 = r5
            r0.label = r2
            kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow r4 = r4.$subscriptionCount$inlined
            r4.collect(r1, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
