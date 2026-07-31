package androidx.compose.ui.platform;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class TestTagElement extends ModifierNodeElement {
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        TestTagNode testTagNode = new TestTagNode();
        testTagNode.tag = "TEST_TAG_LICENSE_TEXT";
        return testTagNode;
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof TestTagElement);
    }

    public final int hashCode() {
        return -1784050883;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ((TestTagNode) node).tag = "TEST_TAG_LICENSE_TEXT";
    }
}
