package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredItem;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultLazyListPrefetchStrategy {
    public Object currentPrefetchHandle;
    public int indexToPrefetch;
    public float previousPassDelta;
    public int previousPassItemCount;
    public boolean wasScrollingForward;

    public static int calculateIndexToPrefetch(LazyListMeasureResult lazyListMeasureResult, boolean z) {
        return z ? ((LazyListMeasuredItem) CollectionsKt.last(lazyListMeasureResult.visibleItemsInfo)).index + 1 : ((LazyListMeasuredItem) CollectionsKt.first(lazyListMeasureResult.visibleItemsInfo)).index - 1;
    }

    public static int calculateLineIndexToPrefetch(LazyGridMeasureResult lazyGridMeasureResult, boolean z) {
        if (z) {
            LazyGridMeasuredItem lazyGridMeasuredItem = (LazyGridMeasuredItem) CollectionsKt.last(lazyGridMeasureResult.visibleItemsInfo);
            return (lazyGridMeasureResult.orientation == Orientation.Vertical ? lazyGridMeasuredItem.row : lazyGridMeasuredItem.column) + 1;
        }
        LazyGridMeasuredItem lazyGridMeasuredItem2 = (LazyGridMeasuredItem) CollectionsKt.first(lazyGridMeasureResult.visibleItemsInfo);
        return (lazyGridMeasureResult.orientation == Orientation.Vertical ? lazyGridMeasuredItem2.row : lazyGridMeasuredItem2.column) - 1;
    }
}
