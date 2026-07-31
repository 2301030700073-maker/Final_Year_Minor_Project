package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlowKt__ReduceKt$first$$inlined$collectWhile$2 implements FlowCollector {
    public final /* synthetic */ Function2 $predicate$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Ref$ObjectRef $result$inlined;

    /* renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2$1, reason: invalid class name */
    public final class AnonymousClass1 extends ContinuationImpl {
        public FlowKt__ReduceKt$first$$inlined$collectWhile$2 L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__ReduceKt$first$$inlined$collectWhile$2.this.emit(null, this);
        }
    }

    public /* synthetic */ FlowKt__ReduceKt$first$$inlined$collectWhile$2(Function2 function2, Ref$ObjectRef ref$ObjectRef, int i) {
        this.$r8$classId = i;
        this.$predicate$inlined = function2;
        this.$result$inlined = ref$ObjectRef;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008d  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r10, kotlin.coroutines.Continuation r11) {
        /*
            r9 = this;
            int r0 = r9.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            kotlin.jvm.functions.Function2 r2 = r9.$predicate$inlined
            r3 = 0
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = 1
            switch(r0) {
                case 0: goto L60;
                default: goto Lf;
            }
        Lf:
            boolean r0 = r11 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2$1
            if (r0 == 0) goto L20
            r0 = r11
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2$1) r0
            int r7 = r0.label
            r8 = r7 & r5
            if (r8 == 0) goto L20
            int r7 = r7 - r5
            r0.label = r7
            goto L25
        L20:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2$1
            r0.<init>(r9, r11)
        L25:
            java.lang.Object r11 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r7 = r0.label
            if (r7 == 0) goto L3c
            if (r7 != r6) goto L37
            java.lang.Object r10 = r0.L$1
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r9 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L4d
        L37:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r1 = r3
            goto L55
        L3c:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.L$0 = r9
            r0.L$1 = r10
            r0.label = r6
            java.lang.Object r11 = r2.invoke(r10, r0)
            if (r11 != r5) goto L4d
            r1 = r5
            goto L55
        L4d:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 != 0) goto L56
        L55:
            return r1
        L56:
            kotlin.jvm.internal.Ref$ObjectRef r11 = r9.$result$inlined
            r11.element = r10
            kotlinx.coroutines.flow.internal.AbortFlowException r10 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r10.<init>(r9)
            throw r10
        L60:
            boolean r0 = r11 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2.AnonymousClass1
            if (r0 == 0) goto L71
            r0 = r11
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2.AnonymousClass1) r0
            int r7 = r0.label
            r8 = r7 & r5
            if (r8 == 0) goto L71
            int r7 = r7 - r5
            r0.label = r7
            goto L76
        L71:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2$1
            r0.<init>(r11)
        L76:
            java.lang.Object r11 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r7 = r0.label
            if (r7 == 0) goto L8d
            if (r7 != r6) goto L88
            java.lang.Object r10 = r0.L$1
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r9 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L9e
        L88:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r1 = r3
            goto La6
        L8d:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.L$0 = r9
            r0.L$1 = r10
            r0.label = r6
            java.lang.Object r11 = r2.invoke(r10, r0)
            if (r11 != r5) goto L9e
            r1 = r5
            goto La6
        L9e:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 != 0) goto La7
        La6:
            return r1
        La7:
            kotlin.jvm.internal.Ref$ObjectRef r11 = r9.$result$inlined
            r11.element = r10
            kotlinx.coroutines.flow.internal.AbortFlowException r10 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r10.<init>(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
