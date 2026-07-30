package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DelegatingNode.kt */
/* loaded from: classes.dex */
public abstract class DelegatingNode extends Modifier.Node {
    private Modifier.Node delegate;
    private final int selfKindSet = NodeKindKt.calculateNodeKindSetFrom(this);

    public final int getSelfKindSet$ui_release() {
        return this.selfKindSet;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void updateCoordinator$ui_release(NodeCoordinator nodeCoordinator) {
        super.updateCoordinator$ui_release(nodeCoordinator);
        for (Modifier.Node delegate$ui_release = getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
            delegate$ui_release.updateCoordinator$ui_release(nodeCoordinator);
        }
    }

    public final Modifier.Node getDelegate$ui_release() {
        return this.delegate;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void setAsDelegateTo$ui_release(Modifier.Node node) {
        super.setAsDelegateTo$ui_release(node);
        for (Modifier.Node delegate$ui_release = getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
            delegate$ui_release.setAsDelegateTo$ui_release(node);
        }
    }

    protected final DelegatableNode delegate(DelegatableNode delegatableNode) {
        Modifier.Node node = delegatableNode.getNode();
        if (node != delegatableNode) {
            Modifier.Node node2 = delegatableNode instanceof Modifier.Node ? (Modifier.Node) delegatableNode : null;
            Modifier.Node parent$ui_release = node2 != null ? node2.getParent$ui_release() : null;
            if (node == getNode() && Intrinsics.areEqual(parent$ui_release, this)) {
                return delegatableNode;
            }
            throw new IllegalStateException("Cannot delegate to an already delegated node");
        }
        if (node.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("Cannot delegate to an already attached node");
        }
        node.setAsDelegateTo$ui_release(getNode());
        int kindSet$ui_release = getKindSet$ui_release();
        int calculateNodeKindSetFromIncludingDelegates = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(node);
        node.setKindSet$ui_release(calculateNodeKindSetFromIncludingDelegates);
        validateDelegateKindSet(calculateNodeKindSetFromIncludingDelegates, node);
        node.setChild$ui_release(this.delegate);
        this.delegate = node;
        node.setParent$ui_release(this);
        updateNodeKindSet(getKindSet$ui_release() | calculateNodeKindSetFromIncludingDelegates, false);
        if (isAttached()) {
            if ((calculateNodeKindSetFromIncludingDelegates & NodeKind.m1903constructorimpl(2)) != 0 && (kindSet$ui_release & NodeKind.m1903constructorimpl(2)) == 0) {
                NodeChain nodes$ui_release = DelegatableNodeKt.requireLayoutNode(this).getNodes$ui_release();
                getNode().updateCoordinator$ui_release(null);
                nodes$ui_release.syncCoordinators();
            } else {
                updateCoordinator$ui_release(getCoordinator$ui_release());
            }
            node.markAsAttached$ui_release();
            node.runAttachLifecycle$ui_release();
            NodeKindKt.autoInvalidateInsertedNode(node);
        }
        return delegatableNode;
    }

    protected final void undelegate(DelegatableNode delegatableNode) {
        Modifier.Node node = null;
        for (Modifier.Node node2 = this.delegate; node2 != null; node2 = node2.getChild$ui_release()) {
            if (node2 == delegatableNode) {
                if (node2.isAttached()) {
                    NodeKindKt.autoInvalidateRemovedNode(node2);
                    node2.runDetachLifecycle$ui_release();
                    node2.markAsDetached$ui_release();
                }
                node2.setAsDelegateTo$ui_release(node2);
                node2.setAggregateChildKindSet$ui_release(0);
                if (node == null) {
                    this.delegate = node2.getChild$ui_release();
                } else {
                    node.setChild$ui_release(node2.getChild$ui_release());
                }
                node2.setChild$ui_release(null);
                node2.setParent$ui_release(null);
                int kindSet$ui_release = getKindSet$ui_release();
                int calculateNodeKindSetFromIncludingDelegates = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(this);
                updateNodeKindSet(calculateNodeKindSetFromIncludingDelegates, true);
                if (isAttached() && (kindSet$ui_release & NodeKind.m1903constructorimpl(2)) != 0 && (NodeKind.m1903constructorimpl(2) & calculateNodeKindSetFromIncludingDelegates) == 0) {
                    NodeChain nodes$ui_release = DelegatableNodeKt.requireLayoutNode(this).getNodes$ui_release();
                    getNode().updateCoordinator$ui_release(null);
                    nodes$ui_release.syncCoordinators();
                    return;
                }
                return;
            }
            node = node2;
        }
        throw new IllegalStateException(("Could not find delegate: " + delegatableNode).toString());
    }

    private final void validateDelegateKindSet(int i, Modifier.Node node) {
        int kindSet$ui_release = getKindSet$ui_release();
        if ((i & NodeKind.m1903constructorimpl(2)) == 0 || (NodeKind.m1903constructorimpl(2) & kindSet$ui_release) == 0 || (this instanceof LayoutModifierNode)) {
            return;
        }
        InlineClassHelperKt.throwIllegalStateException("Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: " + this + "\nDelegate Node: " + node);
    }

    private final void updateNodeKindSet(int i, boolean z) {
        Modifier.Node child$ui_release;
        int kindSet$ui_release = getKindSet$ui_release();
        setKindSet$ui_release(i);
        if (kindSet$ui_release != i) {
            if (DelegatableNodeKt.isDelegationRoot(this)) {
                setAggregateChildKindSet$ui_release(i);
            }
            if (isAttached()) {
                Modifier.Node node = getNode();
                Modifier.Node node2 = this;
                while (node2 != null) {
                    i |= node2.getKindSet$ui_release();
                    node2.setKindSet$ui_release(i);
                    if (node2 == node) {
                        break;
                    } else {
                        node2 = node2.getParent$ui_release();
                    }
                }
                if (z && node2 == node) {
                    i = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(node);
                    node.setKindSet$ui_release(i);
                }
                int aggregateChildKindSet$ui_release = i | ((node2 == null || (child$ui_release = node2.getChild$ui_release()) == null) ? 0 : child$ui_release.getAggregateChildKindSet$ui_release());
                while (node2 != null) {
                    aggregateChildKindSet$ui_release |= node2.getKindSet$ui_release();
                    node2.setAggregateChildKindSet$ui_release(aggregateChildKindSet$ui_release);
                    node2 = node2.getParent$ui_release();
                }
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void markAsDetached$ui_release() {
        for (Modifier.Node delegate$ui_release = getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
            delegate$ui_release.markAsDetached$ui_release();
        }
        super.markAsDetached$ui_release();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void runAttachLifecycle$ui_release() {
        for (Modifier.Node delegate$ui_release = getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
            delegate$ui_release.runAttachLifecycle$ui_release();
        }
        super.runAttachLifecycle$ui_release();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void markAsAttached$ui_release() {
        super.markAsAttached$ui_release();
        for (Modifier.Node delegate$ui_release = getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
            delegate$ui_release.updateCoordinator$ui_release(getCoordinator$ui_release());
            if (!delegate$ui_release.isAttached()) {
                delegate$ui_release.markAsAttached$ui_release();
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void runDetachLifecycle$ui_release() {
        super.runDetachLifecycle$ui_release();
        for (Modifier.Node delegate$ui_release = getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
            delegate$ui_release.runDetachLifecycle$ui_release();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void reset$ui_release() {
        super.reset$ui_release();
        for (Modifier.Node delegate$ui_release = getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
            delegate$ui_release.reset$ui_release();
        }
    }
}
