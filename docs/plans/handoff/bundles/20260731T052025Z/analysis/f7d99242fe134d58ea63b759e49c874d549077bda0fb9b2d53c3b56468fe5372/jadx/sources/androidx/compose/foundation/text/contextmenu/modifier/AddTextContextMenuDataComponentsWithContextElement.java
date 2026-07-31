package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class AddTextContextMenuDataComponentsWithContextElement extends ModifierNodeElement {
    public final GapComposer$$ExternalSyntheticLambda3 builder;

    public AddTextContextMenuDataComponentsWithContextElement(GapComposer$$ExternalSyntheticLambda3 gapComposer$$ExternalSyntheticLambda3) {
        this.builder = gapComposer$$ExternalSyntheticLambda3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        AddTextContextMenuDataComponentsWithContextNode addTextContextMenuDataComponentsWithContextNode = new AddTextContextMenuDataComponentsWithContextNode();
        addTextContextMenuDataComponentsWithContextNode.builder = this.builder;
        TorchControl$$ExternalSyntheticLambda1 torchControl$$ExternalSyntheticLambda1 = new TorchControl$$ExternalSyntheticLambda1(24, addTextContextMenuDataComponentsWithContextNode);
        AddTextContextMenuDataComponentsNode addTextContextMenuDataComponentsNode = new AddTextContextMenuDataComponentsNode();
        addTextContextMenuDataComponentsNode.builder = torchControl$$ExternalSyntheticLambda1;
        addTextContextMenuDataComponentsWithContextNode.delegate(addTextContextMenuDataComponentsNode);
        return addTextContextMenuDataComponentsWithContextNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AddTextContextMenuDataComponentsWithContextElement) {
            return this.builder == ((AddTextContextMenuDataComponentsWithContextElement) obj).builder;
        }
        return false;
    }

    public final int hashCode() {
        return this.builder.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((AddTextContextMenuDataComponentsWithContextNode) node).builder = this.builder;
    }
}
