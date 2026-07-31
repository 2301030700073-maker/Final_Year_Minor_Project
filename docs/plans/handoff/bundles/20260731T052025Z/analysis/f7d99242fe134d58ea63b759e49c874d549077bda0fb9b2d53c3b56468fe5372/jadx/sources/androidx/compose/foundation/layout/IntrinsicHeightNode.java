package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IntrinsicHeightNode extends IntrinsicSizeModifier {
    public boolean enforceIncoming;
    public IntrinsicSize height;

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier
    /* renamed from: calculateContentConstraints-l58MMJ0, reason: not valid java name */
    public final long mo212calculateContentConstraintsl58MMJ0(Measurable measurable, long j) {
        int minIntrinsicHeight = this.height == IntrinsicSize.Min ? measurable.minIntrinsicHeight(Constraints.m734getMaxWidthimpl(j)) : measurable.maxIntrinsicHeight(Constraints.m734getMaxWidthimpl(j));
        if (minIntrinsicHeight < 0) {
            minIntrinsicHeight = 0;
        }
        if (minIntrinsicHeight < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("height must be >= 0");
        }
        return ConstraintsKt.createConstraints(0, Integer.MAX_VALUE, minIntrinsicHeight, minIntrinsicHeight);
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier
    public final boolean getEnforceIncoming() {
        return this.enforceIncoming;
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier, androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return this.height == IntrinsicSize.Min ? measurable.minIntrinsicHeight(i) : measurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier, androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return this.height == IntrinsicSize.Min ? measurable.minIntrinsicHeight(i) : measurable.maxIntrinsicHeight(i);
    }
}
