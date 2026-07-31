package com.skydoves.landscapist.coil3;

import androidx.compose.ui.unit.Constraints;
import coil3.size.SizeResolver;
import com.skydoves.landscapist.ImageLoadKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConstraintsSizeResolver implements SizeResolver {
    public static final int $stable = 0;
    private final MutableStateFlow _constraints = FlowKt.MutableStateFlow(new Constraints(ImageLoadKt.ZeroConstraints));

    /* renamed from: setConstraints-BRTryo0, reason: not valid java name */
    public void m963setConstraintsBRTryo0(long j) {
        MutableStateFlow mutableStateFlow = this._constraints;
        Constraints constraints = new Constraints(j);
        StateFlowImpl stateFlowImpl = (StateFlowImpl) mutableStateFlow;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, constraints);
    }

    @Override // coil3.size.SizeResolver
    public Object size(Continuation continuation) {
        final MutableStateFlow mutableStateFlow = this._constraints;
        return FlowKt.first(new Flow() { // from class: com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1

            /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
            /* renamed from: com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                @DebugMetadata(c = "com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2", f = "ConstraintsSizeResolver.kt", l = {219}, m = "emit", v = 2)
                /* renamed from: com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                public static final class AnonymousClass1 extends ContinuationImpl {
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

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1 r0 = (com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1 r0 = new com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        int r1 = r0.label
                        r2 = 1
                        r3 = 0
                        if (r1 == 0) goto L38
                        if (r1 != r2) goto L32
                        java.lang.Object r4 = r0.L$4
                        coil3.size.Size r4 = (coil3.size.Size) r4
                        java.lang.Object r4 = r0.L$3
                        kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
                        java.lang.Object r4 = r0.L$1
                        com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1 r4 = (com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r4
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L5f
                    L32:
                        java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
                        return r3
                    L38:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        androidx.compose.ui.unit.Constraints r5 = (androidx.compose.ui.unit.Constraints) r5
                        long r5 = r5.value
                        coil3.size.Size r5 = com.skydoves.landscapist.coil3.ConstraintsSizeResolverKt.m964access$inferredCoilSizeBRTryo0(r5)
                        if (r5 == 0) goto L5f
                        r0.L$0 = r3
                        r0.L$1 = r3
                        r0.L$2 = r3
                        r0.L$3 = r3
                        r0.L$4 = r3
                        r6 = 0
                        r0.I$0 = r6
                        r0.label = r2
                        java.lang.Object r4 = r4.emit(r5, r0)
                        kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        if (r4 != r5) goto L5f
                        return r5
                    L5f:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.coil3.ConstraintsSizeResolver$size$$inlined$mapNotNull$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, Continuation continuation2) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation2);
                return collect == CoroutineSingletons.COROUTINE_SUSPENDED ? collect : Unit.INSTANCE;
            }
        }, continuation);
    }
}
