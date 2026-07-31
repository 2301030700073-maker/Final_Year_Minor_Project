package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FocusRequesterNode extends Modifier.Node implements FocusRequesterModifierNode {
    public FocusRequester focusRequester;

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        this.focusRequester.focusRequesterNodes.add(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        this.focusRequester.focusRequesterNodes.remove(this);
    }
}
