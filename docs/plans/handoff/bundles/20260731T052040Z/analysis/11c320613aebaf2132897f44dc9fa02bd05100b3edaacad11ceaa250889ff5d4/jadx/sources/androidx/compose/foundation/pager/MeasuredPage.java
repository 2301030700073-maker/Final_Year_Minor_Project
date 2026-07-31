package androidx.compose.foundation.pager;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MeasuredPage {
    public final int crossAxisSize;
    public final int index;
    public final boolean isVertical = false;
    public final Object key;
    public final LayoutDirection layoutDirection;
    public int mainAxisLayoutSize;
    public int offset;
    public final int[] placeableOffsets;
    public final List placeables;
    public final Alignment.Vertical verticalAlignment;
    public final long visualOffset;

    public MeasuredPage(int i, int i2, List list, long j, Object obj, Alignment.Vertical vertical, LayoutDirection layoutDirection) {
        this.index = i;
        this.placeables = list;
        this.visualOffset = j;
        this.key = obj;
        this.verticalAlignment = vertical;
        this.layoutDirection = layoutDirection;
        int size = list.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            Placeable placeable = (Placeable) list.get(i4);
            i3 = Math.max(i3, !this.isVertical ? placeable.height : placeable.width);
        }
        this.crossAxisSize = i3;
        this.placeableOffsets = new int[this.placeables.size() * 2];
        this.mainAxisLayoutSize = Integer.MIN_VALUE;
    }

    public final void applyScrollDelta(int i) {
        this.offset += i;
        int[] iArr = this.placeableOffsets;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            boolean z = this.isVertical;
            if ((z && i2 % 2 == 1) || (!z && i2 % 2 == 0)) {
                iArr[i2] = iArr[i2] + i;
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
                iArr[i6] = Math.round((1.0f + (this.layoutDirection != LayoutDirection.Ltr ? 0.0f * (-1.0f) : 0.0f)) * ((i2 - placeable.width) / 2.0f));
                iArr[i6 + 1] = i;
                i4 = placeable.height;
            } else {
                iArr[i6] = i;
                int i7 = i6 + 1;
                Alignment.Vertical vertical = this.verticalAlignment;
                if (vertical == null) {
                    InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("null verticalAlignment");
                    LayoutNode$$ExternalSyntheticBUOutline0.m322m();
                    return;
                } else {
                    iArr[i7] = vertical.align(placeable.height, i3);
                    i4 = placeable.width;
                }
            }
            i += i4;
        }
    }
}
