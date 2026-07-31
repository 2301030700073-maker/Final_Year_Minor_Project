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
import androidx.recyclerview.widget.RecyclerView;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PaddingValuesModifier extends Modifier.Node implements LayoutModifierNode {
    public PaddingValues paddingValues;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Max, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        float mo121calculateLeftPaddingu2uoSUM = this.paddingValues.mo121calculateLeftPaddingu2uoSUM(measureScope.getLayoutDirection());
        float mo123calculateTopPaddingD9Ej5fM = this.paddingValues.mo123calculateTopPaddingD9Ej5fM();
        float mo122calculateRightPaddingu2uoSUM = this.paddingValues.mo122calculateRightPaddingu2uoSUM(measureScope.getLayoutDirection());
        float mo120calculateBottomPaddingD9Ej5fM = this.paddingValues.mo120calculateBottomPaddingD9Ej5fM();
        int i = 0;
        if (!((Dp.m692compareTo0680j_4(mo121calculateLeftPaddingu2uoSUM, RecyclerView.DECELERATION_RATE) >= 0) & (Dp.m692compareTo0680j_4(mo123calculateTopPaddingD9Ej5fM, RecyclerView.DECELERATION_RATE) >= 0) & (Dp.m692compareTo0680j_4(mo122calculateRightPaddingu2uoSUM, RecyclerView.DECELERATION_RATE) >= 0) & (Dp.m692compareTo0680j_4(mo120calculateBottomPaddingD9Ej5fM, RecyclerView.DECELERATION_RATE) >= 0))) {
            InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
        }
        int mo81roundToPx0680j_4 = measureScope.mo81roundToPx0680j_4(mo121calculateLeftPaddingu2uoSUM);
        int mo81roundToPx0680j_42 = measureScope.mo81roundToPx0680j_4(mo122calculateRightPaddingu2uoSUM) + mo81roundToPx0680j_4;
        int mo81roundToPx0680j_43 = measureScope.mo81roundToPx0680j_4(mo123calculateTopPaddingD9Ej5fM);
        int mo81roundToPx0680j_44 = measureScope.mo81roundToPx0680j_4(mo120calculateBottomPaddingD9Ej5fM) + mo81roundToPx0680j_43;
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(ConstraintsKt.m690offsetNN6EwU(-mo81roundToPx0680j_42, -mo81roundToPx0680j_44, j));
        return measureScope.layout(ConstraintsKt.m689constrainWidthK40F9xA(j, mo512measureBRTryo0.width + mo81roundToPx0680j_42), ConstraintsKt.m688constrainHeightK40F9xA(j, mo512measureBRTryo0.height + mo81roundToPx0680j_44), EmptyMap.INSTANCE, new PaddingValuesModifier$$ExternalSyntheticLambda0(mo512measureBRTryo0, mo81roundToPx0680j_4, mo81roundToPx0680j_43, i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Height, 2), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final /* synthetic */ int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo16measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, NodeMeasuringIntrinsics$IntrinsicMinMax.Min, NodeMeasuringIntrinsics$IntrinsicWidthHeight.Width, 2), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }
}
