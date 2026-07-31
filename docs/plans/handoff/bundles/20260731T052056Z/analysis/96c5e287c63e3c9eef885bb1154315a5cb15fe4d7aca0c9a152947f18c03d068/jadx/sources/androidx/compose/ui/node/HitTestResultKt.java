package androidx.compose.ui.node;

import android.view.View;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class HitTestResultKt {
    public static final DepthSortedSetKt$DepthComparator$1 DepthComparator = new DepthSortedSetKt$DepthComparator$1(0);

    public static final long DistanceAndFlags(float f, boolean z, boolean z2) {
        return (((z ? 1L : 0L) | (z2 ? 2L : 0L)) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    public static final void addLayoutNodeChildren(MutableVector mutableVector, Modifier.Node node) {
        MutableVector mutableVector2 = requireLayoutNode(node).get_children$ui();
        int i = mutableVector2.size - 1;
        Object[] objArr = mutableVector2.content;
        if (i < objArr.length) {
            while (i >= 0) {
                mutableVector.add((Modifier.Node) ((LayoutNode) objArr[i]).nodes.head);
                i--;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final LayoutModifierNode asLayoutModifierNode(Modifier.Node node) {
        if ((node.kindSet & 2) != 0) {
            if (node instanceof LayoutModifierNode) {
                return (LayoutModifierNode) node;
            }
            if (node instanceof DelegatingNode) {
                Modifier.Node node2 = ((DelegatingNode) node).delegate;
                while (node2 != 0) {
                    if (node2 instanceof LayoutModifierNode) {
                        return (LayoutModifierNode) node2;
                    }
                    node2 = (!(node2 instanceof DelegatingNode) || (node2.kindSet & 2) == 0) ? node2.child : ((DelegatingNode) node2).delegate;
                }
            }
        }
        return null;
    }

    public static final int calculateAlignmentAndPlaceChildAsNeeded(LookaheadCapablePlaceable lookaheadCapablePlaceable, AlignmentLine alignmentLine) {
        LookaheadCapablePlaceable child = lookaheadCapablePlaceable.getChild();
        if (child == null) {
            InlineClassHelperKt.throwIllegalStateException("Child of " + lookaheadCapablePlaceable + " cannot be null when calculating alignment line");
        }
        if (lookaheadCapablePlaceable.getMeasureResult$ui().getAlignmentLines().containsKey(alignmentLine)) {
            Integer num = (Integer) lookaheadCapablePlaceable.getMeasureResult$ui().getAlignmentLines().get(alignmentLine);
            if (num != null) {
                return num.intValue();
            }
        } else {
            int i = child.get(alignmentLine);
            if (i != Integer.MIN_VALUE) {
                child.isShallowPlacing = true;
                lookaheadCapablePlaceable.isPlacingForAlignment = true;
                lookaheadCapablePlaceable.replace$ui();
                child.isShallowPlacing = false;
                lookaheadCapablePlaceable.isPlacingForAlignment = false;
                return i + ((int) (alignmentLine instanceof HorizontalAlignmentLine ? child.mo555getPositionnOccac() & 4294967295L : child.mo555getPositionnOccac() >> 32));
            }
        }
        return Integer.MIN_VALUE;
    }

    /* renamed from: compareTo-9YPOF3E, reason: not valid java name */
    public static final int m542compareTo9YPOF3E(long j, long j2) {
        boolean m545isInLayerimpl = m545isInLayerimpl(j);
        if (m545isInLayerimpl != m545isInLayerimpl(j2)) {
            return m545isInLayerimpl ? -1 : 1;
        }
        return (Math.min(m543getDistanceimpl(j), m543getDistanceimpl(j2)) >= RecyclerView.DECELERATION_RATE && m544isInExpandedBoundsimpl(j) != m544isInExpandedBoundsimpl(j2)) ? m544isInExpandedBoundsimpl(j) ? -1 : 1 : (int) Math.signum(m543getDistanceimpl(j) - m543getDistanceimpl(j2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Object currentValueOf(CompositionLocalConsumerModifierNode compositionLocalConsumerModifierNode, ProvidableCompositionLocal providableCompositionLocal) {
        if (!((Modifier.Node) compositionLocalConsumerModifierNode).node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("Cannot read CompositionLocal because the Modifier node is not currently attached.");
        }
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) requireLayoutNode(compositionLocalConsumerModifierNode).compositionLocalMap;
        persistentCompositionLocalHashMap.getClass();
        return Updater.read(persistentCompositionLocalHashMap, providableCompositionLocal);
    }

    public static final Rect effectiveBoundsInRoot(Modifier.Node node, boolean z, boolean z2) {
        if (!node.node.isAttached) {
            return Rect.Zero;
        }
        if (z) {
            return m547requireCoordinator64DMado(node, 8).touchBoundsInRoot();
        }
        NodeCoordinator m547requireCoordinator64DMado = m547requireCoordinator64DMado(node, 8);
        return RulerKt.findRootCoordinates(m547requireCoordinator64DMado).localBoundingBoxOf(m547requireCoordinator64DMado, z2);
    }

    public static final TraversableNode findNearestAncestor(DelegatingNode delegatingNode, Object obj) {
        NodeChain nodeChain;
        if (!delegatingNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node = delegatingNode.node.parent;
        LayoutNode requireLayoutNode = requireLayoutNode(delegatingNode);
        while (requireLayoutNode != null) {
            if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 262144) != 0) {
                while (node != null) {
                    if ((node.kindSet & 262144) != 0) {
                        Modifier.Node node2 = node;
                        MutableVector mutableVector = null;
                        while (node2 != null) {
                            if (node2 instanceof TraversableNode) {
                                TraversableNode traversableNode = (TraversableNode) node2;
                                if (obj.equals(traversableNode.getTraverseKey())) {
                                    return traversableNode;
                                }
                            }
                            if ((node2.kindSet & 262144) != 0 && (node2 instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                                    if ((node3.kindSet & 262144) != 0) {
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
                            node2 = pop(mutableVector);
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

    public static final ArrayList getChildrenOfVirtualChildren(IntrinsicMeasureScope intrinsicMeasureScope) {
        intrinsicMeasureScope.getClass();
        LayoutNode layoutNode = ((LookaheadCapablePlaceable) intrinsicMeasureScope).getLayoutNode();
        boolean isInLookaheadPass = isInLookaheadPass(layoutNode);
        MutableObjectList.ObjectListMutableList objectListMutableList = (MutableObjectList.ObjectListMutableList) layoutNode.getFoldedChildren$ui();
        MutableVector mutableVector = (MutableVector) objectListMutableList.objectList;
        ArrayList arrayList = new ArrayList(mutableVector.size);
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objectListMutableList.get(i2);
            arrayList.add(isInLookaheadPass ? layoutNode2.getChildLookaheadMeasurables$ui() : layoutNode2.getChildMeasurables$ui());
        }
        return arrayList;
    }

    /* renamed from: getDistance-impl, reason: not valid java name */
    public static final float m543getDistanceimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void invalidateDraw(DrawModifierNode drawModifierNode) {
        if (((Modifier.Node) drawModifierNode).node.isAttached) {
            m547requireCoordinator64DMado(drawModifierNode, 1).invalidateLayer();
        }
    }

    public static final void invalidateMeasurement(LayoutModifierNode layoutModifierNode) {
        requireLayoutNode(layoutModifierNode).invalidateMeasurements$ui();
    }

    public static final void invalidateSemantics(SemanticsModifierNode semanticsModifierNode) {
        requireLayoutNode(semanticsModifierNode).invalidateSemantics$ui();
    }

    /* renamed from: isInExpandedBounds-impl, reason: not valid java name */
    public static final boolean m544isInExpandedBoundsimpl(long j) {
        return (j & 2) != 0;
    }

    /* renamed from: isInLayer-impl, reason: not valid java name */
    public static final boolean m545isInLayerimpl(long j) {
        return (j & 1) != 0;
    }

    public static final boolean isInLookaheadPass(LayoutNode layoutNode) {
        int i = MeasureScopeWithLayoutNodeKt$WhenMappings.$EnumSwitchMapping$0[layoutNode.layoutDelegate.layoutState.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i != 3 && i != 4) {
            if (i == 5) {
                LayoutNode parent$ui = layoutNode.getParent$ui();
                if (parent$ui != null) {
                    return isInLookaheadPass(parent$ui);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("no parent for idle node");
                return false;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m();
        }
        return false;
    }

    public static final boolean isOutMostLookaheadRoot(LayoutNode layoutNode) {
        if (layoutNode.lookaheadRoot == null) {
            return false;
        }
        LayoutNode parent$ui = layoutNode.getParent$ui();
        return (parent$ui != null ? parent$ui.lookaheadRoot : null) == null || layoutNode.layoutDelegate.detachedFromParentLookaheadPass;
    }

    /* renamed from: nextUntil-hw7D004, reason: not valid java name */
    public static final Modifier.Node m546nextUntilhw7D004(DelegatableNode delegatableNode, int i) {
        Modifier.Node node = ((Modifier.Node) delegatableNode).node.child;
        if (node == null || (node.aggregateChildKindSet & i) == 0) {
            return null;
        }
        while (node != null) {
            int i2 = node.kindSet;
            if ((i2 & 2) != 0) {
                return null;
            }
            if ((i2 & i) != 0) {
                return node;
            }
            node = node.child;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void observeReads(Modifier.Node node, Function0 function0) {
        ObserverNodeOwnerScope observerNodeOwnerScope = node.ownerScope;
        if (observerNodeOwnerScope == null) {
            observerNodeOwnerScope = new ObserverNodeOwnerScope((ObserverModifierNode) node);
            node.ownerScope = observerNodeOwnerScope;
        }
        OwnerSnapshotObserver snapshotObserver = ((AndroidComposeView) requireOwner(node)).getSnapshotObserver();
        snapshotObserver.observer.observeReads(observerNodeOwnerScope, OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$5, function0);
    }

    public static long pack$ui(int i, int i2, int i3, int i4) {
        return ((i2 & 32767) << 15) | (i & 32767) | ((i3 & 32767) << 30) | ((i4 & 32767) << 45) | Long.MIN_VALUE;
    }

    public static final Modifier.Node pop(MutableVector mutableVector) {
        int i;
        if (mutableVector == null || (i = mutableVector.size) == 0) {
            return null;
        }
        return (Modifier.Node) mutableVector.removeAt(i - 1);
    }

    public static final void requestAutofill(DelegatableNode delegatableNode) {
        final AndroidAutofillManager androidAutofillManager;
        final LayoutNode requireLayoutNode = requireLayoutNode(delegatableNode);
        if (requireLayoutNode.isCurrentlyCalculatingSemanticsConfiguration) {
            return;
        }
        AndroidComposeView androidComposeView = (AndroidComposeView) LayoutNodeKt.requireOwner(requireLayoutNode);
        if (!AndroidComposeView.autofillSupported() || (androidAutofillManager = androidComposeView._autofillManager) == null) {
            return;
        }
        androidAutofillManager.rectManager.rects.withRect(requireLayoutNode.semanticsId, new Function4() { // from class: androidx.compose.ui.autofill.AndroidAutofillManager$requestAutofill$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(4);
            }

            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                int intValue = ((Number) obj).intValue();
                int intValue2 = ((Number) obj2).intValue();
                int intValue3 = ((Number) obj3).intValue();
                int intValue4 = ((Number) obj4).intValue();
                AndroidAutofillManager androidAutofillManager2 = AndroidAutofillManager.this;
                androidAutofillManager2.reusableRect.set(intValue, intValue2, intValue3, intValue4);
                androidAutofillManager2.platformAutofillManager.requestAutofill(androidAutofillManager2.view, requireLayoutNode.semanticsId, androidAutofillManager2.reusableRect);
                return Unit.INSTANCE;
            }
        });
    }

    /* renamed from: requireCoordinator-64DMado, reason: not valid java name */
    public static final NodeCoordinator m547requireCoordinator64DMado(DelegatableNode delegatableNode, int i) {
        NodeCoordinator nodeCoordinator = ((Modifier.Node) delegatableNode).node.coordinator;
        nodeCoordinator.getClass();
        if (nodeCoordinator.getTail() != delegatableNode || !NodeKindKt.m580getIncludeSelfInTraversalH91voCI(i)) {
            return nodeCoordinator;
        }
        NodeCoordinator nodeCoordinator2 = nodeCoordinator.wrapped;
        nodeCoordinator2.getClass();
        return nodeCoordinator2;
    }

    public static final NodeCoordinator requireLayoutCoordinates(DelegatableNode delegatableNode) {
        if (!((Modifier.Node) delegatableNode).node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("Cannot get LayoutCoordinates, Modifier.Node is not attached.");
        }
        NodeCoordinator m547requireCoordinator64DMado = m547requireCoordinator64DMado(delegatableNode, 2);
        if (!m547requireCoordinator64DMado.getTail().isAttached) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinates is not attached.");
        }
        return m547requireCoordinator64DMado;
    }

    public static final LayoutNode requireLayoutNode(DelegatableNode delegatableNode) {
        NodeCoordinator nodeCoordinator = ((Modifier.Node) delegatableNode).node.coordinator;
        if (nodeCoordinator != null) {
            return nodeCoordinator.layoutNode;
        }
        throw Modifier.CC.m("Cannot obtain node coordinator. Is the Modifier.Node attached?");
    }

    public static final Owner requireOwner(DelegatableNode delegatableNode) {
        Owner owner = requireLayoutNode(delegatableNode).owner;
        if (owner != null) {
            return owner;
        }
        throw Modifier.CC.m("This node does not have an owner.");
    }

    public static final View requireView(DelegatableNode delegatableNode) {
        if (!((Modifier.Node) delegatableNode).node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("Cannot get View because the Modifier node is not currently attached.");
        }
        return (View) LayoutNodeKt.requireOwner(requireLayoutNode(delegatableNode));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.TraversableNode, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public static final void traverseAncestors(TraversableNode traversableNode, Function1 function1) {
        NodeChain nodeChain;
        Modifier.Node node = (Modifier.Node) traversableNode;
        if (!node.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = node.node.parent;
        LayoutNode requireLayoutNode = requireLayoutNode(traversableNode);
        while (requireLayoutNode != null) {
            if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 262144) != 0) {
                while (node2 != null) {
                    if ((node2.kindSet & 262144) != 0) {
                        DelegatingNode delegatingNode = node2;
                        ?? r5 = 0;
                        while (delegatingNode != 0) {
                            boolean z = true;
                            if (delegatingNode instanceof TraversableNode) {
                                TraversableNode traversableNode2 = (TraversableNode) delegatingNode;
                                if (Intrinsics.areEqual(traversableNode.getTraverseKey(), traversableNode2.getTraverseKey()) && traversableNode.getClass() == traversableNode2.getClass()) {
                                    z = ((Boolean) function1.invoke(traversableNode2)).booleanValue();
                                }
                                if (!z) {
                                    return;
                                }
                            } else if ((delegatingNode.kindSet & 262144) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node3 = delegatingNode.delegate;
                                int i = 0;
                                delegatingNode = delegatingNode;
                                r5 = r5;
                                while (node3 != null) {
                                    if ((node3.kindSet & 262144) != 0) {
                                        i++;
                                        r5 = r5;
                                        if (i == 1) {
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
                                if (i == 1) {
                                }
                            }
                            delegatingNode = pop(r5);
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
    /* JADX WARN: Type inference failed for: r12v0, types: [androidx.compose.ui.node.TraversableNode, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static final void traverseDescendants(TraversableNode traversableNode, Function1 function1) {
        Modifier.Node node = (Modifier.Node) traversableNode;
        if (!node.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node2 = node.node;
        Modifier.Node node3 = node2.child;
        if (node3 == null) {
            addLayoutNodeChildren(mutableVector, node2);
        } else {
            mutableVector.add(node3);
        }
        while (true) {
            int i = mutableVector.size;
            if (i == 0) {
                return;
            }
            Modifier.Node node4 = (Modifier.Node) mutableVector.removeAt(i - 1);
            if ((node4.aggregateChildKindSet & 262144) != 0) {
                for (Modifier.Node node5 = node4; node5 != null && node5.isAttached; node5 = node5.child) {
                    if ((node5.kindSet & 262144) != 0) {
                        DelegatingNode delegatingNode = node5;
                        ?? r7 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof TraversableNode) {
                                TraversableNode traversableNode2 = (TraversableNode) delegatingNode;
                                TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = (Intrinsics.areEqual(traversableNode.getTraverseKey(), traversableNode2.getTraverseKey()) && traversableNode.getClass() == traversableNode2.getClass()) ? (TraversableNode$Companion$TraverseDescendantsAction) function1.invoke(traversableNode2) : TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                                if (traversableNode$Companion$TraverseDescendantsAction == TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal) {
                                    return;
                                }
                                if (traversableNode$Companion$TraverseDescendantsAction == TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal) {
                                    break;
                                }
                            } else if ((delegatingNode.kindSet & 262144) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node6 = delegatingNode.delegate;
                                int i2 = 0;
                                delegatingNode = delegatingNode;
                                r7 = r7;
                                while (node6 != null) {
                                    if ((node6.kindSet & 262144) != 0) {
                                        i2++;
                                        r7 = r7;
                                        if (i2 == 1) {
                                            delegatingNode = node6;
                                        } else {
                                            if (r7 == 0) {
                                                r7 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode != 0) {
                                                r7.add(delegatingNode);
                                                delegatingNode = 0;
                                            }
                                            r7.add(node6);
                                        }
                                    }
                                    node6 = node6.child;
                                    delegatingNode = delegatingNode;
                                    r7 = r7;
                                }
                                if (i2 == 1) {
                                }
                            }
                            delegatingNode = pop(r7);
                        }
                    }
                }
            }
            addLayoutNodeChildren(mutableVector, node4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    public static final void traverseAncestors(DelegatableNode delegatableNode, Object obj, Function1 function1) {
        NodeChain nodeChain;
        if (!((Modifier.Node) delegatableNode).node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node = ((Modifier.Node) delegatableNode).node.parent;
        LayoutNode requireLayoutNode = requireLayoutNode(delegatableNode);
        while (requireLayoutNode != null) {
            if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 262144) != 0) {
                while (node != null) {
                    if ((node.kindSet & 262144) != 0) {
                        DelegatingNode delegatingNode = node;
                        ?? r4 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof TraversableNode) {
                                TraversableNode traversableNode = (TraversableNode) delegatingNode;
                                if (!(obj.equals(traversableNode.getTraverseKey()) ? ((Boolean) function1.invoke(traversableNode)).booleanValue() : true)) {
                                    return;
                                }
                            } else if ((delegatingNode.kindSet & 262144) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node2 = delegatingNode.delegate;
                                int i = 0;
                                delegatingNode = delegatingNode;
                                r4 = r4;
                                while (node2 != null) {
                                    if ((node2.kindSet & 262144) != 0) {
                                        i++;
                                        r4 = r4;
                                        if (i == 1) {
                                            delegatingNode = node2;
                                        } else {
                                            if (r4 == 0) {
                                                r4 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode != 0) {
                                                r4.add(delegatingNode);
                                                delegatingNode = 0;
                                            }
                                            r4.add(node2);
                                        }
                                    }
                                    node2 = node2.child;
                                    delegatingNode = delegatingNode;
                                    r4 = r4;
                                }
                                if (i == 1) {
                                }
                            }
                            delegatingNode = pop(r4);
                        }
                    }
                    node = node.parent;
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui();
            node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public static final void traverseDescendants(Modifier.Node node, String str, Function1 function1) {
        TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction;
        if (!node.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node2 = node.node;
        Modifier.Node node3 = node2.child;
        if (node3 == null) {
            addLayoutNodeChildren(mutableVector, node2);
        } else {
            mutableVector.add(node3);
        }
        while (true) {
            int i = mutableVector.size;
            if (i == 0) {
                return;
            }
            Modifier.Node node4 = (Modifier.Node) mutableVector.removeAt(i - 1);
            if ((node4.aggregateChildKindSet & 262144) != 0) {
                for (Modifier.Node node5 = node4; node5 != null && node5.isAttached; node5 = node5.child) {
                    if ((node5.kindSet & 262144) != 0) {
                        DelegatingNode delegatingNode = node5;
                        ?? r6 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof TraversableNode) {
                                TraversableNode traversableNode = (TraversableNode) delegatingNode;
                                if (str.equals(traversableNode.getTraverseKey())) {
                                    traversableNode$Companion$TraverseDescendantsAction = (TraversableNode$Companion$TraverseDescendantsAction) function1.invoke(traversableNode);
                                } else {
                                    traversableNode$Companion$TraverseDescendantsAction = TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                                }
                                if (traversableNode$Companion$TraverseDescendantsAction == TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal) {
                                    return;
                                }
                                if (traversableNode$Companion$TraverseDescendantsAction == TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal) {
                                    break;
                                }
                            } else if ((delegatingNode.kindSet & 262144) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node6 = delegatingNode.delegate;
                                int i2 = 0;
                                delegatingNode = delegatingNode;
                                r6 = r6;
                                while (node6 != null) {
                                    if ((node6.kindSet & 262144) != 0) {
                                        i2++;
                                        r6 = r6;
                                        if (i2 == 1) {
                                            delegatingNode = node6;
                                        } else {
                                            if (r6 == 0) {
                                                r6 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode != 0) {
                                                r6.add(delegatingNode);
                                                delegatingNode = 0;
                                            }
                                            r6.add(node6);
                                        }
                                    }
                                    node6 = node6.child;
                                    delegatingNode = delegatingNode;
                                    r6 = r6;
                                }
                                if (i2 == 1) {
                                }
                            }
                            delegatingNode = pop(r6);
                        }
                    }
                }
            }
            addLayoutNodeChildren(mutableVector, node4);
        }
    }
}
