package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredItem;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        Orientation orientation = Orientation.Vertical;
        if (z) {
            LazyGridMeasuredItem lazyGridMeasuredItem = (LazyGridMeasuredItem) CollectionsKt.last(lazyGridMeasureResult.visibleItemsInfo);
            return (lazyGridMeasureResult.orientation == orientation ? lazyGridMeasuredItem.row : lazyGridMeasuredItem.column) + 1;
        }
        LazyGridMeasuredItem lazyGridMeasuredItem2 = (LazyGridMeasuredItem) CollectionsKt.first(lazyGridMeasureResult.visibleItemsInfo);
        return (lazyGridMeasureResult.orientation == orientation ? lazyGridMeasuredItem2.row : lazyGridMeasuredItem2.column) - 1;
    }
}
