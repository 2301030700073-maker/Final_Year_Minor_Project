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
import androidx.compose.ui.text.MultiParagraph$$ExternalSyntheticLambda1;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PaddingValuesModifier extends Modifier.Node implements LayoutModifierNode {
    public PaddingValues paddingValues;

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
        float mo209calculateLeftPaddingu2uoSUM = this.paddingValues.mo209calculateLeftPaddingu2uoSUM(measureScope.getLayoutDirection());
        float mo211calculateTopPaddingD9Ej5fM = this.paddingValues.mo211calculateTopPaddingD9Ej5fM();
        float mo210calculateRightPaddingu2uoSUM = this.paddingValues.mo210calculateRightPaddingu2uoSUM(measureScope.getLayoutDirection());
        float mo208calculateBottomPaddingD9Ej5fM = this.paddingValues.mo208calculateBottomPaddingD9Ej5fM();
        if (!((Dp.m744compareTo0680j_4(mo209calculateLeftPaddingu2uoSUM, 0.0f) >= 0) & (Dp.m744compareTo0680j_4(mo211calculateTopPaddingD9Ej5fM, 0.0f) >= 0) & (Dp.m744compareTo0680j_4(mo210calculateRightPaddingu2uoSUM, 0.0f) >= 0) & (Dp.m744compareTo0680j_4(mo208calculateBottomPaddingD9Ej5fM, 0.0f) >= 0))) {
            InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
        }
        int mo171roundToPx0680j_4 = measureScope.mo171roundToPx0680j_4(mo209calculateLeftPaddingu2uoSUM);
        int mo171roundToPx0680j_42 = measureScope.mo171roundToPx0680j_4(mo210calculateRightPaddingu2uoSUM) + mo171roundToPx0680j_4;
        int mo171roundToPx0680j_43 = measureScope.mo171roundToPx0680j_4(mo211calculateTopPaddingD9Ej5fM);
        int mo171roundToPx0680j_44 = measureScope.mo171roundToPx0680j_4(mo208calculateBottomPaddingD9Ej5fM) + mo171roundToPx0680j_43;
        Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(ConstraintsKt.m742offsetNN6EwU(-mo171roundToPx0680j_42, -mo171roundToPx0680j_44, j));
        return measureScope.layout(ConstraintsKt.m741constrainWidthK40F9xA(mo571measureBRTryo0.width + mo171roundToPx0680j_42, j), ConstraintsKt.m740constrainHeightK40F9xA(mo571measureBRTryo0.height + mo171roundToPx0680j_44, j), EmptyMap.INSTANCE, new MultiParagraph$$ExternalSyntheticLambda1(mo571measureBRTryo0, mo171roundToPx0680j_4, mo171roundToPx0680j_43, 2));
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
