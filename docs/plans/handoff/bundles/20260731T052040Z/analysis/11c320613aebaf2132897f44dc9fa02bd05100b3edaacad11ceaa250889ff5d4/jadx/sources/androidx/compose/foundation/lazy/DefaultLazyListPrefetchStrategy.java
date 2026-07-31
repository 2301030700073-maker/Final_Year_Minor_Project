package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultLazyListPrefetchStrategy {
    public LazyLayoutPrefetchState.PrefetchHandle currentPrefetchHandle;
    public int indexToPrefetch;
    public float previousPassDelta;
    public int previousPassItemCount;
    public boolean wasScrollingForward;

    public static int calculateIndexToPrefetch(LazyListMeasureResult lazyListMeasureResult, boolean z) {
        return z ? ((LazyListMeasuredItem) CollectionsKt.last(lazyListMeasureResult.visibleItemsInfo)).index + 1 : ((LazyListMeasuredItem) CollectionsKt.first(lazyListMeasureResult.visibleItemsInfo)).index - 1;
    }
}
