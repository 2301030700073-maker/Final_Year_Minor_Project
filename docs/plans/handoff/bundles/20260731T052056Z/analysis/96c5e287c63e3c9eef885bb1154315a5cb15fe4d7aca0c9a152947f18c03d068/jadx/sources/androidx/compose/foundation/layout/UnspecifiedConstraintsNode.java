package androidx.compose.foundation.layout;

import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda12;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UnspecifiedConstraintsNode extends Modifier.Node implements LayoutModifierNode {
    public float minHeight;
    public float minWidth;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int maxIntrinsicHeight = measurable.maxIntrinsicHeight(i);
        int m334$default$roundToPx0680j_4 = !Float.isNaN(this.minHeight) ? Modifier.CC.m334$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minHeight) : 0;
        return maxIntrinsicHeight < m334$default$roundToPx0680j_4 ? m334$default$roundToPx0680j_4 : maxIntrinsicHeight;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int maxIntrinsicWidth = measurable.maxIntrinsicWidth(i);
        int m334$default$roundToPx0680j_4 = !Float.isNaN(this.minWidth) ? Modifier.CC.m334$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minWidth) : 0;
        return maxIntrinsicWidth < m334$default$roundToPx0680j_4 ? m334$default$roundToPx0680j_4 : maxIntrinsicWidth;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int m683getMinWidthimpl;
        int m682getMinHeightimpl;
        if (Float.isNaN(this.minWidth) || Constraints.m683getMinWidthimpl(j) != 0) {
            m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j);
        } else {
            int mo81roundToPx0680j_4 = measureScope.mo81roundToPx0680j_4(this.minWidth);
            m683getMinWidthimpl = Constraints.m681getMaxWidthimpl(j);
            if (mo81roundToPx0680j_4 < 0) {
                mo81roundToPx0680j_4 = 0;
            }
            if (mo81roundToPx0680j_4 <= m683getMinWidthimpl) {
                m683getMinWidthimpl = mo81roundToPx0680j_4;
            }
        }
        int m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(j);
        if (Float.isNaN(this.minHeight) || Constraints.m682getMinHeightimpl(j) != 0) {
            m682getMinHeightimpl = Constraints.m682getMinHeightimpl(j);
        } else {
            int mo81roundToPx0680j_42 = measureScope.mo81roundToPx0680j_4(this.minHeight);
            m682getMinHeightimpl = Constraints.m680getMaxHeightimpl(j);
            int i = mo81roundToPx0680j_42 >= 0 ? mo81roundToPx0680j_42 : 0;
            if (i <= m682getMinHeightimpl) {
                m682getMinHeightimpl = i;
            }
        }
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(ConstraintsKt.Constraints(m683getMinWidthimpl, m681getMaxWidthimpl, m682getMinHeightimpl, Constraints.m680getMaxHeightimpl(j)));
        return measureScope.layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo0, 5));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int minIntrinsicHeight = measurable.minIntrinsicHeight(i);
        int m334$default$roundToPx0680j_4 = !Float.isNaN(this.minHeight) ? Modifier.CC.m334$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minHeight) : 0;
        return minIntrinsicHeight < m334$default$roundToPx0680j_4 ? m334$default$roundToPx0680j_4 : minIntrinsicHeight;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int minIntrinsicWidth = measurable.minIntrinsicWidth(i);
        int m334$default$roundToPx0680j_4 = !Float.isNaN(this.minWidth) ? Modifier.CC.m334$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minWidth) : 0;
        return minIntrinsicWidth < m334$default$roundToPx0680j_4 ? m334$default$roundToPx0680j_4 : minIntrinsicWidth;
    }
}
