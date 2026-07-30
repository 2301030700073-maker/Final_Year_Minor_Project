package androidx.compose.ui.layout;

import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ReusableComposition;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.platform.Wrapper_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.FontScaling;
import androidx.compose.ui.unit.LayoutDirection;
import ch.qos.logback.core.CoreConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubcomposeLayout.kt */
/* loaded from: classes.dex */
public final class LayoutNodeSubcompositionsState implements ComposeNodeLifecycleCallback {
    private CompositionContext compositionContext;
    private int currentIndex;
    private int currentPostLookaheadIndex;
    private int precomposedCount;
    private int reusableCount;
    private final LayoutNode root;
    private SubcomposeSlotReusePolicy slotReusePolicy;
    private final HashMap nodeToNodeState = new HashMap();
    private final HashMap slotIdToNode = new HashMap();
    private final Scope scope = new Scope();
    private final PostLookaheadMeasureScopeImpl postLookaheadMeasureScope = new PostLookaheadMeasureScopeImpl();
    private final HashMap precomposeMap = new HashMap();
    private final SubcomposeSlotReusePolicy.SlotIdsSet reusableSlotIdsSet = new SubcomposeSlotReusePolicy.SlotIdsSet(null, 1, null);
    private final Map postLookaheadPrecomposeSlotHandleMap = new LinkedHashMap();
    private final MutableVector postLookaheadComposedSlotIds = new MutableVector(new Object[16], 0);
    private final String NoIntrinsicsMessage = "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve 'match parent' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement.";

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubcomposeLayout.kt */
    final class Scope implements SubcomposeMeasureScope {
        private float density;
        private float fontScale;
        private LayoutDirection layoutDirection = LayoutDirection.Rtl;

        @Override // androidx.compose.ui.layout.MeasureScope
        public /* synthetic */ MeasureResult layout(int i, int i2, Map map, Function1 function1) {
            MeasureResult layout;
            layout = layout(i, i2, map, null, function1);
            return layout;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx-0680j_4 */
        public /* synthetic */ int mo207roundToPx0680j_4(float f) {
            return Density.CC.m2414$default$roundToPx0680j_4(this, f);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        /* renamed from: toDp-GaN1DYA */
        public /* synthetic */ float mo208toDpGaN1DYA(long j) {
            return FontScaling.CC.m2457$default$toDpGaN1DYA(this, j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public /* synthetic */ float mo209toDpu2uoSUM(float f) {
            float m2424constructorimpl;
            m2424constructorimpl = Dp.m2424constructorimpl(f / getDensity());
            return m2424constructorimpl;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public /* synthetic */ float mo210toDpu2uoSUM(int i) {
            float m2424constructorimpl;
            m2424constructorimpl = Dp.m2424constructorimpl(i / getDensity());
            return m2424constructorimpl;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDpSize-k-rfVVM */
        public /* synthetic */ long mo211toDpSizekrfVVM(long j) {
            return Density.CC.m2417$default$toDpSizekrfVVM(this, j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public /* synthetic */ float mo212toPxR2X_6o(long j) {
            return Density.CC.m2418$default$toPxR2X_6o(this, j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public /* synthetic */ float mo213toPx0680j_4(float f) {
            return Density.CC.m2419$default$toPx0680j_4(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public /* synthetic */ long mo214toSizeXkaWNTQ(long j) {
            return Density.CC.m2420$default$toSizeXkaWNTQ(this, j);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        /* renamed from: toSp-0xMU5do */
        public /* synthetic */ long mo215toSp0xMU5do(float f) {
            return FontScaling.CC.m2458$default$toSp0xMU5do(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public /* synthetic */ long mo216toSpkPz2Gy4(float f) {
            long mo215toSp0xMU5do;
            mo215toSp0xMU5do = mo215toSp0xMU5do(mo209toDpu2uoSUM(f));
            return mo215toSp0xMU5do;
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public MeasureResult layout(final int i, final int i2, final Map map, final Function1 function1, final Function1 function12) {
            if (!((i & (-16777216)) == 0 && ((-16777216) & i2) == 0)) {
                InlineClassHelperKt.throwIllegalStateException("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
            }
            final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
            return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$Scope$layout$1
                @Override // androidx.compose.ui.layout.MeasureResult
                public int getWidth() {
                    return i;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public int getHeight() {
                    return i2;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public Map getAlignmentLines() {
                    return map;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public Function1 getRulers() {
                    return function1;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public void placeChildren() {
                    LookaheadDelegate lookaheadDelegate;
                    if (!this.isLookingAhead() || (lookaheadDelegate = layoutNodeSubcompositionsState.root.getInnerCoordinator$ui_release().getLookaheadDelegate()) == null) {
                        function12.invoke(layoutNodeSubcompositionsState.root.getInnerCoordinator$ui_release().getPlacementScope());
                    } else {
                        function12.invoke(lookaheadDelegate.getPlacementScope());
                    }
                }
            };
        }

        public Scope() {
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public LayoutDirection getLayoutDirection() {
            return this.layoutDirection;
        }

        public void setLayoutDirection(LayoutDirection layoutDirection) {
            this.layoutDirection = layoutDirection;
        }

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return this.density;
        }

        public void setDensity(float f) {
            this.density = f;
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public float getFontScale() {
            return this.fontScale;
        }

        public void setFontScale(float f) {
            this.fontScale = f;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public boolean isLookingAhead() {
            return LayoutNodeSubcompositionsState.this.root.getLayoutState$ui_release() == LayoutNode.LayoutState.LookaheadLayingOut || LayoutNodeSubcompositionsState.this.root.getLayoutState$ui_release() == LayoutNode.LayoutState.LookaheadMeasuring;
        }

        @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
        public List subcompose(Object obj, Function2 function2) {
            return LayoutNodeSubcompositionsState.this.subcompose(obj, function2);
        }
    }

    public LayoutNodeSubcompositionsState(LayoutNode layoutNode, SubcomposeSlotReusePolicy subcomposeSlotReusePolicy) {
        this.root = layoutNode;
        this.slotReusePolicy = subcomposeSlotReusePolicy;
    }

    public final void setCompositionContext(CompositionContext compositionContext) {
        this.compositionContext = compositionContext;
    }

    public final void setSlotReusePolicy(SubcomposeSlotReusePolicy subcomposeSlotReusePolicy) {
        if (this.slotReusePolicy != subcomposeSlotReusePolicy) {
            this.slotReusePolicy = subcomposeSlotReusePolicy;
            markActiveNodesAsReused(false);
            LayoutNode.requestRemeasure$ui_release$default(this.root, false, false, false, 7, null);
        }
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public void onReuse() {
        markActiveNodesAsReused(false);
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public void onDeactivate() {
        markActiveNodesAsReused(true);
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public void onRelease() {
        disposeCurrentNodes();
    }

    public final List subcompose(Object obj, Function2 function2) {
        makeSureStateIsConsistent();
        LayoutNode.LayoutState layoutState$ui_release = this.root.getLayoutState$ui_release();
        LayoutNode.LayoutState layoutState = LayoutNode.LayoutState.Measuring;
        if (!(layoutState$ui_release == layoutState || layoutState$ui_release == LayoutNode.LayoutState.LayingOut || layoutState$ui_release == LayoutNode.LayoutState.LookaheadMeasuring || layoutState$ui_release == LayoutNode.LayoutState.LookaheadLayingOut)) {
            InlineClassHelperKt.throwIllegalStateException("subcompose can only be used inside the measure or layout blocks");
        }
        HashMap hashMap = this.slotIdToNode;
        Object obj2 = hashMap.get(obj);
        if (obj2 == null) {
            obj2 = (LayoutNode) this.precomposeMap.remove(obj);
            if (obj2 != null) {
                if (!(this.precomposedCount > 0)) {
                    InlineClassHelperKt.throwIllegalStateException("Check failed.");
                }
                this.precomposedCount--;
            } else {
                LayoutNode takeNodeFromReusables = takeNodeFromReusables(obj);
                if (takeNodeFromReusables == null) {
                    takeNodeFromReusables = createNodeAt(this.currentIndex);
                }
                obj2 = takeNodeFromReusables;
            }
            hashMap.put(obj, obj2);
        }
        LayoutNode layoutNode = (LayoutNode) obj2;
        if (CollectionsKt.getOrNull(this.root.getFoldedChildren$ui_release(), this.currentIndex) != layoutNode) {
            int indexOf = this.root.getFoldedChildren$ui_release().indexOf(layoutNode);
            int i = this.currentIndex;
            if (indexOf < i) {
                throw new IllegalArgumentException(("Key \"" + obj + "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item.").toString());
            }
            if (i != indexOf) {
                move$default(this, indexOf, i, 0, 4, null);
            }
        }
        this.currentIndex++;
        subcompose(layoutNode, obj, function2);
        if (layoutState$ui_release == layoutState || layoutState$ui_release == LayoutNode.LayoutState.LayingOut) {
            return layoutNode.getChildMeasurables$ui_release();
        }
        return layoutNode.getChildLookaheadMeasurables$ui_release();
    }

    private final void subcompose(LayoutNode layoutNode, Object obj, Function2 function2) {
        HashMap hashMap = this.nodeToNodeState;
        Object obj2 = hashMap.get(layoutNode);
        if (obj2 == null) {
            obj2 = new NodeState(obj, ComposableSingletons$SubcomposeLayoutKt.INSTANCE.m1741getLambda1$ui_release(), null, 4, null);
            hashMap.put(layoutNode, obj2);
        }
        NodeState nodeState = (NodeState) obj2;
        ReusableComposition composition = nodeState.getComposition();
        boolean hasInvalidations = composition != null ? composition.getHasInvalidations() : true;
        if (nodeState.getContent() != function2 || hasInvalidations || nodeState.getForceRecompose()) {
            nodeState.setContent(function2);
            subcompose(layoutNode, nodeState);
            nodeState.setForceRecompose(false);
        }
    }

    private final void subcompose(LayoutNode layoutNode, final NodeState nodeState) {
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot makeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            LayoutNode layoutNode2 = this.root;
            layoutNode2.ignoreRemeasureRequests = true;
            final Function2 content = nodeState.getContent();
            ReusableComposition composition = nodeState.getComposition();
            CompositionContext compositionContext = this.compositionContext;
            if (compositionContext != null) {
                nodeState.setComposition(subcomposeInto(composition, layoutNode, nodeState.getForceReuse(), compositionContext, ComposableLambdaKt.composableLambdaInstance(-1750409193, true, new Function2() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$subcompose$3$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer, int i) {
                        if ((i & 3) == 2 && composer.getSkipping()) {
                            composer.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1750409193, i, -1, "androidx.compose.ui.layout.LayoutNodeSubcompositionsState.subcompose.<anonymous>.<anonymous>.<anonymous> (SubcomposeLayout.kt:493)");
                        }
                        boolean active = LayoutNodeSubcompositionsState.NodeState.this.getActive();
                        Function2 function2 = content;
                        composer.startReusableGroup(207, Boolean.valueOf(active));
                        boolean changed = composer.changed(active);
                        composer.startReplaceGroup(-869707859);
                        if (active) {
                            function2.invoke(composer, 0);
                        } else {
                            composer.deactivateToEndGroup(changed);
                        }
                        composer.endReplaceGroup();
                        composer.endReusableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                })));
                nodeState.setForceReuse(false);
                layoutNode2.ignoreRemeasureRequests = false;
                Unit unit = Unit.INSTANCE;
                return;
            }
            throw new IllegalStateException("parent composition reference not set");
        } finally {
            companion.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
        }
    }

    private final ReusableComposition subcomposeInto(ReusableComposition reusableComposition, LayoutNode layoutNode, boolean z, CompositionContext compositionContext, Function2 function2) {
        if (reusableComposition == null || reusableComposition.isDisposed()) {
            reusableComposition = Wrapper_androidKt.createSubcomposition(layoutNode, compositionContext);
        }
        if (!z) {
            reusableComposition.setContent(function2);
        } else {
            reusableComposition.setContentWithReuse(function2);
        }
        return reusableComposition;
    }

    private final Object getSlotIdAtIndex(int i) {
        Object obj = this.nodeToNodeState.get((LayoutNode) this.root.getFoldedChildren$ui_release().get(i));
        Intrinsics.checkNotNull(obj);
        return ((NodeState) obj).getSlotId();
    }

    public final void disposeOrReuseStartingFromIndex(int i) {
        boolean z = false;
        this.reusableCount = 0;
        int size = (this.root.getFoldedChildren$ui_release().size() - this.precomposedCount) - 1;
        if (i <= size) {
            this.reusableSlotIdsSet.clear();
            if (i <= size) {
                int i2 = i;
                while (true) {
                    this.reusableSlotIdsSet.add(getSlotIdAtIndex(i2));
                    if (i2 == size) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            this.slotReusePolicy.getSlotsToRetain(this.reusableSlotIdsSet);
            Snapshot.Companion companion = Snapshot.Companion;
            Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
            boolean z2 = false;
            while (size >= i) {
                try {
                    LayoutNode layoutNode = (LayoutNode) this.root.getFoldedChildren$ui_release().get(size);
                    Object obj = this.nodeToNodeState.get(layoutNode);
                    Intrinsics.checkNotNull(obj);
                    NodeState nodeState = (NodeState) obj;
                    Object slotId = nodeState.getSlotId();
                    if (this.reusableSlotIdsSet.contains(slotId)) {
                        this.reusableCount++;
                        if (nodeState.getActive()) {
                            resetLayoutState(layoutNode);
                            nodeState.setActive(false);
                            z2 = true;
                        }
                    } else {
                        LayoutNode layoutNode2 = this.root;
                        layoutNode2.ignoreRemeasureRequests = true;
                        this.nodeToNodeState.remove(layoutNode);
                        ReusableComposition composition = nodeState.getComposition();
                        if (composition != null) {
                            composition.dispose();
                        }
                        this.root.removeAt$ui_release(size, 1);
                        layoutNode2.ignoreRemeasureRequests = false;
                    }
                    this.slotIdToNode.remove(slotId);
                    size--;
                } catch (Throwable th) {
                    companion.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                    throw th;
                }
            }
            Unit unit = Unit.INSTANCE;
            companion.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            z = z2;
        }
        if (z) {
            Snapshot.Companion.sendApplyNotifications();
        }
        makeSureStateIsConsistent();
    }

    private final void markActiveNodesAsReused(boolean z) {
        SubcomposeLayoutKt$ReusedSlotId$1 subcomposeLayoutKt$ReusedSlotId$1;
        this.precomposedCount = 0;
        this.precomposeMap.clear();
        int size = this.root.getFoldedChildren$ui_release().size();
        if (this.reusableCount != size) {
            this.reusableCount = size;
            Snapshot.Companion companion = Snapshot.Companion;
            Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
            for (int i = 0; i < size; i++) {
                try {
                    LayoutNode layoutNode = (LayoutNode) this.root.getFoldedChildren$ui_release().get(i);
                    NodeState nodeState = (NodeState) this.nodeToNodeState.get(layoutNode);
                    if (nodeState != null && nodeState.getActive()) {
                        resetLayoutState(layoutNode);
                        if (z) {
                            ReusableComposition composition = nodeState.getComposition();
                            if (composition != null) {
                                composition.deactivate();
                            }
                            nodeState.setActiveState(SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null));
                        } else {
                            nodeState.setActive(false);
                        }
                        subcomposeLayoutKt$ReusedSlotId$1 = SubcomposeLayoutKt.ReusedSlotId;
                        nodeState.setSlotId(subcomposeLayoutKt$ReusedSlotId$1);
                    }
                } catch (Throwable th) {
                    companion.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                    throw th;
                }
            }
            Unit unit = Unit.INSTANCE;
            companion.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            this.slotIdToNode.clear();
        }
        makeSureStateIsConsistent();
    }

    private final void disposeCurrentNodes() {
        LayoutNode layoutNode = this.root;
        layoutNode.ignoreRemeasureRequests = true;
        Iterator it = this.nodeToNodeState.values().iterator();
        while (it.hasNext()) {
            ReusableComposition composition = ((NodeState) it.next()).getComposition();
            if (composition != null) {
                composition.dispose();
            }
        }
        this.root.removeAll$ui_release();
        layoutNode.ignoreRemeasureRequests = false;
        this.nodeToNodeState.clear();
        this.slotIdToNode.clear();
        this.precomposedCount = 0;
        this.reusableCount = 0;
        this.precomposeMap.clear();
        makeSureStateIsConsistent();
    }

    public final void makeSureStateIsConsistent() {
        int size = this.root.getFoldedChildren$ui_release().size();
        if (this.nodeToNodeState.size() != size) {
            throw new IllegalArgumentException(("Inconsistency between the count of nodes tracked by the state (" + this.nodeToNodeState.size() + ") and the children count on the SubcomposeLayout (" + size + "). Are you trying to use the state of the disposed SubcomposeLayout?").toString());
        }
        if ((size - this.reusableCount) - this.precomposedCount >= 0) {
            if (this.precomposeMap.size() == this.precomposedCount) {
                return;
            }
            throw new IllegalArgumentException(("Incorrect state. Precomposed children " + this.precomposedCount + ". Map size " + this.precomposeMap.size()).toString());
        }
        throw new IllegalArgumentException(("Incorrect state. Total children " + size + ". Reusable children " + this.reusableCount + ". Precomposed children " + this.precomposedCount).toString());
    }

    private final void resetLayoutState(LayoutNode layoutNode) {
        LayoutNodeLayoutDelegate.MeasurePassDelegate measurePassDelegate$ui_release = layoutNode.getMeasurePassDelegate$ui_release();
        LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.NotUsed;
        measurePassDelegate$ui_release.setMeasuredByParent$ui_release(usageByParent);
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegate$ui_release = layoutNode.getLookaheadPassDelegate$ui_release();
        if (lookaheadPassDelegate$ui_release != null) {
            lookaheadPassDelegate$ui_release.setMeasuredByParent$ui_release(usageByParent);
        }
    }

    private final LayoutNode takeNodeFromReusables(Object obj) {
        int i;
        SubcomposeLayoutKt$ReusedSlotId$1 subcomposeLayoutKt$ReusedSlotId$1;
        if (this.reusableCount == 0) {
            return null;
        }
        int size = this.root.getFoldedChildren$ui_release().size() - this.precomposedCount;
        int i2 = size - this.reusableCount;
        int i3 = size - 1;
        int i4 = i3;
        while (true) {
            if (i4 < i2) {
                i = -1;
                break;
            }
            if (Intrinsics.areEqual(getSlotIdAtIndex(i4), obj)) {
                i = i4;
                break;
            }
            i4--;
        }
        if (i == -1) {
            while (i3 >= i2) {
                Object obj2 = this.nodeToNodeState.get((LayoutNode) this.root.getFoldedChildren$ui_release().get(i3));
                Intrinsics.checkNotNull(obj2);
                NodeState nodeState = (NodeState) obj2;
                Object slotId = nodeState.getSlotId();
                subcomposeLayoutKt$ReusedSlotId$1 = SubcomposeLayoutKt.ReusedSlotId;
                if (slotId == subcomposeLayoutKt$ReusedSlotId$1 || this.slotReusePolicy.areCompatible(obj, nodeState.getSlotId())) {
                    nodeState.setSlotId(obj);
                    i4 = i3;
                    i = i4;
                    break;
                }
                i3--;
            }
            i4 = i3;
        }
        if (i == -1) {
            return null;
        }
        if (i4 != i2) {
            move(i4, i2, 1);
        }
        this.reusableCount--;
        LayoutNode layoutNode = (LayoutNode) this.root.getFoldedChildren$ui_release().get(i2);
        Object obj3 = this.nodeToNodeState.get(layoutNode);
        Intrinsics.checkNotNull(obj3);
        NodeState nodeState2 = (NodeState) obj3;
        nodeState2.setActiveState(SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null));
        nodeState2.setForceReuse(true);
        nodeState2.setForceRecompose(true);
        return layoutNode;
    }

    public final MeasurePolicy createMeasurePolicy(final Function2 function2) {
        final String str = this.NoIntrinsicsMessage;
        return new LayoutNode.NoIntrinsicsMeasurePolicy(str) { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            /* renamed from: measure-3p2s80s */
            public MeasureResult mo21measure3p2s80s(MeasureScope measureScope, List list, long j) {
                final int i;
                LayoutNodeSubcompositionsState.PostLookaheadMeasureScopeImpl postLookaheadMeasureScopeImpl;
                final int i2;
                LayoutNodeSubcompositionsState.this.scope.setLayoutDirection(measureScope.getLayoutDirection());
                LayoutNodeSubcompositionsState.this.scope.setDensity(measureScope.getDensity());
                LayoutNodeSubcompositionsState.this.scope.setFontScale(measureScope.getFontScale());
                if (measureScope.isLookingAhead() || LayoutNodeSubcompositionsState.this.root.getLookaheadRoot$ui_release() == null) {
                    LayoutNodeSubcompositionsState.this.currentIndex = 0;
                    final MeasureResult measureResult = (MeasureResult) function2.invoke(LayoutNodeSubcompositionsState.this.scope, Constraints.m2386boximpl(j));
                    i = LayoutNodeSubcompositionsState.this.currentIndex;
                    final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
                    return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$2
                        @Override // androidx.compose.ui.layout.MeasureResult
                        public Map getAlignmentLines() {
                            return measureResult.getAlignmentLines();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public int getHeight() {
                            return measureResult.getHeight();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public Function1 getRulers() {
                            return measureResult.getRulers();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public int getWidth() {
                            return measureResult.getWidth();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public void placeChildren() {
                            int i3;
                            layoutNodeSubcompositionsState.currentIndex = i;
                            measureResult.placeChildren();
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = layoutNodeSubcompositionsState;
                            i3 = layoutNodeSubcompositionsState2.currentIndex;
                            layoutNodeSubcompositionsState2.disposeOrReuseStartingFromIndex(i3);
                        }
                    };
                }
                LayoutNodeSubcompositionsState.this.currentPostLookaheadIndex = 0;
                Function2 function22 = function2;
                postLookaheadMeasureScopeImpl = LayoutNodeSubcompositionsState.this.postLookaheadMeasureScope;
                final MeasureResult measureResult2 = (MeasureResult) function22.invoke(postLookaheadMeasureScopeImpl, Constraints.m2386boximpl(j));
                i2 = LayoutNodeSubcompositionsState.this.currentPostLookaheadIndex;
                final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = LayoutNodeSubcompositionsState.this;
                return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1
                    @Override // androidx.compose.ui.layout.MeasureResult
                    public Map getAlignmentLines() {
                        return measureResult2.getAlignmentLines();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public int getHeight() {
                        return measureResult2.getHeight();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public Function1 getRulers() {
                        return measureResult2.getRulers();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public int getWidth() {
                        return measureResult2.getWidth();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public void placeChildren() {
                        layoutNodeSubcompositionsState2.currentPostLookaheadIndex = i2;
                        measureResult2.placeChildren();
                        layoutNodeSubcompositionsState2.disposeUnusedSlotsInPostLookahead();
                    }
                };
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disposeUnusedSlotsInPostLookahead() {
        CollectionsKt.removeAll(this.postLookaheadPrecomposeSlotHandleMap.entrySet(), new Function1() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$disposeUnusedSlotsInPostLookahead$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Map.Entry entry) {
                MutableVector mutableVector;
                boolean z;
                int i;
                Object key = entry.getKey();
                SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = (SubcomposeLayoutState.PrecomposedSlotHandle) entry.getValue();
                mutableVector = LayoutNodeSubcompositionsState.this.postLookaheadComposedSlotIds;
                int indexOf = mutableVector.indexOf(key);
                if (indexOf >= 0) {
                    i = LayoutNodeSubcompositionsState.this.currentPostLookaheadIndex;
                    if (indexOf < i) {
                        z = false;
                        return Boolean.valueOf(z);
                    }
                }
                precomposedSlotHandle.dispose();
                z = true;
                return Boolean.valueOf(z);
            }
        });
    }

    public final SubcomposeLayoutState.PrecomposedSlotHandle precompose(final Object obj, Function2 function2) {
        if (!this.root.isAttached()) {
            return new SubcomposeLayoutState.PrecomposedSlotHandle() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precompose$1
                @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
                public void dispose() {
                }

                @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
                public /* synthetic */ int getPlaceablesCount() {
                    return SubcomposeLayoutState.PrecomposedSlotHandle.CC.$default$getPlaceablesCount(this);
                }

                @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
                /* renamed from: premeasure-0kLqBqw, reason: not valid java name */
                public /* synthetic */ void mo1762premeasure0kLqBqw(int i, long j) {
                    SubcomposeLayoutState.PrecomposedSlotHandle.CC.m1793$default$premeasure0kLqBqw(this, i, j);
                }

                @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
                public /* synthetic */ void traverseDescendants(Object obj2, Function1 function1) {
                    SubcomposeLayoutState.PrecomposedSlotHandle.CC.$default$traverseDescendants(this, obj2, function1);
                }
            };
        }
        makeSureStateIsConsistent();
        if (!this.slotIdToNode.containsKey(obj)) {
            this.postLookaheadPrecomposeSlotHandleMap.remove(obj);
            HashMap hashMap = this.precomposeMap;
            Object obj2 = hashMap.get(obj);
            if (obj2 == null) {
                obj2 = takeNodeFromReusables(obj);
                if (obj2 != null) {
                    move(this.root.getFoldedChildren$ui_release().indexOf(obj2), this.root.getFoldedChildren$ui_release().size(), 1);
                    this.precomposedCount++;
                } else {
                    obj2 = createNodeAt(this.root.getFoldedChildren$ui_release().size());
                    this.precomposedCount++;
                }
                hashMap.put(obj, obj2);
            }
            subcompose((LayoutNode) obj2, obj, function2);
        }
        return new SubcomposeLayoutState.PrecomposedSlotHandle() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precompose$2
            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public void dispose() {
                HashMap hashMap2;
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                int i6;
                LayoutNodeSubcompositionsState.this.makeSureStateIsConsistent();
                hashMap2 = LayoutNodeSubcompositionsState.this.precomposeMap;
                LayoutNode layoutNode = (LayoutNode) hashMap2.remove(obj);
                if (layoutNode != null) {
                    i = LayoutNodeSubcompositionsState.this.precomposedCount;
                    if (i > 0) {
                        int indexOf = LayoutNodeSubcompositionsState.this.root.getFoldedChildren$ui_release().indexOf(layoutNode);
                        int size = LayoutNodeSubcompositionsState.this.root.getFoldedChildren$ui_release().size();
                        i2 = LayoutNodeSubcompositionsState.this.precomposedCount;
                        if (indexOf < size - i2) {
                            throw new IllegalStateException("Item is not in pre-composed item range");
                        }
                        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
                        i3 = layoutNodeSubcompositionsState.reusableCount;
                        layoutNodeSubcompositionsState.reusableCount = i3 + 1;
                        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = LayoutNodeSubcompositionsState.this;
                        i4 = layoutNodeSubcompositionsState2.precomposedCount;
                        layoutNodeSubcompositionsState2.precomposedCount = i4 - 1;
                        int size2 = LayoutNodeSubcompositionsState.this.root.getFoldedChildren$ui_release().size();
                        i5 = LayoutNodeSubcompositionsState.this.precomposedCount;
                        int i7 = size2 - i5;
                        i6 = LayoutNodeSubcompositionsState.this.reusableCount;
                        int i8 = i7 - i6;
                        LayoutNodeSubcompositionsState.this.move(indexOf, i8, 1);
                        LayoutNodeSubcompositionsState.this.disposeOrReuseStartingFromIndex(i8);
                        return;
                    }
                    throw new IllegalStateException("No pre-composed items to dispose");
                }
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public int getPlaceablesCount() {
                HashMap hashMap2;
                List children$ui_release;
                hashMap2 = LayoutNodeSubcompositionsState.this.precomposeMap;
                LayoutNode layoutNode = (LayoutNode) hashMap2.get(obj);
                if (layoutNode == null || (children$ui_release = layoutNode.getChildren$ui_release()) == null) {
                    return 0;
                }
                return children$ui_release.size();
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            /* renamed from: premeasure-0kLqBqw */
            public void mo1762premeasure0kLqBqw(int i, long j) {
                HashMap hashMap2;
                hashMap2 = LayoutNodeSubcompositionsState.this.precomposeMap;
                LayoutNode layoutNode = (LayoutNode) hashMap2.get(obj);
                if (layoutNode == null || !layoutNode.isAttached()) {
                    return;
                }
                int size = layoutNode.getChildren$ui_release().size();
                if (i < 0 || i >= size) {
                    throw new IndexOutOfBoundsException("Index (" + i + ") is out of bound of [0, " + size + CoreConstants.RIGHT_PARENTHESIS_CHAR);
                }
                if (!layoutNode.isPlaced()) {
                    LayoutNode layoutNode2 = LayoutNodeSubcompositionsState.this.root;
                    layoutNode2.ignoreRemeasureRequests = true;
                    LayoutNodeKt.requireOwner(layoutNode).mo1913measureAndLayout0kLqBqw((LayoutNode) layoutNode.getChildren$ui_release().get(i), j);
                    layoutNode2.ignoreRemeasureRequests = false;
                    return;
                }
                throw new IllegalArgumentException("Pre-measure called on node that is not placed");
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public void traverseDescendants(Object obj3, Function1 function1) {
                HashMap hashMap2;
                NodeChain nodes$ui_release;
                Modifier.Node head$ui_release;
                hashMap2 = LayoutNodeSubcompositionsState.this.precomposeMap;
                LayoutNode layoutNode = (LayoutNode) hashMap2.get(obj);
                if (layoutNode == null || (nodes$ui_release = layoutNode.getNodes$ui_release()) == null || (head$ui_release = nodes$ui_release.getHead$ui_release()) == null) {
                    return;
                }
                TraversableNodeKt.traverseDescendants(head$ui_release, obj3, function1);
            }
        };
    }

    public final void forceRecomposeChildren() {
        if (this.reusableCount != this.root.getFoldedChildren$ui_release().size()) {
            Iterator it = this.nodeToNodeState.entrySet().iterator();
            while (it.hasNext()) {
                ((NodeState) ((Map.Entry) it.next()).getValue()).setForceRecompose(true);
            }
            if (this.root.getMeasurePending$ui_release()) {
                return;
            }
            LayoutNode.requestRemeasure$ui_release$default(this.root, false, false, false, 7, null);
        }
    }

    private final LayoutNode createNodeAt(int i) {
        LayoutNode layoutNode = new LayoutNode(true, 0, 2, null);
        LayoutNode layoutNode2 = this.root;
        layoutNode2.ignoreRemeasureRequests = true;
        this.root.insertAt$ui_release(i, layoutNode);
        layoutNode2.ignoreRemeasureRequests = false;
        return layoutNode;
    }

    static /* synthetic */ void move$default(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i3 = 1;
        }
        layoutNodeSubcompositionsState.move(i, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void move(int i, int i2, int i3) {
        LayoutNode layoutNode = this.root;
        layoutNode.ignoreRemeasureRequests = true;
        this.root.move$ui_release(i, i2, i3);
        layoutNode.ignoreRemeasureRequests = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubcomposeLayout.kt */
    static final class NodeState {
        private MutableState activeState;
        private ReusableComposition composition;
        private Function2 content;
        private boolean forceRecompose;
        private boolean forceReuse;
        private Object slotId;

        public NodeState(Object obj, Function2 function2, ReusableComposition reusableComposition) {
            this.slotId = obj;
            this.content = function2;
            this.composition = reusableComposition;
            this.activeState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
        }

        public /* synthetic */ NodeState(Object obj, Function2 function2, ReusableComposition reusableComposition, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, function2, (i & 4) != 0 ? null : reusableComposition);
        }

        public final Object getSlotId() {
            return this.slotId;
        }

        public final void setSlotId(Object obj) {
            this.slotId = obj;
        }

        public final Function2 getContent() {
            return this.content;
        }

        public final void setContent(Function2 function2) {
            this.content = function2;
        }

        public final ReusableComposition getComposition() {
            return this.composition;
        }

        public final void setComposition(ReusableComposition reusableComposition) {
            this.composition = reusableComposition;
        }

        public final boolean getForceRecompose() {
            return this.forceRecompose;
        }

        public final void setForceRecompose(boolean z) {
            this.forceRecompose = z;
        }

        public final boolean getForceReuse() {
            return this.forceReuse;
        }

        public final void setForceReuse(boolean z) {
            this.forceReuse = z;
        }

        public final void setActiveState(MutableState mutableState) {
            this.activeState = mutableState;
        }

        public final boolean getActive() {
            return ((Boolean) this.activeState.getValue()).booleanValue();
        }

        public final void setActive(boolean z) {
            this.activeState.setValue(Boolean.valueOf(z));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubcomposeLayout.kt */
    final class PostLookaheadMeasureScopeImpl implements SubcomposeMeasureScope, MeasureScope {
        private final /* synthetic */ Scope $$delegate_0;

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return this.$$delegate_0.getDensity();
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public float getFontScale() {
            return this.$$delegate_0.getFontScale();
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public LayoutDirection getLayoutDirection() {
            return this.$$delegate_0.getLayoutDirection();
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public boolean isLookingAhead() {
            return this.$$delegate_0.isLookingAhead();
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public MeasureResult layout(int i, int i2, Map map, Function1 function1) {
            return this.$$delegate_0.layout(i, i2, map, function1);
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public MeasureResult layout(int i, int i2, Map map, Function1 function1, Function1 function12) {
            return this.$$delegate_0.layout(i, i2, map, function1, function12);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx-0680j_4 */
        public int mo207roundToPx0680j_4(float f) {
            return this.$$delegate_0.mo207roundToPx0680j_4(f);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        /* renamed from: toDp-GaN1DYA */
        public float mo208toDpGaN1DYA(long j) {
            return this.$$delegate_0.mo208toDpGaN1DYA(j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public float mo209toDpu2uoSUM(float f) {
            return this.$$delegate_0.mo209toDpu2uoSUM(f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public float mo210toDpu2uoSUM(int i) {
            return this.$$delegate_0.mo210toDpu2uoSUM(i);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDpSize-k-rfVVM */
        public long mo211toDpSizekrfVVM(long j) {
            return this.$$delegate_0.mo211toDpSizekrfVVM(j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public float mo212toPxR2X_6o(long j) {
            return this.$$delegate_0.mo212toPxR2X_6o(j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public float mo213toPx0680j_4(float f) {
            return this.$$delegate_0.mo213toPx0680j_4(f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public long mo214toSizeXkaWNTQ(long j) {
            return this.$$delegate_0.mo214toSizeXkaWNTQ(j);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        /* renamed from: toSp-0xMU5do */
        public long mo215toSp0xMU5do(float f) {
            return this.$$delegate_0.mo215toSp0xMU5do(f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public long mo216toSpkPz2Gy4(float f) {
            return this.$$delegate_0.mo216toSpkPz2Gy4(f);
        }

        public PostLookaheadMeasureScopeImpl() {
            this.$$delegate_0 = LayoutNodeSubcompositionsState.this.scope;
        }

        @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
        public List subcompose(Object obj, Function2 function2) {
            LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.slotIdToNode.get(obj);
            List childMeasurables$ui_release = layoutNode != null ? layoutNode.getChildMeasurables$ui_release() : null;
            return childMeasurables$ui_release != null ? childMeasurables$ui_release : LayoutNodeSubcompositionsState.this.postLookaheadSubcompose(obj, function2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List postLookaheadSubcompose(Object obj, Function2 function2) {
        if (this.postLookaheadComposedSlotIds.getSize() < this.currentPostLookaheadIndex) {
            throw new IllegalArgumentException("Error: currentPostLookaheadIndex cannot be greater than the size of thepostLookaheadComposedSlotIds list.");
        }
        int size = this.postLookaheadComposedSlotIds.getSize();
        int i = this.currentPostLookaheadIndex;
        if (size == i) {
            this.postLookaheadComposedSlotIds.add(obj);
        } else {
            this.postLookaheadComposedSlotIds.set(i, obj);
        }
        this.currentPostLookaheadIndex++;
        if (!this.precomposeMap.containsKey(obj)) {
            this.postLookaheadPrecomposeSlotHandleMap.put(obj, precompose(obj, function2));
            if (this.root.getLayoutState$ui_release() == LayoutNode.LayoutState.LayingOut) {
                this.root.requestLookaheadRelayout$ui_release(true);
            } else {
                LayoutNode.requestLookaheadRemeasure$ui_release$default(this.root, true, false, false, 6, null);
            }
        }
        LayoutNode layoutNode = (LayoutNode) this.precomposeMap.get(obj);
        if (layoutNode != null) {
            List childDelegates$ui_release = layoutNode.getMeasurePassDelegate$ui_release().getChildDelegates$ui_release();
            int size2 = childDelegates$ui_release.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((LayoutNodeLayoutDelegate.MeasurePassDelegate) childDelegates$ui_release.get(i2)).markDetachedFromParentLookaheadPass$ui_release();
            }
            return childDelegates$ui_release;
        }
        return CollectionsKt.emptyList();
    }
}
