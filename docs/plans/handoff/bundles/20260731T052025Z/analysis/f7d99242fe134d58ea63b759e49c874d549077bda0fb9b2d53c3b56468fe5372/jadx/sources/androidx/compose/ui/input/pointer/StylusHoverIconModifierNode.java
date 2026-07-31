package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.AndroidComposeView$pointerIconService$1;
import androidx.compose.ui.platform.CompositionLocalsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StylusHoverIconModifierNode extends HoverIconModifierNode {
    @Override // androidx.compose.ui.input.pointer.HoverIconModifierNode
    public final void displayIcon(PointerIcon pointerIcon) {
        PointerIconService pointerIconService = (PointerIconService) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalPointerIconService);
        if (pointerIconService != null) {
            ((AndroidComposeView$pointerIconService$1) pointerIconService).currentStylusHoverIcon = pointerIcon;
        }
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final /* bridge */ /* synthetic */ Object getTraverseKey() {
        return "androidx.compose.ui.input.pointer.StylusHoverIcon";
    }

    @Override // androidx.compose.ui.input.pointer.HoverIconModifierNode
    /* renamed from: isRelevantPointerType-uerMTgs */
    public final boolean mo562isRelevantPointerTypeuerMTgs(int i) {
        return i == 3 || i == 4;
    }
}
