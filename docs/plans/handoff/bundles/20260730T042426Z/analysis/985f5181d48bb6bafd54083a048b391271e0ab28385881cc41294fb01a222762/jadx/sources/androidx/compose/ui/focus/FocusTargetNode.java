package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.modifier.EmptyMap;
import androidx.compose.ui.modifier.ModifierLocal;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: FocusTargetNode.kt */
/* loaded from: classes.dex */
public final class FocusTargetNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, FocusTargetModifierNode, ObserverModifierNode, ModifierLocalModifierNode {
    private FocusStateImpl committedFocusState;
    private boolean isProcessingCustomEnter;
    private boolean isProcessingCustomExit;
    private final boolean shouldAutoInvalidate;

    /* compiled from: FocusTargetNode.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalReadScope
    public /* synthetic */ Object getCurrent(ModifierLocal modifierLocal) {
        return ModifierLocalModifierNode.CC.$default$getCurrent(this, modifierLocal);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public /* synthetic */ ModifierLocalMap getProvidedValues() {
        ModifierLocalMap modifierLocalMap;
        modifierLocalMap = EmptyMap.INSTANCE;
        return modifierLocalMap;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    public FocusStateImpl getFocusState() {
        FocusTransactionManager focusTransactionManager;
        FocusStateImpl uncommittedFocusState;
        focusTransactionManager = FocusTargetNodeKt.getFocusTransactionManager(this);
        if (focusTransactionManager != null && (uncommittedFocusState = focusTransactionManager.getUncommittedFocusState(this)) != null) {
            return uncommittedFocusState;
        }
        FocusStateImpl focusStateImpl = this.committedFocusState;
        return focusStateImpl == null ? FocusStateImpl.Inactive : focusStateImpl;
    }

    public void setFocusState(FocusStateImpl focusStateImpl) {
        FocusTargetNodeKt.requireTransactionManager(this).setUncommittedFocusState(this, focusStateImpl);
    }

    public final BeyondBoundsLayout getBeyondBoundsLayoutParent() {
        return (BeyondBoundsLayout) getCurrent(androidx.compose.ui.layout.BeyondBoundsLayoutKt.getModifierLocalBeyondBoundsLayout());
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        FocusStateImpl focusState = getFocusState();
        invalidateFocus$ui_release();
        if (focusState != getFocusState()) {
            FocusEventModifierNodeKt.refreshFocusEventNodes(this);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        boolean z;
        int i = WhenMappings.$EnumSwitchMapping$0[getFocusState().ordinal()];
        if (i == 1 || i == 2) {
            DelegatableNodeKt.requireOwner(this).getFocusOwner().mo1114clearFocusI7lrPNg(true, true, false, FocusDirection.Companion.m1105getExitdhqQ8s());
            FocusTargetNodeKt.invalidateFocusTarget(this);
        } else if (i == 3) {
            FocusTransactionManager requireTransactionManager = FocusTargetNodeKt.requireTransactionManager(this);
            try {
                z = requireTransactionManager.ongoingTransaction;
                if (z) {
                    requireTransactionManager.cancelTransaction();
                }
                requireTransactionManager.beginTransaction();
                setFocusState(FocusStateImpl.Inactive);
                Unit unit = Unit.INSTANCE;
                requireTransactionManager.commitTransaction();
            } catch (Throwable th) {
                requireTransactionManager.commitTransaction();
                throw th;
            }
        }
        this.committedFocusState = null;
    }

    private static final boolean initializeFocusState$hasActiveChild(FocusTargetNode focusTargetNode) {
        int m1903constructorimpl = NodeKind.m1903constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$ui_release = focusTargetNode.getNode().getChild$ui_release();
        if (child$ui_release == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector, focusTargetNode.getNode());
        } else {
            mutableVector.add(child$ui_release);
        }
        while (mutableVector.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector.removeAt(mutableVector.getSize() - 1);
            if ((node.getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
                for (Modifier.Node node2 = node; node2 != null; node2 = node2.getChild$ui_release()) {
                    if ((node2.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                        Modifier.Node node3 = node2;
                        MutableVector mutableVector2 = null;
                        while (node3 != null) {
                            if (!(node3 instanceof FocusTargetNode)) {
                                if ((node3.getKindSet$ui_release() & m1903constructorimpl) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node delegate$ui_release = ((DelegatingNode) node3).getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
                                        if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node3 = delegate$ui_release;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (node3 != null) {
                                                    mutableVector2.add(node3);
                                                    node3 = null;
                                                }
                                                mutableVector2.add(delegate$ui_release);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                            } else {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                if (initializeFocusState$isInitialized(focusTargetNode2)) {
                                    int i2 = WhenMappings.$EnumSwitchMapping$0[focusTargetNode2.getFocusState().ordinal()];
                                    if (i2 == 1 || i2 == 2 || i2 == 3) {
                                        return true;
                                    }
                                    if (i2 == 4) {
                                        return false;
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                            }
                            node3 = DelegatableNodeKt.pop(mutableVector2);
                        }
                    }
                }
            }
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector, node);
        }
        return false;
    }

    private static final boolean initializeFocusState$isInActiveSubTree(FocusTargetNode focusTargetNode) {
        NodeChain nodes$ui_release;
        int m1903constructorimpl = NodeKind.m1903constructorimpl(1024);
        if (!focusTargetNode.getNode().isAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui_release = focusTargetNode.getNode().getParent$ui_release();
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
                while (parent$ui_release != null) {
                    if ((parent$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                        Modifier.Node node = parent$ui_release;
                        MutableVector mutableVector = null;
                        while (node != null) {
                            if (!(node instanceof FocusTargetNode)) {
                                if ((node.getKindSet$ui_release() & m1903constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node delegate$ui_release = ((DelegatingNode) node).getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
                                        if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node = delegate$ui_release;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (node != null) {
                                                    mutableVector.add(node);
                                                    node = null;
                                                }
                                                mutableVector.add(delegate$ui_release);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                            } else {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node;
                                if (initializeFocusState$isInitialized(focusTargetNode2)) {
                                    int i2 = WhenMappings.$EnumSwitchMapping$0[focusTargetNode2.getFocusState().ordinal()];
                                    if (i2 == 1 || i2 == 2) {
                                        return false;
                                    }
                                    if (i2 == 3) {
                                        return true;
                                    }
                                    if (i2 == 4) {
                                        return false;
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                            }
                            node = DelegatableNodeKt.pop(mutableVector);
                        }
                    }
                    parent$ui_release = parent$ui_release.getParent$ui_release();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            parent$ui_release = (requireLayoutNode == null || (nodes$ui_release = requireLayoutNode.getNodes$ui_release()) == null) ? null : nodes$ui_release.getTail$ui_release();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    public final FocusProperties fetchFocusProperties$ui_release() {
        NodeChain nodes$ui_release;
        FocusPropertiesImpl focusPropertiesImpl = new FocusPropertiesImpl();
        int m1903constructorimpl = NodeKind.m1903constructorimpl(2048);
        int m1903constructorimpl2 = NodeKind.m1903constructorimpl(1024);
        Modifier.Node node = getNode();
        int i = m1903constructorimpl | m1903constructorimpl2;
        if (!getNode().isAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = getNode();
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(this);
        loop0: while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & i) != 0) {
                while (node2 != null) {
                    if ((node2.getKindSet$ui_release() & i) != 0) {
                        if (node2 != node && (node2.getKindSet$ui_release() & m1903constructorimpl2) != 0) {
                            break loop0;
                        }
                        if ((node2.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                            DelegatingNode delegatingNode = node2;
                            ?? r9 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof FocusPropertiesModifierNode) {
                                    ((FocusPropertiesModifierNode) delegatingNode).applyFocusProperties(focusPropertiesImpl);
                                } else if ((delegatingNode.getKindSet$ui_release() & m1903constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node delegate$ui_release = delegatingNode.getDelegate$ui_release();
                                    int i2 = 0;
                                    delegatingNode = delegatingNode;
                                    r9 = r9;
                                    while (delegate$ui_release != null) {
                                        if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                            i2++;
                                            r9 = r9;
                                            if (i2 == 1) {
                                                delegatingNode = delegate$ui_release;
                                            } else {
                                                if (r9 == 0) {
                                                    r9 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (delegatingNode != 0) {
                                                    r9.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r9.add(delegate$ui_release);
                                            }
                                        }
                                        delegate$ui_release = delegate$ui_release.getChild$ui_release();
                                        delegatingNode = delegatingNode;
                                        r9 = r9;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.pop(r9);
                            }
                        }
                    }
                    node2 = node2.getParent$ui_release();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            node2 = (requireLayoutNode == null || (nodes$ui_release = requireLayoutNode.getNodes$ui_release()) == null) ? null : nodes$ui_release.getTail$ui_release();
        }
        return focusPropertiesImpl;
    }

    public final void commitFocusState$ui_release() {
        FocusStateImpl uncommittedFocusState = FocusTargetNodeKt.requireTransactionManager(this).getUncommittedFocusState(this);
        if (uncommittedFocusState != null) {
            this.committedFocusState = uncommittedFocusState;
        } else {
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("committing a node that was not updated in the current transaction");
            throw new KotlinNothingValueException();
        }
    }

    public final void invalidateFocus$ui_release() {
        FocusProperties focusProperties;
        if (this.committedFocusState == null) {
            initializeFocusState();
        }
        int i = WhenMappings.$EnumSwitchMapping$0[getFocusState().ordinal()];
        if (i == 1 || i == 2) {
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ObserverModifierNodeKt.observeReads(this, new Function0() { // from class: androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m1129invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m1129invoke() {
                    Ref$ObjectRef.this.element = this.fetchFocusProperties$ui_release();
                }
            });
            Object obj = ref$ObjectRef.element;
            if (obj == null) {
                Intrinsics.throwUninitializedPropertyAccessException("focusProperties");
                focusProperties = null;
            } else {
                focusProperties = (FocusProperties) obj;
            }
            if (focusProperties.getCanFocus()) {
                return;
            }
            DelegatableNodeKt.requireOwner(this).getFocusOwner().clearFocus(true);
        }
    }

    private static final boolean initializeFocusState$isInitialized(FocusTargetNode focusTargetNode) {
        return focusTargetNode.committedFocusState != null;
    }

    private final void initializeFocusState() {
        boolean z;
        if (initializeFocusState$isInitialized(this)) {
            throw new IllegalStateException("Re-initializing focus target node.");
        }
        FocusTransactionManager requireTransactionManager = FocusTargetNodeKt.requireTransactionManager(this);
        try {
            z = requireTransactionManager.ongoingTransaction;
            if (z) {
                requireTransactionManager.cancelTransaction();
            }
            requireTransactionManager.beginTransaction();
            setFocusState((initializeFocusState$isInActiveSubTree(this) && initializeFocusState$hasActiveChild(this)) ? FocusStateImpl.ActiveParent : FocusStateImpl.Inactive);
            Unit unit = Unit.INSTANCE;
            requireTransactionManager.commitTransaction();
        } catch (Throwable th) {
            requireTransactionManager.commitTransaction();
            throw th;
        }
    }
}
