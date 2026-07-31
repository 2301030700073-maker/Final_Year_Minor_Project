package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/input/nestedscroll/NestedScrollElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
final class NestedScrollElement extends ModifierNodeElement {
    public final NestedScrollConnection connection;
    public final NestedScrollDispatcher dispatcher;

    public NestedScrollElement(NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        this.connection = nestedScrollConnection;
        this.dispatcher = nestedScrollDispatcher;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new NestedScrollNode(this.connection, this.dispatcher);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof NestedScrollElement)) {
            return false;
        }
        NestedScrollElement nestedScrollElement = (NestedScrollElement) obj;
        return Intrinsics.areEqual(nestedScrollElement.connection, this.connection) && Intrinsics.areEqual(nestedScrollElement.dispatcher, this.dispatcher);
    }

    public final int hashCode() {
        int hashCode = this.connection.hashCode() * 31;
        NestedScrollDispatcher nestedScrollDispatcher = this.dispatcher;
        return hashCode + (nestedScrollDispatcher != null ? nestedScrollDispatcher.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        NestedScrollNode nestedScrollNode = (NestedScrollNode) node;
        nestedScrollNode.connection = this.connection;
        NestedScrollDispatcher nestedScrollDispatcher = nestedScrollNode.resolvedDispatcher;
        if (nestedScrollDispatcher.nestedScrollNode == nestedScrollNode) {
            nestedScrollDispatcher.nestedScrollNode = null;
        }
        NestedScrollDispatcher nestedScrollDispatcher2 = this.dispatcher;
        if (nestedScrollDispatcher2 == null) {
            nestedScrollDispatcher = new NestedScrollDispatcher();
            nestedScrollNode.resolvedDispatcher = nestedScrollDispatcher;
        } else if (nestedScrollDispatcher2 != nestedScrollDispatcher) {
            nestedScrollNode.resolvedDispatcher = nestedScrollDispatcher2;
            nestedScrollDispatcher = nestedScrollDispatcher2;
        }
        if (nestedScrollNode.isAttached) {
            nestedScrollDispatcher.nestedScrollNode = nestedScrollNode;
            nestedScrollDispatcher.lastKnownParentNode = null;
            nestedScrollNode.lastKnownParentNode = null;
            nestedScrollDispatcher.calculateNestedScrollScope = new LayoutNode$_foldedChildren$1(5, nestedScrollNode);
            nestedScrollDispatcher.scope = nestedScrollNode.getCoroutineScope();
        }
    }
}
