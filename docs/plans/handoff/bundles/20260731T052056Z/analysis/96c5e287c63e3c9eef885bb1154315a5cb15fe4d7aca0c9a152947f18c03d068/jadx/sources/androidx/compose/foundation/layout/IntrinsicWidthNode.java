package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntrinsicWidthNode extends IntrinsicSizeModifier {
    public boolean enforceIncoming;
    public IntrinsicSize width;

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier
    /* renamed from: calculateContentConstraints-l58MMJ0 */
    public final long mo124calculateContentConstraintsl58MMJ0(Measurable measurable, long j) {
        int minIntrinsicWidth = this.width == IntrinsicSize.Min ? measurable.minIntrinsicWidth(Constraints.m680getMaxHeightimpl(j)) : measurable.maxIntrinsicWidth(Constraints.m680getMaxHeightimpl(j));
        if (minIntrinsicWidth < 0) {
            minIntrinsicWidth = 0;
        }
        if (minIntrinsicWidth < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("width must be >= 0");
        }
        return ConstraintsKt.createConstraints(minIntrinsicWidth, minIntrinsicWidth, 0, Integer.MAX_VALUE);
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier
    public final boolean getEnforceIncoming() {
        return this.enforceIncoming;
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier, androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return this.width == IntrinsicSize.Min ? measurable.minIntrinsicWidth(i) : measurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier, androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return this.width == IntrinsicSize.Min ? measurable.minIntrinsicWidth(i) : measurable.maxIntrinsicWidth(i);
    }
}
