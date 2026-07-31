package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class IndicationModifierElement extends ModifierNodeElement {
    public final IndicationNodeFactory indication;
    public final InteractionSource interactionSource;

    public IndicationModifierElement(InteractionSource interactionSource, IndicationNodeFactory indicationNodeFactory) {
        this.interactionSource = interactionSource;
        this.indication = indicationNodeFactory;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        DelegatableNode create = this.indication.create(this.interactionSource);
        IndicationModifierNode indicationModifierNode = new IndicationModifierNode();
        indicationModifierNode.indicationNode = create;
        indicationModifierNode.delegate(create);
        return indicationModifierNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IndicationModifierElement)) {
            return false;
        }
        IndicationModifierElement indicationModifierElement = (IndicationModifierElement) obj;
        return Intrinsics.areEqual(this.interactionSource, indicationModifierElement.interactionSource) && Intrinsics.areEqual(this.indication, indicationModifierElement.indication);
    }

    public final int hashCode() {
        return this.indication.hashCode() + (this.interactionSource.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        IndicationModifierNode indicationModifierNode = (IndicationModifierNode) node;
        DelegatableNode create = this.indication.create(this.interactionSource);
        indicationModifierNode.undelegate(indicationModifierNode.indicationNode);
        indicationModifierNode.indicationNode = create;
        indicationModifierNode.delegate(create);
    }
}
