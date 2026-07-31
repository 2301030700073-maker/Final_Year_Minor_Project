package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyGridBeyondBoundsState implements LazyLayoutBeyondBoundsState {
    public final LazyGridState state;

    public LazyGridBeyondBoundsState(LazyGridState lazyGridState) {
        this.state = lazyGridState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int getFirstPlacedIndex() {
        return this.state.scrollPosition.index$delegate.getIntValue();
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
        return ((LazyGridMeasuredItem) CollectionsKt.last(this.state.getLayoutInfo().visibleItemsInfo)).index;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int itemsPerViewport() {
        int i;
        LazyGridState lazyGridState = this.state;
        int i2 = 0;
        if (lazyGridState.getLayoutInfo().visibleItemsInfo.isEmpty()) {
            return 0;
        }
        LazyGridMeasureResult layoutInfo = lazyGridState.getLayoutInfo();
        Orientation orientation = layoutInfo.orientation;
        Orientation orientation2 = Orientation.Vertical;
        int m160getViewportSizeYbymL2g = (int) (orientation == orientation2 ? layoutInfo.m160getViewportSizeYbymL2g() & 4294967295L : layoutInfo.m160getViewportSizeYbymL2g() >> 32);
        LazyGridMeasureResult layoutInfo2 = lazyGridState.getLayoutInfo();
        Orientation orientation3 = layoutInfo2.orientation;
        List list = layoutInfo2.visibleItemsInfo;
        boolean z = orientation3 == orientation2;
        if (!list.isEmpty()) {
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < list.size()) {
                LazyGridMeasuredItem lazyGridMeasuredItem = (LazyGridMeasuredItem) list.get(i3);
                int i6 = z ? lazyGridMeasuredItem.row : lazyGridMeasuredItem.column;
                if (i6 == -1) {
                    i3++;
                } else {
                    int i7 = 0;
                    while (i3 < list.size()) {
                        LazyGridMeasuredItem lazyGridMeasuredItem2 = (LazyGridMeasuredItem) list.get(i3);
                        if ((z ? lazyGridMeasuredItem2.row : lazyGridMeasuredItem2.column) != i6) {
                            break;
                        }
                        i7 = Math.max(i7, (int) (z ? ((LazyGridMeasuredItem) list.get(i3)).size & 4294967295L : ((LazyGridMeasuredItem) list.get(i3)).size >> 32));
                        i3++;
                    }
                    i4 += i7;
                    i5++;
                }
            }
            i2 = (i4 / i5) + layoutInfo2.mainAxisItemSpacing;
        }
        if (i2 != 0 && (i = m160getViewportSizeYbymL2g / i2) >= 1) {
            return i;
        }
        return 1;
    }
}
