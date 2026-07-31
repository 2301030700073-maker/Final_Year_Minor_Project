package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyGridMeasuredItem implements LazyLayoutMeasuredItem {
    public final int afterContentPadding;
    public final LazyLayoutItemAnimator animator;
    public final int beforeContentPadding;
    public int column;
    public final long constraints;
    public final Object contentType;
    public final int crossAxisSize;
    public final int index;
    public final Object key;
    public final int lane;
    public final LayoutDirection layoutDirection;
    public int mainAxisLayoutSize = Integer.MIN_VALUE;
    public final int mainAxisSize;
    public final int mainAxisSizeWithSpacings;
    public int maxMainAxisOffset;
    public int minMainAxisOffset;
    public boolean nonScrollableItem;
    public long offset;
    public final List placeables;
    public int row;
    public final long size;
    public final int span;
    public final long visualOffset;

    public LazyGridMeasuredItem(int i, Object obj, int i2, int i3, LayoutDirection layoutDirection, int i4, int i5, List list, long j, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2, int i6, int i7) {
        this.index = i;
        this.key = obj;
        this.crossAxisSize = i2;
        this.layoutDirection = layoutDirection;
        this.beforeContentPadding = i4;
        this.afterContentPadding = i5;
        this.placeables = list;
        this.visualOffset = j;
        this.contentType = obj2;
        this.animator = lazyLayoutItemAnimator;
        this.constraints = j2;
        this.lane = i6;
        this.span = i7;
        int size = list.size();
        int i8 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            i8 = Math.max(i8, ((Placeable) list.get(i9)).height);
        }
        this.mainAxisSize = i8;
        int i10 = i3 + i8;
        this.mainAxisSizeWithSpacings = i10 >= 0 ? i10 : 0;
        this.size = (this.crossAxisSize << 32) | (i8 & 4294967295L);
        this.offset = 0L;
        this.row = -1;
        this.column = -1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* renamed from: getConstraints-msEJaDk */
    public final long mo156getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int getIndex() {
        return this.index;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final Object getKey() {
        return this.key;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int getLane() {
        return this.lane;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int getMainAxisSizeWithSpacings() {
        return this.mainAxisSizeWithSpacings;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* renamed from: getOffset-Bjo55l4 */
    public final long mo158getOffsetBjo55l4(int i) {
        return this.offset;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final Object getParentData(int i) {
        return ((Placeable) this.placeables.get(i)).getParentData();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int getPlaceablesCount() {
        return this.placeables.size();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int getSpan() {
        return this.span;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final boolean isVertical() {
        return true;
    }

    public final void place(Placeable.PlacementScope placementScope, boolean z) {
        GraphicsLayer graphicsLayer;
        if (this.mainAxisLayoutSize == Integer.MIN_VALUE) {
            InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
        }
        List list = this.placeables;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable placeable = (Placeable) list.get(i);
            int i2 = this.minMainAxisOffset - placeable.height;
            int i3 = this.maxMainAxisOffset;
            long j = this.offset;
            LazyLayoutItemAnimation animation = this.animator.getAnimation(i, this.key);
            if (animation != null) {
                if (z) {
                    animation.lookaheadOffset = j;
                } else {
                    long m717plusqkQi6aY = IntOffset.m717plusqkQi6aY(!IntOffset.m715equalsimpl0(animation.lookaheadOffset, 9223372034707292159L) ? animation.lookaheadOffset : j, ((IntOffset) animation.placementDelta$delegate.getValue()).packedValue);
                    int i4 = (int) (j & 4294967295L);
                    if ((i4 <= i2 && ((int) (m717plusqkQi6aY & 4294967295L)) <= i2) || (i4 >= i3 && ((int) (m717plusqkQi6aY & 4294967295L)) >= i3)) {
                        animation.cancelPlacementAnimation();
                    }
                    j = m717plusqkQi6aY;
                }
                graphicsLayer = animation.layer;
            } else {
                graphicsLayer = null;
            }
            long m717plusqkQi6aY2 = IntOffset.m717plusqkQi6aY(j, this.visualOffset);
            if (!z && animation != null) {
                animation.finalOffset = m717plusqkQi6aY2;
            }
            if (graphicsLayer != null) {
                placementScope.handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo530placeAtf8xVGno(IntOffset.m717plusqkQi6aY(m717plusqkQi6aY2, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, graphicsLayer);
            } else {
                Placeable.PlacementScope.m536placeWithLayeraW9wM$default(placementScope, placeable, m717plusqkQi6aY2);
            }
        }
    }

    public final void position(int i, int i2, int i3, int i4, int i5, int i6) {
        this.mainAxisLayoutSize = i4;
        if (this.layoutDirection == LayoutDirection.Rtl) {
            i2 = (i3 - i2) - this.crossAxisSize;
        }
        this.offset = (i2 << 32) | (i & 4294967295L);
        this.row = i5;
        this.column = i6;
        this.minMainAxisOffset = -this.beforeContentPadding;
        this.maxMainAxisOffset = i4 + this.afterContentPadding;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void setNonScrollableItem() {
        this.nonScrollableItem = true;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void position(int i, int i2, int i3, int i4) {
        position(i, i2, i3, i4, -1, -1);
    }
}
