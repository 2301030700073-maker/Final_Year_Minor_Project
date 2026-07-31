package androidx.compose.foundation.layout;

import androidx.compose.material3.BadgeKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.DefaultIntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicsMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicMinMax;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicWidthHeight;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FillNode extends Modifier.Node implements LayoutModifierNode {
    public Direction direction;
    public float fraction;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo9measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 1), ConstraintsKt.Constraints$default(i, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo9measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 1), ConstraintsKt.Constraints$default(0, i, 7)).getWidth();
        return width;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo9measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int m436getMinWidthimpl;
        int m434getMaxWidthimpl;
        int i;
        int i2;
        if (!Constraints.m430getHasBoundedWidthimpl(j) || this.direction == Direction.Vertical) {
            m436getMinWidthimpl = Constraints.m436getMinWidthimpl(j);
            m434getMaxWidthimpl = Constraints.m434getMaxWidthimpl(j);
        } else {
            int round = Math.round(Constraints.m434getMaxWidthimpl(j) * this.fraction);
            int m436getMinWidthimpl2 = Constraints.m436getMinWidthimpl(j);
            m436getMinWidthimpl = Constraints.m434getMaxWidthimpl(j);
            if (round < m436getMinWidthimpl2) {
                round = m436getMinWidthimpl2;
            }
            if (round <= m436getMinWidthimpl) {
                m436getMinWidthimpl = round;
            }
            m434getMaxWidthimpl = m436getMinWidthimpl;
        }
        if (!Constraints.m429getHasBoundedHeightimpl(j) || this.direction == Direction.Horizontal) {
            int m435getMinHeightimpl = Constraints.m435getMinHeightimpl(j);
            int m433getMaxHeightimpl = Constraints.m433getMaxHeightimpl(j);
            i = m435getMinHeightimpl;
            i2 = m433getMaxHeightimpl;
        } else {
            int round2 = Math.round(Constraints.m433getMaxHeightimpl(j) * this.fraction);
            int m435getMinHeightimpl2 = Constraints.m435getMinHeightimpl(j);
            i = Constraints.m433getMaxHeightimpl(j);
            if (round2 < m435getMinHeightimpl2) {
                round2 = m435getMinHeightimpl2;
            }
            if (round2 <= i) {
                i = round2;
            }
            i2 = i;
        }
        Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(ConstraintsKt.Constraints(m436getMinWidthimpl, m434getMaxWidthimpl, i, i2));
        return measureScope.layout(mo292measureBRTryo0.width, mo292measureBRTryo0.height, EmptyMap.INSTANCE, new BadgeKt$$ExternalSyntheticLambda2(mo292measureBRTryo0, 1));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo9measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 1), ConstraintsKt.Constraints$default(i, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo9measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 1), ConstraintsKt.Constraints$default(0, i, 7)).getWidth();
        return width;
    }
}
