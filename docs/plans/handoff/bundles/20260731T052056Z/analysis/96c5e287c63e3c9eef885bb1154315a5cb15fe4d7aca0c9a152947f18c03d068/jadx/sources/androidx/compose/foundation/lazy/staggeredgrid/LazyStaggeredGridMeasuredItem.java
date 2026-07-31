package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.layout.Placeable;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyStaggeredGridMeasuredItem implements LazyLayoutMeasuredItem {
    public final int afterContentPadding;
    public final LazyLayoutItemAnimator animator;
    public final int beforeContentPadding;
    public final long constraints;
    public final Object contentType;
    public final int index;
    public final boolean isVertical;
    public boolean isVisible = true;
    public final Object key;
    public final int lane;
    public int mainAxisLayoutSize;
    public final int mainAxisSize;
    public final int mainAxisSizeWithSpacings;
    public int maxMainAxisOffset;
    public int minMainAxisOffset;
    public boolean nonScrollableItem;
    public long offset;
    public final List placeables;
    public final long size;
    public final int span;

    public LazyStaggeredGridMeasuredItem(int i, Object obj, List list, boolean z, int i2, int i3, int i4, int i5, int i6, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j) {
        int i7;
        this.index = i;
        this.key = obj;
        this.placeables = list;
        this.isVertical = z;
        this.lane = i3;
        this.span = i4;
        this.beforeContentPadding = i5;
        this.afterContentPadding = i6;
        this.contentType = obj2;
        this.animator = lazyLayoutItemAnimator;
        this.constraints = j;
        int i8 = 1;
        int i9 = 0;
        if (list.isEmpty()) {
            i7 = 0;
        } else {
            Placeable placeable = (Placeable) list.get(0);
            i7 = z ? placeable.height : placeable.width;
            int size = list.size() - 1;
            if (1 <= size) {
                int i10 = 1;
                while (true) {
                    Placeable placeable2 = (Placeable) list.get(i10);
                    int i11 = this.isVertical ? placeable2.height : placeable2.width;
                    i7 = i11 > i7 ? i11 : i7;
                    if (i10 == size) {
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        }
        this.mainAxisSize = i7;
        int i12 = i7 + i2;
        this.mainAxisSizeWithSpacings = i12 < 0 ? 0 : i12;
        List list2 = this.placeables;
        if (!list2.isEmpty()) {
            Placeable placeable3 = (Placeable) list2.get(0);
            int i13 = this.isVertical ? placeable3.width : placeable3.height;
            int size2 = list2.size() - 1;
            if (1 <= size2) {
                while (true) {
                    Placeable placeable4 = (Placeable) list2.get(i8);
                    int i14 = this.isVertical ? placeable4.width : placeable4.height;
                    i13 = i14 > i13 ? i14 : i13;
                    if (i8 == size2) {
                        break;
                    } else {
                        i8++;
                    }
                }
            }
            i9 = i13;
        }
        this.mainAxisLayoutSize = Integer.MIN_VALUE;
        boolean z2 = this.isVertical;
        int i15 = this.mainAxisSize;
        this.size = z2 ? (i15 & 4294967295L) | (i9 << 32) : (i15 << 32) | (4294967295L & i9);
        this.offset = 0L;
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

    /* renamed from: getMainAxis--gyyYBs, reason: not valid java name */
    public final int m171getMainAxisgyyYBs(long j) {
        return this.isVertical ? (int) (j & 4294967295L) : (int) (j >> 32);
    }

    public final int getMainAxisOffset() {
        long j = this.offset;
        return (int) (!this.isVertical ? j >> 32 : j & 4294967295L);
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
        return this.isVertical;
    }

    public final void position(int i, int i2, int i3) {
        long j;
        this.mainAxisLayoutSize = i3;
        this.minMainAxisOffset = -this.beforeContentPadding;
        this.maxMainAxisOffset = i3 + this.afterContentPadding;
        if (this.isVertical) {
            j = (i2 << 32) | (4294967295L & i);
        } else {
            j = (i2 & 4294967295L) | (i << 32);
        }
        this.offset = j;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void setNonScrollableItem() {
        this.nonScrollableItem = true;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void position(int i, int i2, int i3, int i4) {
        if (this.isVertical) {
            i3 = i4;
        }
        position(i, i2, i3);
    }
}
