package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* compiled from: LazyListMeasuredItem.kt */
/* loaded from: classes.dex */
public final class LazyListMeasuredItem implements LazyListItemInfo, LazyLayoutMeasuredItem {
    private final int afterContentPadding;
    private final LazyLayoutItemAnimator animator;
    private final int beforeContentPadding;
    private final long constraints;
    private final Object contentType;
    private final int crossAxisSize;
    private final Alignment.Horizontal horizontalAlignment;
    private final int index;
    private final boolean isVertical;
    private final Object key;
    private final int lane;
    private final LayoutDirection layoutDirection;
    private int mainAxisLayoutSize;
    private final int mainAxisSizeWithSpacings;
    private int maxMainAxisOffset;
    private int minMainAxisOffset;
    private boolean nonScrollableItem;
    private int offset;
    private final int[] placeableOffsets;
    private final List placeables;
    private final boolean reverseLayout;
    private final int size;
    private final int spacing;
    private final int span;
    private final Alignment.Vertical verticalAlignment;
    private final long visualOffset;

    public /* synthetic */ LazyListMeasuredItem(int i, List list, boolean z, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z2, int i2, int i3, int i4, long j, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, list, z, horizontal, vertical, layoutDirection, z2, i2, i3, i4, j, obj, obj2, lazyLayoutItemAnimator, j2);
    }

    private LazyListMeasuredItem(int i, List list, boolean z, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z2, int i2, int i3, int i4, long j, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2) {
        this.index = i;
        this.placeables = list;
        this.isVertical = z;
        this.horizontalAlignment = horizontal;
        this.verticalAlignment = vertical;
        this.layoutDirection = layoutDirection;
        this.reverseLayout = z2;
        this.beforeContentPadding = i2;
        this.afterContentPadding = i3;
        this.spacing = i4;
        this.visualOffset = j;
        this.key = obj;
        this.contentType = obj2;
        this.animator = lazyLayoutItemAnimator;
        this.constraints = j2;
        this.span = 1;
        this.mainAxisLayoutSize = Integer.MIN_VALUE;
        int size = list.size();
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            Placeable placeable = (Placeable) list.get(i7);
            i5 += isVertical() ? placeable.getHeight() : placeable.getWidth();
            i6 = Math.max(i6, !isVertical() ? placeable.getHeight() : placeable.getWidth());
        }
        this.size = i5;
        this.mainAxisSizeWithSpacings = RangesKt.coerceAtLeast(getSize() + this.spacing, 0);
        this.crossAxisSize = i6;
        this.placeableOffsets = new int[this.placeables.size() * 2];
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getIndex() {
        return this.index;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public boolean isVertical() {
        return this.isVertical;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public Object getKey() {
        return this.key;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* renamed from: getConstraints-msEJaDk, reason: not valid java name */
    public long mo321getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public int getOffset() {
        return this.offset;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public int getSize() {
        return this.size;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getLane() {
        return this.lane;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getSpan() {
        return this.span;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getMainAxisSizeWithSpacings() {
        return this.mainAxisSizeWithSpacings;
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    public boolean getNonScrollableItem() {
        return this.nonScrollableItem;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public void setNonScrollableItem(boolean z) {
        this.nonScrollableItem = z;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getPlaceablesCount() {
        return this.placeables.size();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public Object getParentData(int i) {
        return ((Placeable) this.placeables.get(i)).getParentData();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public void position(int i, int i2, int i3, int i4) {
        position(i, i3, i4);
    }

    public final void position(int i, int i2, int i3) {
        int width;
        this.offset = i;
        this.mainAxisLayoutSize = isVertical() ? i3 : i2;
        List list = this.placeables;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            Placeable placeable = (Placeable) list.get(i4);
            int i5 = i4 * 2;
            if (isVertical()) {
                int[] iArr = this.placeableOffsets;
                Alignment.Horizontal horizontal = this.horizontalAlignment;
                if (horizontal == null) {
                    throw new IllegalArgumentException("null horizontalAlignment when isVertical == true");
                }
                iArr[i5] = horizontal.align(placeable.getWidth(), i2, this.layoutDirection);
                this.placeableOffsets[i5 + 1] = i;
                width = placeable.getHeight();
            } else {
                int[] iArr2 = this.placeableOffsets;
                iArr2[i5] = i;
                int i6 = i5 + 1;
                Alignment.Vertical vertical = this.verticalAlignment;
                if (vertical == null) {
                    throw new IllegalArgumentException("null verticalAlignment when isVertical == false");
                }
                iArr2[i6] = vertical.align(placeable.getHeight(), i3);
                width = placeable.getWidth();
            }
            i += width;
        }
        this.minMainAxisOffset = -this.beforeContentPadding;
        this.maxMainAxisOffset = this.mainAxisLayoutSize + this.afterContentPadding;
    }

    public final void updateMainAxisLayoutSize(int i) {
        this.mainAxisLayoutSize = i;
        this.maxMainAxisOffset = i + this.afterContentPadding;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* renamed from: getOffset-Bjo55l4, reason: not valid java name */
    public long mo322getOffsetBjo55l4(int i) {
        int[] iArr = this.placeableOffsets;
        int i2 = i * 2;
        return IntOffsetKt.IntOffset(iArr[i2], iArr[i2 + 1]);
    }

    public final void applyScrollDelta(int i, boolean z) {
        if (getNonScrollableItem()) {
            return;
        }
        this.offset = getOffset() + i;
        int length = this.placeableOffsets.length;
        for (int i2 = 0; i2 < length; i2++) {
            if ((isVertical() && i2 % 2 == 1) || (!isVertical() && i2 % 2 == 0)) {
                int[] iArr = this.placeableOffsets;
                iArr[i2] = iArr[i2] + i;
            }
        }
        if (z) {
            int placeablesCount = getPlaceablesCount();
            for (int i3 = 0; i3 < placeablesCount; i3++) {
                LazyLayoutItemAnimation animation = this.animator.getAnimation(getKey(), i3);
                if (animation != null) {
                    long m341getRawOffsetnOccac = animation.m341getRawOffsetnOccac();
                    int m2465getXimpl = isVertical() ? IntOffset.m2465getXimpl(m341getRawOffsetnOccac) : Integer.valueOf(IntOffset.m2465getXimpl(m341getRawOffsetnOccac) + i).intValue();
                    boolean isVertical = isVertical();
                    int m2466getYimpl = IntOffset.m2466getYimpl(m341getRawOffsetnOccac);
                    if (isVertical) {
                        m2466getYimpl += i;
                    }
                    animation.m344setRawOffsetgyyYBs(IntOffsetKt.IntOffset(m2465getXimpl, m2466getYimpl));
                }
            }
        }
    }

    public final void place(Placeable.PlacementScope placementScope, boolean z) {
        GraphicsLayer graphicsLayer;
        int m2466getYimpl;
        if (this.mainAxisLayoutSize == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("position() should be called first");
        }
        int placeablesCount = getPlaceablesCount();
        for (int i = 0; i < placeablesCount; i++) {
            Placeable placeable = (Placeable) this.placeables.get(i);
            int mainAxisSize = this.minMainAxisOffset - getMainAxisSize(placeable);
            int i2 = this.maxMainAxisOffset;
            long mo322getOffsetBjo55l4 = mo322getOffsetBjo55l4(i);
            LazyLayoutItemAnimation animation = this.animator.getAnimation(getKey(), i);
            if (animation != null) {
                if (z) {
                    animation.m343setLookaheadOffsetgyyYBs(mo322getOffsetBjo55l4);
                } else {
                    if (!IntOffset.m2464equalsimpl0(animation.m339getLookaheadOffsetnOccac(), LazyLayoutItemAnimation.Companion.m345getNotInitializednOccac())) {
                        mo322getOffsetBjo55l4 = animation.m339getLookaheadOffsetnOccac();
                    }
                    long m2469plusqkQi6aY = IntOffset.m2469plusqkQi6aY(mo322getOffsetBjo55l4, animation.m340getPlacementDeltanOccac());
                    if ((m320getMainAxisgyyYBs(mo322getOffsetBjo55l4) <= mainAxisSize && m320getMainAxisgyyYBs(m2469plusqkQi6aY) <= mainAxisSize) || (m320getMainAxisgyyYBs(mo322getOffsetBjo55l4) >= i2 && m320getMainAxisgyyYBs(m2469plusqkQi6aY) >= i2)) {
                        animation.cancelPlacementAnimation();
                    }
                    mo322getOffsetBjo55l4 = m2469plusqkQi6aY;
                }
                graphicsLayer = animation.getLayer();
            } else {
                graphicsLayer = null;
            }
            if (this.reverseLayout) {
                int m2465getXimpl = isVertical() ? IntOffset.m2465getXimpl(mo322getOffsetBjo55l4) : (this.mainAxisLayoutSize - IntOffset.m2465getXimpl(mo322getOffsetBjo55l4)) - getMainAxisSize(placeable);
                if (isVertical()) {
                    m2466getYimpl = (this.mainAxisLayoutSize - IntOffset.m2466getYimpl(mo322getOffsetBjo55l4)) - getMainAxisSize(placeable);
                } else {
                    m2466getYimpl = IntOffset.m2466getYimpl(mo322getOffsetBjo55l4);
                }
                mo322getOffsetBjo55l4 = IntOffsetKt.IntOffset(m2465getXimpl, m2466getYimpl);
            }
            long m2469plusqkQi6aY2 = IntOffset.m2469plusqkQi6aY(mo322getOffsetBjo55l4, this.visualOffset);
            if (!z && animation != null) {
                animation.m342setFinalOffsetgyyYBs(m2469plusqkQi6aY2);
            }
            if (isVertical()) {
                if (graphicsLayer != null) {
                    Placeable.PlacementScope.m1778placeWithLayeraW9wM$default(placementScope, placeable, m2469plusqkQi6aY2, graphicsLayer, 0.0f, 4, (Object) null);
                } else {
                    Placeable.PlacementScope.m1777placeWithLayeraW9wM$default(placementScope, placeable, m2469plusqkQi6aY2, 0.0f, (Function1) null, 6, (Object) null);
                }
            } else if (graphicsLayer != null) {
                Placeable.PlacementScope.m1776placeRelativeWithLayeraW9wM$default(placementScope, placeable, m2469plusqkQi6aY2, graphicsLayer, 0.0f, 4, (Object) null);
            } else {
                Placeable.PlacementScope.m1775placeRelativeWithLayeraW9wM$default(placementScope, placeable, m2469plusqkQi6aY2, 0.0f, (Function1) null, 6, (Object) null);
            }
        }
    }

    /* renamed from: getMainAxis--gyyYBs, reason: not valid java name */
    private final int m320getMainAxisgyyYBs(long j) {
        return isVertical() ? IntOffset.m2466getYimpl(j) : IntOffset.m2465getXimpl(j);
    }

    private final int getMainAxisSize(Placeable placeable) {
        return isVertical() ? placeable.getHeight() : placeable.getWidth();
    }
}
