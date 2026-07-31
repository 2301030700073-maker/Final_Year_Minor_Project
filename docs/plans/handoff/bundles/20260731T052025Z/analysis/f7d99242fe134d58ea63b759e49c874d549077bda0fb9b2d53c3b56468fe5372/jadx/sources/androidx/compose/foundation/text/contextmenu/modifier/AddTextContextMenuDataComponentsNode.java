package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.TraversableNode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AddTextContextMenuDataComponentsNode extends Modifier.Node implements TraversableNode {
    public TorchControl$$ExternalSyntheticLambda1 builder;

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object getTraverseKey() {
        return TextContextMenuDataTraverseKey.INSTANCE;
    }
}
