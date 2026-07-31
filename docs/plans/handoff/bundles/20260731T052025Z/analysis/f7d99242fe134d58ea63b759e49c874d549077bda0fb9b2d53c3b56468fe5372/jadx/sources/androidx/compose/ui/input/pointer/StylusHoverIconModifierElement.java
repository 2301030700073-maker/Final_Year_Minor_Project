package androidx.compose.ui.input.pointer;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StylusHoverIconModifierElement extends ModifierNodeElement {
    public final DpTouchBoundsExpansion touchBoundsExpansion;

    public StylusHoverIconModifierElement(DpTouchBoundsExpansion dpTouchBoundsExpansion) {
        this.touchBoundsExpansion = dpTouchBoundsExpansion;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new StylusHoverIconModifierNode(BasicTextKt.handwritingPointerIcon, this.touchBoundsExpansion);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StylusHoverIconModifierElement)) {
            return false;
        }
        StylusHoverIconModifierElement stylusHoverIconModifierElement = (StylusHoverIconModifierElement) obj;
        AndroidPointerIconType androidPointerIconType = BasicTextKt.handwritingPointerIcon;
        return androidPointerIconType.equals(androidPointerIconType) && Intrinsics.areEqual(this.touchBoundsExpansion, stylusHoverIconModifierElement.touchBoundsExpansion);
    }

    public final int hashCode() {
        int i = ((1022 * 31) + 1237) * 31;
        DpTouchBoundsExpansion dpTouchBoundsExpansion = this.touchBoundsExpansion;
        return i + (dpTouchBoundsExpansion == null ? 0 : dpTouchBoundsExpansion.hashCode());
    }

    public final String toString() {
        return "StylusHoverIconModifierElement(icon=" + BasicTextKt.handwritingPointerIcon + ", overrideDescendants=false, touchBoundsExpansion=" + this.touchBoundsExpansion + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        StylusHoverIconModifierNode stylusHoverIconModifierNode = (StylusHoverIconModifierNode) node;
        AndroidPointerIconType androidPointerIconType = BasicTextKt.handwritingPointerIcon;
        if (!Intrinsics.areEqual(stylusHoverIconModifierNode.icon, androidPointerIconType)) {
            stylusHoverIconModifierNode.icon = androidPointerIconType;
            if (stylusHoverIconModifierNode.cursorInBoundsOfNode) {
                stylusHoverIconModifierNode.displayIconIfDescendantsDoNotHavePriority();
            }
        }
        stylusHoverIconModifierNode.dpTouchBoundsExpansion = this.touchBoundsExpansion;
    }
}
