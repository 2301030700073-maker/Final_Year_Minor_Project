package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowKt__MergeKt$flatMapConcat$$inlined$map$1 implements Flow {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;
    public final /* synthetic */ Function2 $transform$inlined$1;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2, reason: invalid class name */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ FlowCollector $this_unsafeFlow;
        public final /* synthetic */ Function2 $transform$inlined;

        /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1, reason: invalid class name */
        public final class AnonymousClass1 extends ContinuationImpl {
            public int I$0;
            public FlowCollector L$4;
            public int label;
            public /* synthetic */ Object result;

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

        public /* synthetic */ AnonymousClass2(FlowCollector flowCollector, Function2 function2, int i) {
            this.$r8$classId = i;
            this.$this_unsafeFlow = flowCollector;
            this.$transform$inlined = function2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
        
            if (r2.invoke(r14, r0) == r6) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00a8, code lost:
        
            if (r13 == r6) goto L42;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x009b  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r14, kotlin.coroutines.Continuation r15) {
            /*
                r13 = this;
                int r0 = r13.$r8$classId
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                kotlin.jvm.functions.Function2 r2 = r13.$transform$inlined
                r3 = 0
                kotlinx.coroutines.flow.FlowCollector r4 = r13.$this_unsafeFlow
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                r7 = -2147483648(0xffffffff80000000, float:-0.0)
                r8 = 1
                r9 = 2
                r10 = 0
                switch(r0) {
                    case 0: goto L6a;
                    default: goto L15;
                }
            L15:
                boolean r0 = r15 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1
                if (r0 == 0) goto L26
                r0 = r15
                kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1) r0
                int r11 = r0.label
                r12 = r11 & r7
                if (r12 == 0) goto L26
                int r11 = r11 - r7
                r0.label = r11
                goto L2b
            L26:
                kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1
                r0.<init>(r13, r15)
            L2b:
                java.lang.Object r13 = r0.result
                int r15 = r0.label
                if (r15 == 0) goto L48
                if (r15 == r8) goto L3e
                if (r15 != r9) goto L39
                kotlin.ResultKt.throwOnFailure(r13)
                goto L69
            L39:
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
                r1 = r10
                goto L69
            L3e:
                int r3 = r0.I$0
                kotlinx.coroutines.flow.FlowCollector r4 = r0.L$3
                java.lang.Object r14 = r0.L$2
                kotlin.ResultKt.throwOnFailure(r13)
                goto L5a
            L48:
                kotlin.ResultKt.throwOnFailure(r13)
                r0.L$2 = r14
                r0.L$3 = r4
                r0.I$0 = r3
                r0.label = r8
                java.lang.Object r13 = r2.invoke(r14, r0)
                if (r13 != r6) goto L5a
                goto L68
            L5a:
                r0.L$2 = r10
                r0.L$3 = r10
                r0.I$0 = r3
                r0.label = r9
                java.lang.Object r13 = r4.emit(r14, r0)
                if (r13 != r6) goto L69
            L68:
                r1 = r6
            L69:
                return r1
            L6a:
                boolean r0 = r15 instanceof kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L7b
                r0 = r15
                kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                int r11 = r0.label
                r12 = r11 & r7
                if (r12 == 0) goto L7b
                int r11 = r11 - r7
                r0.label = r11
                goto L80
            L7b:
                kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1
                r0.<init>(r15)
            L80:
                java.lang.Object r13 = r0.result
                int r15 = r0.label
                if (r15 == 0) goto L9b
                if (r15 == r8) goto L93
                if (r15 != r9) goto L8e
                kotlin.ResultKt.throwOnFailure(r13)
                goto Lb8
            L8e:
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
                r1 = r10
                goto Lb8
            L93:
                int r3 = r0.I$0
                kotlinx.coroutines.flow.FlowCollector r4 = r0.L$4
                kotlin.ResultKt.throwOnFailure(r13)
                goto Lab
            L9b:
                kotlin.ResultKt.throwOnFailure(r13)
                r0.L$4 = r4
                r0.I$0 = r3
                r0.label = r8
                java.lang.Object r13 = r2.invoke(r14, r0)
                if (r13 != r6) goto Lab
                goto Lb7
            Lab:
                r0.L$4 = r10
                r0.I$0 = r3
                r0.label = r9
                java.lang.Object r13 = r4.emit(r13, r0)
                if (r13 != r6) goto Lb8
            Lb7:
                r1 = r6
            Lb8:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public /* synthetic */ FlowKt__MergeKt$flatMapConcat$$inlined$map$1(Flow flow, Function2 function2, int i) {
        this.$r8$classId = i;
        this.$this_unsafeTransform$inlined = flow;
        this.$transform$inlined$1 = function2;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        int i = this.$r8$classId;
        int i2 = 0;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Function2 function2 = this.$transform$inlined$1;
        Flow flow = this.$this_unsafeTransform$inlined;
        switch (i) {
            case 0:
                Object collect = flow.collect(new AnonymousClass2(flowCollector, function2, i2), continuation);
                return collect == coroutineSingletons ? collect : unit;
            case 1:
                Object collect2 = flow.collect(new FlowKt__LimitKt$dropWhile$1$1(new Ref$BooleanRef(), flowCollector, function2, i2), continuation);
                return collect2 == coroutineSingletons ? collect2 : unit;
            default:
                Object collect3 = flow.collect(new AnonymousClass2(flowCollector, function2, 1), continuation);
                return collect3 == coroutineSingletons ? collect3 : unit;
        }
    }
}
