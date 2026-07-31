package androidx.compose.ui.input.pointer;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/StylusHoverIconModifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/input/pointer/StylusHoverIconModifierNode;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class StylusHoverIconModifierElement extends ModifierNodeElement {
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
