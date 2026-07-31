package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import kotlin.collections.CollectionsKt;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PagerBeyondBoundsState implements LazyLayoutBeyondBoundsState {
    public final DefaultPagerState state;

    public PagerBeyondBoundsState(DefaultPagerState defaultPagerState) {
        this.state = defaultPagerState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int getFirstPlacedIndex() {
        return Math.max(0, this.state.firstVisiblePage);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final boolean getHasVisibleItems() {
        return !this.state.getLayoutInfo().visiblePagesInfo.isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int getItemCount() {
        return this.state.getPageCount();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int getLastPlacedIndex() {
        return Math.min(r1.getPageCount() - 1, ((MeasuredPage) CollectionsKt.last(this.state.getLayoutInfo().visiblePagesInfo)).index);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int itemsPerViewport() {
        int i;
        DefaultPagerState defaultPagerState = this.state;
        if (defaultPagerState.getLayoutInfo().visiblePagesInfo.size() == 0) {
            return 0;
        }
        int mainAxisViewportSize = UStringsKt.getMainAxisViewportSize(defaultPagerState.getLayoutInfo());
        int i2 = defaultPagerState.getLayoutInfo().pageSize + defaultPagerState.getLayoutInfo().pageSpacing;
        if (i2 != 0 && (i = mainAxisViewportSize / i2) >= 1) {
            return i;
        }
        return 1;
    }
}
