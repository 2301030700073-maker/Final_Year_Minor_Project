package androidx.compose.foundation.selection;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.semantics.Role;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class SelectableElement extends ModifierNodeElement {
    public final boolean enabled;
    public final IndicationNodeFactory indicationNodeFactory;
    public final MutableInteractionSource interactionSource;
    public final Function0 onClick;
    public final Role role;
    public final boolean selected;

    public SelectableElement(IndicationNodeFactory indicationNodeFactory, MutableInteractionSource mutableInteractionSource, Role role, Function0 function0, boolean z, boolean z2) {
        this.selected = z;
        this.interactionSource = mutableInteractionSource;
        this.indicationNodeFactory = indicationNodeFactory;
        this.enabled = z2;
        this.role = role;
        this.onClick = function0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        SelectableNode selectableNode = new SelectableNode(this.indicationNodeFactory, this.interactionSource, this.role, this.onClick, false, this.enabled);
        selectableNode.selected = this.selected;
        return selectableNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SelectableElement.class != obj.getClass()) {
            return false;
        }
        SelectableElement selectableElement = (SelectableElement) obj;
        return this.selected == selectableElement.selected && Intrinsics.areEqual(this.interactionSource, selectableElement.interactionSource) && Intrinsics.areEqual(this.indicationNodeFactory, selectableElement.indicationNodeFactory) && this.enabled == selectableElement.enabled && this.role.equals(selectableElement.role) && this.onClick == selectableElement.onClick;
    }

    public final int hashCode() {
        int i = (this.selected ? 1231 : 1237) * 31;
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        int hashCode = (i + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31;
        IndicationNodeFactory indicationNodeFactory = this.indicationNodeFactory;
        return this.onClick.hashCode() + ((((((((hashCode + (indicationNodeFactory != null ? indicationNodeFactory.hashCode() : 0)) * 31) + 1237) * 31) + (this.enabled ? 1231 : 1237)) * 31) + this.role.value) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        SelectableNode selectableNode = (SelectableNode) node;
        boolean z = selectableNode.selected;
        boolean z2 = this.selected;
        if (z != z2) {
            selectableNode.selected = z2;
            HitTestResultKt.invalidateSemantics(selectableNode);
        }
        selectableNode.m18updateCommonO2vRcR0(this.indicationNodeFactory, this.interactionSource, this.role, this.onClick, false, this.enabled);
    }
}
