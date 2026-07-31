package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Density;
import androidx.room.util.RelationUtil;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        List list;
        int i3;
        int i4;
        long j;
        List list2;
        if (this.remeasureNeeded) {
            return null;
        }
        List list3 = this.visibleItemsInfo;
        if (list3.isEmpty() || (lazyGridMeasuredLine = this.firstVisibleLine) == null) {
            return null;
        }
        int i5 = lazyGridMeasuredLine.mainAxisSizeWithSpacings;
        int i6 = this.firstVisibleLineScrollOffset - i;
        if (i6 < 0 || i6 >= i5) {
            return null;
        }
        LazyGridMeasuredItem lazyGridMeasuredItem = (LazyGridMeasuredItem) CollectionsKt.first(list3);
        LazyGridMeasuredItem lazyGridMeasuredItem2 = (LazyGridMeasuredItem) CollectionsKt.last(list3);
        if (lazyGridMeasuredItem.nonScrollableItem || lazyGridMeasuredItem2.nonScrollableItem) {
            return null;
        }
        int i7 = this.viewportEndOffset;
        int i8 = this.viewportStartOffset;
        Orientation orientation = this.orientation;
        if (i < 0) {
            if (Math.min((RelationUtil.offsetOnMainAxis(lazyGridMeasuredItem, orientation) + lazyGridMeasuredItem.mainAxisSizeWithSpacings) - i8, (RelationUtil.offsetOnMainAxis(lazyGridMeasuredItem2, orientation) + lazyGridMeasuredItem2.mainAxisSizeWithSpacings) - i7) <= (-i)) {
                return null;
            }
        } else if (Math.min(i8 - RelationUtil.offsetOnMainAxis(lazyGridMeasuredItem, orientation), i7 - RelationUtil.offsetOnMainAxis(lazyGridMeasuredItem2, orientation)) <= i) {
            return null;
        }
        int size = list3.size();
        int i9 = 0;
        while (i9 < size) {
            LazyGridMeasuredItem lazyGridMeasuredItem3 = (LazyGridMeasuredItem) list3.get(i9);
            lazyGridMeasuredItem3.getClass();
            if (lazyGridMeasuredItem3.nonScrollableItem) {
                list = list3;
                i3 = size;
                i2 = i6;
            } else {
                long j2 = lazyGridMeasuredItem3.offset;
                long j3 = 4294967295L;
                i2 = i6;
                lazyGridMeasuredItem3.offset = (((int) (j2 >> 32)) << 32) | ((((int) (j2 & 4294967295L)) + i) & 4294967295L);
                if (z) {
                    int size2 = lazyGridMeasuredItem3.placeables.size();
                    int i10 = 0;
                    while (i10 < size2) {
                        LazyLayoutItemAnimation animation = lazyGridMeasuredItem3.animator.getAnimation(i10, lazyGridMeasuredItem3.key);
                        if (animation != null) {
                            long j4 = animation.rawOffset;
                            j = j3;
                            list2 = list3;
                            i4 = size;
                            animation.rawOffset = ((((int) (j4 & j)) + i) & j) | (((int) (j4 >> 32)) << 32);
                        } else {
                            i4 = size;
                            j = j3;
                            list2 = list3;
                        }
                        i10++;
                        list3 = list2;
                        j3 = j;
                        size = i4;
                    }
                }
                list = list3;
                i3 = size;
            }
            i9++;
            i6 = i2;
            list3 = list;
            size = i3;
        }
        return new LazyGridMeasureResult(this.firstVisibleLine, i6, this.canScrollForward || i > 0, i, this.measureResult, this.scrollBackAmount, this.remeasureNeeded, this.coroutineScope, this.density, this.slotsPerLine, this.prefetchInfoRetriever, this.lineIndexProvider, list3, this.viewportStartOffset, this.viewportEndOffset, this.totalItemsCount, orientation, this.afterContentPadding, this.mainAxisItemSpacing);
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
    public final long m250getViewportSizeYbymL2g() {
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
