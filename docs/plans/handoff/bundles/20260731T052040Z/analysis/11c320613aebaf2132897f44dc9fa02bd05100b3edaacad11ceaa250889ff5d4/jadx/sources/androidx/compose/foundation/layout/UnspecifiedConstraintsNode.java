package androidx.compose.foundation.layout;

import androidx.compose.material3.BadgeKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class UnspecifiedConstraintsNode extends Modifier.Node implements LayoutModifierNode {
    public float minHeight;
    public float minWidth;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int maxIntrinsicHeight = measurable.maxIntrinsicHeight(i);
        int m357$default$roundToPx0680j_4 = !Float.isNaN(this.minHeight) ? Owner.CC.m357$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minHeight) : 0;
        return maxIntrinsicHeight < m357$default$roundToPx0680j_4 ? m357$default$roundToPx0680j_4 : maxIntrinsicHeight;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int maxIntrinsicWidth = measurable.maxIntrinsicWidth(i);
        int m357$default$roundToPx0680j_4 = !Float.isNaN(this.minWidth) ? Owner.CC.m357$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minWidth) : 0;
        return maxIntrinsicWidth < m357$default$roundToPx0680j_4 ? m357$default$roundToPx0680j_4 : maxIntrinsicWidth;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo9measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int m436getMinWidthimpl;
        int m435getMinHeightimpl;
        if (Float.isNaN(this.minWidth) || Constraints.m436getMinWidthimpl(j) != 0) {
            m436getMinWidthimpl = Constraints.m436getMinWidthimpl(j);
        } else {
            int mo58roundToPx0680j_4 = measureScope.mo58roundToPx0680j_4(this.minWidth);
            m436getMinWidthimpl = Constraints.m434getMaxWidthimpl(j);
            if (mo58roundToPx0680j_4 < 0) {
                mo58roundToPx0680j_4 = 0;
            }
            if (mo58roundToPx0680j_4 <= m436getMinWidthimpl) {
                m436getMinWidthimpl = mo58roundToPx0680j_4;
            }
        }
        int m434getMaxWidthimpl = Constraints.m434getMaxWidthimpl(j);
        if (Float.isNaN(this.minHeight) || Constraints.m435getMinHeightimpl(j) != 0) {
            m435getMinHeightimpl = Constraints.m435getMinHeightimpl(j);
        } else {
            int mo58roundToPx0680j_42 = measureScope.mo58roundToPx0680j_4(this.minHeight);
            m435getMinHeightimpl = Constraints.m433getMaxHeightimpl(j);
            int i = mo58roundToPx0680j_42 >= 0 ? mo58roundToPx0680j_42 : 0;
            if (i <= m435getMinHeightimpl) {
                m435getMinHeightimpl = i;
            }
        }
        Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(ConstraintsKt.Constraints(m436getMinWidthimpl, m434getMaxWidthimpl, m435getMinHeightimpl, Constraints.m433getMaxHeightimpl(j)));
        return measureScope.layout(mo292measureBRTryo0.width, mo292measureBRTryo0.height, EmptyMap.INSTANCE, new BadgeKt$$ExternalSyntheticLambda2(mo292measureBRTryo0, 3));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int minIntrinsicHeight = measurable.minIntrinsicHeight(i);
        int m357$default$roundToPx0680j_4 = !Float.isNaN(this.minHeight) ? Owner.CC.m357$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minHeight) : 0;
        return minIntrinsicHeight < m357$default$roundToPx0680j_4 ? m357$default$roundToPx0680j_4 : minIntrinsicHeight;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int minIntrinsicWidth = measurable.minIntrinsicWidth(i);
        int m357$default$roundToPx0680j_4 = !Float.isNaN(this.minWidth) ? Owner.CC.m357$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minWidth) : 0;
        return minIntrinsicWidth < m357$default$roundToPx0680j_4 ? m357$default$roundToPx0680j_4 : minIntrinsicWidth;
    }
}
