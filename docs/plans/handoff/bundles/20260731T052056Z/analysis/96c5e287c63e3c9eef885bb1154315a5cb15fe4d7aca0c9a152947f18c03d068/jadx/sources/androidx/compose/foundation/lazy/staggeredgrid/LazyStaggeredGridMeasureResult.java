package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.LazyGridSlots;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Density;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyStaggeredGridMeasureResult implements MeasureResult {
    public final int afterContentPadding;
    public final int beforeContentPadding;
    public final boolean canScrollForward;
    public final float consumedScroll;
    public final CoroutineScope coroutineScope;
    public final Density density;
    public final int[] firstVisibleItemIndices;
    public final int[] firstVisibleItemScrollOffsets;
    public final boolean isVertical;
    public final int mainAxisItemSpacing;
    public final MeasureResult measureResult;
    public final Orientation orientation;
    public final boolean remeasureNeeded;
    public final float scrollBackAmount;
    public final LazyGridSlots slots;
    public final PopupMenu$1 spanProvider;
    public final int totalItemsCount;
    public final int viewportEndOffset;
    public final long viewportSize;
    public final int viewportStartOffset;
    public final List visibleItemsInfo;

    public LazyStaggeredGridMeasureResult(int[] iArr, int[] iArr2, float f, MeasureResult measureResult, float f2, boolean z, boolean z2, boolean z3, LazyGridSlots lazyGridSlots, PopupMenu$1 popupMenu$1, Density density, int i, List list, long j, int i2, int i3, int i4, int i5, int i6, CoroutineScope coroutineScope) {
        this.firstVisibleItemIndices = iArr;
        this.firstVisibleItemScrollOffsets = iArr2;
        this.consumedScroll = f;
        this.measureResult = measureResult;
        this.scrollBackAmount = f2;
        this.canScrollForward = z;
        this.isVertical = z2;
        this.remeasureNeeded = z3;
        this.slots = lazyGridSlots;
        this.spanProvider = popupMenu$1;
        this.density = density;
        this.totalItemsCount = i;
        this.visibleItemsInfo = list;
        this.viewportSize = j;
        this.viewportStartOffset = i2;
        this.viewportEndOffset = i3;
        this.beforeContentPadding = i4;
        this.afterContentPadding = i5;
        this.mainAxisItemSpacing = i6;
        this.coroutineScope = coroutineScope;
        this.orientation = z2 ? Orientation.Vertical : Orientation.Horizontal;
    }

    public final LazyStaggeredGridMeasureResult copyWithScrollDeltaWithoutRemeasure(int i, boolean z) {
        char c;
        long j;
        long j2;
        int i2;
        if (this.remeasureNeeded) {
            return null;
        }
        List list = this.visibleItemsInfo;
        if (list.isEmpty()) {
            return null;
        }
        int[] iArr = this.firstVisibleItemIndices;
        if (iArr.length == 0) {
            return null;
        }
        int[] iArr2 = this.firstVisibleItemScrollOffsets;
        if (iArr2.length == 0) {
            return null;
        }
        int i3 = this.afterContentPadding;
        int i4 = this.viewportEndOffset;
        int i5 = i4 - i3;
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = (LazyStaggeredGridMeasuredItem) list.get(i6);
            boolean z2 = lazyStaggeredGridMeasuredItem.nonScrollableItem;
            int i7 = lazyStaggeredGridMeasuredItem.mainAxisSizeWithSpacings;
            if (z2) {
                return null;
            }
            if ((lazyStaggeredGridMeasuredItem.getMainAxisOffset() <= 0) != (lazyStaggeredGridMeasuredItem.getMainAxisOffset() + i <= 0)) {
                return null;
            }
            int mainAxisOffset = lazyStaggeredGridMeasuredItem.getMainAxisOffset();
            int i8 = this.viewportStartOffset;
            if (mainAxisOffset <= i8) {
                if (i < 0) {
                    if ((lazyStaggeredGridMeasuredItem.getMainAxisOffset() + i7) - i8 <= (-i)) {
                        return null;
                    }
                } else if (i8 - lazyStaggeredGridMeasuredItem.getMainAxisOffset() <= i) {
                    return null;
                }
            }
            if (lazyStaggeredGridMeasuredItem.getMainAxisOffset() + i7 >= i5) {
                if (i < 0) {
                    if ((lazyStaggeredGridMeasuredItem.getMainAxisOffset() + i7) - i4 <= (-i)) {
                        return null;
                    }
                } else if (i4 - lazyStaggeredGridMeasuredItem.getMainAxisOffset() <= i) {
                    return null;
                }
            }
        }
        int size2 = list.size();
        for (int i9 = 0; i9 < size2; i9++) {
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem2 = (LazyStaggeredGridMeasuredItem) list.get(i9);
            boolean z3 = lazyStaggeredGridMeasuredItem2.isVertical;
            if (!lazyStaggeredGridMeasuredItem2.nonScrollableItem) {
                long j3 = lazyStaggeredGridMeasuredItem2.offset;
                char c2 = ' ';
                long j4 = 4294967295L;
                lazyStaggeredGridMeasuredItem2.offset = ((z3 ? (int) (j3 >> 32) : ((int) (j3 >> 32)) + i) << 32) | ((z3 ? ((int) (j3 & 4294967295L)) + i : (int) (j3 & 4294967295L)) & 4294967295L);
                if (z) {
                    int size3 = lazyStaggeredGridMeasuredItem2.placeables.size();
                    int i10 = 0;
                    while (i10 < size3) {
                        LazyLayoutItemAnimation animation = lazyStaggeredGridMeasuredItem2.animator.getAnimation(i10, lazyStaggeredGridMeasuredItem2.key);
                        if (animation != null) {
                            char c3 = c2;
                            long j5 = animation.rawOffset;
                            if (z3) {
                                c = c3;
                                j2 = j5;
                                i2 = (int) (j2 >> c);
                            } else {
                                c = c3;
                                j2 = j5;
                                i2 = ((int) (j2 >> c)) + i;
                            }
                            int i11 = z3 ? ((int) (j2 & j4)) + i : (int) (j2 & j4);
                            j = j4;
                            animation.rawOffset = (i11 & j) | (i2 << c);
                        } else {
                            c = c2;
                            j = j4;
                        }
                        i10++;
                        c2 = c;
                        j4 = j;
                    }
                }
            }
        }
        int length = iArr2.length;
        int[] iArr3 = new int[length];
        for (int i12 = 0; i12 < length; i12++) {
            iArr3[i12] = iArr2[i12] - i;
        }
        return new LazyStaggeredGridMeasureResult(iArr, iArr3, i, this.measureResult, this.scrollBackAmount, this.canScrollForward || i > 0, this.isVertical, this.remeasureNeeded, this.slots, this.spanProvider, this.density, this.totalItemsCount, list, this.viewportSize, this.viewportStartOffset, this.viewportEndOffset, this.beforeContentPadding, this.afterContentPadding, this.mainAxisItemSpacing, this.coroutineScope);
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

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int getWidth() {
        return this.measureResult.getWidth();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final void placeChildren() {
        this.measureResult.placeChildren();
    }
}
