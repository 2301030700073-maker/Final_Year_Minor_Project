package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition$Start;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PagerStateKt {
    public static final PagerMeasureResult EmptyLayoutInfo;
    public static final PagerStateKt$UnitDensity$1 UnitDensity;

    static {
        PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = new PagerStateKt$UnitDensity$1();
        UnitDensity = pagerStateKt$UnitDensity$1;
        EmptyLayoutInfo = new PagerMeasureResult(0, 0, 0, 0, 0, 0, SnapPosition$Start.INSTANCE, new PagerStateKt$EmptyLayoutInfo$1(), JobKt.CoroutineScope(EmptyCoroutineContext.INSTANCE), pagerStateKt$UnitDensity$1, ConstraintsKt.Constraints$default(0, 0, 15));
    }

    public static final long calculateNewMaxScrollOffset(PagerMeasureResult pagerMeasureResult, int i) {
        long j = (((i * (pagerMeasureResult.pageSize + r0)) + (-pagerMeasureResult.viewportStartOffset)) + pagerMeasureResult.afterContentPadding) - pagerMeasureResult.pageSpacing;
        int m112getViewportSizeYbymL2g = (int) (pagerMeasureResult.orientation == Orientation.Horizontal ? pagerMeasureResult.m112getViewportSizeYbymL2g() >> 32 : pagerMeasureResult.m112getViewportSizeYbymL2g() & 4294967295L);
        pagerMeasureResult.snapPosition.getClass();
        long coerceIn = j - (m112getViewportSizeYbymL2g - RangesKt.coerceIn(0, 0, m112getViewportSizeYbymL2g));
        if (coerceIn < 0) {
            return 0L;
        }
        return coerceIn;
    }
}
