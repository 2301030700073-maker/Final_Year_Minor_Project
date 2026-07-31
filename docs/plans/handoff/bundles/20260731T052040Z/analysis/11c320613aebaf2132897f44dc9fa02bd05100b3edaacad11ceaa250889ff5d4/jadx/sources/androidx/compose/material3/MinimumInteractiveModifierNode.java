package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValuesModifier$$ExternalSyntheticLambda0;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.DefaultIntrinsicMeasurable;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.IntrinsicsMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicMinMax;
import androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicWidthHeight;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MinimumInteractiveModifierNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode {
    public LinkedHashMap alignmentLinesCache;

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
        float f = ((Dp) HitTestResultKt.currentValueOf(this, InteractiveComponentSizeKt.LocalMinimumInteractiveComponentSize)).value;
        if (f < 0.0f) {
            f = 0.0f;
        }
        Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(j);
        boolean z = this.isAttached && !Float.isNaN(f) && Dp.m442compareTo0680j_4(f, 0.0f) > 0;
        int mo58roundToPx0680j_4 = !Float.isNaN(f) ? measureScope.mo58roundToPx0680j_4(f) : 0;
        int i = mo292measureBRTryo0.width;
        if (z) {
            i = Math.max(i, mo58roundToPx0680j_4);
        }
        int i2 = mo292measureBRTryo0.height;
        if (z) {
            i2 = Math.max(i2, mo58roundToPx0680j_4);
        }
        if (z) {
            LinkedHashMap linkedHashMap = this.alignmentLinesCache;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap(2);
                this.alignmentLinesCache = linkedHashMap;
            }
            VerticalAlignmentLine verticalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveLeftAlignmentLine;
            int round = Math.round((mo58roundToPx0680j_4 - mo292measureBRTryo0.width) / 2.0f);
            if (round < 0) {
                round = 0;
            }
            linkedHashMap.put(verticalAlignmentLine, Integer.valueOf(round));
            HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
            int round2 = Math.round((mo58roundToPx0680j_4 - mo292measureBRTryo0.height) / 2.0f);
            linkedHashMap.put(horizontalAlignmentLine, Integer.valueOf(round2 >= 0 ? round2 : 0));
        }
        Map map = this.alignmentLinesCache;
        if (map == null) {
            map = EmptyMap.INSTANCE;
        }
        return measureScope.layout(i, i2, map, new PaddingValuesModifier$$ExternalSyntheticLambda0(i, mo292measureBRTryo0, i2));
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
