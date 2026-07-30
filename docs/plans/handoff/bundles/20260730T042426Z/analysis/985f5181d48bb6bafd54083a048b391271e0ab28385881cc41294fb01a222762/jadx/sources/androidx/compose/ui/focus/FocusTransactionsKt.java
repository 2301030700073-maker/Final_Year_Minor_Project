package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusTransactions.kt */
/* loaded from: classes.dex */
public abstract class FocusTransactionsKt {

    /* compiled from: FocusTransactions.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final boolean requestFocus(FocusTargetNode focusTargetNode) {
        Boolean m1134requestFocusMxy_nc0 = m1134requestFocusMxy_nc0(focusTargetNode, FocusDirection.Companion.m1104getEnterdhqQ8s());
        if (m1134requestFocusMxy_nc0 != null) {
            return m1134requestFocusMxy_nc0.booleanValue();
        }
        return false;
    }

    /* renamed from: requestFocus-Mxy_nc0, reason: not valid java name */
    public static final Boolean m1134requestFocusMxy_nc0(final FocusTargetNode focusTargetNode, int i) {
        boolean z;
        MutableVector mutableVector;
        Boolean valueOf;
        FocusTransactionManager requireTransactionManager = FocusTargetNodeKt.requireTransactionManager(focusTargetNode);
        Function0 function0 = new Function0() { // from class: androidx.compose.ui.focus.FocusTransactionsKt$requestFocus$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m1136invoke();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m1136invoke() {
                if (FocusTargetNode.this.getNode().isAttached()) {
                    FocusEventModifierNodeKt.refreshFocusEventNodes(FocusTargetNode.this);
                }
            }
        };
        try {
            z = requireTransactionManager.ongoingTransaction;
            if (z) {
                requireTransactionManager.cancelTransaction();
            }
            requireTransactionManager.beginTransaction();
            mutableVector = requireTransactionManager.cancellationListener;
            mutableVector.add(function0);
            int i2 = WhenMappings.$EnumSwitchMapping$0[m1133performCustomRequestFocusMxy_nc0(focusTargetNode, i).ordinal()];
            if (i2 == 1) {
                valueOf = Boolean.valueOf(performRequestFocus(focusTargetNode));
            } else if (i2 != 2) {
                if (i2 != 3 && i2 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                valueOf = null;
            } else {
                valueOf = Boolean.TRUE;
            }
            return valueOf;
        } finally {
            requireTransactionManager.commitTransaction();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00d7, code lost:
    
        if (grantFocus(r11) != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00f4, code lost:
    
        if (grantFocus(r11) != false) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean performRequestFocus(androidx.compose.ui.focus.FocusTargetNode r11) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusTransactionsKt.performRequestFocus(androidx.compose.ui.focus.FocusTargetNode):boolean");
    }

    private static final boolean requestFocusForChild(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2) {
        Modifier.Node node;
        Modifier.Node node2;
        NodeChain nodes$ui_release;
        NodeChain nodes$ui_release2;
        int m1903constructorimpl = NodeKind.m1903constructorimpl(1024);
        if (!focusTargetNode2.getNode().isAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent$ui_release = focusTargetNode2.getNode().getParent$ui_release();
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode2);
        loop0: while (true) {
            node = null;
            if (requireLayoutNode == null) {
                node2 = null;
                break;
            }
            if ((requireLayoutNode.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
                while (parent$ui_release != null) {
                    if ((parent$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                        node2 = parent$ui_release;
                        MutableVector mutableVector = null;
                        while (node2 != null) {
                            if (node2 instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((node2.getKindSet$ui_release() & m1903constructorimpl) != 0 && (node2 instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate$ui_release = ((DelegatingNode) node2).getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
                                    if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            node2 = delegate$ui_release;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node2 != null) {
                                                mutableVector.add(node2);
                                                node2 = null;
                                            }
                                            mutableVector.add(delegate$ui_release);
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            node2 = DelegatableNodeKt.pop(mutableVector);
                        }
                    }
                    parent$ui_release = parent$ui_release.getParent$ui_release();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            parent$ui_release = (requireLayoutNode == null || (nodes$ui_release2 = requireLayoutNode.getNodes$ui_release()) == null) ? null : nodes$ui_release2.getTail$ui_release();
        }
        if (!Intrinsics.areEqual(node2, focusTargetNode)) {
            throw new IllegalStateException("Non child node cannot request focus.");
        }
        int i2 = WhenMappings.$EnumSwitchMapping$1[focusTargetNode.getFocusState().ordinal()];
        if (i2 == 1) {
            boolean grantFocus = grantFocus(focusTargetNode2);
            if (!grantFocus) {
                return grantFocus;
            }
            focusTargetNode.setFocusState(FocusStateImpl.ActiveParent);
            return grantFocus;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                requireActiveChild(focusTargetNode);
                if (clearChildFocus$default(focusTargetNode, false, false, 3, null) && grantFocus(focusTargetNode2)) {
                    return true;
                }
            } else {
                if (i2 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                int m1903constructorimpl2 = NodeKind.m1903constructorimpl(1024);
                if (!focusTargetNode.getNode().isAttached()) {
                    throw new IllegalStateException("visitAncestors called on an unattached node");
                }
                Modifier.Node parent$ui_release2 = focusTargetNode.getNode().getParent$ui_release();
                LayoutNode requireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
                loop4: while (true) {
                    if (requireLayoutNode2 == null) {
                        break;
                    }
                    if ((requireLayoutNode2.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl2) != 0) {
                        while (parent$ui_release2 != null) {
                            if ((parent$ui_release2.getKindSet$ui_release() & m1903constructorimpl2) != 0) {
                                Modifier.Node node3 = parent$ui_release2;
                                MutableVector mutableVector2 = null;
                                while (node3 != null) {
                                    if (node3 instanceof FocusTargetNode) {
                                        node = node3;
                                        break loop4;
                                    }
                                    if ((node3.getKindSet$ui_release() & m1903constructorimpl2) != 0 && (node3 instanceof DelegatingNode)) {
                                        int i3 = 0;
                                        for (Modifier.Node delegate$ui_release2 = ((DelegatingNode) node3).getDelegate$ui_release(); delegate$ui_release2 != null; delegate$ui_release2 = delegate$ui_release2.getChild$ui_release()) {
                                            if ((delegate$ui_release2.getKindSet$ui_release() & m1903constructorimpl2) != 0) {
                                                i3++;
                                                if (i3 == 1) {
                                                    node3 = delegate$ui_release2;
                                                } else {
                                                    if (mutableVector2 == null) {
                                                        mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                    }
                                                    if (node3 != null) {
                                                        mutableVector2.add(node3);
                                                        node3 = null;
                                                    }
                                                    mutableVector2.add(delegate$ui_release2);
                                                }
                                            }
                                        }
                                        if (i3 == 1) {
                                        }
                                    }
                                    node3 = DelegatableNodeKt.pop(mutableVector2);
                                }
                            }
                            parent$ui_release2 = parent$ui_release2.getParent$ui_release();
                        }
                    }
                    requireLayoutNode2 = requireLayoutNode2.getParent$ui_release();
                    parent$ui_release2 = (requireLayoutNode2 == null || (nodes$ui_release = requireLayoutNode2.getNodes$ui_release()) == null) ? null : nodes$ui_release.getTail$ui_release();
                }
                FocusTargetNode focusTargetNode3 = (FocusTargetNode) node;
                if (focusTargetNode3 == null && requestFocusForOwner(focusTargetNode)) {
                    boolean grantFocus2 = grantFocus(focusTargetNode2);
                    if (!grantFocus2) {
                        return grantFocus2;
                    }
                    focusTargetNode.setFocusState(FocusStateImpl.ActiveParent);
                    return grantFocus2;
                }
                if (focusTargetNode3 != null && requestFocusForChild(focusTargetNode3, focusTargetNode)) {
                    boolean requestFocusForChild = requestFocusForChild(focusTargetNode, focusTargetNode2);
                    if (focusTargetNode.getFocusState() != FocusStateImpl.ActiveParent) {
                        throw new IllegalStateException("Deactivated node is focused");
                    }
                    if (!requestFocusForChild) {
                        return requestFocusForChild;
                    }
                    FocusEventModifierNodeKt.refreshFocusEventNodes(focusTargetNode3);
                    return requestFocusForChild;
                }
            }
        }
        return false;
    }

    public static final boolean clearFocus(FocusTargetNode focusTargetNode, boolean z, boolean z2) {
        int i = WhenMappings.$EnumSwitchMapping$1[focusTargetNode.getFocusState().ordinal()];
        if (i == 1) {
            focusTargetNode.setFocusState(FocusStateImpl.Inactive);
            if (z2) {
                FocusEventModifierNodeKt.refreshFocusEventNodes(focusTargetNode);
            }
        } else {
            if (i == 2) {
                if (!z) {
                    return z;
                }
                focusTargetNode.setFocusState(FocusStateImpl.Inactive);
                if (!z2) {
                    return z;
                }
                FocusEventModifierNodeKt.refreshFocusEventNodes(focusTargetNode);
                return z;
            }
            if (i != 3) {
                if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                if (!clearChildFocus(focusTargetNode, z, z2)) {
                    return false;
                }
                focusTargetNode.setFocusState(FocusStateImpl.Inactive);
                if (z2) {
                    FocusEventModifierNodeKt.refreshFocusEventNodes(focusTargetNode);
                }
            }
        }
        return true;
    }

    /* renamed from: performCustomEnter-Mxy_nc0, reason: not valid java name */
    private static final CustomDestinationResult m1131performCustomEnterMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        boolean z;
        z = focusTargetNode.isProcessingCustomEnter;
        if (!z) {
            focusTargetNode.isProcessingCustomEnter = true;
            try {
                FocusRequester focusRequester = (FocusRequester) focusTargetNode.fetchFocusProperties$ui_release().getEnter().invoke(FocusDirection.m1096boximpl(i));
                FocusRequester.Companion companion = FocusRequester.Companion;
                if (focusRequester != companion.getDefault()) {
                    if (focusRequester == companion.getCancel()) {
                        return CustomDestinationResult.Cancelled;
                    }
                    return focusRequester.focus$ui_release() ? CustomDestinationResult.Redirected : CustomDestinationResult.RedirectCancelled;
                }
            } finally {
                focusTargetNode.isProcessingCustomEnter = false;
            }
        }
        return CustomDestinationResult.None;
    }

    /* renamed from: performCustomExit-Mxy_nc0, reason: not valid java name */
    private static final CustomDestinationResult m1132performCustomExitMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        boolean z;
        z = focusTargetNode.isProcessingCustomExit;
        if (!z) {
            focusTargetNode.isProcessingCustomExit = true;
            try {
                FocusRequester focusRequester = (FocusRequester) focusTargetNode.fetchFocusProperties$ui_release().getExit().invoke(FocusDirection.m1096boximpl(i));
                FocusRequester.Companion companion = FocusRequester.Companion;
                if (focusRequester != companion.getDefault()) {
                    if (focusRequester == companion.getCancel()) {
                        return CustomDestinationResult.Cancelled;
                    }
                    return focusRequester.focus$ui_release() ? CustomDestinationResult.Redirected : CustomDestinationResult.RedirectCancelled;
                }
            } finally {
                focusTargetNode.isProcessingCustomExit = false;
            }
        }
        return CustomDestinationResult.None;
    }

    private static final boolean grantFocus(final FocusTargetNode focusTargetNode) {
        ObserverModifierNodeKt.observeReads(focusTargetNode, new Function0() { // from class: androidx.compose.ui.focus.FocusTransactionsKt$grantFocus$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m1135invoke();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m1135invoke() {
                FocusTargetNode.this.fetchFocusProperties$ui_release();
            }
        });
        int i = WhenMappings.$EnumSwitchMapping$1[focusTargetNode.getFocusState().ordinal()];
        if (i != 3 && i != 4) {
            return true;
        }
        focusTargetNode.setFocusState(FocusStateImpl.Active);
        return true;
    }

    static /* synthetic */ boolean clearChildFocus$default(FocusTargetNode focusTargetNode, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        return clearChildFocus(focusTargetNode, z, z2);
    }

    private static final boolean clearChildFocus(FocusTargetNode focusTargetNode, boolean z, boolean z2) {
        FocusTargetNode activeChild = FocusTraversalKt.getActiveChild(focusTargetNode);
        if (activeChild != null) {
            return clearFocus(activeChild, z, z2);
        }
        return true;
    }

    private static final boolean requestFocusForOwner(FocusTargetNode focusTargetNode) {
        return DelegatableNodeKt.requireOwner(focusTargetNode).getFocusOwner().mo1118requestFocusForOwner7o62pno(null, null);
    }

    private static final FocusTargetNode requireActiveChild(FocusTargetNode focusTargetNode) {
        FocusTargetNode activeChild = FocusTraversalKt.getActiveChild(focusTargetNode);
        if (activeChild != null) {
            return activeChild;
        }
        throw new IllegalArgumentException("ActiveParent with no focused child");
    }

    /* renamed from: performCustomRequestFocus-Mxy_nc0, reason: not valid java name */
    public static final CustomDestinationResult m1133performCustomRequestFocusMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        Modifier.Node node;
        NodeChain nodes$ui_release;
        int i2 = WhenMappings.$EnumSwitchMapping$1[focusTargetNode.getFocusState().ordinal()];
        if (i2 == 1 || i2 == 2) {
            return CustomDestinationResult.None;
        }
        if (i2 == 3) {
            return m1130performCustomClearFocusMxy_nc0(requireActiveChild(focusTargetNode), i);
        }
        if (i2 == 4) {
            int m1903constructorimpl = NodeKind.m1903constructorimpl(1024);
            if (!focusTargetNode.getNode().isAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node parent$ui_release = focusTargetNode.getNode().getParent$ui_release();
            LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
            loop0: while (true) {
                if (requireLayoutNode == null) {
                    node = null;
                    break;
                }
                if ((requireLayoutNode.getNodes$ui_release().getHead$ui_release().getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
                    while (parent$ui_release != null) {
                        if ((parent$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                            node = parent$ui_release;
                            MutableVector mutableVector = null;
                            while (node != null) {
                                if (node instanceof FocusTargetNode) {
                                    break loop0;
                                }
                                if ((node.getKindSet$ui_release() & m1903constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node delegate$ui_release = ((DelegatingNode) node).getDelegate$ui_release(); delegate$ui_release != null; delegate$ui_release = delegate$ui_release.getChild$ui_release()) {
                                        if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                            i3++;
                                            if (i3 == 1) {
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
                                    if (i3 == 1) {
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
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) node;
            if (focusTargetNode2 == null) {
                return CustomDestinationResult.None;
            }
            int i4 = WhenMappings.$EnumSwitchMapping$1[focusTargetNode2.getFocusState().ordinal()];
            if (i4 == 1) {
                return m1131performCustomEnterMxy_nc0(focusTargetNode2, i);
            }
            if (i4 == 2) {
                return CustomDestinationResult.Cancelled;
            }
            if (i4 == 3) {
                return m1133performCustomRequestFocusMxy_nc0(focusTargetNode2, i);
            }
            if (i4 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            CustomDestinationResult m1133performCustomRequestFocusMxy_nc0 = m1133performCustomRequestFocusMxy_nc0(focusTargetNode2, i);
            CustomDestinationResult customDestinationResult = m1133performCustomRequestFocusMxy_nc0 != CustomDestinationResult.None ? m1133performCustomRequestFocusMxy_nc0 : null;
            return customDestinationResult == null ? m1131performCustomEnterMxy_nc0(focusTargetNode2, i) : customDestinationResult;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: performCustomClearFocus-Mxy_nc0, reason: not valid java name */
    public static final CustomDestinationResult m1130performCustomClearFocusMxy_nc0(FocusTargetNode focusTargetNode, int i) {
        int i2 = WhenMappings.$EnumSwitchMapping$1[focusTargetNode.getFocusState().ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return CustomDestinationResult.Cancelled;
            }
            if (i2 == 3) {
                CustomDestinationResult m1130performCustomClearFocusMxy_nc0 = m1130performCustomClearFocusMxy_nc0(requireActiveChild(focusTargetNode), i);
                if (m1130performCustomClearFocusMxy_nc0 == CustomDestinationResult.None) {
                    m1130performCustomClearFocusMxy_nc0 = null;
                }
                return m1130performCustomClearFocusMxy_nc0 == null ? m1132performCustomExitMxy_nc0(focusTargetNode, i) : m1130performCustomClearFocusMxy_nc0;
            }
            if (i2 != 4) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return CustomDestinationResult.None;
    }
}
