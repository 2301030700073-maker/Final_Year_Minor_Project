package androidx.compose.foundation.pager;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PagerKt$pagerSemantics$performBackwardPaging$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ PagerState $state;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerKt$pagerSemantics$performBackwardPaging$1(PagerState pagerState, Continuation continuation) {
        super(2, continuation);
        this.$state = pagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PagerKt$pagerSemantics$performBackwardPaging$1(this.$state, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PagerKt$pagerSemantics$performBackwardPaging$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        r4 = r5.animateScrollToPage(r5.getCurrentPage() - 1, androidx.compose.animation.core.ArcSplineKt.spring$default(0.0f, 0.0f, null, 7), r4);
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            int r0 = r4.label
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            r2 = 1
            if (r0 == 0) goto L14
            if (r0 != r2) goto Ld
            kotlin.ResultKt.throwOnFailure(r5)
            return r1
        Ld:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            r4 = 0
            return r4
        L14:
            kotlin.ResultKt.throwOnFailure(r5)
            androidx.compose.foundation.pager.PagerState r5 = r4.$state
            r4.label = r2
            androidx.compose.foundation.pager.PagerStateKt$UnitDensity$1 r0 = androidx.compose.foundation.pager.PagerStateKt.UnitDensity
            int r0 = r5.getCurrentPage()
            int r0 = r0 - r2
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 < 0) goto L32
            int r0 = r5.getCurrentPage()
            int r0 = r0 - r2
            java.lang.Object r4 = androidx.compose.foundation.pager.PagerState.animateScrollToPage$default(r5, r0, r4)
            if (r4 != r3) goto L32
            goto L33
        L32:
            r4 = r1
        L33:
            if (r4 != r3) goto L36
            return r3
        L36:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerKt$pagerSemantics$performBackwardPaging$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
