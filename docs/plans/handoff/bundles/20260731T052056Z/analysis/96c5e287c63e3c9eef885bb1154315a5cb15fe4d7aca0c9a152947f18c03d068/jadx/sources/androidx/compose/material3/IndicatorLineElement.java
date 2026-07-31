package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/material3/IndicatorLineElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/material3/IndicatorLineNode;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class IndicatorLineElement extends ModifierNodeElement {
    public final TextFieldColors colors;
    public final boolean enabled;
    public final MutableInteractionSourceImpl interactionSource;
    public final Shape textFieldShape;

    public IndicatorLineElement(boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, TextFieldColors textFieldColors, Shape shape) {
        this.enabled = z;
        this.interactionSource = mutableInteractionSourceImpl;
        this.colors = textFieldColors;
        this.textFieldShape = shape;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new IndicatorLineNode(this.enabled, this.interactionSource, this.colors, this.textFieldShape);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IndicatorLineElement)) {
            return false;
        }
        IndicatorLineElement indicatorLineElement = (IndicatorLineElement) obj;
        return this.enabled == indicatorLineElement.enabled && Intrinsics.areEqual(this.interactionSource, indicatorLineElement.interactionSource) && this.colors.equals(indicatorLineElement.colors) && Intrinsics.areEqual(this.textFieldShape, indicatorLineElement.textFieldShape) && Dp.m693equalsimpl0(2.0f, 2.0f) && Dp.m693equalsimpl0(1.0f, 1.0f);
    }

    public final int hashCode() {
        int hashCode = (this.colors.hashCode() + ((this.interactionSource.hashCode() + ((((this.enabled ? 1231 : 1237) * 31) + 1237) * 31)) * 31)) * 31;
        Shape shape = this.textFieldShape;
        return Float.floatToIntBits(1.0f) + Animation.CC.m((hashCode + (shape == null ? 0 : shape.hashCode())) * 31, 2.0f, 31);
    }

    public final String toString() {
        return "IndicatorLineElement(enabled=" + this.enabled + ", isError=false, interactionSource=" + this.interactionSource + ", colors=" + this.colors + ", textFieldShape=" + this.textFieldShape + ", focusedIndicatorLineThickness=" + ((Object) Dp.m694toStringimpl(2.0f)) + ", unfocusedIndicatorLineThickness=" + ((Object) Dp.m694toStringimpl(1.0f)) + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        boolean z;
        IndicatorLineNode indicatorLineNode = (IndicatorLineNode) node;
        boolean z2 = indicatorLineNode.enabled;
        boolean z3 = this.enabled;
        boolean z4 = true;
        if (z2 != z3) {
            indicatorLineNode.enabled = z3;
            z = true;
        } else {
            z = false;
        }
        MutableInteractionSourceImpl mutableInteractionSourceImpl = indicatorLineNode.interactionSource;
        MutableInteractionSourceImpl mutableInteractionSourceImpl2 = this.interactionSource;
        if (mutableInteractionSourceImpl != mutableInteractionSourceImpl2) {
            indicatorLineNode.interactionSource = mutableInteractionSourceImpl2;
            StandaloneCoroutine standaloneCoroutine = indicatorLineNode.trackFocusStateJob;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            indicatorLineNode.trackFocusStateJob = AwaitKt.launch$default(indicatorLineNode.getCoroutineScope(), null, null, new IndicatorLineNode$update$1(indicatorLineNode, null, 0), 3);
        }
        TextFieldColors textFieldColors = indicatorLineNode._colors;
        TextFieldColors textFieldColors2 = this.colors;
        if (!Intrinsics.areEqual(textFieldColors, textFieldColors2)) {
            indicatorLineNode._colors = textFieldColors2;
            z = true;
        }
        Shape shape = indicatorLineNode._shape;
        Shape shape2 = this.textFieldShape;
        if (!Intrinsics.areEqual(shape, shape2)) {
            if (!Intrinsics.areEqual(indicatorLineNode._shape, shape2)) {
                indicatorLineNode._shape = shape2;
                indicatorLineNode.drawWithCacheModifierNode.invalidateDrawCache();
            }
            z = true;
        }
        if (!Dp.m693equalsimpl0(indicatorLineNode.focusedIndicatorWidth, 2.0f)) {
            indicatorLineNode.focusedIndicatorWidth = 2.0f;
            z = true;
        }
        if (Dp.m693equalsimpl0(indicatorLineNode.unfocusedIndicatorWidth, 1.0f)) {
            z4 = z;
        } else {
            indicatorLineNode.unfocusedIndicatorWidth = 1.0f;
        }
        if (z4) {
            indicatorLineNode.invalidateIndicator();
        }
    }
}
