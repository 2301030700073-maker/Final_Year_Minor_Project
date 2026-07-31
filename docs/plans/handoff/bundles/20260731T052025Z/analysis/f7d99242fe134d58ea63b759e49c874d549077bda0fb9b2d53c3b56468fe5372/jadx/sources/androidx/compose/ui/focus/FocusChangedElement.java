package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class FocusChangedElement extends ModifierNodeElement {
    public final Function1 onFocusChanged;

    public FocusChangedElement(Function1 function1) {
        this.onFocusChanged = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        FocusChangedNode focusChangedNode = new FocusChangedNode();
        focusChangedNode.onFocusChanged = this.onFocusChanged;
        return focusChangedNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FocusChangedElement) {
            return this.onFocusChanged == ((FocusChangedElement) obj).onFocusChanged;
        }
        return false;
    }

    public final int hashCode() {
        return this.onFocusChanged.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((FocusChangedNode) node).onFocusChanged = this.onFocusChanged;
    }
}
