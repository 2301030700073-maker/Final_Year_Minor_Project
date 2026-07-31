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
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FocusTargetNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutAwareModifierNode, ObserverModifierNode, ModifierLocalModifierNode {
    public final int focusability;
    public final boolean isInteropViewHost;
    public boolean isProcessingCustomEnter;
    public boolean isProcessingCustomExit;
    public final Function2 onFocusChange;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/compose/ui/focus/FocusTargetNode$FocusTargetElement", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/focus/FocusTargetNode;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class FocusTargetElement extends ModifierNodeElement {
        public static final FocusTargetElement INSTANCE = new FocusTargetElement();

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node create() {
            return new FocusTargetNode(0, 15, null);
        }

        public final boolean equals(Object obj) {
            return obj == this;
        }

        public final int hashCode() {
            return 1739042953;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final void update(Modifier.Node node) {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
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

    public FocusTargetNode(int i, int i2, Function2 function2) {
        i = (i2 & 1) != 0 ? 1 : i;
        boolean z = (i2 & 2) == 0;
        function2 = (i2 & 4) != 0 ? null : function2;
        this.isInteropViewHost = z;
        this.onFocusChange = function2;
        this.focusability = i;
    }

    /* renamed from: assignFocus-3ESFkO8, reason: not valid java name */
    public final boolean m367assignFocus3ESFkO8(int i) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[FocusTraversalKt.m377performCustomRequestFocusMxy_nc0(this, i).ordinal()];
        if (i2 == 1) {
            return FocusTraversalKt.performRequestFocus(this);
        }
        if (i2 == 2) {
            return true;
        }
        if (i2 == 3 || i2 == 4) {
            return false;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
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
        if (!Intrinsics.areEqual(focusStateImpl, focusStateImpl2) && (function2 = this.onFocusChange) != null) {
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
                                delegatingNode = HitTestResultKt.pop(r5);
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unknown Focusability");
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
                                delegatingNode = HitTestResultKt.pop(r7);
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
        return rect != FocusProperties.Companion.UnsetFocusRect ? layoutCoordinates == null ? rect : rect.m393translatek4lQ0M(layoutCoordinates.mo519localPositionOfS_NoaFU(HitTestResultKt.requireLayoutCoordinates(this), 0L)) : layoutCoordinates != null ? layoutCoordinates.localBoundingBoxOf(HitTestResultKt.requireLayoutCoordinates(this), false) : UtilsKt.m793Recttz77jQw(0L, ExceptionsKt.m813toSizeozmzZPI(HitTestResultKt.requireLayoutCoordinates(this).measuredSize));
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
        if (!this.isAttached) {
            return FocusStateImpl.Inactive;
        }
        FocusTargetNode activeFocusTargetNode = ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner()).getActiveFocusTargetNode();
        if (activeFocusTargetNode == null) {
            return FocusStateImpl.Inactive;
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
                                node2 = HitTestResultKt.pop(mutableVector);
                            }
                        }
                        node = node.parent;
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui();
                node = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
            }
        }
        return FocusStateImpl.Inactive;
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
        int i = WhenMappings.$EnumSwitchMapping$1[getFocusState().ordinal()];
        int i2 = 2;
        if (i != 1 && i != 2) {
            if (i == 3 || i == 4) {
                return;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return;
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        HitTestResultKt.observeReads(this, new KTypeImpl$arguments$2(i2, ref$ObjectRef, this));
        Object obj = ref$ObjectRef.element;
        if (obj == null) {
            Intrinsics.throwUninitializedPropertyAccessException("focusProperties");
            throw null;
        }
        if (((FocusProperties) obj).getCanFocus()) {
            return;
        }
        ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner()).m360clearFocusI7lrPNg(8, true, true);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        int i = WhenMappings.$EnumSwitchMapping$1[getFocusState().ordinal()];
        if (i == 1 || i == 2) {
            FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner();
            focusOwnerImpl.m360clearFocusI7lrPNg(8, true, false);
            if (this.isInteropViewHost) {
                focusOwnerImpl.platformFocusOwner.m591requestOwnerFocus7o62pno();
            }
            focusOwnerImpl.focusInvalidationManager.scheduleInvalidation$2();
            return;
        }
        if (i != 3) {
            if (i == 4) {
                return;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return;
        }
        FocusOwner focusOwner = ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner();
        FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this);
        if (findActiveFocusNode == null || !findActiveFocusNode.isInteropViewHost) {
            return;
        }
        FocusOwnerImpl focusOwnerImpl2 = (FocusOwnerImpl) focusOwner;
        focusOwnerImpl2.platformFocusOwner.m591requestOwnerFocus7o62pno();
        focusOwnerImpl2.focusInvalidationManager.scheduleInvalidation$2();
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        invalidateFocus$ui();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onReset() {
        if (getFocusState().isFocused()) {
            ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getFocusOwner()).m360clearFocusI7lrPNg(8, true, true);
        }
    }

    /* renamed from: requestFocus-3ESFkO8, reason: not valid java name */
    public final boolean m368requestFocus3ESFkO8(int i) {
        Trace.beginSection("FocusTransactions:requestFocus");
        try {
            return fetchFocusProperties$ui().canFocus ? m367assignFocus3ESFkO8(i) : FocusTraversalKt.m371findChildCorrespondingToFocusEnterOMvw8(this, i, new FocusOwnerImpl$takeFocus$1(i, 2));
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void onPlaced(LayoutCoordinates layoutCoordinates) {
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public final void mo66onRemeasuredozmzZPI(long j) {
    }
}
