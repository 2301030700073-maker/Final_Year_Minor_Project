package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.TraversableNode;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AddTextContextMenuDataComponentsNode extends Modifier.Node implements TraversableNode {
    public AppBarKt$$ExternalSyntheticLambda11 builder;

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object getTraverseKey() {
        return TextContextMenuDataTraverseKey.INSTANCE;
    }
}
