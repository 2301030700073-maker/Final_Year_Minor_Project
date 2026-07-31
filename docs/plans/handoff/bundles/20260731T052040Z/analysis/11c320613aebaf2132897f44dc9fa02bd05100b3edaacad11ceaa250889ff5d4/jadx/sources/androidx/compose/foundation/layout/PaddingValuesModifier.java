package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
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
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PaddingValuesModifier extends Modifier.Node implements LayoutModifierNode {
    public PaddingValues paddingValues;

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
        float mo84calculateLeftPaddingu2uoSUM = this.paddingValues.mo84calculateLeftPaddingu2uoSUM(measureScope.getLayoutDirection());
        float mo86calculateTopPaddingD9Ej5fM = this.paddingValues.mo86calculateTopPaddingD9Ej5fM();
        float mo85calculateRightPaddingu2uoSUM = this.paddingValues.mo85calculateRightPaddingu2uoSUM(measureScope.getLayoutDirection());
        float mo83calculateBottomPaddingD9Ej5fM = this.paddingValues.mo83calculateBottomPaddingD9Ej5fM();
        int i = 0;
        if (!((Dp.m442compareTo0680j_4(mo84calculateLeftPaddingu2uoSUM, 0.0f) >= 0) & (Dp.m442compareTo0680j_4(mo86calculateTopPaddingD9Ej5fM, 0.0f) >= 0) & (Dp.m442compareTo0680j_4(mo85calculateRightPaddingu2uoSUM, 0.0f) >= 0) & (Dp.m442compareTo0680j_4(mo83calculateBottomPaddingD9Ej5fM, 0.0f) >= 0))) {
            InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
        }
        int mo58roundToPx0680j_4 = measureScope.mo58roundToPx0680j_4(mo84calculateLeftPaddingu2uoSUM);
        int mo58roundToPx0680j_42 = measureScope.mo58roundToPx0680j_4(mo85calculateRightPaddingu2uoSUM) + mo58roundToPx0680j_4;
        int mo58roundToPx0680j_43 = measureScope.mo58roundToPx0680j_4(mo86calculateTopPaddingD9Ej5fM);
        int mo58roundToPx0680j_44 = measureScope.mo58roundToPx0680j_4(mo83calculateBottomPaddingD9Ej5fM) + mo58roundToPx0680j_43;
        Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(-mo58roundToPx0680j_42, j, -mo58roundToPx0680j_44));
        return measureScope.layout(ConstraintsKt.m440constrainWidthK40F9xA(mo292measureBRTryo0.width + mo58roundToPx0680j_42, j), ConstraintsKt.m439constrainHeightK40F9xA(mo292measureBRTryo0.height + mo58roundToPx0680j_44, j), EmptyMap.INSTANCE, new PaddingValuesModifier$$ExternalSyntheticLambda0(mo292measureBRTryo0, mo58roundToPx0680j_4, mo58roundToPx0680j_43, i));
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
