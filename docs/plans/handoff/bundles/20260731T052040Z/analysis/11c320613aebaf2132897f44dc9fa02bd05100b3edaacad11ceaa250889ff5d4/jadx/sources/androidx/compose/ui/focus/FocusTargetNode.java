package androidx.compose.ui.focus;

import android.os.Trace;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.InputModeManagerImpl;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.EmptyMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.node.BackwardsCompatNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.work.OperationKt;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import okio.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FocusTargetNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutAwareModifierNode, ObserverModifierNode, ModifierLocalModifierNode {
    public final int focusability;
    public boolean isProcessingCustomEnter;
    public boolean isProcessingCustomExit;
    public final Function2 onFocusChange;

    public FocusTargetNode(int i, Function2 function2, int i2) {
        this.onFocusChange = (i2 & 4) != 0 ? null : function2;
        this.focusability = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v25 */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v27 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v44, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v23, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* renamed from: assignFocus-3ESFkO8, reason: not valid java name */
    public final boolean m192assignFocus3ESFkO8() {
        MutableVector mutableVector;
        NodeChain nodeChain;
        FocusOwnerImpl focusOwnerImpl;
        boolean z;
        int i;
        ?? r5;
        int i2;
        int i3;
        NodeChain nodeChain2;
        int ordinal = Okio.m723performCustomRequestFocusMxy_nc0(this).ordinal();
        if (ordinal == 0) {
            FocusOwnerImpl focusOwnerImpl2 = (FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner();
            FocusTargetNode activeFocusTargetNode = focusOwnerImpl2.getActiveFocusTargetNode();
            FocusStateImpl focusState = getFocusState();
            if (activeFocusTargetNode == this) {
                dispatchFocusCallbacks$ui(focusState, focusState);
                return true;
            }
            if (activeFocusTargetNode != null || ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner()).platformFocusOwner.m376requestOwnerFocus7o62pno()) {
                if (activeFocusTargetNode != null) {
                    mutableVector = new MutableVector(new FocusTargetNode[16]);
                    if (!activeFocusTargetNode.node.isAttached) {
                        InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node = activeFocusTargetNode.node.parent;
                    LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(activeFocusTargetNode);
                    while (requireLayoutNode != null) {
                        if ((requireLayoutNode.nodes.head.aggregateChildKindSet & 1024) != 0) {
                            while (node != null) {
                                if ((node.kindSet & 1024) != 0) {
                                    Modifier.Node node2 = node;
                                    MutableVector mutableVector2 = null;
                                    while (node2 != null) {
                                        if (node2 instanceof FocusTargetNode) {
                                            mutableVector.add((FocusTargetNode) node2);
                                        } else if ((node2.kindSet & 1024) != 0 && (node2 instanceof DelegatingNode)) {
                                            int i4 = 0;
                                            for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                                                if ((node3.kindSet & 1024) != 0) {
                                                    i4++;
                                                    if (i4 == 1) {
                                                        node2 = node3;
                                                    } else {
                                                        if (mutableVector2 == null) {
                                                            mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                                        }
                                                        if (node2 != null) {
                                                            mutableVector2.add(node2);
                                                            node2 = null;
                                                        }
                                                        mutableVector2.add(node3);
                                                    }
                                                }
                                            }
                                            if (i4 == 1) {
                                            }
                                        }
                                        node2 = HitTestResultKt.access$pop(mutableVector2);
                                    }
                                }
                                node = node.parent;
                            }
                        }
                        requireLayoutNode = requireLayoutNode.getParent$ui();
                        node = (requireLayoutNode == null || (nodeChain2 = requireLayoutNode.nodes) == null) ? null : nodeChain2.tail;
                    }
                } else {
                    mutableVector = null;
                }
                FocusTargetNode[] focusTargetNodeArr = new FocusTargetNode[16];
                FocusTargetNode[] focusTargetNodeArr2 = new FocusTargetNode[16];
                if (!this.node.isAttached) {
                    InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                }
                Modifier.Node node4 = this.node.parent;
                LayoutNode requireLayoutNode2 = HitTestResultKt.requireLayoutNode(this);
                int i5 = 0;
                int i6 = 0;
                boolean z2 = true;
                while (requireLayoutNode2 != null) {
                    if ((requireLayoutNode2.nodes.head.aggregateChildKindSet & 1024) != 0) {
                        while (node4 != null) {
                            if ((node4.kindSet & 1024) != 0) {
                                FocusTargetNode focusTargetNode = node4;
                                MutableVector mutableVector3 = null;
                                while (focusTargetNode != 0) {
                                    if (focusTargetNode instanceof FocusTargetNode) {
                                        FocusTargetNode focusTargetNode2 = focusTargetNode;
                                        if (Intrinsics.areEqual(mutableVector != null ? Boolean.valueOf(mutableVector.remove(focusTargetNode2)) : null, Boolean.TRUE)) {
                                            int i7 = i5 + 1;
                                            if (focusTargetNodeArr.length < i7) {
                                                int length = focusTargetNodeArr.length;
                                                focusOwnerImpl = focusOwnerImpl2;
                                                ?? r1 = new Object[Math.max(i7, length * 2)];
                                                i3 = i7;
                                                System.arraycopy(focusTargetNodeArr, 0, r1, 0, length);
                                                focusTargetNodeArr = r1;
                                            } else {
                                                focusOwnerImpl = focusOwnerImpl2;
                                                i3 = i7;
                                            }
                                            focusTargetNodeArr[i5] = focusTargetNode2;
                                            i5 = i3;
                                        } else {
                                            focusOwnerImpl = focusOwnerImpl2;
                                            int i8 = i6 + 1;
                                            if (focusTargetNodeArr2.length < i8) {
                                                int length2 = focusTargetNodeArr2.length;
                                                ?? r52 = new Object[Math.max(i8, length2 * 2)];
                                                i2 = i8;
                                                System.arraycopy(focusTargetNodeArr2, 0, r52, 0, length2);
                                                focusTargetNodeArr2 = r52;
                                            } else {
                                                i2 = i8;
                                            }
                                            focusTargetNodeArr2[i6] = focusTargetNode2;
                                            i6 = i2;
                                        }
                                        if (focusTargetNode2 == activeFocusTargetNode) {
                                            z2 = false;
                                        }
                                        z = false;
                                    } else {
                                        focusOwnerImpl = focusOwnerImpl2;
                                        z = true;
                                    }
                                    if (z && (focusTargetNode.kindSet & 1024) != 0 && (focusTargetNode instanceof DelegatingNode)) {
                                        Modifier.Node node5 = focusTargetNode.delegate;
                                        int i9 = 0;
                                        focusTargetNode = focusTargetNode;
                                        while (node5 != null) {
                                            if ((node5.kindSet & 1024) != 0) {
                                                int i10 = i9 + 1;
                                                if (i10 == 1) {
                                                    focusTargetNode = node5;
                                                    i = i10;
                                                } else {
                                                    if (mutableVector3 == null) {
                                                        i = i10;
                                                        r5 = new MutableVector(new Modifier.Node[16]);
                                                    } else {
                                                        i = i10;
                                                        r5 = mutableVector3;
                                                    }
                                                    if (focusTargetNode != 0) {
                                                        r5.add(focusTargetNode);
                                                        focusTargetNode = 0;
                                                    }
                                                    r5.add(node5);
                                                    mutableVector3 = r5;
                                                    focusTargetNode = focusTargetNode;
                                                }
                                                i9 = i;
                                            }
                                            node5 = node5.child;
                                            focusTargetNode = focusTargetNode;
                                        }
                                        if (i9 == 1) {
                                            focusOwnerImpl2 = focusOwnerImpl;
                                        }
                                    }
                                    focusTargetNode = HitTestResultKt.access$pop(mutableVector3);
                                    focusOwnerImpl2 = focusOwnerImpl;
                                }
                            }
                            node4 = node4.parent;
                            focusOwnerImpl2 = focusOwnerImpl2;
                        }
                    }
                    FocusOwnerImpl focusOwnerImpl3 = focusOwnerImpl2;
                    requireLayoutNode2 = requireLayoutNode2.getParent$ui();
                    node4 = (requireLayoutNode2 == null || (nodeChain = requireLayoutNode2.nodes) == null) ? null : nodeChain.tail;
                    focusOwnerImpl2 = focusOwnerImpl3;
                }
                FocusOwnerImpl focusOwnerImpl4 = focusOwnerImpl2;
                if (!z2 || activeFocusTargetNode == null || Okio.clearFocus(activeFocusTargetNode, false)) {
                    HitTestResultKt.observeReads(this, new Function0() { // from class: androidx.compose.ui.focus.FocusTransactionsKt$grantFocus$1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            FocusTargetNode.this.fetchFocusProperties$ui();
                            return Unit.INSTANCE;
                        }
                    });
                    int ordinal2 = getFocusState().ordinal();
                    if (ordinal2 != 0) {
                        if (ordinal2 != 1) {
                            if (ordinal2 != 2) {
                                if (ordinal2 != 3) {
                                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                                    return false;
                                }
                            }
                        }
                        ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner()).setActiveFocusTargetNode(this);
                    }
                    FocusStateImpl focusStateImpl = FocusStateImpl.Inactive;
                    FocusStateImpl focusStateImpl2 = FocusStateImpl.Active;
                    if (z2 && activeFocusTargetNode != null) {
                        activeFocusTargetNode.dispatchFocusCallbacks$ui(focusStateImpl2, focusStateImpl);
                    }
                    FocusStateImpl focusStateImpl3 = FocusStateImpl.ActiveParent;
                    if (mutableVector != null) {
                        int i11 = mutableVector.size - 1;
                        Object[] objArr = mutableVector.content;
                        if (i11 < objArr.length) {
                            while (i11 >= 0) {
                                FocusTargetNode focusTargetNode3 = (FocusTargetNode) objArr[i11];
                                if (focusOwnerImpl4.getActiveFocusTargetNode() != this) {
                                    break;
                                }
                                focusTargetNode3.dispatchFocusCallbacks$ui(focusStateImpl3, focusStateImpl);
                                i11--;
                            }
                        }
                    }
                    int i12 = i6 - 1;
                    if (i12 < focusTargetNodeArr2.length) {
                        while (i12 >= 0) {
                            FocusTargetNode focusTargetNode4 = focusTargetNodeArr2[i12];
                            if (focusOwnerImpl4.getActiveFocusTargetNode() != this) {
                                break;
                            }
                            focusTargetNode4.dispatchFocusCallbacks$ui(focusTargetNode4 == activeFocusTargetNode ? focusStateImpl2 : focusStateImpl, focusStateImpl3);
                            i12--;
                        }
                    }
                    if (focusOwnerImpl4.getActiveFocusTargetNode() == this) {
                        dispatchFocusCallbacks$ui(focusState, focusStateImpl2);
                        if (focusOwnerImpl4.getActiveFocusTargetNode() != this) {
                            break;
                        }
                        return true;
                    }
                }
                return false;
            }
        } else if (ordinal != 1) {
            if (ordinal == 2) {
                return true;
            }
            if (ordinal != 3) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return false;
            }
        }
        return false;
    }

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
            if ((requireLayoutNode.nodes.head.aggregateChildKindSet & 5120) != 0) {
                while (node2 != null) {
                    int i = node2.kindSet;
                    if ((i & 5120) != 0) {
                        if (node2 != node && (i & 1024) != 0) {
                            return;
                        }
                        if ((i & 4096) != 0) {
                            Modifier.Node node3 = node2;
                            MutableVector mutableVector = null;
                            while (node3 != null) {
                                if (node3 instanceof BackwardsCompatNode) {
                                    BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) node3;
                                    if (activeFocusTargetNode == focusOwnerImpl.getActiveFocusTargetNode()) {
                                        backwardsCompatNode.onFocusEvent();
                                        throw null;
                                    }
                                } else if ((node3.kindSet & 4096) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i2 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                        if ((node4.kindSet & 4096) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                node3 = node4;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node3 != null) {
                                                    mutableVector.add(node3);
                                                    node3 = null;
                                                }
                                                mutableVector.add(node4);
                                            }
                                        }
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                node3 = HitTestResultKt.access$pop(mutableVector);
                            }
                        } else {
                            continue;
                        }
                    }
                    node2 = node2.parent;
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui();
            node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : nodeChain.tail;
        }
    }

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
        focusPropertiesImpl.focusRect = FocusProperties$Companion.UnsetFocusRect;
        int i = this.focusability;
        if (i == 1) {
            z = true;
        } else if (i == 0) {
            z = !(((InputMode) ((InputModeManagerImpl) ((InputModeManager) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalInputModeManager))).inputMode$delegate.getValue()).value == 1);
        } else {
            if (i != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Unknown Focusability");
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
            if ((requireLayoutNode.nodes.head.aggregateChildKindSet & 3072) != 0) {
                while (node2 != null) {
                    int i2 = node2.kindSet;
                    if ((i2 & 3072) != 0) {
                        if (node2 != node && (i2 & 1024) != 0) {
                            break loop0;
                        }
                        if ((i2 & 2048) != 0) {
                            MutableVector mutableVector = null;
                            Modifier.Node node3 = node2;
                            while (node3 != null) {
                                if (node3 instanceof BackwardsCompatNode) {
                                    Modifier.Element element = ((BackwardsCompatNode) node3).element;
                                    InlineClassHelperKt.throwIllegalStateException("applyFocusProperties called on wrong node");
                                    Modifier.CC.m((Object) element);
                                    throw null;
                                }
                                if ((node3.kindSet & 2048) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                        if ((node4.kindSet & 2048) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                node3 = node4;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node3 != null) {
                                                    mutableVector.add(node3);
                                                    node3 = null;
                                                }
                                                mutableVector.add(node4);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                node3 = HitTestResultKt.access$pop(mutableVector);
                            }
                        } else {
                            continue;
                        }
                    }
                    node2 = node2.parent;
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui();
            node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : nodeChain.tail;
        }
        return focusPropertiesImpl;
    }

    public final Rect fetchFocusRect$ui(LayoutCoordinates layoutCoordinates) {
        Rect rect = fetchFocusProperties$ui().focusRect;
        return rect != FocusProperties$Companion.UnsetFocusRect ? layoutCoordinates == null ? rect : rect.m205translatek4lQ0M(layoutCoordinates.mo298localPositionOfS_NoaFU(HitTestResultKt.requireLayoutCoordinates(this), 0L)) : layoutCoordinates != null ? layoutCoordinates.localBoundingBoxOf(HitTestResultKt.requireLayoutCoordinates(this), false) : OperationKt.m476Recttz77jQw(0L, Cookie.Companion.m708toSizeozmzZPI(HitTestResultKt.requireLayoutCoordinates(this).measuredSize));
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
            if ((requireLayoutNode.nodes.head.aggregateChildKindSet & 8388640) != 0) {
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
            node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : nodeChain.tail;
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
                if ((requireLayoutNode.nodes.head.aggregateChildKindSet & 1024) != 0) {
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
                node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : nodeChain.tail;
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
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return;
            }
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        HitTestResultKt.observeReads(this, new Function0() { // from class: androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Ref$ObjectRef.this.element = this.fetchFocusProperties$ui();
                return Unit.INSTANCE;
            }
        });
        Object obj = ref$ObjectRef.element;
        if (obj == null) {
            Intrinsics.throwUninitializedPropertyAccessException("focusProperties");
            throw null;
        }
        if (((FocusPropertiesImpl) obj).canFocus) {
            return;
        }
        ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner()).m187clearFocusI7lrPNg(8, true, true);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        int ordinal = getFocusState().ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner();
                Options.Companion.findActiveFocusNode(this);
                return;
            } else if (ordinal != 2) {
                if (ordinal == 3) {
                    return;
                }
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return;
            }
        }
        FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner();
        focusOwnerImpl.m187clearFocusI7lrPNg(8, true, false);
        focusOwnerImpl.focusInvalidationManager.scheduleInvalidation$2();
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        invalidateFocus$ui();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onReset() {
        if (getFocusState().isFocused()) {
            ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner()).m187clearFocusI7lrPNg(8, true, true);
        }
    }

    /* renamed from: requestFocus-3ESFkO8, reason: not valid java name */
    public final boolean m193requestFocus3ESFkO8(final int i) {
        Trace.beginSection("FocusTransactions:requestFocus");
        try {
            return fetchFocusProperties$ui().canFocus ? m192assignFocus3ESFkO8() : Cookie.Companion.m704findChildCorrespondingToFocusEnterOMvw8(this, i, new Function1() { // from class: androidx.compose.ui.focus.FocusTargetNode$requestFocus$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(((FocusTargetNode) obj).m192assignFocus3ESFkO8());
                }
            });
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void onPlaced(LayoutCoordinates layoutCoordinates) {
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public final /* synthetic */ void mo40onRemeasuredozmzZPI(long j) {
    }
}
