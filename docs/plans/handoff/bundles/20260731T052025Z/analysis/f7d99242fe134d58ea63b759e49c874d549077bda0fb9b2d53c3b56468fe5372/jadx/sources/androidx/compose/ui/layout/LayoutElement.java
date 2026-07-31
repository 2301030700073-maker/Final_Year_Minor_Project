package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class LayoutElement extends ModifierNodeElement {
    public final Function3 measure;

    public LayoutElement(Function3 function3) {
        this.measure = function3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        LayoutModifierImpl layoutModifierImpl = new LayoutModifierImpl();
        layoutModifierImpl.measureBlock = this.measure;
        return layoutModifierImpl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LayoutElement) {
            return this.measure == ((LayoutElement) obj).measure;
        }
        return false;
    }

    public final int hashCode() {
        return this.measure.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((LayoutModifierImpl) node).measureBlock = this.measure;
    }
}
