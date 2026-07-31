package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.RippleNodeFactory;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.semantics.Role;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ClickableElement extends ModifierNodeElement {
    public final boolean enabled;
    public final IndicationNodeFactory indicationNodeFactory;
    public final MutableInteractionSource interactionSource;
    public final Function0 onClick;
    public final Role role;
    public final boolean useLocalIndication;

    public ClickableElement(MutableInteractionSource mutableInteractionSource, RippleNodeFactory rippleNodeFactory, boolean z, boolean z2, Role role, Function0 function0) {
        this.interactionSource = mutableInteractionSource;
        this.indicationNodeFactory = rippleNodeFactory;
        this.useLocalIndication = z;
        this.enabled = z2;
        this.role = role;
        this.onClick = function0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new ClickableNode(this.indicationNodeFactory, this.interactionSource, this.role, this.onClick, this.useLocalIndication, this.enabled);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ClickableElement.class != obj.getClass()) {
            return false;
        }
        ClickableElement clickableElement = (ClickableElement) obj;
        return Intrinsics.areEqual(this.interactionSource, clickableElement.interactionSource) && Intrinsics.areEqual(this.indicationNodeFactory, clickableElement.indicationNodeFactory) && this.useLocalIndication == clickableElement.useLocalIndication && this.enabled == clickableElement.enabled && Intrinsics.areEqual(this.role, clickableElement.role) && this.onClick == clickableElement.onClick;
    }

    public final int hashCode() {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        int hashCode = (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0) * 31;
        IndicationNodeFactory indicationNodeFactory = this.indicationNodeFactory;
        int hashCode2 = (((((hashCode + (indicationNodeFactory != null ? indicationNodeFactory.hashCode() : 0)) * 31) + (this.useLocalIndication ? 1231 : 1237)) * 31) + (this.enabled ? 1231 : 1237)) * 961;
        Role role = this.role;
        return this.onClick.hashCode() + ((hashCode2 + (role != null ? role.value : 0)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((ClickableNode) node).m18updateCommonO2vRcR0(this.indicationNodeFactory, this.interactionSource, this.role, this.onClick, this.useLocalIndication, this.enabled);
    }
}
