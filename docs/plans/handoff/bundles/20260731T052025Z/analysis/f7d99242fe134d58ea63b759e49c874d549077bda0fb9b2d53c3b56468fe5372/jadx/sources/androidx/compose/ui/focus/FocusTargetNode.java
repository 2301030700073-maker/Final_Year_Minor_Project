package androidx.compose.ui.focus;

import android.os.Trace;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.InputModeManagerImpl;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.EmptyMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.CompositionLocalsKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FocusTargetNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutAwareModifierNode, ObserverModifierNode, ModifierLocalModifierNode {
    public final int focusability;
    public final boolean isInteropViewHost;
    public boolean isProcessingCustomEnter;
    public boolean isProcessingCustomExit;
    public final Function2 onFocusChange;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FocusTargetElement extends ModifierNodeElement {
        public static final FocusTargetElement INSTANCE = new FocusTargetElement();

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node create() {
            return new FocusTargetNode(0, null, 15);
        }

        public final boolean equals(Object obj) {
            return obj == this;
        }

        public final int hashCode() {
            return 1739042953;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final /* bridge */ /* synthetic */ void update(Modifier.Node node) {
        }
    }

    public FocusTargetNode(int i, Function2 function2, int i2) {
        i = (i2 & 1) != 0 ? 1 : i;
        boolean z = (i2 & 2) == 0;
        function2 = (i2 & 4) != 0 ? null : function2;
        this.isInteropViewHost = z;
        this.onFocusChange = function2;
        this.focusability = i;
    }

    /* renamed from: assignFocus-3ESFkO8, reason: not valid java name */
    public final boolean m419assignFocus3ESFkO8(int i) {
        int ordinal = FocusTraversalKt.m429performCustomRequestFocusMxy_nc0(this, i).ordinal();
        if (ordinal == 0) {
            return FocusTraversalKt.performRequestFocus(this);
        }
        if (ordinal == 1) {
            return false;
        }
        if (ordinal == 2) {
            return true;
        }
        if (ordinal == 3) {
            return false;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [androidx.compose.runtime.collection.MutableVector] */
    public final void dispatchFocusCallbacks$ui(FocusStateImpl focusStateImpl, FocusStateImpl focusStateImpl2) {
        NodeChain nodeChain;
        Function2 function2;
        FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner();
        FocusTargetNode activeFocusTargetNode = focusOwnerImpl.getActiveFocusTargetNode();
        if (!focusStateImpl.equals(focusStateImpl2) && (function2 = this.onFocusChange) != null) {
            function2.invoke(focusStateImpl, focusStateImpl2);
        }
        Modifier.Node node = this.node;
        if (!node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = this.node;
        LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(this);
        while (requireLayoutNode != null) {
            if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 5120) != 0) {
                while (node2 != null) {
                    int i = node2.kindSet;
                    if ((i & 5120) != 0) {
                        if (node2 != node && (i & 1024) != 0) {
                            return;
                        }
                        if ((i & 4096) != 0) {
                            DelegatingNode delegatingNode = node2;
                            ?? r5 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof FocusEventModifierNode) {
                                    FocusEventModifierNode focusEventModifierNode = (FocusEventModifierNode) delegatingNode;
                                    if (activeFocusTargetNode == focusOwnerImpl.getActiveFocusTargetNode()) {
                                        focusEventModifierNode.onFocusEvent(focusStateImpl2);
                                    }
                                } else if ((delegatingNode.kindSet & 4096) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node3 = delegatingNode.delegate;
                                    int i2 = 0;
                                    delegatingNode = delegatingNode;
                                    r5 = r5;
                                    while (node3 != null) {
                                        if ((node3.kindSet & 4096) != 0) {
                                            i2++;
                                            r5 = r5;
                                            if (i2 == 1) {
                                                delegatingNode = node3;
                                            } else {
                                                if (r5 == 0) {
                                                    r5 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r5.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r5.add(node3);
                                            }
                                        }
                                        node3 = node3.child;
                                        delegatingNode = delegatingNode;
                                        r5 = r5;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                delegatingNode = HitTestResultKt.access$pop(r5);
                            }
                        }
                    }
                    node2 = node2.parent;
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui();
            node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [androidx.compose.runtime.collection.MutableVector] */
    public final FocusPropertiesImpl fetchFocusProperties$ui() {
        boolean z;
        NodeChain nodeChain;
        FocusPropertiesImpl focusPropertiesImpl = new FocusPropertiesImpl();
        focusPropertiesImpl.canFocus = true;
        FocusRequester focusRequester = FocusRequester.Default;
        focusPropertiesImpl.next = focusRequester;
        focusPropertiesImpl.previous = focusRequester;
        focusPropertiesImpl.up = focusRequester;
        focusPropertiesImpl.down = focusRequester;
        focusPropertiesImpl.left = focusRequester;
        focusPropertiesImpl.right = focusRequester;
        focusPropertiesImpl.start = focusRequester;
        focusPropertiesImpl.end = focusRequester;
        focusPropertiesImpl.onEnter = FocusPropertiesImpl$onExit$1.INSTANCE$1;
        focusPropertiesImpl.onExit = FocusPropertiesImpl$onExit$1.INSTANCE;
        focusPropertiesImpl.focusRect = FocusProperties.Companion.UnsetFocusRect;
        int i = this.focusability;
        if (i == 1) {
            z = true;
        } else if (i == 0) {
            z = !(((InputMode) ((InputModeManagerImpl) ((InputModeManager) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalInputModeManager))).inputMode$delegate.getValue()).value == 1);
        } else {
            if (i != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unknown Focusability");
                return null;
            }
            z = false;
        }
        focusPropertiesImpl.canFocus = z;
        Modifier.Node node = this.node;
        if (!node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = this.node;
        LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(this);
        loop0: while (requireLayoutNode != null) {
            if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 3072) != 0) {
                while (node2 != null) {
                    int i2 = node2.kindSet;
                    if ((i2 & 3072) != 0) {
                        if (node2 != node && (i2 & 1024) != 0) {
                            break loop0;
                        }
                        if ((i2 & 2048) != 0) {
                            ?? r7 = 0;
                            DelegatingNode delegatingNode = node2;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof FocusPropertiesModifierNode) {
                                    ((FocusPropertiesModifierNode) delegatingNode).applyFocusProperties(focusPropertiesImpl);
                                } else if ((delegatingNode.kindSet & 2048) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node3 = delegatingNode.delegate;
                                    int i3 = 0;
                                    delegatingNode = delegatingNode;
                                    r7 = r7;
                                    while (node3 != null) {
                                        if ((node3.kindSet & 2048) != 0) {
                                            i3++;
                                            r7 = r7;
                                            if (i3 == 1) {
                                                delegatingNode = node3;
                                            } else {
                                                if (r7 == 0) {
                                                    r7 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r7.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r7.add(node3);
                                            }
                                        }
                                        node3 = node3.child;
                                        delegatingNode = delegatingNode;
                                        r7 = r7;
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                delegatingNode = HitTestResultKt.access$pop(r7);
                            }
                        }
                    }
                    node2 = node2.parent;
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui();
            node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
        }
        return focusPropertiesImpl;
    }

    public final Rect fetchFocusRect$ui(LayoutCoordinates layoutCoordinates) {
        Rect rect = fetchFocusProperties$ui().focusRect;
        return rect != FocusProperties.Companion.UnsetFocusRect ? layoutCoordinates == null ? rect : rect.m448translatek4lQ0M(layoutCoordinates.mo578localPositionOfS_NoaFU(HitTestResultKt.requireLayoutCoordinates(this), 0L)) : layoutCoordinates != null ? layoutCoordinates.localBoundingBoxOf(HitTestResultKt.requireLayoutCoordinates(this), false) : Util.m1090Recttz77jQw(0L, Validate.m1072toSizeozmzZPI(HitTestResultKt.requireLayoutCoordinates(this).measuredSize));
    }

    public final LazyLayoutBeyondBoundsProviderModifierNode getBeyondBoundsLayoutParent() {
        NodeChain nodeChain;
        Object obj;
        if (!this.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node = this.node.parent;
        LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(this);
        while (true) {
            if (requireLayoutNode == null) {
                break;
            }
            if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 8388640) != 0) {
                while (node != null) {
                    int i = node.kindSet;
                    if ((i & 8388640) != 0) {
                        if ((8388608 & i) != 0) {
                            if (!(node instanceof LazyLayoutBeyondBoundsProviderModifierNode)) {
                                if (node instanceof DelegatingNode) {
                                    node = null;
                                    for (Modifier.Node node2 = ((DelegatingNode) node).delegate; node2 != null; node2 = node2.child) {
                                        if (node2 instanceof LazyLayoutBeyondBoundsProviderModifierNode) {
                                            node = node2;
                                        }
                                    }
                                } else {
                                    node = null;
                                }
                            }
                            LazyLayoutBeyondBoundsProviderModifierNode lazyLayoutBeyondBoundsProviderModifierNode = (LazyLayoutBeyondBoundsProviderModifierNode) node;
                            if (lazyLayoutBeyondBoundsProviderModifierNode != null) {
                                return lazyLayoutBeyondBoundsProviderModifierNode;
                            }
                        } else if ((i & 32) != 0) {
                            if (node instanceof ModifierLocalModifierNode) {
                                obj = node;
                            } else if (node instanceof DelegatingNode) {
                                obj = null;
                                for (Modifier.Node node3 = ((DelegatingNode) node).delegate; node3 != null; node3 = node3.child) {
                                    if (node3 instanceof ModifierLocalModifierNode) {
                                        obj = node3;
                                    }
                                }
                            } else {
                                obj = null;
                            }
                            ModifierLocalModifierNode modifierLocalModifierNode = (ModifierLocalModifierNode) obj;
                            if (modifierLocalModifierNode != null) {
                                modifierLocalModifierNode.getProvidedValues();
                            }
                        }
                    }
                    node = node.parent;
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui();
            node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
        }
        return null;
    }

    public final FocusStateImpl getFocusState() {
        NodeChain nodeChain;
        boolean z = this.isAttached;
        FocusStateImpl focusStateImpl = FocusStateImpl.Inactive;
        if (!z) {
            return focusStateImpl;
        }
        FocusTargetNode activeFocusTargetNode = ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner()).getActiveFocusTargetNode();
        if (activeFocusTargetNode == null) {
            return focusStateImpl;
        }
        if (this == activeFocusTargetNode) {
            return FocusStateImpl.Active;
        }
        if (activeFocusTargetNode.isAttached) {
            if (!activeFocusTargetNode.node.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node = activeFocusTargetNode.node.parent;
            LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(activeFocusTargetNode);
            while (requireLayoutNode != null) {
                if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 1024) != 0) {
                    while (node != null) {
                        if ((node.kindSet & 1024) != 0) {
                            Modifier.Node node2 = node;
                            MutableVector mutableVector = null;
                            while (node2 != null) {
                                if (node2 instanceof FocusTargetNode) {
                                    if (this == ((FocusTargetNode) node2)) {
                                        return FocusStateImpl.ActiveParent;
                                    }
                                } else if ((node2.kindSet & 1024) != 0 && (node2 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                                        if ((node3.kindSet & 1024) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node2 = node3;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node2 != null) {
                                                    mutableVector.add(node2);
                                                    node2 = null;
                                                }
                                                mutableVector.add(node3);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                node2 = HitTestResultKt.access$pop(mutableVector);
                            }
                        }
                        node = node.parent;
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui();
                node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
            }
        }
        return focusStateImpl;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public final /* synthetic */ EmptyMap getProvidedValues() {
        return EmptyMap.INSTANCE;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    public final void invalidateFocus$ui() {
        int ordinal = getFocusState().ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return;
            }
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return;
                }
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        HitTestResultKt.observeReads(this, new FocusTargetNode$invalidateFocus$1(0, ref$ObjectRef, this));
        Object obj = ref$ObjectRef.element;
        if (obj == null) {
            Intrinsics.throwUninitializedPropertyAccessException("focusProperties");
            throw null;
        }
        if (((FocusProperties) obj).getCanFocus()) {
            return;
        }
        ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner()).m412clearFocusI7lrPNg(8, true, true);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        int ordinal = getFocusState().ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                FocusOwner focusOwner = ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner();
                FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this);
                if (findActiveFocusNode == null || !findActiveFocusNode.isInteropViewHost) {
                    return;
                }
                FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) focusOwner;
                focusOwnerImpl.platformFocusOwner.m651requestOwnerFocus7o62pno();
                focusOwnerImpl.focusInvalidationManager.scheduleInvalidation$2();
                return;
            }
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return;
                }
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        FocusOwnerImpl focusOwnerImpl2 = (FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner();
        focusOwnerImpl2.m412clearFocusI7lrPNg(8, true, false);
        if (this.isInteropViewHost) {
            focusOwnerImpl2.platformFocusOwner.m651requestOwnerFocus7o62pno();
        }
        focusOwnerImpl2.focusInvalidationManager.scheduleInvalidation$2();
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        invalidateFocus$ui();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onReset() {
        if (getFocusState().isFocused()) {
            ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner()).m412clearFocusI7lrPNg(8, true, true);
        }
    }

    /* renamed from: requestFocus-3ESFkO8, reason: not valid java name */
    public final boolean m420requestFocus3ESFkO8(int i) {
        Trace.beginSection("FocusTransactions:requestFocus");
        try {
            return fetchFocusProperties$ui().canFocus ? m419assignFocus3ESFkO8(i) : FocusTraversalKt.m423findChildCorrespondingToFocusEnterOMvw8(this, i, new FocusOwnerImpl$takeFocus$1(i, 2));
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void onPlaced(LayoutCoordinates layoutCoordinates) {
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public final /* synthetic */ void mo152onRemeasuredozmzZPI(long j) {
    }
}
