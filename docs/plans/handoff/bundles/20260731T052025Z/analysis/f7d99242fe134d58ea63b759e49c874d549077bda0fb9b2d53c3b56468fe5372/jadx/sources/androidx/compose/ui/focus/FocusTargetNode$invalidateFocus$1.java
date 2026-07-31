package androidx.compose.ui.focus;

import android.view.KeyEvent;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawModifierNodeImpl;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.input.pointer.HitPathTracker;
import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.compose.ui.platform.ScrollObservationScope;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.viewinterop.FocusTargetInteropNode;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.insets.SystemBarStateMonitor;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.fragment.FragmentNavigator$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FocusTargetNode$invalidateFocus$1 extends Lambda implements Function0 {
    public final /* synthetic */ Object $focusProperties;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusTargetNode$invalidateFocus$1(LayoutNode layoutNode, Ref$ObjectRef ref$ObjectRef) {
        super(0);
        this.$r8$classId = 3;
        this.this$0 = layoutNode;
        this.$focusProperties = ref$ObjectRef;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.runtime.collection.MutableVector] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean dispatchKeyEvent;
        SemanticsNode semanticsNode;
        LayoutNode layoutNode;
        Rect rect;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.this$0;
        Object obj2 = this.$focusProperties;
        switch (i) {
            case 0:
                ((Ref$ObjectRef) obj2).element = ((FocusTargetNode) obj).fetchFocusProperties$ui();
                return unit;
            case 1:
                ((CacheDrawModifierNodeImpl) obj2).block.invoke((CacheDrawScope) obj);
                return unit;
            case 2:
                ((HitPathTracker) obj2).removePointerInputModifierNode((Modifier.Node) obj);
                return unit;
            case 3:
                NodeChain nodeChain = ((LayoutNode) obj).nodes;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj2;
                if ((((Modifier.Node) nodeChain.head).aggregateChildKindSet & 8) != 0) {
                    for (Modifier.Node node = (TailModifierNode) nodeChain.tail; node != null; node = node.parent) {
                        if ((node.kindSet & 8) != 0) {
                            DelegatingNode delegatingNode = node;
                            ?? r6 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof SemanticsModifierNode) {
                                    SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) delegatingNode;
                                    if (semanticsModifierNode.getShouldClearDescendantSemantics()) {
                                        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
                                        ref$ObjectRef.element = semanticsConfiguration;
                                        semanticsConfiguration.isClearingSemantics = true;
                                    }
                                    if (semanticsModifierNode.getShouldMergeDescendantSemantics()) {
                                        ((SemanticsConfiguration) ref$ObjectRef.element).isMergingSemanticsOfDescendants = true;
                                    }
                                    semanticsModifierNode.applySemantics((SemanticsPropertyReceiver) ref$ObjectRef.element);
                                } else if ((delegatingNode.kindSet & 8) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node2 = delegatingNode.delegate;
                                    int i2 = 0;
                                    delegatingNode = delegatingNode;
                                    r6 = r6;
                                    while (node2 != null) {
                                        if ((node2.kindSet & 8) != 0) {
                                            i2++;
                                            r6 = r6;
                                            if (i2 == 1) {
                                                delegatingNode = node2;
                                            } else {
                                                if (r6 == 0) {
                                                    r6 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r6.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r6.add(node2);
                                            }
                                        }
                                        node2 = node2.child;
                                        delegatingNode = delegatingNode;
                                        r6 = r6;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                delegatingNode = HitTestResultKt.access$pop(r6);
                            }
                        }
                    }
                }
                return unit;
            case 4:
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = NodeCoordinator.graphicsLayerScope;
                ((Function1) obj2).invoke(reusableGraphicsLayerScope);
                NodeCoordinator nodeCoordinator = (NodeCoordinator) obj;
                boolean areEqual = Intrinsics.areEqual(nodeCoordinator.lastShape, reusableGraphicsLayerScope.shape);
                boolean z = nodeCoordinator.lastClip;
                boolean z2 = reusableGraphicsLayerScope.clip;
                boolean z3 = z != z2;
                if (!areEqual || z3) {
                    nodeCoordinator.lastShape = reusableGraphicsLayerScope.shape;
                    nodeCoordinator.lastClip = z2;
                    if (nodeCoordinator.wasLayerBlockInvoked && (z3 || (z2 && !areEqual))) {
                        nodeCoordinator.layoutNode.invalidateSemantics$ui();
                    }
                }
                nodeCoordinator.wasLayerBlockInvoked = true;
                reusableGraphicsLayerScope.outline = reusableGraphicsLayerScope.shape.mo147createOutlinePq9zytI(reusableGraphicsLayerScope.size, reusableGraphicsLayerScope.layoutDirection, reusableGraphicsLayerScope.graphicsDensity);
                return unit;
            case 5:
                dispatchKeyEvent = super/*android.view.ViewGroup*/.dispatchKeyEvent((KeyEvent) obj);
                return Boolean.valueOf(dispatchKeyEvent);
            case 6:
                AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = (AndroidComposeViewAccessibilityDelegateCompat) obj;
                ScrollObservationScope scrollObservationScope = (ScrollObservationScope) obj2;
                ScrollAxisRange scrollAxisRange = scrollObservationScope.horizontalScrollAxisRange;
                ScrollAxisRange scrollAxisRange2 = scrollObservationScope.verticalScrollAxisRange;
                Float f = scrollObservationScope.oldXValue;
                Float f2 = scrollObservationScope.oldYValue;
                float floatValue = (scrollAxisRange == null || f == null) ? 0.0f : ((Number) scrollAxisRange.value.invoke()).floatValue() - f.floatValue();
                float floatValue2 = (scrollAxisRange2 == null || f2 == null) ? 0.0f : ((Number) scrollAxisRange2.value.invoke()).floatValue() - f2.floatValue();
                if (floatValue != 0.0f || floatValue2 != 0.0f) {
                    int semanticsNodeIdToAccessibilityVirtualNodeId = androidComposeViewAccessibilityDelegateCompat.semanticsNodeIdToAccessibilityVirtualNodeId(scrollObservationScope.semanticsNodeId);
                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.getCurrentSemanticsNodes().get(androidComposeViewAccessibilityDelegateCompat.accessibilityFocusedVirtualViewId);
                    if (semanticsNodeWithAdjustedBounds != null) {
                        try {
                            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = androidComposeViewAccessibilityDelegateCompat.currentlyAccessibilityFocusedANI;
                            if (accessibilityNodeInfoCompat != null) {
                                accessibilityNodeInfoCompat.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.boundsInScreen(semanticsNodeWithAdjustedBounds));
                            }
                        } catch (IllegalStateException unused) {
                        }
                    }
                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds2 = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.getCurrentSemanticsNodes().get(androidComposeViewAccessibilityDelegateCompat.focusedVirtualViewId);
                    if (semanticsNodeWithAdjustedBounds2 != null) {
                        try {
                            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = androidComposeViewAccessibilityDelegateCompat.currentlyFocusedANI;
                            if (accessibilityNodeInfoCompat2 != null) {
                                accessibilityNodeInfoCompat2.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.boundsInScreen(semanticsNodeWithAdjustedBounds2));
                            }
                        } catch (IllegalStateException unused2) {
                        }
                    }
                    androidComposeViewAccessibilityDelegateCompat.view.invalidate();
                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds3 = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.getCurrentSemanticsNodes().get(semanticsNodeIdToAccessibilityVirtualNodeId);
                    if (semanticsNodeWithAdjustedBounds3 != null && (semanticsNode = semanticsNodeWithAdjustedBounds3.semanticsNode) != null && (layoutNode = semanticsNode.layoutNode) != null) {
                        if (scrollAxisRange != null) {
                            androidComposeViewAccessibilityDelegateCompat.pendingHorizontalScrollEvents.set(semanticsNodeIdToAccessibilityVirtualNodeId, scrollAxisRange);
                        }
                        if (scrollAxisRange2 != null) {
                            androidComposeViewAccessibilityDelegateCompat.pendingVerticalScrollEvents.set(semanticsNodeIdToAccessibilityVirtualNodeId, scrollAxisRange2);
                        }
                        androidComposeViewAccessibilityDelegateCompat.notifySubtreeAccessibilityStateChangedIfNeeded(layoutNode);
                    }
                }
                if (scrollAxisRange != null) {
                    scrollObservationScope.oldXValue = (Float) scrollAxisRange.value.invoke();
                }
                if (scrollAxisRange2 != null) {
                    scrollObservationScope.oldYValue = (Float) scrollAxisRange2.value.invoke();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((AbstractComposeView) obj2).removeOnAttachStateChangeListener((SystemBarStateMonitor.AnonymousClass3) obj);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Lifecycle) obj2).removeObserver((FragmentNavigator$$ExternalSyntheticLambda0) obj);
                return unit;
            case 9:
                Function0 function0 = (Function0) obj2;
                if (function0 != null && (rect = (Rect) function0.invoke()) != null) {
                    return rect;
                }
                NodeCoordinator nodeCoordinator2 = (NodeCoordinator) obj;
                if (!nodeCoordinator2.getTail().isAttached) {
                    nodeCoordinator2 = null;
                }
                if (nodeCoordinator2 != null) {
                    return Util.m1090Recttz77jQw(0L, Validate.m1072toSizeozmzZPI(nodeCoordinator2.measuredSize));
                }
                return null;
            default:
                ((Ref$ObjectRef) obj2).element = HitTestResultKt.currentValueOf((FocusTargetInteropNode) obj, PinnableContainerKt.LocalPinnableContainer);
                return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FocusTargetNode$invalidateFocus$1(int i, Object obj, Object obj2) {
        super(0);
        this.$r8$classId = i;
        this.$focusProperties = obj;
        this.this$0 = obj2;
    }
}
