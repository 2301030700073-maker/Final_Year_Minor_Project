package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class LayoutIdElement extends ModifierNodeElement {
    public final String layoutId;

    public LayoutIdElement(String str) {
        this.layoutId = str;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        LayoutIdModifier layoutIdModifier = new LayoutIdModifier();
        layoutIdModifier.layoutId = this.layoutId;
        return layoutIdModifier;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LayoutIdElement) && this.layoutId.equals(((LayoutIdElement) obj).layoutId);
    }

    public final int hashCode() {
        return this.layoutId.hashCode();
    }

    public final String toString() {
        return "LayoutIdElement(layoutId=" + ((Object) this.layoutId) + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((LayoutIdModifier) node).layoutId = this.layoutId;
    }
}
