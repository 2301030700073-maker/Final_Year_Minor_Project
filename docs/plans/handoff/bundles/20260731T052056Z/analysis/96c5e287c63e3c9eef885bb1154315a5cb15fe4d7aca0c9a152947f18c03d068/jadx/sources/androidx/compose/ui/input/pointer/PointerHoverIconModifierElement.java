package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerHoverIconModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/input/pointer/PointerHoverIconModifierNode;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class PointerHoverIconModifierElement extends ModifierNodeElement {
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
        return (this.icon.hashCode() * 31) + 1237;
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
