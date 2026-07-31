package androidx.compose.foundation.lazy;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$release$1;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final long visualOffset;

    public LazyListMeasuredItem(int i, List list, Alignment.Horizontal horizontal, LayoutDirection layoutDirection, int i2, int i3, int i4, long j, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2) {
        this.index = i;
        this.placeables = list;
        this.horizontalAlignment = horizontal;
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
            i5 += placeable.height;
            i6 = Math.max(i6, placeable.width);
        }
        this.size = i5;
        int i8 = i5 + this.spacing;
        this.mainAxisSizeWithSpacings = i8 >= 0 ? i8 : 0;
        this.crossAxisSize = i6;
        this.placeableOffsets = new int[this.placeables.size() * 2];
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* renamed from: getConstraints-msEJaDk, reason: not valid java name */
    public final long mo247getConstraintsmsEJaDk() {
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

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int getMainAxisSizeWithSpacings() {
        return this.mainAxisSizeWithSpacings;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* renamed from: getOffset-Bjo55l4, reason: not valid java name */
    public final long mo248getOffsetBjo55l4(int i) {
        if (i == 0 && this.placeables.size() == 0) {
            return this.offset & 4294967295L;
        }
        int[] iArr = this.placeableOffsets;
        return (iArr[r5 + 1] & 4294967295L) | (iArr[i * 2] << 32);
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
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void place(Placeable.PlacementScope placementScope, boolean z) {
        if (this.mainAxisLayoutSize == Integer.MIN_VALUE) {
            InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
        }
        List list = this.placeables;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable placeable = (Placeable) list.get(i);
            int i2 = this.minMainAxisOffset - placeable.height;
            int i3 = this.maxMainAxisOffset;
            long mo248getOffsetBjo55l4 = mo248getOffsetBjo55l4(i);
            LazyLayoutItemAnimation animation = this.animator.getAnimation(i, this.key);
            GraphicsLayer graphicsLayer = null;
            Object[] objArr = 0;
            if (animation != null) {
                if (z) {
                    animation.lookaheadOffset = mo248getOffsetBjo55l4;
                } else {
                    if (!IntOffset.m752equalsimpl0(animation.lookaheadOffset, 9223372034707292159L)) {
                        mo248getOffsetBjo55l4 = animation.lookaheadOffset;
                    }
                    long m754plusqkQi6aY = IntOffset.m754plusqkQi6aY(mo248getOffsetBjo55l4, ((IntOffset) animation.placementDelta$delegate.getValue()).packedValue);
                    int i4 = (int) (mo248getOffsetBjo55l4 & 4294967295L);
                    if (((i4 <= i2 && ((int) (m754plusqkQi6aY & 4294967295L)) <= i2) || (i4 >= i3 && ((int) (m754plusqkQi6aY & 4294967295L)) >= i3)) && ((Boolean) animation.isPlacementAnimationInProgress$delegate.getValue()).booleanValue()) {
                        JobKt.launch$default(animation.coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(animation, objArr == true ? 1 : 0, 2), 3);
                    }
                    mo248getOffsetBjo55l4 = m754plusqkQi6aY;
                }
                graphicsLayer = animation.layer;
            }
            long m754plusqkQi6aY2 = IntOffset.m754plusqkQi6aY(mo248getOffsetBjo55l4, this.visualOffset);
            if (!z && animation != null) {
                animation.finalOffset = m754plusqkQi6aY2;
            }
            if (graphicsLayer != null) {
                placementScope.getClass();
                Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo589placeAtf8xVGno(IntOffset.m754plusqkQi6aY(m754plusqkQi6aY2, placeable.apparentToRealOffset), 0.0f, graphicsLayer);
            } else {
                Placeable.PlacementScope.m593placeWithLayeraW9wM$default(placementScope, placeable, m754plusqkQi6aY2);
            }
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
            Alignment.Horizontal horizontal = this.horizontalAlignment;
            if (horizontal == null) {
                InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("null horizontalAlignment when isVertical == true");
                _UtilJvmKt$$ExternalSyntheticLambda0.m();
                return;
            }
            int align = horizontal.align(placeable.width, i2, this.layoutDirection);
            int[] iArr = this.placeableOffsets;
            iArr[i5] = align;
            iArr[i5 + 1] = i;
            i += placeable.height;
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
