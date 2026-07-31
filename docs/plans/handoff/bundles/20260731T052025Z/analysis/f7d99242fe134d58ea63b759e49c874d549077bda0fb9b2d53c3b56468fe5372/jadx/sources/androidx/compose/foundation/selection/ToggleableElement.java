package androidx.compose.foundation.selection;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.semantics.Role;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ToggleableElement extends ModifierNodeElement {
    public final MutableInteractionSourceImpl interactionSource;
    public final Function1 onValueChange;
    public final Role role;
    public final boolean useLocalIndication;
    public final boolean value;

    public ToggleableElement(boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z2, Role role, Function1 function1) {
        this.value = z;
        this.interactionSource = mutableInteractionSourceImpl;
        this.useLocalIndication = z2;
        this.role = role;
        this.onValueChange = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new ToggleableNode(this.value, this.interactionSource, this.useLocalIndication, this.role, this.onValueChange);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ToggleableElement.class != obj.getClass()) {
            return false;
        }
        ToggleableElement toggleableElement = (ToggleableElement) obj;
        return this.value == toggleableElement.value && Intrinsics.areEqual(this.interactionSource, toggleableElement.interactionSource) && this.useLocalIndication == toggleableElement.useLocalIndication && this.role.equals(toggleableElement.role) && this.onValueChange == toggleableElement.onValueChange;
    }

    public final int hashCode() {
        int i = (this.value ? 1231 : 1237) * 31;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        return this.onValueChange.hashCode() + ((((((((i + (mutableInteractionSourceImpl != null ? mutableInteractionSourceImpl.hashCode() : 0)) * 961) + (this.useLocalIndication ? 1231 : 1237)) * 31) + 1231) * 31) + this.role.value) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ToggleableNode toggleableNode = (ToggleableNode) node;
        boolean z = toggleableNode.value;
        boolean z2 = this.value;
        if (z != z2) {
            toggleableNode.value = z2;
            HitTestResultKt.invalidateSemantics(toggleableNode);
        }
        toggleableNode.onValueChange = this.onValueChange;
        toggleableNode.m122updateCommonO2vRcR0(this.interactionSource, null, this.useLocalIndication, true, null, this.role, toggleableNode._onClick);
    }
}
