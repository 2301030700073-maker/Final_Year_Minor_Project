package androidx.compose.ui.node;

import androidx.collection.MutableScatterMap;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.foundation.IndicationModifier;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerState$remeasurementModifier$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.modifier.EmptyMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BackwardsCompatNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode, PointerInputModifierNode, ModifierLocalModifierNode, ParentDataModifierNode, LayoutAwareModifierNode, GlobalPositionAwareModifierNode, OwnerScope {
    public Modifier.Element element;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Modifier.Element element = this.element;
        element.getClass();
        AppendedSemanticsElement appendedSemanticsElement = (AppendedSemanticsElement) element;
        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
        semanticsConfiguration.isMergingSemanticsOfDescendants = appendedSemanticsElement.mergeDescendants;
        appendedSemanticsElement.properties.invoke(semanticsConfiguration);
        semanticsPropertyReceiver.getClass();
        SemanticsConfiguration semanticsConfiguration2 = (SemanticsConfiguration) semanticsPropertyReceiver;
        MutableScatterMap mutableScatterMap = semanticsConfiguration2.props;
        if (semanticsConfiguration.isMergingSemanticsOfDescendants) {
            semanticsConfiguration2.isMergingSemanticsOfDescendants = true;
        }
        if (semanticsConfiguration.isClearingSemantics) {
            semanticsConfiguration2.isClearingSemantics = true;
        }
        MutableScatterMap mutableScatterMap2 = semanticsConfiguration.props;
        Object[] objArr = mutableScatterMap2.keys;
        Object[] objArr2 = mutableScatterMap2.values;
        long[] jArr = mutableScatterMap2.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        Object obj = objArr[i4];
                        Object obj2 = objArr2[i4];
                        SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) obj;
                        if (!mutableScatterMap.contains(semanticsPropertyKey)) {
                            mutableScatterMap.set(semanticsPropertyKey, obj2);
                        } else if (obj2 instanceof AccessibilityAction) {
                            Object obj3 = mutableScatterMap.get(semanticsPropertyKey);
                            obj3.getClass();
                            AccessibilityAction accessibilityAction = (AccessibilityAction) obj3;
                            String str = accessibilityAction.label;
                            if (str == null) {
                                str = ((AccessibilityAction) obj2).label;
                            }
                            Function function = accessibilityAction.action;
                            if (function == null) {
                                function = ((AccessibilityAction) obj2).action;
                            }
                            mutableScatterMap.set(semanticsPropertyKey, new AccessibilityAction(str, function));
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        Modifier.Element element = this.element;
        element.getClass();
        ((IndicationModifier) element).indicationInstance.getClass();
        layoutNodeDrawScope.drawContent();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public final EmptyMap getProvidedValues() {
        return EmptyMap.INSTANCE;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: getTouchBoundsExpansion-RZrCHBk */
    public final long mo12getTouchBoundsExpansionRZrCHBk() {
        return HitTestResultKt.None;
    }

    public final void initializeModifier(boolean z) {
        if (!this.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("initializeModifier called on unattached node");
        }
        Modifier.Element element = this.element;
        if ((this.kindSet & 4) != 0 && !z) {
            HitTestResultKt.m317requireCoordinator64DMado(this, 2).invalidateLayer();
        }
        if ((this.kindSet & 2) != 0) {
            TailModifierNode tailModifierNode = HitTestResultKt.requireLayoutNode(this).nodes.tail;
            tailModifierNode.getClass();
            if (tailModifierNode.attachHasBeenRun) {
                NodeCoordinator nodeCoordinator = this.coordinator;
                nodeCoordinator.getClass();
                ((LayoutModifierNodeCoordinator) nodeCoordinator).setLayoutModifierNode$ui(this);
                OwnedLayer ownedLayer = nodeCoordinator.layer;
                if (ownedLayer != null) {
                    ((GraphicsLayerOwnerLayer) ownedLayer).invalidate();
                }
            }
            if (!z) {
                HitTestResultKt.m317requireCoordinator64DMado(this, 2).invalidateLayer();
                HitTestResultKt.requireLayoutNode(this).invalidateMeasurements$ui();
            }
        }
        if (element instanceof PagerState$remeasurementModifier$1) {
            PagerState$remeasurementModifier$1 pagerState$remeasurementModifier$1 = (PagerState$remeasurementModifier$1) element;
            LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(this);
            switch (pagerState$remeasurementModifier$1.$r8$classId) {
                case 0:
                    ((PagerState) pagerState$remeasurementModifier$1.this$0).remeasurement$delegate.setValue(requireLayoutNode);
                    break;
                default:
                    ((LazyListState) pagerState$remeasurementModifier$1.this$0).remeasurement = requireLayoutNode;
                    break;
            }
        }
        if ((this.kindSet & 8) != 0) {
            ((AndroidComposeView) HitTestResultKt.requireOwner(this)).onSemanticsChange();
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final boolean interceptOutOfBoundsChildEvents() {
        this.element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean isValidOwnerScope() {
        return this.isAttached;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        this.element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        this.element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo9measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        this.element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        this.element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        this.element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public final Object modifyParentData(Object obj) {
        Modifier.Element element = this.element;
        element.getClass();
        return (AnimatedContentTransitionScopeImpl.ChildData) element;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        initializeModifier(true);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onCancelPointerInput() {
        this.element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        if (!this.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("unInitializeModifier called on unattached node");
        }
        if ((this.kindSet & 8) != 0) {
            ((AndroidComposeView) HitTestResultKt.requireOwner(this)).onSemanticsChange();
        }
    }

    public final void onFocusEvent() {
        Modifier.Element element = this.element;
        InlineClassHelperKt.throwIllegalStateException("onFocusEvent called on wrong node");
        element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void onGloballyPositioned(NodeCoordinator nodeCoordinator) {
        this.element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
        HitTestResultKt.invalidateDraw(this);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public final void mo17onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        this.element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onViewConfigurationChange() {
        onCancelPointerInput();
        throw null;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final boolean sharePointerInputWithSiblings() {
        this.element.getClass();
        throw new ClassCastException();
    }

    public final String toString() {
        return this.element.toString();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void onPlaced(LayoutCoordinates layoutCoordinates) {
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public final void mo40onRemeasuredozmzZPI(long j) {
    }
}
