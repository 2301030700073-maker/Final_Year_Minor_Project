package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 implements Flow {
    public final /* synthetic */ Function2 $action$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Flow $this_onStart$inlined;

    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends ContinuationImpl {
        public FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 L$0;
        public FlowCollector L$1;
        public SafeCollector L$2;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(Function2 function2, Flow flow) {
        this.$r8$classId = 0;
        this.$action$inlined = function2;
        this.$this_onStart$inlined = flow;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0077  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r9, kotlin.coroutines.Continuation r10) {
        /*
            r8 = this;
            int r0 = r8.$r8$classId
            r1 = 1
            r2 = 2
            kotlinx.coroutines.flow.Flow r3 = r8.$this_onStart$inlined
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            kotlin.jvm.functions.Function2 r5 = r8.$action$inlined
            switch(r0) {
                case 0: goto L3b;
                case 1: goto L2c;
                case 2: goto L1d;
                default: goto Ld;
            }
        Ld:
            kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2 r8 = new kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2
            r0 = 0
            r8.<init>(r9, r5, r0)
            java.lang.Object r8 = r3.collect(r8, r10)
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r9) goto L1c
            r4 = r8
        L1c:
            return r4
        L1d:
            kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2 r8 = new kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2
            r8.<init>(r9, r5, r2)
            java.lang.Object r8 = r3.collect(r8, r10)
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r9) goto L2b
            r4 = r8
        L2b:
            return r4
        L2c:
            kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2 r8 = new kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2
            r8.<init>(r9, r5, r1)
            java.lang.Object r8 = r3.collect(r8, r10)
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r9) goto L3a
            r4 = r8
        L3a:
            return r4
        L3b:
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L4e
            r0 = r10
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r3 = r0.label
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            r7 = r3 & r6
            if (r7 == 0) goto L4e
            int r3 = r3 - r6
            r0.label = r3
            goto L53
        L4e:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1
            r0.<init>(r10)
        L53:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r0.label
            r7 = 0
            if (r6 == 0) goto L77
            if (r6 == r1) goto L6b
            if (r6 != r2) goto L64
            kotlin.ResultKt.throwOnFailure(r10)
            goto La9
        L64:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            r4 = r7
            goto La9
        L6b:
            kotlinx.coroutines.flow.internal.SafeCollector r8 = r0.L$2
            kotlinx.coroutines.flow.FlowCollector r9 = r0.L$1
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 r1 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L75
            goto L95
        L75:
            r9 = move-exception
            goto Lac
        L77:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.flow.internal.SafeCollector r10 = new kotlinx.coroutines.flow.internal.SafeCollector
            kotlin.coroutines.CoroutineContext r6 = r0._context
            r6.getClass()
            r10.<init>(r9, r6)
            r0.L$0 = r8     // Catch: java.lang.Throwable -> Laa
            r0.L$1 = r9     // Catch: java.lang.Throwable -> Laa
            r0.L$2 = r10     // Catch: java.lang.Throwable -> Laa
            r0.label = r1     // Catch: java.lang.Throwable -> Laa
            java.lang.Object r1 = r5.invoke(r10, r0)     // Catch: java.lang.Throwable -> Laa
            if (r1 != r3) goto L93
            goto La8
        L93:
            r1 = r8
            r8 = r10
        L95:
            r8.releaseIntercepted()
            kotlinx.coroutines.flow.Flow r8 = r1.$this_onStart$inlined
            r0.L$0 = r7
            r0.L$1 = r7
            r0.L$2 = r7
            r0.label = r2
            java.lang.Object r8 = r8.collect(r9, r0)
            if (r8 != r3) goto La9
        La8:
            r4 = r3
        La9:
            return r4
        Laa:
            r9 = move-exception
            r8 = r10
        Lac:
            r8.releaseIntercepted()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public /* synthetic */ FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(Flow flow, Function2 function2, int i) {
        this.$r8$classId = i;
        this.$this_onStart$inlined = flow;
        this.$action$inlined = function2;
    }
}
