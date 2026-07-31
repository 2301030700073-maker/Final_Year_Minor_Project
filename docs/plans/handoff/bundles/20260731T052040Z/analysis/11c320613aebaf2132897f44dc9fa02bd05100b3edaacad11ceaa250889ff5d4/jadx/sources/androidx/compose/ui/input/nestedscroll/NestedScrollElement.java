package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NestedScrollElement extends ModifierNodeElement {
    public final NestedScrollConnection connection;

    public NestedScrollElement(NestedScrollConnection nestedScrollConnection) {
        this.connection = nestedScrollConnection;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new NestedScrollNode(this.connection, null);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof NestedScrollElement) && Intrinsics.areEqual(((NestedScrollElement) obj).connection, this.connection);
    }

    public final int hashCode() {
        return this.connection.hashCode() * 31;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        NestedScrollNode nestedScrollNode = (NestedScrollNode) node;
        nestedScrollNode.connection = this.connection;
        NestedScrollDispatcher nestedScrollDispatcher = nestedScrollNode.resolvedDispatcher;
        if (nestedScrollDispatcher.nestedScrollNode == nestedScrollNode) {
            nestedScrollDispatcher.nestedScrollNode = null;
        }
        NestedScrollDispatcher nestedScrollDispatcher2 = new NestedScrollDispatcher();
        nestedScrollNode.resolvedDispatcher = nestedScrollDispatcher2;
        if (nestedScrollNode.isAttached) {
            nestedScrollDispatcher2.nestedScrollNode = nestedScrollNode;
            nestedScrollDispatcher2.lastKnownParentNode = null;
            nestedScrollNode.lastKnownParentNode = null;
            nestedScrollDispatcher2.calculateNestedScrollScope = new NestedScrollNode$updateDispatcherFields$1(nestedScrollNode);
            nestedScrollDispatcher2.scope = nestedScrollNode.getCoroutineScope();
        }
    }
}
