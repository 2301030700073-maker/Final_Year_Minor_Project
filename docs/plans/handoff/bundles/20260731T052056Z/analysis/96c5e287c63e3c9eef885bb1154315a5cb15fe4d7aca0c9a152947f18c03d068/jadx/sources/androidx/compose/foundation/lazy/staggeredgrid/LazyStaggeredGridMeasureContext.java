package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.grid.LazyGridSlots;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.ui.graphics.GraphicsContext;
import java.util.List;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyStaggeredGridMeasureContext {
    public final int afterContentPadding;
    public final List approachVisibleItems;
    public final int beforeContentPadding;
    public final long constraints;
    public final long contentOffset;
    public final CoroutineScope coroutineScope;
    public final GraphicsContext graphicsContext;
    public final boolean isInLookaheadScope;
    public final boolean isVertical;
    public final LazyStaggeredGridItemProviderImpl itemProvider;
    public final int laneCount;
    public final StatusLine laneInfo;
    public final int mainAxisAvailableSize;
    public final int mainAxisSpacing;
    public final LazyLayoutMeasureScopeImpl measureScope;
    public final LazyStaggeredGridMeasureContext$measuredItemProvider$1 measuredItemProvider;
    public final List pinnedItems;
    public final LazyGridSlots resolvedSlots;
    public final LazyStaggeredGridState state;

    public LazyStaggeredGridMeasureContext(LazyStaggeredGridState lazyStaggeredGridState, List list, LazyStaggeredGridItemProviderImpl lazyStaggeredGridItemProviderImpl, LazyGridSlots lazyGridSlots, long j, boolean z, LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, long j2, int i2, int i3, int i4, CoroutineScope coroutineScope, boolean z2, List list2, GraphicsContext graphicsContext) {
        this.state = lazyStaggeredGridState;
        this.pinnedItems = list;
        this.itemProvider = lazyStaggeredGridItemProviderImpl;
        this.resolvedSlots = lazyGridSlots;
        this.constraints = j;
        this.isVertical = z;
        this.measureScope = lazyLayoutMeasureScopeImpl;
        this.mainAxisAvailableSize = i;
        this.contentOffset = j2;
        this.beforeContentPadding = i2;
        this.afterContentPadding = i3;
        this.mainAxisSpacing = i4;
        this.coroutineScope = coroutineScope;
        this.isInLookaheadScope = z2;
        this.approachVisibleItems = list2;
        this.graphicsContext = graphicsContext;
        this.measuredItemProvider = new LazyStaggeredGridMeasureContext$measuredItemProvider$1(this, z, lazyStaggeredGridItemProviderImpl, lazyLayoutMeasureScopeImpl, lazyGridSlots);
        this.laneInfo = lazyStaggeredGridState.laneInfo;
        this.laneCount = lazyGridSlots.positions.length;
    }

    /* renamed from: getSpanRange-lOCCd4c, reason: not valid java name */
    public final long m169getSpanRangelOCCd4c(LazyStaggeredGridItemProviderImpl lazyStaggeredGridItemProviderImpl, int i, int i2) {
        boolean isFullSpan = lazyStaggeredGridItemProviderImpl.intervalContent.spanProvider.isFullSpan(i);
        int i3 = isFullSpan ? this.laneCount : 1;
        if (isFullSpan) {
            i2 = 0;
        }
        return (i2 << 32) | ((i3 + i2) & 4294967295L);
    }
}
