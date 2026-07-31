package androidx.compose.foundation.selection;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.state.ToggleableState;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class TriStateToggleableElement extends ModifierNodeElement {
    public final IndicationNodeFactory indicationNodeFactory;
    public final MutableInteractionSourceImpl interactionSource;
    public final Function0 onClick;
    public final Role role;
    public final ToggleableState state;

    public TriStateToggleableElement(ToggleableState toggleableState, MutableInteractionSourceImpl mutableInteractionSourceImpl, IndicationNodeFactory indicationNodeFactory, Role role, Function0 function0) {
        this.state = toggleableState;
        this.interactionSource = mutableInteractionSourceImpl;
        this.indicationNodeFactory = indicationNodeFactory;
        this.role = role;
        this.onClick = function0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        TriStateToggleableNode triStateToggleableNode = new TriStateToggleableNode(this.interactionSource, this.indicationNodeFactory, false, true, null, this.role, this.onClick);
        triStateToggleableNode.state = this.state;
        return triStateToggleableNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TriStateToggleableElement.class != obj.getClass()) {
            return false;
        }
        TriStateToggleableElement triStateToggleableElement = (TriStateToggleableElement) obj;
        return this.state == triStateToggleableElement.state && Intrinsics.areEqual(this.interactionSource, triStateToggleableElement.interactionSource) && Intrinsics.areEqual(this.indicationNodeFactory, triStateToggleableElement.indicationNodeFactory) && this.role.equals(triStateToggleableElement.role) && this.onClick == triStateToggleableElement.onClick;
    }

    public final int hashCode() {
        int hashCode = this.state.hashCode() * 31;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        int hashCode2 = (hashCode + (mutableInteractionSourceImpl != null ? mutableInteractionSourceImpl.hashCode() : 0)) * 31;
        IndicationNodeFactory indicationNodeFactory = this.indicationNodeFactory;
        return this.onClick.hashCode() + ((((((((hashCode2 + (indicationNodeFactory != null ? indicationNodeFactory.hashCode() : 0)) * 31) + 1237) * 31) + 1231) * 31) + this.role.value) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        TriStateToggleableNode triStateToggleableNode = (TriStateToggleableNode) node;
        ToggleableState toggleableState = triStateToggleableNode.state;
        ToggleableState toggleableState2 = this.state;
        if (toggleableState != toggleableState2) {
            triStateToggleableNode.state = toggleableState2;
            HitTestResultKt.invalidateSemantics(triStateToggleableNode);
        }
        triStateToggleableNode.m122updateCommonO2vRcR0(this.interactionSource, this.indicationNodeFactory, false, true, null, this.role, this.onClick);
    }
}
