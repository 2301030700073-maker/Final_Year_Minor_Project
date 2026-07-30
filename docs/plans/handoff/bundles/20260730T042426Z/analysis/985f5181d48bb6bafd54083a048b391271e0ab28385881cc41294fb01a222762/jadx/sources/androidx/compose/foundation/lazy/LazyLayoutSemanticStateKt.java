package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.unit.IntSize;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* compiled from: LazyLayoutSemanticState.kt */
/* loaded from: classes.dex */
public abstract class LazyLayoutSemanticStateKt {
    public static final LazyLayoutSemanticState LazyLayoutSemanticState(final LazyListState lazyListState, final boolean z) {
        return new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.lazy.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1
            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public float getScrollOffset() {
                return LazyLayoutSemanticsKt.estimatedLazyScrollOffset(LazyListState.this.getFirstVisibleItemIndex(), LazyListState.this.getFirstVisibleItemScrollOffset());
            }

            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public float getMaxScrollOffset() {
                return LazyLayoutSemanticsKt.estimatedLazyMaxScrollOffset(LazyListState.this.getFirstVisibleItemIndex(), LazyListState.this.getFirstVisibleItemScrollOffset(), LazyListState.this.getCanScrollForward());
            }

            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public Object scrollToItem(int i, Continuation continuation) {
                Object scrollToItem$default = LazyListState.scrollToItem$default(LazyListState.this, i, 0, continuation, 2, null);
                return scrollToItem$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? scrollToItem$default : Unit.INSTANCE;
            }

            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public CollectionInfo collectionInfo() {
                if (z) {
                    return new CollectionInfo(-1, 1);
                }
                return new CollectionInfo(1, -1);
            }

            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public int getViewport() {
                if (LazyListState.this.getLayoutInfo().getOrientation() == Orientation.Vertical) {
                    return IntSize.m2483getHeightimpl(LazyListState.this.getLayoutInfo().mo317getViewportSizeYbymL2g());
                }
                return IntSize.m2484getWidthimpl(LazyListState.this.getLayoutInfo().mo317getViewportSizeYbymL2g());
            }

            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public int getContentPadding() {
                return LazyListState.this.getLayoutInfo().getBeforeContentPadding() + LazyListState.this.getLayoutInfo().getAfterContentPadding();
            }
        };
    }
}
