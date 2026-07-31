package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyStaggeredGridBeyondBoundsState implements LazyLayoutBeyondBoundsState {
    public final LazyStaggeredGridState state;

    public LazyStaggeredGridBeyondBoundsState(LazyStaggeredGridState lazyStaggeredGridState) {
        this.state = lazyStaggeredGridState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int getFirstPlacedIndex() {
        return ((ParcelableSnapshotMutableIntState) this.state.scrollPosition.density).getIntValue();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final boolean getHasVisibleItems() {
        return !this.state.getLayoutInfo().visibleItemsInfo.isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int getItemCount() {
        return this.state.getLayoutInfo().totalItemsCount;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int getLastPlacedIndex() {
        return ((LazyStaggeredGridMeasuredItem) CollectionsKt.last(this.state.getLayoutInfo().visibleItemsInfo)).index;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int itemsPerViewport() {
        int i;
        LazyStaggeredGridState lazyStaggeredGridState = this.state;
        int i2 = 0;
        if (lazyStaggeredGridState.getLayoutInfo().visibleItemsInfo.isEmpty()) {
            return 0;
        }
        LazyStaggeredGridMeasureResult layoutInfo = lazyStaggeredGridState.getLayoutInfo();
        LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult = LazyStaggeredGridMeasureResultKt.EmptyLazyStaggeredGridLayoutInfo;
        Orientation orientation = layoutInfo.orientation;
        Orientation orientation2 = Orientation.Vertical;
        long j = layoutInfo.viewportSize;
        int i3 = (int) (orientation == orientation2 ? j & 4294967295L : j >> 32);
        LazyStaggeredGridMeasureResult layoutInfo2 = lazyStaggeredGridState.getLayoutInfo();
        List list = layoutInfo2.visibleItemsInfo;
        if (!list.isEmpty()) {
            int size = list.size();
            int i4 = 0;
            while (i2 < size) {
                LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = (LazyStaggeredGridMeasuredItem) list.get(i2);
                i4 += (int) (layoutInfo2.orientation == Orientation.Vertical ? lazyStaggeredGridMeasuredItem.size & 4294967295L : lazyStaggeredGridMeasuredItem.size >> 32);
                i2++;
            }
            i2 = (i4 / list.size()) + layoutInfo2.mainAxisItemSpacing;
        }
        if (i2 != 0 && (i = i3 / i2) >= 1) {
            return i;
        }
        return 1;
    }
}
