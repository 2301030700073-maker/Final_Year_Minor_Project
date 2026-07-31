package androidx.compose.foundation.lazy;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyListMeasuredItem implements LazyLayoutMeasuredItem {
    public final int afterContentPadding;
    public final LazyLayoutItemAnimator animator;
    public final int beforeContentPadding;
    public final long constraints;
    public final Object contentType;
    public final int crossAxisSize;
    public final Alignment.Horizontal horizontalAlignment;
    public final int index;
    public final boolean isVertical;
    public final Object key;
    public final LayoutDirection layoutDirection;
    public int mainAxisLayoutSize = Integer.MIN_VALUE;
    public final int mainAxisSizeWithSpacings;
    public int maxMainAxisOffset;
    public int minMainAxisOffset;
    public boolean nonScrollableItem;
    public int offset;
    public final int[] placeableOffsets;
    public final List placeables;
    public final int size;
    public final int spacing;
    public final BiasAlignment.Vertical verticalAlignment;
    public final long visualOffset;

    public LazyListMeasuredItem(int i, List list, boolean z, Alignment.Horizontal horizontal, BiasAlignment.Vertical vertical, LayoutDirection layoutDirection, int i2, int i3, int i4, long j, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2) {
        this.index = i;
        this.placeables = list;
        this.isVertical = z;
        this.horizontalAlignment = horizontal;
        this.verticalAlignment = vertical;
        this.layoutDirection = layoutDirection;
        this.beforeContentPadding = i2;
        this.afterContentPadding = i3;
        this.spacing = i4;
        this.visualOffset = j;
        this.key = obj;
        this.contentType = obj2;
        this.animator = lazyLayoutItemAnimator;
        this.constraints = j2;
        int size = list.size();
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            Placeable placeable = (Placeable) list.get(i7);
            boolean z2 = this.isVertical;
            i5 += z2 ? placeable.height : placeable.width;
            i6 = Math.max(i6, !z2 ? placeable.height : placeable.width);
        }
        this.size = i5;
        int i8 = i5 + this.spacing;
        this.mainAxisSizeWithSpacings = i8 >= 0 ? i8 : 0;
        this.crossAxisSize = i6;
        this.placeableOffsets = new int[this.placeables.size() * 2];
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* renamed from: getConstraints-msEJaDk, reason: not valid java name */
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
        return 0;
    }

    /* renamed from: getMainAxis--gyyYBs$1, reason: not valid java name */
    public final int m157getMainAxisgyyYBs$1(long j) {
        return this.isVertical ? (int) (j & 4294967295L) : (int) (j >> 32);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int getMainAxisSizeWithSpacings() {
        return this.mainAxisSizeWithSpacings;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* renamed from: getOffset-Bjo55l4, reason: not valid java name */
    public final long mo158getOffsetBjo55l4(int i) {
        if (i == 0 && this.placeables.size() == 0) {
            int i2 = this.offset;
            return this.isVertical ? i2 & 4294967295L : i2 << 32;
        }
        int i3 = i * 2;
        int[] iArr = this.placeableOffsets;
        return (iArr[i3 + 1] & 4294967295L) | (iArr[i3] << 32);
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
        return 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final boolean isVertical() {
        return this.isVertical;
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
            int i2 = this.minMainAxisOffset;
            boolean z2 = this.isVertical;
            int i3 = i2 - (z2 ? placeable.height : placeable.width);
            int i4 = this.maxMainAxisOffset;
            long mo158getOffsetBjo55l4 = mo158getOffsetBjo55l4(i);
            LazyLayoutItemAnimation animation = this.animator.getAnimation(i, this.key);
            if (animation != null) {
                if (z) {
                    animation.lookaheadOffset = mo158getOffsetBjo55l4;
                } else {
                    if (!IntOffset.m715equalsimpl0(animation.lookaheadOffset, 9223372034707292159L)) {
                        mo158getOffsetBjo55l4 = animation.lookaheadOffset;
                    }
                    long m717plusqkQi6aY = IntOffset.m717plusqkQi6aY(mo158getOffsetBjo55l4, ((IntOffset) animation.placementDelta$delegate.getValue()).packedValue);
                    if ((m157getMainAxisgyyYBs$1(mo158getOffsetBjo55l4) <= i3 && m157getMainAxisgyyYBs$1(m717plusqkQi6aY) <= i3) || (m157getMainAxisgyyYBs$1(mo158getOffsetBjo55l4) >= i4 && m157getMainAxisgyyYBs$1(m717plusqkQi6aY) >= i4)) {
                        animation.cancelPlacementAnimation();
                    }
                    mo158getOffsetBjo55l4 = m717plusqkQi6aY;
                }
                graphicsLayer = animation.layer;
            } else {
                graphicsLayer = null;
            }
            long m717plusqkQi6aY2 = IntOffset.m717plusqkQi6aY(mo158getOffsetBjo55l4, this.visualOffset);
            if (!z && animation != null) {
                animation.finalOffset = m717plusqkQi6aY2;
            }
            if (z2) {
                if (graphicsLayer != null) {
                    placementScope.handleMotionFrameOfReferencePlacement(placeable);
                    placeable.mo530placeAtf8xVGno(IntOffset.m717plusqkQi6aY(m717plusqkQi6aY2, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, graphicsLayer);
                } else {
                    Placeable.PlacementScope.m536placeWithLayeraW9wM$default(placementScope, placeable, m717plusqkQi6aY2);
                }
            } else if (graphicsLayer != null) {
                Placeable.PlacementScope.m535placeRelativeWithLayeraW9wM$default(placementScope, placeable, m717plusqkQi6aY2, graphicsLayer);
            } else {
                Placeable.PlacementScope.m534placeRelativeWithLayeraW9wM$default(placementScope, placeable, m717plusqkQi6aY2);
            }
        }
    }

    public final void position(int i, int i2, int i3) {
        int i4;
        this.offset = i;
        boolean z = this.isVertical;
        this.mainAxisLayoutSize = z ? i3 : i2;
        List list = this.placeables;
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            Placeable placeable = (Placeable) list.get(i5);
            int i6 = i5 * 2;
            int[] iArr = this.placeableOffsets;
            if (z) {
                Alignment.Horizontal horizontal = this.horizontalAlignment;
                if (horizontal == null) {
                    throw LazyItemScope$CC.m("null horizontalAlignment when isVertical == true");
                }
                iArr[i6] = horizontal.align(placeable.width, i2, this.layoutDirection);
                iArr[i6 + 1] = i;
                i4 = placeable.height;
            } else {
                iArr[i6] = i;
                int i7 = i6 + 1;
                BiasAlignment.Vertical vertical = this.verticalAlignment;
                if (vertical == null) {
                    throw LazyItemScope$CC.m("null verticalAlignment when isVertical == false");
                }
                iArr[i7] = vertical.align(placeable.height, i3);
                i4 = placeable.width;
            }
            i += i4;
        }
        this.minMainAxisOffset = -this.beforeContentPadding;
        this.maxMainAxisOffset = this.mainAxisLayoutSize + this.afterContentPadding;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void setNonScrollableItem() {
        this.nonScrollableItem = true;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void position(int i, int i2, int i3, int i4) {
        position(i, i3, i4);
    }
}
