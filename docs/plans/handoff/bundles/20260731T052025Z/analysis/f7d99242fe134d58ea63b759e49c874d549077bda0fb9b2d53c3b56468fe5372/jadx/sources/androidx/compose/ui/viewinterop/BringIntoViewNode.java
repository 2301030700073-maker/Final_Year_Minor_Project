package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BringIntoViewNode extends Modifier.Node {
    public AndroidViewHolder$layoutNode$1$4 onRequesterReady;
    public final NodeChainKt$fillVector$1 requester = new NodeChainKt$fillVector$1(27, this);

    public BringIntoViewNode(AndroidViewHolder$layoutNode$1$4 androidViewHolder$layoutNode$1$4) {
        this.onRequesterReady = androidViewHolder$layoutNode$1$4;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        this.onRequesterReady.invoke(this.requester);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        this.onRequesterReady.invoke(null);
    }
}
