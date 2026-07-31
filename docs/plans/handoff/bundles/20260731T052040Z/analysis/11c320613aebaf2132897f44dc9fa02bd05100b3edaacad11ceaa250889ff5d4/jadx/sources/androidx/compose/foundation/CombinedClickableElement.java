package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.RippleNodeFactory;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CombinedClickableElement extends ModifierNodeElement {
    public final boolean enabled;
    public final IndicationNodeFactory indicationNodeFactory;
    public final MutableInteractionSource interactionSource;
    public final Function0 onClick;

    public CombinedClickableElement(MutableInteractionSource mutableInteractionSource, RippleNodeFactory rippleNodeFactory, boolean z, Function0 function0) {
        this.interactionSource = mutableInteractionSource;
        this.indicationNodeFactory = rippleNodeFactory;
        this.enabled = z;
        this.onClick = function0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new CombinedClickableNode(this.onClick, this.interactionSource, this.indicationNodeFactory, this.enabled);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CombinedClickableElement.class != obj.getClass()) {
            return false;
        }
        CombinedClickableElement combinedClickableElement = (CombinedClickableElement) obj;
        return Intrinsics.areEqual(this.interactionSource, combinedClickableElement.interactionSource) && Intrinsics.areEqual(this.indicationNodeFactory, combinedClickableElement.indicationNodeFactory) && this.enabled == combinedClickableElement.enabled && this.onClick == combinedClickableElement.onClick;
    }

    public final int hashCode() {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        int hashCode = (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0) * 31;
        IndicationNodeFactory indicationNodeFactory = this.indicationNodeFactory;
        return ((this.onClick.hashCode() + ((((((hashCode + (indicationNodeFactory != null ? indicationNodeFactory.hashCode() : 0)) * 31) + 1237) * 31) + (this.enabled ? 1231 : 1237)) * 29791)) * 923521) + 1231;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        CombinedClickableNode combinedClickableNode = (CombinedClickableNode) node;
        combinedClickableNode.getClass();
        boolean z = combinedClickableNode.enabled;
        boolean z2 = this.enabled;
        boolean z3 = z != z2;
        combinedClickableNode.m18updateCommonO2vRcR0(this.indicationNodeFactory, this.interactionSource, null, this.onClick, false, z2);
        if (z3) {
            combinedClickableNode.cancelInput$1(false);
            combinedClickableNode.cancelInput$1(true);
        }
    }
}
