package androidx.compose.ui.node;

import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.foundation.IndicationModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusInvalidationManager;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class NodeKindKt {
    public static final MutableObjectIntMap classToKindSetMap;

    static {
        MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.EmptyObjectIntMap;
        classToKindSetMap = new MutableObjectIntMap();
    }

    public static final void autoInvalidateNodeIncludingDelegates(Modifier.Node node, int i, int i2) {
        if (!(node instanceof DelegatingNode)) {
            autoInvalidateNodeSelf(node, i & node.kindSet, i2);
            return;
        }
        DelegatingNode delegatingNode = (DelegatingNode) node;
        int i3 = delegatingNode.selfKindSet;
        autoInvalidateNodeSelf(node, i3 & i, i2);
        int i4 = (~i3) & i;
        for (Modifier.Node node2 = delegatingNode.delegate; node2 != null; node2 = node2.child) {
            autoInvalidateNodeIncludingDelegates(node2, i4, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void autoInvalidateNodeSelf(Modifier.Node node, int i, int i2) {
        if (i2 != 0 || node.getShouldAutoInvalidate()) {
            if ((i & 2) != 0 && (node instanceof LayoutModifierNode)) {
                HitTestResultKt.invalidateMeasurement((LayoutModifierNode) node);
                if (i2 == 2) {
                    HitTestResultKt.m317requireCoordinator64DMado(node, 2).onRelease();
                }
            }
            if ((i & 128) != 0 && i2 != 2) {
                HitTestResultKt.requireLayoutNode(node).invalidateMeasurements$ui();
            }
            if ((4194304 & i) != 0 && i2 != 2) {
                HitTestResultKt.requireLayoutNode(node).requestRelayout$ui(false);
            }
            if ((i & 256) != 0 && (node instanceof GlobalPositionAwareModifierNode)) {
                if (i2 == 1) {
                    LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(node);
                    requireLayoutNode.setGloballyPositionedObservers(requireLayoutNode.globallyPositionedObservers + 1);
                } else if (i2 == 2) {
                    HitTestResultKt.requireLayoutNode(node).setGloballyPositionedObservers(r0.globallyPositionedObservers - 1);
                }
                if (i2 != 2) {
                    LayoutNode requireLayoutNode2 = HitTestResultKt.requireLayoutNode(node);
                    if (requireLayoutNode2.globallyPositionedObservers != 0 && !requireLayoutNode2.getLayoutPending$ui() && !requireLayoutNode2.getMeasurePending$ui() && !requireLayoutNode2.needsOnGloballyPositionedDispatch) {
                        AndroidComposeView androidComposeView = (AndroidComposeView) LayoutNodeKt.requireOwner(requireLayoutNode2);
                        CardView.AnonymousClass1 anonymousClass1 = androidComposeView.measureAndLayoutDelegate.onPositionedDispatcher;
                        anonymousClass1.getClass();
                        if (requireLayoutNode2.globallyPositionedObservers > 0) {
                            ((MutableVector) anonymousClass1.mCardBackground).add(requireLayoutNode2);
                            requireLayoutNode2.needsOnGloballyPositionedDispatch = true;
                        }
                        androidComposeView.scheduleMeasureAndLayout(null);
                    }
                }
            }
            if ((i & 4) != 0 && (node instanceof DrawModifierNode)) {
                HitTestResultKt.invalidateDraw((DrawModifierNode) node);
            }
            if ((i & 8) != 0 && (node instanceof SemanticsModifierNode)) {
                HitTestResultKt.requireLayoutNode(node).isSemanticsInvalidated = true;
            }
            if ((i & 64) != 0 && (node instanceof ParentDataModifierNode)) {
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = HitTestResultKt.requireLayoutNode((ParentDataModifierNode) node).layoutDelegate;
                layoutNodeLayoutDelegate.measurePassDelegate.parentDataDirty = true;
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
                if (lookaheadPassDelegate != null) {
                    lookaheadPassDelegate.parentDataDirty = true;
                }
            }
            if ((i & 2048) != 0 && (node instanceof BackwardsCompatNode)) {
                Modifier.Element element = ((BackwardsCompatNode) node).element;
                InlineClassHelperKt.throwIllegalStateException("applyFocusProperties called on wrong node");
                Modifier.CC.m((Object) element);
                throw null;
            }
            if ((i & 4096) != 0 && (node instanceof BackwardsCompatNode)) {
                BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) node;
                FocusInvalidationManager focusInvalidationManager = ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(backwardsCompatNode)).getFocusOwner()).focusInvalidationManager;
                if (focusInvalidationManager.focusEventNodes.add(backwardsCompatNode)) {
                    focusInvalidationManager.scheduleInvalidation$2();
                }
            }
            if ((i & 2097152) != 0 && (node instanceof IndirectPointerInputModifierNode) && i2 == 2) {
                ((IndirectPointerInputModifierNode) node).onCancelIndirectPointerInput();
            }
        }
    }

    public static final void autoInvalidateUpdatedNode(Modifier.Node node) {
        if (!node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("autoInvalidateUpdatedNode called on unattached node");
        }
        autoInvalidateNodeIncludingDelegates(node, -1, 0);
    }

    public static final int calculateNodeKindSetFrom(Modifier.Node node) {
        int i = node.kindSet;
        if (i != 0) {
            return i;
        }
        Class<?> cls = node.getClass();
        MutableObjectIntMap mutableObjectIntMap = classToKindSetMap;
        int findKeyIndex = mutableObjectIntMap.findKeyIndex(cls);
        if (findKeyIndex >= 0) {
            return mutableObjectIntMap.values[findKeyIndex];
        }
        int i2 = node instanceof LayoutModifierNode ? 3 : 1;
        if (node instanceof DrawModifierNode) {
            i2 |= 4;
        }
        if (node instanceof SemanticsModifierNode) {
            i2 |= 8;
        }
        if (node instanceof PointerInputModifierNode) {
            i2 |= 16;
        }
        if (node instanceof ModifierLocalModifierNode) {
            i2 |= 32;
        }
        if (node instanceof ParentDataModifierNode) {
            i2 |= 64;
        }
        if (node instanceof LayoutAwareModifierNode) {
            i2 |= 4194432;
        } else if (node instanceof MeasuredSizeAwareModifierNode) {
            i2 |= 128;
        }
        if (node instanceof GlobalPositionAwareModifierNode) {
            i2 |= 256;
        }
        if (node instanceof FocusTargetNode) {
            i2 |= 1024;
        }
        boolean z = node instanceof BackwardsCompatNode;
        if (z) {
            i2 |= 2048;
        }
        if (z) {
            i2 |= 4096;
        }
        if (node instanceof KeyInputModifierNode) {
            i2 |= 8192;
        }
        if (node instanceof AndroidComposeView.RootModifierNode) {
            i2 |= 16384;
        }
        if (node instanceof CompositionLocalConsumerModifierNode) {
            i2 |= DecoderReuseEvaluation.DISCARD_REASON_AUDIO_BYPASS_POSSIBLE;
        }
        if (node instanceof TraversableNode) {
            i2 |= 262144;
        }
        if (node instanceof BringIntoViewModifierNode) {
            i2 |= 524288;
        }
        if (node instanceof IndirectPointerInputModifierNode) {
            i2 |= 2097152;
        }
        if (node instanceof LazyLayoutBeyondBoundsProviderModifierNode) {
            i2 |= 8388608;
        }
        mutableObjectIntMap.set(i2, cls);
        return i2;
    }

    public static final int calculateNodeKindSetFromIncludingDelegates(Modifier.Node node) {
        if (!(node instanceof DelegatingNode)) {
            return calculateNodeKindSetFrom(node);
        }
        DelegatingNode delegatingNode = (DelegatingNode) node;
        int i = delegatingNode.selfKindSet;
        for (Modifier.Node node2 = delegatingNode.delegate; node2 != null; node2 = node2.child) {
            i |= calculateNodeKindSetFromIncludingDelegates(node2);
        }
        return i;
    }

    /* renamed from: getIncludeSelfInTraversal-H91voCI, reason: not valid java name */
    public static final boolean m356getIncludeSelfInTraversalH91voCI(int i) {
        return ((i & 128) != 0) | ((i & 4194304) != 0);
    }

    public static final int calculateNodeKindSetFrom(Modifier.Element element) {
        int i = element instanceof IndicationModifier ? 5 : 1;
        if (element instanceof AppendedSemanticsElement) {
            i |= 8;
        }
        if (element instanceof AnimatedContentTransitionScopeImpl.ChildData) {
            i |= 64;
        }
        return element instanceof BringIntoViewModifierNode ? 524288 | i : i;
    }
}
