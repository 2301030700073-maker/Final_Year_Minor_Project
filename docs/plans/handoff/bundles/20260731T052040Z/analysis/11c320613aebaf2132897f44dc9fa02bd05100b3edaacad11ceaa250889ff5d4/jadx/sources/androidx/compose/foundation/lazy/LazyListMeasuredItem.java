package androidx.compose.foundation.lazy;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyListMeasuredItem {
    public final LazyLayoutItemAnimator animator;
    public final Object contentType;
    public final int crossAxisSize;
    public final BiasAlignment.Horizontal horizontalAlignment;
    public final int index;
    public final Object key;
    public final LayoutDirection layoutDirection;
    public int mainAxisLayoutSize = Integer.MIN_VALUE;
    public final int mainAxisSizeWithSpacings;
    public boolean nonScrollableItem;
    public int offset;
    public final int[] placeableOffsets;
    public final List placeables;
    public final int size;
    public final int spacing;
    public final long visualOffset;

    public LazyListMeasuredItem(int i, List list, BiasAlignment.Horizontal horizontal, LayoutDirection layoutDirection, int i2, int i3, int i4, long j, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2) {
        this.index = i;
        this.placeables = list;
        this.horizontalAlignment = horizontal;
        this.layoutDirection = layoutDirection;
        this.spacing = i4;
        this.visualOffset = j;
        this.key = obj;
        this.contentType = obj2;
        this.animator = lazyLayoutItemAnimator;
        int size = list.size();
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            Placeable placeable = (Placeable) list.get(i7);
            i5 += placeable.height;
            i6 = Math.max(i6, placeable.width);
        }
        this.size = i5;
        int i8 = i5 + this.spacing;
        this.mainAxisSizeWithSpacings = i8 >= 0 ? i8 : 0;
        this.crossAxisSize = i6;
        this.placeableOffsets = new int[this.placeables.size() * 2];
    }

    /* renamed from: getOffset-Bjo55l4, reason: not valid java name */
    public final long m105getOffsetBjo55l4(int i) {
        if (i == 0 && this.placeables.size() == 0) {
            return this.offset & 4294967295L;
        }
        int[] iArr = this.placeableOffsets;
        return (iArr[r5 + 1] & 4294967295L) | (iArr[i * 2] << 32);
    }

    public final void place(Placeable.PlacementScope placementScope) {
        if (this.mainAxisLayoutSize == Integer.MIN_VALUE) {
            InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
        }
        List list = this.placeables;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable placeable = (Placeable) list.get(i);
            int i2 = placeable.height;
            long m105getOffsetBjo55l4 = m105getOffsetBjo55l4(i);
            Modifier.CC.m(this.animator.keyToItemInfoMap.get(this.key));
            Placeable.PlacementScope.m306placeWithLayeraW9wM$default(placementScope, placeable, IntOffset.m447plusqkQi6aY(m105getOffsetBjo55l4, this.visualOffset));
        }
    }

    public final void position(int i, int i2, int i3) {
        this.offset = i;
        this.mainAxisLayoutSize = i3;
        List list = this.placeables;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            Placeable placeable = (Placeable) list.get(i4);
            int i5 = i4 * 2;
            BiasAlignment.Horizontal horizontal = this.horizontalAlignment;
            if (horizontal == null) {
                InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("null horizontalAlignment when isVertical == true");
                LayoutNode$$ExternalSyntheticBUOutline0.m322m();
                return;
            }
            int align = horizontal.align(placeable.width, i2, this.layoutDirection);
            int[] iArr = this.placeableOffsets;
            iArr[i5] = align;
            iArr[i5 + 1] = i;
            i += placeable.height;
        }
    }
}
