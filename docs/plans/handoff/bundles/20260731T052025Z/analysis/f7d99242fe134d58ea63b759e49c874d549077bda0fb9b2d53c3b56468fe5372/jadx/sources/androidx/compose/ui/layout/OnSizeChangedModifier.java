package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class OnSizeChangedModifier extends ModifierNodeElement {
    public final Function1 onSizeChanged;

    public OnSizeChangedModifier(Function1 function1) {
        this.onSizeChanged = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        OnSizeChangedNode onSizeChangedNode = new OnSizeChangedNode();
        onSizeChangedNode.onSizeChanged = this.onSizeChanged;
        onSizeChangedNode.previousSize = -9223372034707292160L;
        return onSizeChangedNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OnSizeChangedModifier) {
            return this.onSizeChanged == ((OnSizeChangedModifier) obj).onSizeChanged;
        }
        return false;
    }

    public final int hashCode() {
        return this.onSizeChanged.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        OnSizeChangedNode onSizeChangedNode = (OnSizeChangedNode) node;
        onSizeChangedNode.onSizeChanged = this.onSizeChanged;
        onSizeChangedNode.previousSize = -9223372034707292160L;
    }
}
