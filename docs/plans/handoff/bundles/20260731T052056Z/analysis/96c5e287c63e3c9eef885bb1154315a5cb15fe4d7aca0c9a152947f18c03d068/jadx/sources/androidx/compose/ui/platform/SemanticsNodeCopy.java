package androidx.compose.ui.platform;

import androidx.collection.IntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SemanticsNodeCopy {
    public final MutableIntSet children;
    public final SemanticsConfiguration unmergedConfig;

    public SemanticsNodeCopy(SemanticsNode semanticsNode, IntObjectMap intObjectMap) {
        this.unmergedConfig = semanticsNode.unmergedConfig;
        List children$ui$default = SemanticsNode.getChildren$ui$default(4, semanticsNode);
        this.children = new MutableIntSet(children$ui$default.size());
        int size = children$ui$default.size();
        for (int i = 0; i < size; i++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) children$ui$default.get(i);
            if (intObjectMap.containsKey(semanticsNode2.id)) {
                this.children.add(semanticsNode2.id);
            }
        }
    }
}
