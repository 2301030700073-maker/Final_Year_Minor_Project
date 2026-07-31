package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExposedDropdownMenuAnchorElement extends ModifierNodeElement {
    public final TooltipKt$$ExternalSyntheticLambda1 updateStateOnAttach;

    public ExposedDropdownMenuAnchorElement(TooltipKt$$ExternalSyntheticLambda1 tooltipKt$$ExternalSyntheticLambda1) {
        this.updateStateOnAttach = tooltipKt$$ExternalSyntheticLambda1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        ExposedDropdownMenuAnchorNode exposedDropdownMenuAnchorNode = new ExposedDropdownMenuAnchorNode();
        exposedDropdownMenuAnchorNode.updateStateOnAttach = this.updateStateOnAttach;
        return exposedDropdownMenuAnchorNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ExposedDropdownMenuAnchorElement) {
            return this.updateStateOnAttach == ((ExposedDropdownMenuAnchorElement) obj).updateStateOnAttach;
        }
        return false;
    }

    public final int hashCode() {
        return this.updateStateOnAttach.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((ExposedDropdownMenuAnchorNode) node).updateStateOnAttach = this.updateStateOnAttach;
    }
}
