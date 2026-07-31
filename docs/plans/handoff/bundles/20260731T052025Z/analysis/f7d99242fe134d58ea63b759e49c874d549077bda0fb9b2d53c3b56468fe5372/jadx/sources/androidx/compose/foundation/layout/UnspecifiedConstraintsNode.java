package androidx.compose.foundation.layout;

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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnspecifiedConstraintsNode extends Modifier.Node implements LayoutModifierNode {
    public float minHeight;
    public float minWidth;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int maxIntrinsicHeight = measurable.maxIntrinsicHeight(i);
        int m388$default$roundToPx0680j_4 = !Float.isNaN(this.minHeight) ? Modifier.CC.m388$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minHeight) : 0;
        return maxIntrinsicHeight < m388$default$roundToPx0680j_4 ? m388$default$roundToPx0680j_4 : maxIntrinsicHeight;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int maxIntrinsicWidth = measurable.maxIntrinsicWidth(i);
        int m388$default$roundToPx0680j_4 = !Float.isNaN(this.minWidth) ? Modifier.CC.m388$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minWidth) : 0;
        return maxIntrinsicWidth < m388$default$roundToPx0680j_4 ? m388$default$roundToPx0680j_4 : maxIntrinsicWidth;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo109measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int m736getMinWidthimpl;
        int m735getMinHeightimpl;
        if (Float.isNaN(this.minWidth) || Constraints.m736getMinWidthimpl(j) != 0) {
            m736getMinWidthimpl = Constraints.m736getMinWidthimpl(j);
        } else {
            int mo171roundToPx0680j_4 = measureScope.mo171roundToPx0680j_4(this.minWidth);
            m736getMinWidthimpl = Constraints.m734getMaxWidthimpl(j);
            if (mo171roundToPx0680j_4 < 0) {
                mo171roundToPx0680j_4 = 0;
            }
            if (mo171roundToPx0680j_4 <= m736getMinWidthimpl) {
                m736getMinWidthimpl = mo171roundToPx0680j_4;
            }
        }
        int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
        if (Float.isNaN(this.minHeight) || Constraints.m735getMinHeightimpl(j) != 0) {
            m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j);
        } else {
            int mo171roundToPx0680j_42 = measureScope.mo171roundToPx0680j_4(this.minHeight);
            m735getMinHeightimpl = Constraints.m733getMaxHeightimpl(j);
            int i = mo171roundToPx0680j_42 >= 0 ? mo171roundToPx0680j_42 : 0;
            if (i <= m735getMinHeightimpl) {
                m735getMinHeightimpl = i;
            }
        }
        Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(ConstraintsKt.Constraints(m736getMinWidthimpl, m734getMaxWidthimpl, m735getMinHeightimpl, Constraints.m733getMaxHeightimpl(j)));
        return measureScope.layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, EmptyMap.INSTANCE, new FillNode$$ExternalSyntheticLambda0(mo571measureBRTryo0, 3));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int minIntrinsicHeight = measurable.minIntrinsicHeight(i);
        int m388$default$roundToPx0680j_4 = !Float.isNaN(this.minHeight) ? Modifier.CC.m388$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minHeight) : 0;
        return minIntrinsicHeight < m388$default$roundToPx0680j_4 ? m388$default$roundToPx0680j_4 : minIntrinsicHeight;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int minIntrinsicWidth = measurable.minIntrinsicWidth(i);
        int m388$default$roundToPx0680j_4 = !Float.isNaN(this.minWidth) ? Modifier.CC.m388$default$roundToPx0680j_4(lookaheadCapablePlaceable, this.minWidth) : 0;
        return minIntrinsicWidth < m388$default$roundToPx0680j_4 ? m388$default$roundToPx0680j_4 : minIntrinsicWidth;
    }
}
