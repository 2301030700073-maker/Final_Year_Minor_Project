package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.material3.tokens.SwitchTokens;
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
import androidx.compose.ui.unit.InlineClassHelperKt;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ThumbNode extends Modifier.Node implements LayoutModifierNode {
    public SpringSpec animationSpec;
    public boolean checked;
    public float initialOffset;
    public float initialSize;
    public MutableInteractionSourceImpl interactionSource;
    public boolean isPressed;
    public Animatable offsetAnim;
    public Animatable sizeAnim;

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

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
        int i = 0;
        int i2 = 1;
        float mo87toPx0680j_4 = measureScope.mo87toPx0680j_4(this.isPressed ? SwitchTokens.PressedHandleWidth : ((measurable.maxIntrinsicHeight(Constraints.m681getMaxWidthimpl(j)) != 0 && measurable.maxIntrinsicWidth(Constraints.m680getMaxHeightimpl(j)) != 0) || this.checked) ? SwitchKt.ThumbDiameter : SwitchKt.UncheckedThumbDiameter);
        Animatable animatable = this.sizeAnim;
        int floatValue = (int) (animatable != null ? ((Number) animatable.getValue()).floatValue() : mo87toPx0680j_4);
        if (!((floatValue >= 0) & (floatValue >= 0))) {
            InlineClassHelperKt.throwIllegalArgumentException("width and height must be >= 0");
        }
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(ConstraintsKt.createConstraints(floatValue, floatValue, floatValue, floatValue));
        float mo87toPx0680j_42 = measureScope.mo87toPx0680j_4((SwitchKt.SwitchHeight - measureScope.mo83toDpu2uoSUM(mo87toPx0680j_4)) / 2.0f);
        float mo87toPx0680j_43 = measureScope.mo87toPx0680j_4((SwitchKt.SwitchWidth - SwitchKt.ThumbDiameter) - SwitchKt.ThumbPadding);
        boolean z = this.isPressed;
        if (z && this.checked) {
            mo87toPx0680j_42 = mo87toPx0680j_43 - measureScope.mo87toPx0680j_4(SwitchTokens.TrackOutlineWidth);
        } else if (z && !this.checked) {
            mo87toPx0680j_42 = measureScope.mo87toPx0680j_4(SwitchTokens.TrackOutlineWidth);
        } else if (this.checked) {
            mo87toPx0680j_42 = mo87toPx0680j_43;
        }
        Animatable animatable2 = this.sizeAnim;
        Continuation continuation = null;
        Float f = animatable2 != null ? (Float) animatable2.targetValue$delegate.getValue() : null;
        if (f == null || f.floatValue() != mo87toPx0680j_4) {
            AwaitKt.launch$default(getCoroutineScope(), null, null, new ThumbNode$measure$1(this, mo87toPx0680j_4, continuation, i), 3);
        }
        Animatable animatable3 = this.offsetAnim;
        Float f2 = animatable3 != null ? (Float) animatable3.targetValue$delegate.getValue() : null;
        if (f2 == null || f2.floatValue() != mo87toPx0680j_42) {
            AwaitKt.launch$default(getCoroutineScope(), null, null, new ThumbNode$measure$1(this, mo87toPx0680j_42, continuation, i2), 3);
        }
        if (Float.isNaN(this.initialSize) && Float.isNaN(this.initialOffset)) {
            this.initialSize = mo87toPx0680j_4;
            this.initialOffset = mo87toPx0680j_42;
        }
        return measureScope.layout(floatValue, floatValue, EmptyMap.INSTANCE, new ThumbNode$$ExternalSyntheticLambda0(mo512measureBRTryo0, this, mo87toPx0680j_42));
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

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        AwaitKt.launch$default(getCoroutineScope(), null, null, new ThumbNode$onAttach$1(0, this, null), 3);
    }
}
