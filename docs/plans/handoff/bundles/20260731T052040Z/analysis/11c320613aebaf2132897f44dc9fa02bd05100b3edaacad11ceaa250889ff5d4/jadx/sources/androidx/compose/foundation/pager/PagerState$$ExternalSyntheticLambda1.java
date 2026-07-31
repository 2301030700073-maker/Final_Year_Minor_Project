package androidx.compose.foundation.pager;

import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PagerState$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PagerState f$0;

    public /* synthetic */ PagerState$$ExternalSyntheticLambda1(PagerState pagerState, int i) {
        this.$r8$classId = i;
        this.f$0 = pagerState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int currentPage;
        int coerceInPageRange;
        int i = this.$r8$classId;
        PagerState pagerState = this.f$0;
        switch (i) {
            case 0:
                return Integer.valueOf(pagerState.scrollableState.isScrollInProgress() ? pagerState.settledPageState$delegate.getIntValue() : pagerState.getCurrentPage());
            case 1:
                boolean isScrollInProgress = pagerState.scrollableState.isScrollInProgress();
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = pagerState.programmaticScrollTargetPage$delegate;
                if (!isScrollInProgress) {
                    currentPage = pagerState.getCurrentPage();
                } else if (parcelableSnapshotMutableIntState.getIntValue() != -1) {
                    currentPage = parcelableSnapshotMutableIntState.getIntValue();
                } else {
                    float abs = Math.abs(pagerState.getCurrentPageOffsetFraction());
                    Density density = pagerState.density;
                    PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = PagerStateKt.UnitDensity;
                    if (abs >= Math.abs(Math.min(density.mo63toPx0680j_4(56.0f), pagerState.getPageSize$foundation() / 2.0f) / pagerState.getPageSize$foundation())) {
                        boolean booleanValue = ((Boolean) pagerState.isLastScrollForwardState.getValue()).booleanValue();
                        int i2 = pagerState.firstVisiblePage;
                        currentPage = booleanValue ? i2 + 1 : i2;
                    } else {
                        currentPage = pagerState.getCurrentPage();
                    }
                }
                coerceInPageRange = pagerState.coerceInPageRange(currentPage);
                break;
            default:
                coerceInPageRange = pagerState.getPageCount();
                break;
        }
        return Integer.valueOf(coerceInPageRange);
    }
}
