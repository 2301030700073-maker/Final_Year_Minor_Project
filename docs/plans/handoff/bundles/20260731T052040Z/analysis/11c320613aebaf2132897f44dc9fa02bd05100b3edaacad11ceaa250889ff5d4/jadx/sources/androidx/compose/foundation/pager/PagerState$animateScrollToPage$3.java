package androidx.compose.foundation.pager;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.gestures.DefaultScrollableState$scrollScope$1;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PagerState$animateScrollToPage$3 extends SuspendLambda implements Function2 {
    final /* synthetic */ AnimationSpec $animationSpec;
    final /* synthetic */ int $targetPage;
    final /* synthetic */ float $targetPageOffsetToSnappedPosition;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PagerState this$0;

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
        int i = this.label;
        Unit unit = Unit.INSTANCE;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return unit;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        ScrollScope scrollScope = (ScrollScope) this.L$0;
        PagerState pagerState = this.this$0;
        DefaultScrollableState$scrollScope$1 defaultScrollableState$scrollScope$1 = new DefaultScrollableState$scrollScope$1(scrollScope, pagerState);
        int i2 = this.$targetPage;
        float f = this.$targetPageOffsetToSnappedPosition;
        AnimationSpec animationSpec = this.$animationSpec;
        this.label = 1;
        PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = PagerStateKt.UnitDensity;
        pagerState.programmaticScrollTargetPage$delegate.setIntValue(pagerState.coerceInPageRange(new Integer(i2).intValue()));
        boolean z = i2 > pagerState.firstVisiblePage;
        int i3 = (((MeasuredPage) CollectionsKt.last(pagerState.getLayoutInfo().visiblePagesInfo)).index - pagerState.firstVisiblePage) + 1;
        if (((z && i2 > ((MeasuredPage) CollectionsKt.last(pagerState.getLayoutInfo().visiblePagesInfo)).index) || (!z && i2 < pagerState.firstVisiblePage)) && Math.abs(i2 - pagerState.firstVisiblePage) >= 3) {
            int i4 = pagerState.firstVisiblePage;
            if (z) {
                int i5 = i2 - i3;
                if (i5 >= i4) {
                    i4 = i5;
                }
            } else {
                int i6 = i3 + i2;
                if (i6 <= i4) {
                    i4 = i6;
                }
            }
            float pageSizeWithSpacing$foundation = pagerState.getPageSizeWithSpacing$foundation();
            pagerState.snapToItem$foundation(pageSizeWithSpacing$foundation == 0.0f ? 0.0f : 0.0f / pageSizeWithSpacing$foundation, i4, true);
        }
        Object animate$default = ArcSplineKt.animate$default(0.0f, ((int) (RangesKt.coerceIn(Options.Companion.currentAbsoluteScrollOffset(pagerState) + MathKt.roundToInt(((pagerState.getPageSizeWithSpacing$foundation() * (i2 - pagerState.getCurrentPage())) - (pagerState.getCurrentPageOffsetFraction() * pagerState.getPageSizeWithSpacing$foundation())) + 0.0f), pagerState.minScrollOffset, pagerState.maxScrollOffset) - Options.Companion.currentAbsoluteScrollOffset(pagerState))) + f, animationSpec, new TextKt$$ExternalSyntheticLambda2(new Ref$FloatRef(), defaultScrollableState$scrollScope$1, 5), this, 4);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (animate$default != coroutineSingletons) {
            animate$default = unit;
        }
        return animate$default == coroutineSingletons ? coroutineSingletons : unit;
    }
}
