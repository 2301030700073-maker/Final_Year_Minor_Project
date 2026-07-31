package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import org.schabi.newpipe.local.subscription.workers.SubscriptionImportWorker$doWork$3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowKt__MergeKt$flatMapMerge$$inlined$map$1 implements Flow {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;
    public final /* synthetic */ Function2 $transform$inlined$1;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2, reason: invalid class name */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ FlowCollector $this_unsafeFlow;
        public final /* synthetic */ SubscriptionImportWorker$doWork$3 $transform$inlined;

        /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1, reason: invalid class name */
        public final class AnonymousClass1 extends ContinuationImpl {
            int I$0;
            Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            Object L$4;
            int label;
            /* synthetic */ Object result;

            public AnonymousClass1(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return AnonymousClass2.this.emit(null, this);
            }
        }

        public AnonymousClass2(FlowCollector flowCollector, SubscriptionImportWorker$doWork$3 subscriptionImportWorker$doWork$3) {
            this.$this_unsafeFlow = flowCollector;
            this.$transform$inlined = subscriptionImportWorker$doWork$3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x007d, code lost:
        
            if (r7.emit(r8, r0) != r5) goto L23;
         */
        /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L13
                r0 = r8
                kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1
                r0.<init>(r8)
            L18:
                java.lang.Object r8 = r0.result
                int r1 = r0.label
                r2 = 2
                r3 = 1
                r4 = 0
                kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r1 == 0) goto L4b
                if (r1 == r3) goto L39
                if (r1 != r2) goto L33
                java.lang.Object r6 = r0.L$3
                kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
                java.lang.Object r6 = r0.L$1
                kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1 r6 = (kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.AnonymousClass1) r6
                kotlin.ResultKt.throwOnFailure(r8)
                goto L80
            L33:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
                return r4
            L39:
                int r6 = r0.I$0
                java.lang.Object r7 = r0.L$4
                kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
                java.lang.Object r1 = r0.L$3
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                java.lang.Object r1 = r0.L$1
                kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1 r1 = (kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.AnonymousClass1) r1
                kotlin.ResultKt.throwOnFailure(r8)
                goto L6b
            L4b:
                kotlin.ResultKt.throwOnFailure(r8)
                r0.L$0 = r4
                r0.L$1 = r4
                r0.L$2 = r4
                r0.L$3 = r4
                kotlinx.coroutines.flow.FlowCollector r8 = r6.$this_unsafeFlow
                r0.L$4 = r8
                r1 = 0
                r0.I$0 = r1
                r0.label = r3
                org.schabi.newpipe.local.subscription.workers.SubscriptionImportWorker$doWork$3 r6 = r6.$transform$inlined
                java.lang.Object r6 = r6.invoke(r7, r0)
                if (r6 != r5) goto L68
                goto L7f
            L68:
                r7 = r8
                r8 = r6
                r6 = r1
            L6b:
                r0.L$0 = r4
                r0.L$1 = r4
                r0.L$2 = r4
                r0.L$3 = r4
                r0.L$4 = r4
                r0.I$0 = r6
                r0.label = r2
                java.lang.Object r6 = r7.emit(r8, r0)
                if (r6 != r5) goto L80
            L7f:
                return r5
            L80:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public /* synthetic */ FlowKt__MergeKt$flatMapMerge$$inlined$map$1(Flow flow, Function2 function2, int i) {
        this.$r8$classId = i;
        this.$this_unsafeTransform$inlined = flow;
        this.$transform$inlined$1 = function2;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Function2 function2 = this.$transform$inlined$1;
        Flow flow = this.$this_unsafeTransform$inlined;
        switch (i) {
            case 0:
                Object collect = ((FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3) flow).collect(new AnonymousClass2(flowCollector, (SubscriptionImportWorker$doWork$3) function2), continuation);
                return collect == coroutineSingletons ? collect : unit;
            case 1:
                Object collect2 = ((ChannelFlowTransformLatest) flow).collect(new FlowKt__LimitKt$dropWhile$1$1(new Ref$BooleanRef(), flowCollector, (StartedWhileSubscribed$command$2) function2), continuation);
                return collect2 == coroutineSingletons ? collect2 : unit;
            default:
                Object collect3 = flow.collect(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2(flowCollector, function2), continuation);
                return collect3 == coroutineSingletons ? collect3 : unit;
        }
    }
}
