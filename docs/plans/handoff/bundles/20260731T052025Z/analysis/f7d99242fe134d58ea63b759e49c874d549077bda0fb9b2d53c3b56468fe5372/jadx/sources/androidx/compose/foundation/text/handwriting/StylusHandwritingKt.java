package androidx.compose.foundation.text.handwriting;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.StylusHoverIconModifierElement;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class StylusHandwritingKt {
    public static final DpTouchBoundsExpansion HandwritingBoundsExpansion = new DpTouchBoundsExpansion();

    public static final Modifier stylusHandwriting(boolean z, boolean z2, Function0 function0) {
        Modifier modifier = Modifier.Companion.$$INSTANCE;
        if (!z || !StylusHandwriting_androidKt.isStylusHandwritingSupported) {
            return modifier;
        }
        if (z2) {
            modifier = new StylusHoverIconModifierElement(HandwritingBoundsExpansion);
        }
        return modifier.then(new StylusHandwritingElement(function0));
    }
}
