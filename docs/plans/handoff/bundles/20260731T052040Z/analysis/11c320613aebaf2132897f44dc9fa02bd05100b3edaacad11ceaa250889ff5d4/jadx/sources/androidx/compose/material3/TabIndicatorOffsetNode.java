package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.State;
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
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.collections.EmptyMap;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TabIndicatorOffsetNode extends Modifier.Node implements LayoutModifierNode {
    public FiniteAnimationSpec animationSpec;
    public Dp initialOffset;
    public Dp initialWidth;
    public Animatable offsetAnimatable;
    public int selectedTabIndex;
    public State tabPositionsState;
    public Animatable widthAnimatable;

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
        TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.DpToVector;
        boolean isEmpty = ((List) this.tabPositionsState.getValue()).isEmpty();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        int i = 0;
        if (isEmpty) {
            return measureScope.layout(0, 0, emptyMap, new ImageKt$$ExternalSyntheticLambda0(22));
        }
        float f = ((TabPosition) ((List) this.tabPositionsState.getValue()).get(this.selectedTabIndex)).width;
        Dp dp = this.initialWidth;
        if (dp != null) {
            Animatable animatable = this.widthAnimatable;
            if (animatable == null) {
                animatable = new Animatable(dp, twoWayConverterImpl, null, 12);
                this.widthAnimatable = animatable;
            }
            if (!Dp.m443equalsimpl0(f, ((Dp) animatable.targetValue$delegate.getValue()).value)) {
                JobKt.launch$default(getCoroutineScope(), null, null, new TabIndicatorOffsetNode$measure$2(animatable, f, this, null), 3);
            }
        } else {
            this.initialWidth = new Dp(f);
        }
        float f2 = ((TabPosition) ((List) this.tabPositionsState.getValue()).get(this.selectedTabIndex)).left;
        Dp dp2 = this.initialOffset;
        if (dp2 != null) {
            Animatable animatable2 = this.offsetAnimatable;
            if (animatable2 == null) {
                animatable2 = new Animatable(dp2, twoWayConverterImpl, null, 12);
                this.offsetAnimatable = animatable2;
            }
            if (!Dp.m443equalsimpl0(f2, ((Dp) animatable2.targetValue$delegate.getValue()).value)) {
                JobKt.launch$default(getCoroutineScope(), null, null, new TabIndicatorOffsetNode$measure$3(animatable2, f2, this, null), 3);
            }
        } else {
            this.initialOffset = new Dp(f2);
        }
        LayoutDirection layoutDirection = measureScope.getLayoutDirection();
        Animatable animatable3 = this.offsetAnimatable;
        if (layoutDirection != LayoutDirection.Ltr) {
            if (animatable3 != null) {
                f2 = ((Dp) animatable3.getValue()).value;
            }
            f2 = -f2;
        } else if (animatable3 != null) {
            f2 = ((Dp) animatable3.getValue()).value;
        }
        Animatable animatable4 = this.widthAnimatable;
        if (animatable4 != null) {
            f = ((Dp) animatable4.getValue()).value;
        }
        Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(Constraints.m427copyZbe2FdA$default(measureScope.mo58roundToPx0680j_4(f), measureScope.mo58roundToPx0680j_4(f), 0, j, 12));
        return measureScope.layout(mo292measureBRTryo0.width, mo292measureBRTryo0.height, emptyMap, new TabIndicatorOffsetNode$$ExternalSyntheticLambda0(mo292measureBRTryo0, f2, i));
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
