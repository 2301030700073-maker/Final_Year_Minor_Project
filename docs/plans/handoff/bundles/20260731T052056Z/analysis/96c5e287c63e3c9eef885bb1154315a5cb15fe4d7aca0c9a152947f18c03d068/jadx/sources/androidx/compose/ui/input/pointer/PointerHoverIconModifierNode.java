package androidx.compose.ui.input.pointer;

import android.os.Build;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.AndroidComposeView$pointerIconService$1;
import androidx.compose.ui.platform.AndroidComposeViewVerificationHelperMethodsN;
import androidx.compose.ui.platform.CompositionLocalsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PointerHoverIconModifierNode extends HoverIconModifierNode {
    @Override // androidx.compose.ui.input.pointer.HoverIconModifierNode
    public final void displayIcon(PointerIcon pointerIcon) {
        PointerIconService pointerIconService = (PointerIconService) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalPointerIconService);
        if (pointerIconService != null) {
            AndroidComposeView$pointerIconService$1 androidComposeView$pointerIconService$1 = (AndroidComposeView$pointerIconService$1) pointerIconService;
            if (pointerIcon == null) {
                PointerIcon.Companion.getClass();
                pointerIcon = PointerId.pointerIconDefault;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                AndroidComposeViewVerificationHelperMethodsN.INSTANCE.setPointerIcon(androidComposeView$pointerIconService$1.this$0, pointerIcon);
            }
        }
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object getTraverseKey() {
        return "androidx.compose.ui.input.pointer.PointerHoverIcon";
    }

    @Override // androidx.compose.ui.input.pointer.HoverIconModifierNode
    /* renamed from: isRelevantPointerType-uerMTgs */
    public final boolean mo503isRelevantPointerTypeuerMTgs(int i) {
        return (i == 3 || i == 4) ? false : true;
    }
}
