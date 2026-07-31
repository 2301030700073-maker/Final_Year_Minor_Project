package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagerScrollScopeKt$LazyLayoutScrollScope$1 implements ScrollScope {
    public final /* synthetic */ ScrollScope $$delegate_0;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ScrollableState $state;

    public /* synthetic */ PagerScrollScopeKt$LazyLayoutScrollScope$1(ScrollScope scrollScope, ScrollableState scrollableState, int i) {
        this.$r8$classId = i;
        this.$state = scrollableState;
        this.$$delegate_0 = scrollScope;
    }

    public final int calculateDistanceTo(int i) {
        Object obj;
        int i2 = this.$r8$classId;
        ScrollableState scrollableState = this.$state;
        switch (i2) {
            case 0:
                PagerState pagerState = (PagerState) scrollableState;
                return (int) (RegexKt.coerceIn(ExceptionsKt.currentAbsoluteScrollOffset(pagerState) + UnsignedKt.roundToInt(((pagerState.getPageSizeWithSpacing$foundation() * (i - pagerState.getCurrentPage())) - (pagerState.getCurrentPageOffsetFraction() * pagerState.getPageSizeWithSpacing$foundation())) + RecyclerView.DECELERATION_RATE), pagerState.minScrollOffset, pagerState.maxScrollOffset) - ExceptionsKt.currentAbsoluteScrollOffset(pagerState));
            default:
                LazyListState lazyListState = (LazyListState) scrollableState;
                LazyListMeasureResult layoutInfo = lazyListState.getLayoutInfo();
                if (layoutInfo.visibleItemsInfo.isEmpty()) {
                    return 0;
                }
                int firstVisibleItemIndex = lazyListState.getFirstVisibleItemIndex();
                if (i > getLastVisibleItemIndex() || firstVisibleItemIndex > i) {
                    return ((i - lazyListState.getFirstVisibleItemIndex()) * ResultKt.visibleItemsAverageSize(layoutInfo)) - lazyListState.getFirstVisibleItemScrollOffset();
                }
                List list = layoutInfo.visibleItemsInfo;
                int size = list.size();
                int i3 = 0;
                while (true) {
                    if (i3 < size) {
                        obj = list.get(i3);
                        if (((LazyListMeasuredItem) obj).index != i) {
                            i3++;
                        }
                    } else {
                        obj = null;
                    }
                }
                LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) obj;
                if (lazyListMeasuredItem != null) {
                    return lazyListMeasuredItem.offset;
                }
                return 0;
        }
    }

    public final int getFirstVisibleItemIndex() {
        int i = this.$r8$classId;
        ScrollableState scrollableState = this.$state;
        switch (i) {
            case 0:
                return ((PagerState) scrollableState).firstVisiblePage;
            default:
                return ((LazyListState) scrollableState).getFirstVisibleItemIndex();
        }
    }

    public final int getFirstVisibleItemScrollOffset() {
        int i = this.$r8$classId;
        ScrollableState scrollableState = this.$state;
        switch (i) {
            case 0:
                return ((PagerState) scrollableState).firstVisiblePageOffset;
            default:
                return ((LazyListState) scrollableState).getFirstVisibleItemScrollOffset();
        }
    }

    public final int getLastVisibleItemIndex() {
        int i = this.$r8$classId;
        ScrollableState scrollableState = this.$state;
        switch (i) {
            case 0:
                return ((MeasuredPage) CollectionsKt.last(((PagerState) scrollableState).getLayoutInfo().visiblePagesInfo)).index;
            default:
                LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) CollectionsKt.lastOrNull(((LazyListState) scrollableState).getLayoutInfo().visibleItemsInfo);
                if (lazyListMeasuredItem != null) {
                    return lazyListMeasuredItem.index;
                }
                return 0;
        }
    }

    @Override // androidx.compose.foundation.gestures.ScrollScope
    public final float scrollBy(float f) {
        switch (this.$r8$classId) {
        }
        return this.$$delegate_0.scrollBy(f);
    }

    public final void snapToItem(int i, int i2) {
        int i3 = this.$r8$classId;
        ScrollableState scrollableState = this.$state;
        switch (i3) {
            case 0:
                PagerState pagerState = (PagerState) scrollableState;
                float pageSizeWithSpacing$foundation = pagerState.getPageSizeWithSpacing$foundation();
                float f = RecyclerView.DECELERATION_RATE;
                if (pageSizeWithSpacing$foundation != RecyclerView.DECELERATION_RATE) {
                    f = i2 / pageSizeWithSpacing$foundation;
                }
                pagerState.snapToItem$foundation(f, i, true);
                break;
            default:
                ((LazyListState) scrollableState).snapToItemIndexInternal$foundation(i, i2);
                break;
        }
    }
}
