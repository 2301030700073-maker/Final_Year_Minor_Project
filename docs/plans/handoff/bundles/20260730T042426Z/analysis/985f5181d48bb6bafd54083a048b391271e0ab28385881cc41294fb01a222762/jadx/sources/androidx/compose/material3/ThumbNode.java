package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.material3.tokens.SwitchTokens;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.NodeMeasuringIntrinsics;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* compiled from: Switch.kt */
/* loaded from: classes.dex */
final class ThumbNode extends Modifier.Node implements LayoutModifierNode {
    private boolean checked;
    private float initialOffset = Float.NaN;
    private float initialSize = Float.NaN;
    private InteractionSource interactionSource;
    private boolean isPressed;
    private Animatable offsetAnim;
    private Animatable sizeAnim;

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int maxHeight$ui_release;
        maxHeight$ui_release = NodeMeasuringIntrinsics.INSTANCE.maxHeight$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.node.LayoutModifierNode$maxIntrinsicHeight$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s, reason: not valid java name */
            public final MeasureResult mo1811measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
                return LayoutModifierNode.this.mo39measure3p2s80s(measureScope, measurable, j);
            }
        }, intrinsicMeasureScope, intrinsicMeasurable, i);
        return maxHeight$ui_release;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int maxWidth$ui_release;
        maxWidth$ui_release = NodeMeasuringIntrinsics.INSTANCE.maxWidth$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.node.LayoutModifierNode$maxIntrinsicWidth$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo1811measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
                return LayoutModifierNode.this.mo39measure3p2s80s(measureScope, measurable, j);
            }
        }, intrinsicMeasureScope, intrinsicMeasurable, i);
        return maxWidth$ui_release;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int minHeight$ui_release;
        minHeight$ui_release = NodeMeasuringIntrinsics.INSTANCE.minHeight$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.node.LayoutModifierNode$minIntrinsicHeight$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo1811measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
                return LayoutModifierNode.this.mo39measure3p2s80s(measureScope, measurable, j);
            }
        }, intrinsicMeasureScope, intrinsicMeasurable, i);
        return minHeight$ui_release;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int minWidth$ui_release;
        minWidth$ui_release = NodeMeasuringIntrinsics.INSTANCE.minWidth$ui_release(new NodeMeasuringIntrinsics.MeasureBlock() { // from class: androidx.compose.ui.node.LayoutModifierNode$minIntrinsicWidth$1
            @Override // androidx.compose.ui.node.NodeMeasuringIntrinsics.MeasureBlock
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo1811measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
                return LayoutModifierNode.this.mo39measure3p2s80s(measureScope, measurable, j);
            }
        }, intrinsicMeasureScope, intrinsicMeasurable, i);
        return minWidth$ui_release;
    }

    public final InteractionSource getInteractionSource() {
        return this.interactionSource;
    }

    public final void setInteractionSource(InteractionSource interactionSource) {
        this.interactionSource = interactionSource;
    }

    public final boolean getChecked() {
        return this.checked;
    }

    public final void setChecked(boolean z) {
        this.checked = z;
    }

    public ThumbNode(InteractionSource interactionSource, boolean z) {
        this.interactionSource = interactionSource;
        this.checked = z;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new ThumbNode$onAttach$1(this, null), 3, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo39measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        float thumbDiameter;
        float f;
        float f2;
        float f3;
        boolean z = (measurable.maxIntrinsicHeight(Constraints.m2397getMaxWidthimpl(j)) == 0 || measurable.maxIntrinsicWidth(Constraints.m2396getMaxHeightimpl(j)) == 0) ? false : true;
        if (this.isPressed) {
            thumbDiameter = SwitchTokens.INSTANCE.m960getPressedHandleWidthD9Ej5fM();
        } else if (z || this.checked) {
            thumbDiameter = SwitchKt.getThumbDiameter();
        } else {
            thumbDiameter = SwitchKt.getUncheckedThumbDiameter();
        }
        float mo213toPx0680j_4 = measureScope.mo213toPx0680j_4(thumbDiameter);
        Animatable animatable = this.sizeAnim;
        int floatValue = (int) (animatable != null ? ((Number) animatable.getValue()).floatValue() : mo213toPx0680j_4);
        final Placeable mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(Constraints.Companion.m2406fixedJhjzzOo(floatValue, floatValue));
        f = SwitchKt.SwitchHeight;
        final float mo213toPx0680j_42 = measureScope.mo213toPx0680j_4(Dp.m2424constructorimpl(Dp.m2424constructorimpl(f - measureScope.mo209toDpu2uoSUM(mo213toPx0680j_4)) / 2.0f));
        f2 = SwitchKt.SwitchWidth;
        float m2424constructorimpl = Dp.m2424constructorimpl(f2 - SwitchKt.getThumbDiameter());
        f3 = SwitchKt.ThumbPadding;
        float mo213toPx0680j_43 = measureScope.mo213toPx0680j_4(Dp.m2424constructorimpl(m2424constructorimpl - f3));
        boolean z2 = this.isPressed;
        if (z2 && this.checked) {
            mo213toPx0680j_42 = mo213toPx0680j_43 - measureScope.mo213toPx0680j_4(SwitchTokens.INSTANCE.m964getTrackOutlineWidthD9Ej5fM());
        } else if (z2 && !this.checked) {
            mo213toPx0680j_42 = measureScope.mo213toPx0680j_4(SwitchTokens.INSTANCE.m964getTrackOutlineWidthD9Ej5fM());
        } else if (this.checked) {
            mo213toPx0680j_42 = mo213toPx0680j_43;
        }
        Animatable animatable2 = this.sizeAnim;
        if (!Intrinsics.areEqual(animatable2 != null ? (Float) animatable2.getTargetValue() : null, mo213toPx0680j_4)) {
            BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new ThumbNode$measure$1(this, mo213toPx0680j_4, null), 3, null);
        }
        Animatable animatable3 = this.offsetAnim;
        if (!Intrinsics.areEqual(animatable3 != null ? (Float) animatable3.getTargetValue() : null, mo213toPx0680j_42)) {
            BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new ThumbNode$measure$2(this, mo213toPx0680j_42, null), 3, null);
        }
        if (Float.isNaN(this.initialSize) && Float.isNaN(this.initialOffset)) {
            this.initialSize = mo213toPx0680j_4;
            this.initialOffset = mo213toPx0680j_42;
        }
        return MeasureScope.CC.layout$default(measureScope, floatValue, floatValue, null, new Function1() { // from class: androidx.compose.material3.ThumbNode$measure$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Placeable.PlacementScope) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(Placeable.PlacementScope placementScope) {
                Animatable animatable4;
                Placeable placeable = Placeable.this;
                animatable4 = this.offsetAnim;
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, (int) (animatable4 != null ? ((Number) animatable4.getValue()).floatValue() : mo213toPx0680j_42), 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    public final void update() {
        if (this.sizeAnim == null && !Float.isNaN(this.initialSize)) {
            this.sizeAnim = AnimatableKt.Animatable$default(this.initialSize, 0.0f, 2, null);
        }
        if (this.offsetAnim != null || Float.isNaN(this.initialOffset)) {
            return;
        }
        this.offsetAnim = AnimatableKt.Animatable$default(this.initialOffset, 0.0f, 2, null);
    }
}
