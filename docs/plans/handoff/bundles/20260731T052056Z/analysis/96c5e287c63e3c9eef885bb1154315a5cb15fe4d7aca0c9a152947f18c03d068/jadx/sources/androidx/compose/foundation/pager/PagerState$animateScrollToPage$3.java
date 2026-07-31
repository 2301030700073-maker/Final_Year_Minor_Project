package androidx.compose.foundation.pager;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagerState$animateScrollToPage$3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ AnimationSpec $animationSpec;
    public final /* synthetic */ int $targetPage;
    public final /* synthetic */ float $targetPageOffsetToSnappedPosition;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ PagerState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerState$animateScrollToPage$3(PagerState pagerState, int i, float f, AnimationSpec animationSpec, Continuation continuation) {
        super(2, continuation);
        this.this$0 = pagerState;
        this.$targetPage = i;
        this.$targetPageOffsetToSnappedPosition = f;
        this.$animationSpec = animationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PagerState$animateScrollToPage$3 pagerState$animateScrollToPage$3 = new PagerState$animateScrollToPage$3(this.this$0, this.$targetPage, this.$targetPageOffsetToSnappedPosition, this.$animationSpec, continuation);
        pagerState$animateScrollToPage$3.L$0 = obj;
        return pagerState$animateScrollToPage$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PagerState$animateScrollToPage$3) create((ScrollScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.label;
        Unit unit = Unit.INSTANCE;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.throwOnFailure(obj);
                return unit;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        ScrollScope scrollScope = (ScrollScope) this.L$0;
        PagerState pagerState = this.this$0;
        PagerScrollScopeKt$LazyLayoutScrollScope$1 pagerScrollScopeKt$LazyLayoutScrollScope$1 = new PagerScrollScopeKt$LazyLayoutScrollScope$1(scrollScope, pagerState, 0);
        this.label = 1;
        PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = PagerStateKt.UnitDensity;
        int i3 = this.$targetPage;
        pagerState.programmaticScrollTargetPage$delegate.setIntValue(pagerState.coerceInPageRange(new Integer(i3).intValue()));
        boolean z = i3 > pagerState.firstVisiblePage;
        int lastVisibleItemIndex = (pagerScrollScopeKt$LazyLayoutScrollScope$1.getLastVisibleItemIndex() - pagerState.firstVisiblePage) + 1;
        if (((z && i3 > pagerScrollScopeKt$LazyLayoutScrollScope$1.getLastVisibleItemIndex()) || (!z && i3 < pagerState.firstVisiblePage)) && Math.abs(i3 - pagerState.firstVisiblePage) >= 3) {
            if (z) {
                i = i3 - lastVisibleItemIndex;
                int i4 = pagerState.firstVisiblePage;
                if (i < i4) {
                    i = i4;
                }
            } else {
                int i5 = lastVisibleItemIndex + i3;
                i = pagerState.firstVisiblePage;
                if (i5 <= i) {
                    i = i5;
                }
            }
            pagerScrollScopeKt$LazyLayoutScrollScope$1.snapToItem(i, 0);
        }
        Object animate$default = ArcSplineKt.animate$default(RecyclerView.DECELERATION_RATE, pagerScrollScopeKt$LazyLayoutScrollScope$1.calculateDistanceTo(i3) + this.$targetPageOffsetToSnappedPosition, this.$animationSpec, new HomeScreenKt$$ExternalSyntheticLambda17(8, new Ref$FloatRef(), pagerScrollScopeKt$LazyLayoutScrollScope$1), this, 4);
        if (animate$default != coroutineSingletons) {
            animate$default = unit;
        }
        return animate$default == coroutineSingletons ? coroutineSingletons : unit;
    }
}
