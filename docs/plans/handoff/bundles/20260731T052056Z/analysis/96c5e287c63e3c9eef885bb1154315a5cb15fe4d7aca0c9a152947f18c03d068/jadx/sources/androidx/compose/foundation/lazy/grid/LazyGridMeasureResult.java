package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Density;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyGridMeasureResult implements MeasureResult {
    public final int afterContentPadding;
    public final boolean canScrollForward;
    public final float consumedScroll;
    public final CoroutineScope coroutineScope;
    public final Density density;
    public final LazyGridMeasuredLine firstVisibleLine;
    public final int firstVisibleLineScrollOffset;
    public final Function1 lineIndexProvider;
    public final int mainAxisItemSpacing;
    public final MeasureResult measureResult;
    public final Orientation orientation;
    public final Function1 prefetchInfoRetriever;
    public final boolean remeasureNeeded;
    public final float scrollBackAmount;
    public final int slotsPerLine;
    public final int totalItemsCount;
    public final int viewportEndOffset;
    public final int viewportStartOffset;
    public final List visibleItemsInfo;

    public LazyGridMeasureResult(LazyGridMeasuredLine lazyGridMeasuredLine, int i, boolean z, float f, MeasureResult measureResult, float f2, boolean z2, CoroutineScope coroutineScope, Density density, int i2, Function1 function1, Function1 function12, List list, int i3, int i4, int i5, Orientation orientation, int i6, int i7) {
        this.firstVisibleLine = lazyGridMeasuredLine;
        this.firstVisibleLineScrollOffset = i;
        this.canScrollForward = z;
        this.consumedScroll = f;
        this.measureResult = measureResult;
        this.scrollBackAmount = f2;
        this.remeasureNeeded = z2;
        this.coroutineScope = coroutineScope;
        this.density = density;
        this.slotsPerLine = i2;
        this.prefetchInfoRetriever = function1;
        this.lineIndexProvider = function12;
        this.visibleItemsInfo = list;
        this.viewportStartOffset = i3;
        this.viewportEndOffset = i4;
        this.totalItemsCount = i5;
        this.orientation = orientation;
        this.afterContentPadding = i6;
        this.mainAxisItemSpacing = i7;
    }

    public final LazyGridMeasureResult copyWithScrollDeltaWithoutRemeasure(int i, boolean z) {
        LazyGridMeasuredLine lazyGridMeasuredLine;
        int i2;
        if (this.remeasureNeeded) {
            return null;
        }
        List list = this.visibleItemsInfo;
        if (list.isEmpty() || (lazyGridMeasuredLine = this.firstVisibleLine) == null) {
            return null;
        }
        int i3 = lazyGridMeasuredLine.mainAxisSizeWithSpacings;
        int i4 = this.firstVisibleLineScrollOffset - i;
        if (i4 < 0 || i4 >= i3) {
            return null;
        }
        LazyGridMeasuredItem lazyGridMeasuredItem = (LazyGridMeasuredItem) CollectionsKt.first(list);
        LazyGridMeasuredItem lazyGridMeasuredItem2 = (LazyGridMeasuredItem) CollectionsKt.last(list);
        if (lazyGridMeasuredItem.nonScrollableItem || lazyGridMeasuredItem2.nonScrollableItem) {
            return null;
        }
        int i5 = this.viewportEndOffset;
        int i6 = this.viewportStartOffset;
        Orientation orientation = this.orientation;
        if (i < 0) {
            if (Math.min((UuidKt.offsetOnMainAxis(lazyGridMeasuredItem, orientation) + lazyGridMeasuredItem.mainAxisSizeWithSpacings) - i6, (UuidKt.offsetOnMainAxis(lazyGridMeasuredItem2, orientation) + lazyGridMeasuredItem2.mainAxisSizeWithSpacings) - i5) <= (-i)) {
                return null;
            }
        } else if (Math.min(i6 - UuidKt.offsetOnMainAxis(lazyGridMeasuredItem, orientation), i5 - UuidKt.offsetOnMainAxis(lazyGridMeasuredItem2, orientation)) <= i) {
            return null;
        }
        int size = list.size();
        int i7 = 0;
        while (i7 < size) {
            LazyGridMeasuredItem lazyGridMeasuredItem3 = (LazyGridMeasuredItem) list.get(i7);
            lazyGridMeasuredItem3.getClass();
            if (!lazyGridMeasuredItem3.nonScrollableItem) {
                long j = lazyGridMeasuredItem3.offset;
                lazyGridMeasuredItem3.offset = ((((int) (j & 4294967295L)) + i) & 4294967295L) | (((int) (j >> 32)) << 32);
                if (z) {
                    int size2 = lazyGridMeasuredItem3.placeables.size();
                    int i8 = 0;
                    while (i8 < size2) {
                        LazyLayoutItemAnimation animation = lazyGridMeasuredItem3.animator.getAnimation(i8, lazyGridMeasuredItem3.key);
                        if (animation != null) {
                            long j2 = animation.rawOffset;
                            i2 = i4;
                            animation.rawOffset = ((((int) (j2 & 4294967295L)) + i) & 4294967295L) | (((int) (j2 >> 32)) << 32);
                        } else {
                            i2 = i4;
                        }
                        i8++;
                        i4 = i2;
                    }
                }
            }
            i7++;
            i4 = i4;
        }
        return new LazyGridMeasureResult(this.firstVisibleLine, i4, this.canScrollForward || i > 0, i, this.measureResult, this.scrollBackAmount, this.remeasureNeeded, this.coroutineScope, this.density, this.slotsPerLine, this.prefetchInfoRetriever, this.lineIndexProvider, list, this.viewportStartOffset, this.viewportEndOffset, this.totalItemsCount, this.orientation, this.afterContentPadding, this.mainAxisItemSpacing);
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Map getAlignmentLines() {
        return this.measureResult.getAlignmentLines();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int getHeight() {
        return this.measureResult.getHeight();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Function1 getRulers() {
        return this.measureResult.getRulers();
    }

    /* renamed from: getViewportSize-YbymL2g, reason: not valid java name */
    public final long m160getViewportSizeYbymL2g() {
        MeasureResult measureResult = this.measureResult;
        return (measureResult.getWidth() << 32) | (measureResult.getHeight() & 4294967295L);
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int getWidth() {
        return this.measureResult.getWidth();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final void placeChildren() {
        this.measureResult.placeChildren();
    }
}
