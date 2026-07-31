package androidx.compose.foundation.pager;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagerState$requestScrollToPage$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ PagerState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PagerState$requestScrollToPage$1(PagerState pagerState, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = pagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PagerState pagerState = this.this$0;
        switch (i) {
            case 0:
                return new PagerState$requestScrollToPage$1(pagerState, continuation, 0);
            case 1:
                return new PagerState$requestScrollToPage$1(pagerState, continuation, 1);
            case 2:
                return new PagerState$requestScrollToPage$1(pagerState, continuation, 2);
            default:
                return new PagerState$requestScrollToPage$1(pagerState, continuation, 3);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((PagerState$requestScrollToPage$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0053, code lost:
    
        r7 = r2.animateScrollToPage(r2.getCurrentPage() + 1, androidx.compose.animation.core.ArcSplineKt.spring$default(androidx.recyclerview.widget.RecyclerView.DECELERATION_RATE, androidx.recyclerview.widget.RecyclerView.DECELERATION_RATE, null, 7), r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0083, code lost:
    
        r7 = r2.animateScrollToPage(r2.getCurrentPage() - 1, androidx.compose.animation.core.ArcSplineKt.spring$default(androidx.recyclerview.widget.RecyclerView.DECELERATION_RATE, androidx.recyclerview.widget.RecyclerView.DECELERATION_RATE, null, 7), r7);
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            int r0 = r7.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            androidx.compose.foundation.pager.PagerState r2 = r7.this$0
            java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
            r4 = 1
            r5 = 0
            switch(r0) {
                case 0: goto L94;
                case 1: goto L64;
                case 2: goto L30;
                default: goto Ld;
            }
        Ld:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r7.label
            if (r6 == 0) goto L1e
            if (r6 != r4) goto L19
            kotlin.ResultKt.throwOnFailure(r8)
            goto L2f
        L19:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            r1 = r5
            goto L2f
        L1e:
            kotlin.ResultKt.throwOnFailure(r8)
            int r8 = r2.getCurrentPage()
            int r8 = r8 + r4
            r7.label = r4
            java.lang.Object r7 = androidx.compose.foundation.pager.PagerState.animateScrollToPage$default(r2, r8, r7)
            if (r7 != r0) goto L2f
            r1 = r0
        L2f:
            return r1
        L30:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r7.label
            if (r6 == 0) goto L41
            if (r6 != r4) goto L3c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L63
        L3c:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            r1 = r5
            goto L63
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            r7.label = r4
            androidx.compose.foundation.pager.PagerStateKt$UnitDensity$1 r8 = androidx.compose.foundation.pager.PagerStateKt.UnitDensity
            int r8 = r2.getCurrentPage()
            int r8 = r8 + r4
            int r3 = r2.getPageCount()
            if (r8 >= r3) goto L5f
            int r8 = r2.getCurrentPage()
            int r8 = r8 + r4
            java.lang.Object r7 = androidx.compose.foundation.pager.PagerState.animateScrollToPage$default(r2, r8, r7)
            if (r7 != r0) goto L5f
            goto L60
        L5f:
            r7 = r1
        L60:
            if (r7 != r0) goto L63
            r1 = r0
        L63:
            return r1
        L64:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r7.label
            if (r6 == 0) goto L75
            if (r6 != r4) goto L70
            kotlin.ResultKt.throwOnFailure(r8)
            goto L93
        L70:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            r1 = r5
            goto L93
        L75:
            kotlin.ResultKt.throwOnFailure(r8)
            r7.label = r4
            androidx.compose.foundation.pager.PagerStateKt$UnitDensity$1 r8 = androidx.compose.foundation.pager.PagerStateKt.UnitDensity
            int r8 = r2.getCurrentPage()
            int r8 = r8 - r4
            if (r8 < 0) goto L8f
            int r8 = r2.getCurrentPage()
            int r8 = r8 - r4
            java.lang.Object r7 = androidx.compose.foundation.pager.PagerState.animateScrollToPage$default(r2, r8, r7)
            if (r7 != r0) goto L8f
            goto L90
        L8f:
            r7 = r1
        L90:
            if (r7 != r0) goto L93
            r1 = r0
        L93:
            return r1
        L94:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r6 = r7.label
            if (r6 == 0) goto La5
            if (r6 != r4) goto La0
            kotlin.ResultKt.throwOnFailure(r8)
            goto Lc0
        La0:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            r1 = r5
            goto Lc0
        La5:
            kotlin.ResultKt.throwOnFailure(r8)
            r7.label = r4
            androidx.compose.foundation.MutatePriority r8 = androidx.compose.foundation.MutatePriority.Default
            androidx.paging.CachedPagingDataKt$cachedIn$4 r3 = new androidx.paging.CachedPagingDataKt$cachedIn$4
            r4 = 2
            r3.<init>(r4, r4, r5)
            r2.getClass()
            java.lang.Object r7 = androidx.compose.foundation.pager.PagerState.scroll$suspendImpl(r2, r8, r3, r7)
            if (r7 != r0) goto Lbc
            goto Lbd
        Lbc:
            r7 = r1
        Lbd:
            if (r7 != r0) goto Lc0
            r1 = r0
        Lc0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState$requestScrollToPage$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
