package androidx.compose.foundation.layout;

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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FillNode extends Modifier.Node implements LayoutModifierNode {
    public Direction direction;
    public float fraction;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo109measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int m736getMinWidthimpl;
        int m734getMaxWidthimpl;
        int i;
        int i2;
        if (!Constraints.m730getHasBoundedWidthimpl(j) || this.direction == Direction.Vertical) {
            m736getMinWidthimpl = Constraints.m736getMinWidthimpl(j);
            m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
        } else {
            int round = Math.round(Constraints.m734getMaxWidthimpl(j) * this.fraction);
            int m736getMinWidthimpl2 = Constraints.m736getMinWidthimpl(j);
            m736getMinWidthimpl = Constraints.m734getMaxWidthimpl(j);
            if (round < m736getMinWidthimpl2) {
                round = m736getMinWidthimpl2;
            }
            if (round <= m736getMinWidthimpl) {
                m736getMinWidthimpl = round;
            }
            m734getMaxWidthimpl = m736getMinWidthimpl;
        }
        if (!Constraints.m729getHasBoundedHeightimpl(j) || this.direction == Direction.Horizontal) {
            int m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j);
            int m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(j);
            i = m735getMinHeightimpl;
            i2 = m733getMaxHeightimpl;
        } else {
            int round2 = Math.round(Constraints.m733getMaxHeightimpl(j) * this.fraction);
            int m735getMinHeightimpl2 = Constraints.m735getMinHeightimpl(j);
            i = Constraints.m733getMaxHeightimpl(j);
            if (round2 < m735getMinHeightimpl2) {
                round2 = m735getMinHeightimpl2;
            }
            if (round2 <= i) {
                i = round2;
            }
            i2 = i;
        }
        Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(ConstraintsKt.Constraints(m736getMinWidthimpl, m734getMaxWidthimpl, i, i2));
        return measureScope.layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, EmptyMap.INSTANCE, new FillNode$$ExternalSyntheticLambda0(mo571measureBRTryo0, 0));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo109measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }
}
