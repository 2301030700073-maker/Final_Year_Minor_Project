package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyListBeyondBoundsState implements LazyLayoutBeyondBoundsState {
    public final LazyListState state;

    public LazyListBeyondBoundsState(LazyListState lazyListState) {
        this.state = lazyListState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int getFirstPlacedIndex() {
        return Math.max(0, this.state.getFirstVisibleItemIndex());
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
        if (lazyListState.getLayoutInfo().visibleItemsInfo.isEmpty()) {
            return 0;
        }
        LazyListMeasureResult layoutInfo = lazyListState.getLayoutInfo();
        int m155getViewportSizeYbymL2g = (int) (layoutInfo.orientation == Orientation.Vertical ? layoutInfo.m155getViewportSizeYbymL2g() & 4294967295L : layoutInfo.m155getViewportSizeYbymL2g() >> 32);
        int visibleItemsAverageSize = ResultKt.visibleItemsAverageSize(lazyListState.getLayoutInfo());
        if (visibleItemsAverageSize != 0 && (i = m155getViewportSizeYbymL2g / visibleItemsAverageSize) >= 1) {
            return i;
        }
        return 1;
    }
}
