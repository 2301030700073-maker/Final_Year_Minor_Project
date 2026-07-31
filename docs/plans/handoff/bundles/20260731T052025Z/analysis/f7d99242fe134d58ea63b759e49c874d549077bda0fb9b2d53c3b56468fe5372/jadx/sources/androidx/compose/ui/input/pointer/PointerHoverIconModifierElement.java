package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PointerHoverIconModifierElement extends ModifierNodeElement {
    public final AndroidPointerIconType icon;

    public PointerHoverIconModifierElement(AndroidPointerIconType androidPointerIconType) {
        this.icon = androidPointerIconType;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new PointerHoverIconModifierNode(this.icon, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PointerHoverIconModifierElement) && this.icon.equals(((PointerHoverIconModifierElement) obj).icon);
    }

    public final int hashCode() {
        return (this.icon.type * 31) + 1237;
    }

    public final String toString() {
        return "PointerHoverIconModifierElement(icon=" + this.icon + ", overrideDescendants=false)";
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        PointerHoverIconModifierNode pointerHoverIconModifierNode = (PointerHoverIconModifierNode) node;
        AndroidPointerIconType androidPointerIconType = pointerHoverIconModifierNode.icon;
        AndroidPointerIconType androidPointerIconType2 = this.icon;
        if (Intrinsics.areEqual(androidPointerIconType, androidPointerIconType2)) {
            return;
        }
        pointerHoverIconModifierNode.icon = androidPointerIconType2;
        if (pointerHoverIconModifierNode.cursorInBoundsOfNode) {
            pointerHoverIconModifierNode.displayIconIfDescendantsDoNotHavePriority();
        }
    }
}
