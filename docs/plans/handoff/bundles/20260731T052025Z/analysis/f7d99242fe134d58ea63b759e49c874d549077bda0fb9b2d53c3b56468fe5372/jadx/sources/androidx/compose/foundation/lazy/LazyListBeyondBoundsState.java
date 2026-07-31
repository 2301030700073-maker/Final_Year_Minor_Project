package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import androidx.datastore.preferences.protobuf.Utf8;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyListBeyondBoundsState implements LazyLayoutBeyondBoundsState {
    public final LazyListState state;

    public LazyListBeyondBoundsState(LazyListState lazyListState) {
        this.state = lazyListState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int getFirstPlacedIndex() {
        return Math.max(0, this.state.scrollPosition.index$delegate.getIntValue());
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
        int m246getViewportSizeYbymL2g = (int) (layoutInfo.orientation == Orientation.Vertical ? layoutInfo.m246getViewportSizeYbymL2g() & 4294967295L : layoutInfo.m246getViewportSizeYbymL2g() >> 32);
        int visibleItemsAverageSize = Utf8.SafeProcessor.visibleItemsAverageSize(lazyListState.getLayoutInfo());
        if (visibleItemsAverageSize != 0 && (i = m246getViewportSizeYbymL2g / visibleItemsAverageSize) >= 1) {
            return i;
        }
        return 1;
    }
}
