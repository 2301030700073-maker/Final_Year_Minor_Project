package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class DrawBehindElement extends ModifierNodeElement {
    public final Function1 onDraw;

    public DrawBehindElement(Function1 function1) {
        this.onDraw = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        DrawBackgroundModifier drawBackgroundModifier = new DrawBackgroundModifier();
        drawBackgroundModifier.onDraw = this.onDraw;
        return drawBackgroundModifier;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DrawBehindElement) {
            return this.onDraw == ((DrawBehindElement) obj).onDraw;
        }
        return false;
    }

    public final int hashCode() {
        return this.onDraw.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((DrawBackgroundModifier) node).onDraw = this.onDraw;
    }
}
