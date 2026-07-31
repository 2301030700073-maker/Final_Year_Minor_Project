package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TailModifierNode extends Modifier.Node {
    public boolean attachHasBeenRun;

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        this.attachHasBeenRun = true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        this.attachHasBeenRun = false;
    }

    public final String toString() {
        return "<tail>";
    }
}
