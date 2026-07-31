package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BringIntoViewNode extends Modifier.Node {
    public AndroidViewHolder$layoutNode$1$4 onRequesterReady;
    public final NodeChainKt$fillVector$1 requester = new NodeChainKt$fillVector$1(26, this);

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
