package androidx.compose.foundation.lazy;

import androidx.compose.foundation.MutationInterruptedException;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyListScrollScopeKt$LazyLayoutScrollScope$1 implements ScrollScope {
    public final /* synthetic */ Object $$delegate_0;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $state;

    public /* synthetic */ LazyListScrollScopeKt$LazyLayoutScrollScope$1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.$$delegate_0 = obj;
        this.$state = obj2;
    }

    public int getFirstVisibleItemIndex() {
        return ((LazyListState) this.$state).scrollPosition.index$delegate.getIntValue();
    }

    public int getLastVisibleItemIndex() {
        LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) CollectionsKt.lastOrNull(((LazyListState) this.$state).getLayoutInfo().visibleItemsInfo);
        if (lazyListMeasuredItem != null) {
            return lazyListMeasuredItem.index;
        }
        return 0;
    }

    @Override // androidx.compose.foundation.gestures.ScrollScope
    public final float scrollBy(float f) {
        int i = this.$r8$classId;
        Object obj = this.$$delegate_0;
        switch (i) {
            case 0:
                return ((ScrollScope) obj).scrollBy(f);
            default:
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj;
                if (Math.abs(f) == 0.0f || ((Boolean) scrollingLogic.isScrollableNodeAttached.invoke()).booleanValue()) {
                    return scrollingLogic.reverseIfNeeded(scrollingLogic.m193toFloatk4lQ0M(((ScrollingLogic$nestedScrollScope$1) this.$state).m196scrollByWithOverscrollOzD1aCk(2, scrollingLogic.m192reverseIfNeededMKHz9U(scrollingLogic.m194toOffsettuRUvjQ(f)))));
                }
                throw new MutationInterruptedException("The fling animation was cancelled", 1);
        }
    }
}
