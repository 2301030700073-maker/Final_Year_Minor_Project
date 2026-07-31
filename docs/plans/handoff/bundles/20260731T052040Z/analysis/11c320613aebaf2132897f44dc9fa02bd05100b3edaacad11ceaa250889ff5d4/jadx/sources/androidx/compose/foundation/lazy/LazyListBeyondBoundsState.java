package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyListBeyondBoundsState implements LazyLayoutBeyondBoundsState {
    public final LazyListState state;

    public LazyListBeyondBoundsState(LazyListState lazyListState) {
        this.state = lazyListState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int getFirstPlacedIndex() {
        return Math.max(0, ((ParcelableSnapshotMutableIntState) this.state.scrollPosition.imageLoader).getIntValue());
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
        return Math.min(getItemCount() - 1, ((LazyListMeasuredItem) CollectionsKt.last(this.state.getLayoutInfo().visibleItemsInfo)).index);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int itemsPerViewport() {
        int i;
        LazyListState lazyListState = this.state;
        int i2 = 0;
        if (lazyListState.getLayoutInfo().visibleItemsInfo.isEmpty()) {
            return 0;
        }
        LazyListMeasureResult layoutInfo = lazyListState.getLayoutInfo();
        int m104getViewportSizeYbymL2g = (int) (layoutInfo.orientation == Orientation.Vertical ? layoutInfo.m104getViewportSizeYbymL2g() & 4294967295L : layoutInfo.m104getViewportSizeYbymL2g() >> 32);
        LazyListMeasureResult layoutInfo2 = lazyListState.getLayoutInfo();
        List list = layoutInfo2.visibleItemsInfo;
        if (!list.isEmpty()) {
            int size = list.size();
            int i3 = 0;
            while (i2 < size) {
                i3 += ((LazyListMeasuredItem) list.get(i2)).size;
                i2++;
            }
            i2 = (i3 / list.size()) + layoutInfo2.mainAxisItemSpacing;
        }
        if (i2 != 0 && (i = m104getViewportSizeYbymL2g / i2) >= 1) {
            return i;
        }
        return 1;
    }
}
