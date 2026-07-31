package androidx.compose.foundation.pager;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition$Start;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.search.NoSearchResultsKt$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PagerStateKt {
    public static final PagerMeasureResult EmptyLayoutInfo;
    public static final PagerStateKt$UnitDensity$1 UnitDensity;

    static {
        PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = new PagerStateKt$UnitDensity$1();
        UnitDensity = pagerStateKt$UnitDensity$1;
        EmptyLayoutInfo = new PagerMeasureResult(0, 0, 0, Orientation.Horizontal, 0, 0, 0, SnapPosition$Start.INSTANCE, new PagerStateKt$EmptyLayoutInfo$1(), AwaitKt.CoroutineScope(EmptyCoroutineContext.INSTANCE), pagerStateKt$UnitDensity$1, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15));
    }

    public static final long calculateNewMaxScrollOffset(PagerMeasureResult pagerMeasureResult, int i) {
        int i2 = pagerMeasureResult.pageSpacing;
        int i3 = pagerMeasureResult.pageSize;
        long j = i * (i2 + i3);
        int i4 = -pagerMeasureResult.viewportStartOffset;
        long j2 = ((j + i4) + pagerMeasureResult.afterContentPadding) - i2;
        int m172getViewportSizeYbymL2g = (int) (pagerMeasureResult.orientation == Orientation.Horizontal ? pagerMeasureResult.m172getViewportSizeYbymL2g() >> 32 : pagerMeasureResult.m172getViewportSizeYbymL2g() & 4294967295L);
        long coerceIn = j2 - (m172getViewportSizeYbymL2g - RegexKt.coerceIn(pagerMeasureResult.snapPosition.position(m172getViewportSizeYbymL2g, i3, i4, r2), 0, m172getViewportSizeYbymL2g));
        if (coerceIn < 0) {
            return 0L;
        }
        return coerceIn;
    }

    public static final DefaultPagerState rememberPagerState(Function0 function0, GapComposer gapComposer, int i, int i2) {
        Object[] objArr = new Object[0];
        CardView.AnonymousClass1 anonymousClass1 = DefaultPagerState.Saver;
        boolean z = true;
        boolean changed = ((((i & 14) ^ 6) > 4 && gapComposer.changed(0)) || (i & 6) == 4) | gapComposer.changed(RecyclerView.DECELERATION_RATE);
        if ((((i & 896) ^ 384) <= 256 || !gapComposer.changed(function0)) && (i & 384) != 256) {
            z = false;
        }
        boolean z2 = changed | z;
        Object rememberedValue = gapComposer.rememberedValue();
        if (z2 || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new NoSearchResultsKt$$ExternalSyntheticLambda3(0, function0);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        DefaultPagerState defaultPagerState = (DefaultPagerState) SaverKt.rememberSaveable(objArr, anonymousClass1, (Function0) rememberedValue, gapComposer, 0);
        defaultPagerState.pageCountState.setValue(function0);
        return defaultPagerState;
    }
}
