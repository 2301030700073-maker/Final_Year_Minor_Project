package androidx.compose.ui.node;

import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerState$remeasurementModifier$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.BuildDrawCacheParams;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.modifier.EmptyMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsModifier;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$4;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import kotlin.ExceptionsKt;
import kotlin.Function;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BackwardsCompatNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode, PointerInputModifierNode, ModifierLocalModifierNode, ParentDataModifierNode, LayoutAwareModifierNode, GlobalPositionAwareModifierNode, FocusEventModifierNode, FocusPropertiesModifierNode, FocusRequesterModifierNode, OwnerScope, BuildDrawCacheParams {
    public Modifier.Element element;

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public final void applyFocusProperties(FocusProperties focusProperties) {
        Modifier.Element element = this.element;
        InlineClassHelperKt.throwIllegalStateException("applyFocusProperties called on wrong node");
        element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Modifier.Element element = this.element;
        element.getClass();
        SemanticsConfiguration semanticsConfiguration = ((SemanticsModifier) element).getSemanticsConfiguration();
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
        throw null;
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final Density getDensity() {
        return HitTestResultKt.requireLayoutNode(this).density;
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final LayoutDirection getLayoutDirection() {
        return HitTestResultKt.requireLayoutNode(this).layoutDirection;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public final EmptyMap getProvidedValues() {
        return EmptyMap.INSTANCE;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    /* renamed from: getSize-NH-jbRc */
    public final long mo353getSizeNHjbRc() {
        return ExceptionsKt.m813toSizeozmzZPI(HitTestResultKt.m547requireCoordinator64DMado(this, 128).measuredSize);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: getTouchBoundsExpansion-RZrCHBk */
    public final long mo29getTouchBoundsExpansionRZrCHBk() {
        return TouchBoundsExpansion.None;
    }

    public final void initializeModifier(boolean z) {
        if (!this.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("initializeModifier called on unattached node");
        }
        Modifier.Element element = this.element;
        if ((this.kindSet & 4) != 0 && !z) {
            HitTestResultKt.m547requireCoordinator64DMado(this, 2).invalidateLayer();
        }
        if ((this.kindSet & 2) != 0) {
            TailModifierNode tailModifierNode = (TailModifierNode) HitTestResultKt.requireLayoutNode(this).nodes.tail;
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
                HitTestResultKt.m547requireCoordinator64DMado(this, 2).invalidateLayer();
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
                case 1:
                    ((LazyListState) pagerState$remeasurementModifier$1.this$0).remeasurement = requireLayoutNode;
                    break;
                case 2:
                    ((LazyGridState) pagerState$remeasurementModifier$1.this$0).remeasurement = requireLayoutNode;
                    break;
                default:
                    ((LazyStaggeredGridState) pagerState$remeasurementModifier$1.this$0).remeasurement = requireLayoutNode;
                    break;
            }
        }
        int i = this.kindSet;
        if ((i & 16) != 0 && (element instanceof PointerInteropFilter)) {
            ((PointerInteropFilter) element).pointerInputFilter.application = this.coordinator;
        }
        if ((i & 8) != 0) {
            ((AndroidComposeView) HitTestResultKt.requireOwner(this)).onSemanticsChange();
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void interceptOutOfBoundsChildEvents() {
        Modifier.Element element = this.element;
        element.getClass();
        ((PointerInteropFilter) element).pointerInputFilter.getClass();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean isValidOwnerScope() {
        return this.isAttached;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        Modifier.Element element = this.element;
        element.getClass();
        return ((LayoutModifier) element).maxIntrinsicHeight(lookaheadCapablePlaceable, measurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        Modifier.Element element = this.element;
        element.getClass();
        return ((LayoutModifier) element).maxIntrinsicWidth(lookaheadCapablePlaceable, measurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Modifier.Element element = this.element;
        element.getClass();
        return ((LayoutModifier) element).mo186measure3p2s80s(measureScope, measurable, j);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        Modifier.Element element = this.element;
        element.getClass();
        return ((LayoutModifier) element).minIntrinsicHeight(lookaheadCapablePlaceable, measurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        Modifier.Element element = this.element;
        element.getClass();
        return ((LayoutModifier) element).minIntrinsicWidth(lookaheadCapablePlaceable, measurable, i);
    }

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public final Object modifyParentData(Density density, Object obj) {
        Modifier.Element element = this.element;
        element.getClass();
        return ((ParentDataModifier) element).modifyParentData();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        initializeModifier(true);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onCancelPointerInput() {
        Modifier.Element element = this.element;
        element.getClass();
        ImageLoader$Builder imageLoader$Builder = ((PointerInteropFilter) element).pointerInputFilter;
        PointerInteropFilter.DispatchToViewState dispatchToViewState = (PointerInteropFilter.DispatchToViewState) imageLoader$Builder.defaults;
        PointerInteropFilter pointerInteropFilter = (PointerInteropFilter) imageLoader$Builder.extras;
        if (dispatchToViewState == PointerInteropFilter.DispatchToViewState.Dispatching) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 0);
            obtain.setSource(0);
            AndroidViewHolder$layoutNode$1$4 androidViewHolder$layoutNode$1$4 = pointerInteropFilter.onTouchEvent;
            if (androidViewHolder$layoutNode$1$4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("onTouchEvent");
                throw null;
            }
            androidViewHolder$layoutNode$1$4.invoke(obtain);
            obtain.recycle();
            imageLoader$Builder.defaults = PointerInteropFilter.DispatchToViewState.Unknown;
            pointerInteropFilter.disallowIntercept = false;
            imageLoader$Builder.componentRegistry = null;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        if (this.element instanceof PointerInteropFilter) {
            onCancelPointerInput();
        }
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

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public final void onFocusEvent(FocusStateImpl focusStateImpl) {
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

    /* JADX WARN: Removed duplicated region for block: B:22:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0124 A[ORIG_RETURN, RETURN] */
    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo34onPointerEventH0pRuoY(androidx.compose.ui.input.pointer.PointerEvent r9, androidx.compose.ui.input.pointer.PointerEventPass r10, long r11) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.BackwardsCompatNode.mo34onPointerEventH0pRuoY(androidx.compose.ui.input.pointer.PointerEvent, androidx.compose.ui.input.pointer.PointerEventPass, long):void");
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onViewConfigurationChange() {
        onCancelPointerInput();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final boolean sharePointerInputWithSiblings() {
        Modifier.Element element = this.element;
        element.getClass();
        ((PointerInteropFilter) element).pointerInputFilter.getClass();
        return true;
    }

    public final String toString() {
        return this.element.toString();
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void onPlaced(LayoutCoordinates layoutCoordinates) {
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public final void mo66onRemeasuredozmzZPI(long j) {
    }
}
