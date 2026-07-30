package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.MutableRectKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: NodeCoordinator.kt */
/* loaded from: classes.dex */
public abstract class NodeCoordinator extends LookaheadCapablePlaceable implements Measurable, LayoutCoordinates, OwnerScope {
    private MeasureResult _measureResult;
    private MutableRect _rectCache;
    private GraphicsLayer explicitLayer;
    private boolean forceMeasureWithLookaheadConstraints;
    private boolean forcePlaceWithLookaheadOffset;
    private boolean isClipping;
    private boolean lastLayerDrawingWasSkipped;
    private OwnedLayer layer;
    private Function1 layerBlock;
    private LayerPositionalProperties layerPositionalProperties;
    private final LayoutNode layoutNode;
    private Map oldAlignmentLines;
    private boolean released;
    private NodeCoordinator wrapped;
    private NodeCoordinator wrappedBy;
    private float zIndex;
    public static final Companion Companion = new Companion(null);
    private static final Function1 onCommitAffectingLayerParams = new Function1() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$onCommitAffectingLayerParams$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((NodeCoordinator) obj);
            return Unit.INSTANCE;
        }

        public final void invoke(NodeCoordinator nodeCoordinator) {
            LayerPositionalProperties layerPositionalProperties;
            LayerPositionalProperties layerPositionalProperties2;
            LayerPositionalProperties layerPositionalProperties3;
            if (nodeCoordinator.isValidOwnerScope()) {
                layerPositionalProperties = nodeCoordinator.layerPositionalProperties;
                if (layerPositionalProperties != null) {
                    layerPositionalProperties2 = NodeCoordinator.tmpLayerPositionalProperties;
                    layerPositionalProperties2.copyFrom(layerPositionalProperties);
                    NodeCoordinator.updateLayerParameters$default(nodeCoordinator, false, 1, null);
                    layerPositionalProperties3 = NodeCoordinator.tmpLayerPositionalProperties;
                    if (layerPositionalProperties3.hasSameValuesAs(layerPositionalProperties)) {
                        return;
                    }
                    LayoutNode layoutNode = nodeCoordinator.getLayoutNode();
                    LayoutNodeLayoutDelegate layoutDelegate$ui_release = layoutNode.getLayoutDelegate$ui_release();
                    if (layoutDelegate$ui_release.getChildrenAccessingCoordinatesDuringPlacement() > 0) {
                        if (layoutDelegate$ui_release.getCoordinatesAccessedDuringModifierPlacement() || layoutDelegate$ui_release.getCoordinatesAccessedDuringPlacement()) {
                            LayoutNode.requestRelayout$ui_release$default(layoutNode, false, 1, null);
                        }
                        layoutDelegate$ui_release.getMeasurePassDelegate$ui_release().notifyChildrenUsingCoordinatesWhilePlacing();
                    }
                    Owner owner$ui_release = layoutNode.getOwner$ui_release();
                    if (owner$ui_release != null) {
                        owner$ui_release.requestOnPositionedCallback(layoutNode);
                        return;
                    }
                    return;
                }
                NodeCoordinator.updateLayerParameters$default(nodeCoordinator, false, 1, null);
            }
        }
    };
    private static final Function1 onCommitAffectingLayer = new Function1() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$onCommitAffectingLayer$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((NodeCoordinator) obj);
            return Unit.INSTANCE;
        }

        public final void invoke(NodeCoordinator nodeCoordinator) {
            OwnedLayer layer = nodeCoordinator.getLayer();
            if (layer != null) {
                layer.invalidate();
            }
        }
    };
    private static final ReusableGraphicsLayerScope graphicsLayerScope = new ReusableGraphicsLayerScope();
    private static final LayerPositionalProperties tmpLayerPositionalProperties = new LayerPositionalProperties();
    private static final float[] tmpMatrix = Matrix.m1364constructorimpl$default(null, 1, null);
    private static final HitTestSource PointerInputSource = new HitTestSource() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$PointerInputSource$1
        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean shouldHitTestChildren(LayoutNode layoutNode) {
            return true;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* renamed from: entityType-OLwlOKw, reason: not valid java name */
        public int mo1894entityTypeOLwlOKw() {
            return NodeKind.m1903constructorimpl(16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0, types: [androidx.compose.ui.Modifier$Node] */
        /* JADX WARN: Type inference failed for: r10v1, types: [androidx.compose.ui.Modifier$Node] */
        /* JADX WARN: Type inference failed for: r10v10 */
        /* JADX WARN: Type inference failed for: r10v11 */
        /* JADX WARN: Type inference failed for: r10v12 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5, types: [androidx.compose.ui.Modifier$Node] */
        /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r10v7 */
        /* JADX WARN: Type inference failed for: r10v8 */
        /* JADX WARN: Type inference failed for: r10v9 */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v10 */
        /* JADX WARN: Type inference failed for: r3v11 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.collection.MutableVector] */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.runtime.collection.MutableVector] */
        /* JADX WARN: Type inference failed for: r3v8 */
        /* JADX WARN: Type inference failed for: r3v9 */
        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean interceptOutOfBoundsChildEvents(Modifier.Node node) {
            int m1903constructorimpl = NodeKind.m1903constructorimpl(16);
            ?? r3 = 0;
            while (node != 0) {
                if (!(node instanceof PointerInputModifierNode)) {
                    if ((node.getKindSet$ui_release() & m1903constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                        Modifier.Node delegate$ui_release = node.getDelegate$ui_release();
                        int i = 0;
                        r3 = r3;
                        node = node;
                        while (delegate$ui_release != null) {
                            if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                i++;
                                r3 = r3;
                                if (i == 1) {
                                    node = delegate$ui_release;
                                } else {
                                    if (r3 == 0) {
                                        r3 = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    if (node != 0) {
                                        r3.add(node);
                                        node = 0;
                                    }
                                    r3.add(delegate$ui_release);
                                }
                            }
                            delegate$ui_release = delegate$ui_release.getChild$ui_release();
                            r3 = r3;
                            node = node;
                        }
                        if (i == 1) {
                        }
                    }
                } else if (((PointerInputModifierNode) node).interceptOutOfBoundsChildEvents()) {
                    return true;
                }
                node = DelegatableNodeKt.pop(r3);
            }
            return false;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* renamed from: childHitTest-YqVAtuI, reason: not valid java name */
        public void mo1893childHitTestYqVAtuI(LayoutNode layoutNode, long j, HitTestResult hitTestResult, boolean z, boolean z2) {
            layoutNode.m1817hitTestM_7yMNQ$ui_release(j, hitTestResult, z, z2);
        }
    };
    private static final HitTestSource SemanticsSource = new HitTestSource() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$SemanticsSource$1
        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean interceptOutOfBoundsChildEvents(Modifier.Node node) {
            return false;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* renamed from: entityType-OLwlOKw */
        public int mo1894entityTypeOLwlOKw() {
            return NodeKind.m1903constructorimpl(8);
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean shouldHitTestChildren(LayoutNode layoutNode) {
            SemanticsConfiguration collapsedSemantics$ui_release = layoutNode.getCollapsedSemantics$ui_release();
            boolean z = false;
            if (collapsedSemantics$ui_release != null && collapsedSemantics$ui_release.isClearingSemantics()) {
                z = true;
            }
            return !z;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* renamed from: childHitTest-YqVAtuI */
        public void mo1893childHitTestYqVAtuI(LayoutNode layoutNode, long j, HitTestResult hitTestResult, boolean z, boolean z2) {
            layoutNode.m1818hitTestSemanticsM_7yMNQ$ui_release(j, hitTestResult, z, z2);
        }
    };
    private Density layerDensity = getLayoutNode().getDensity();
    private LayoutDirection layerLayoutDirection = getLayoutNode().getLayoutDirection();
    private float lastLayerAlpha = 0.8f;
    private long position = IntOffset.Companion.m2472getZeronOccac();
    private final Function2 drawBlock = new Function2() { // from class: androidx.compose.ui.node.NodeCoordinator$drawBlock$1
        {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Canvas) obj, (GraphicsLayer) obj2);
            return Unit.INSTANCE;
        }

        public final void invoke(final Canvas canvas, final GraphicsLayer graphicsLayer) {
            OwnerSnapshotObserver snapshotObserver;
            Function1 function1;
            if (NodeCoordinator.this.getLayoutNode().isPlaced()) {
                snapshotObserver = NodeCoordinator.this.getSnapshotObserver();
                NodeCoordinator nodeCoordinator = NodeCoordinator.this;
                function1 = NodeCoordinator.onCommitAffectingLayer;
                final NodeCoordinator nodeCoordinator2 = NodeCoordinator.this;
                snapshotObserver.observeReads$ui_release(nodeCoordinator, function1, new Function0() { // from class: androidx.compose.ui.node.NodeCoordinator$drawBlock$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m1895invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m1895invoke() {
                        NodeCoordinator.this.drawContainedDrawModifiers(canvas, graphicsLayer);
                    }
                });
                NodeCoordinator.this.lastLayerDrawingWasSkipped = false;
                return;
            }
            NodeCoordinator.this.lastLayerDrawingWasSkipped = true;
        }
    };
    private final Function0 invalidateParentLayer = new Function0() { // from class: androidx.compose.ui.node.NodeCoordinator$invalidateParentLayer$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            m1898invoke();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: collision with other method in class */
        public final void m1898invoke() {
            NodeCoordinator wrappedBy$ui_release = NodeCoordinator.this.getWrappedBy$ui_release();
            if (wrappedBy$ui_release != null) {
                wrappedBy$ui_release.invalidateLayer();
            }
        }
    };

    /* compiled from: NodeCoordinator.kt */
    public interface HitTestSource {
        /* renamed from: childHitTest-YqVAtuI */
        void mo1893childHitTestYqVAtuI(LayoutNode layoutNode, long j, HitTestResult hitTestResult, boolean z, boolean z2);

        /* renamed from: entityType-OLwlOKw */
        int mo1894entityTypeOLwlOKw();

        boolean interceptOutOfBoundsChildEvents(Modifier.Node node);

        boolean shouldHitTestChildren(LayoutNode layoutNode);
    }

    public abstract void ensureLookaheadDelegateCreated();

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LayoutCoordinates getCoordinates() {
        return this;
    }

    public abstract LookaheadDelegate getLookaheadDelegate();

    public abstract Modifier.Node getTail();

    public abstract void performDraw(Canvas canvas, GraphicsLayer graphicsLayer);

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    public NodeCoordinator(LayoutNode layoutNode) {
        this.layoutNode = layoutNode;
    }

    public final void setForcePlaceWithLookaheadOffset$ui_release(boolean z) {
        this.forcePlaceWithLookaheadOffset = z;
    }

    public final boolean getForceMeasureWithLookaheadConstraints$ui_release() {
        return this.forceMeasureWithLookaheadConstraints;
    }

    public final NodeCoordinator getWrapped$ui_release() {
        return this.wrapped;
    }

    public final void setWrapped$ui_release(NodeCoordinator nodeCoordinator) {
        this.wrapped = nodeCoordinator;
    }

    public final NodeCoordinator getWrappedBy$ui_release() {
        return this.wrappedBy;
    }

    public final void setWrappedBy$ui_release(NodeCoordinator nodeCoordinator) {
        this.wrappedBy = nodeCoordinator;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public LayoutDirection getLayoutDirection() {
        return getLayoutNode().getLayoutDirection();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return getLayoutNode().getDensity().getDensity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawContainedDrawModifiers(Canvas canvas, GraphicsLayer graphicsLayer) {
        Modifier.Node m1886headH91voCI = m1886headH91voCI(NodeKind.m1903constructorimpl(4));
        if (m1886headH91voCI == null) {
            performDraw(canvas, graphicsLayer);
        } else {
            getLayoutNode().getMDrawScope$ui_release().m1829draweZhPAX0$ui_release(canvas, IntSizeKt.m2491toSizeozmzZPI(mo1753getSizeYbymL2g()), this, m1886headH91voCI, graphicsLayer);
        }
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return getLayoutNode().getDensity().getFontScale();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable getParent() {
        return this.wrappedBy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
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
    public final boolean shouldSharePointerInputWithSiblings() {
        Modifier.Node headNode = headNode(NodeKindKt.m1904getIncludeSelfInTraversalH91voCI(NodeKind.m1903constructorimpl(16)));
        if (headNode != null && headNode.isAttached()) {
            int m1903constructorimpl = NodeKind.m1903constructorimpl(16);
            if (!headNode.getNode().isAttached()) {
                InlineClassHelperKt.throwIllegalStateException("visitLocalDescendants called on an unattached node");
            }
            Modifier.Node node = headNode.getNode();
            if ((node.getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0) {
                while (node != null) {
                    if ((node.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                        DelegatingNode delegatingNode = node;
                        ?? r6 = 0;
                        while (delegatingNode != 0) {
                            if (!(delegatingNode instanceof PointerInputModifierNode)) {
                                if ((delegatingNode.getKindSet$ui_release() & m1903constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node delegate$ui_release = delegatingNode.getDelegate$ui_release();
                                    int i = 0;
                                    delegatingNode = delegatingNode;
                                    r6 = r6;
                                    while (delegate$ui_release != null) {
                                        if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                            i++;
                                            r6 = r6;
                                            if (i == 1) {
                                                delegatingNode = delegate$ui_release;
                                            } else {
                                                if (r6 == 0) {
                                                    r6 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (delegatingNode != 0) {
                                                    r6.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r6.add(delegate$ui_release);
                                            }
                                        }
                                        delegate$ui_release = delegate$ui_release.getChild$ui_release();
                                        delegatingNode = delegatingNode;
                                        r6 = r6;
                                    }
                                    if (i == 1) {
                                    }
                                }
                            } else if (((PointerInputModifierNode) delegatingNode).sharePointerInputWithSiblings()) {
                                return true;
                            }
                            delegatingNode = DelegatableNodeKt.pop(r6);
                        }
                    }
                    node = node.getChild$ui_release();
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v2, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r9v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9, types: [java.lang.Object] */
    public final void onMeasured() {
        Modifier.Node parent$ui_release;
        if (m1872hasNodeH91voCI(NodeKind.m1903constructorimpl(128))) {
            Snapshot.Companion companion = Snapshot.Companion;
            Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                int m1903constructorimpl = NodeKind.m1903constructorimpl(128);
                boolean m1904getIncludeSelfInTraversalH91voCI = NodeKindKt.m1904getIncludeSelfInTraversalH91voCI(m1903constructorimpl);
                if (m1904getIncludeSelfInTraversalH91voCI) {
                    parent$ui_release = getTail();
                } else {
                    parent$ui_release = getTail().getParent$ui_release();
                    if (parent$ui_release == null) {
                        Unit unit = Unit.INSTANCE;
                        companion.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                    }
                }
                for (Modifier.Node headNode = headNode(m1904getIncludeSelfInTraversalH91voCI); headNode != null && (headNode.getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0; headNode = headNode.getChild$ui_release()) {
                    if ((headNode.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                        ?? r10 = 0;
                        DelegatingNode delegatingNode = headNode;
                        while (delegatingNode != 0) {
                            if (!(delegatingNode instanceof LayoutAwareModifierNode)) {
                                if ((delegatingNode.getKindSet$ui_release() & m1903constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node delegate$ui_release = delegatingNode.getDelegate$ui_release();
                                    int i = 0;
                                    delegatingNode = delegatingNode;
                                    r10 = r10;
                                    while (delegate$ui_release != null) {
                                        if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                            i++;
                                            r10 = r10;
                                            if (i == 1) {
                                                delegatingNode = delegate$ui_release;
                                            } else {
                                                if (r10 == 0) {
                                                    r10 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (delegatingNode != 0) {
                                                    r10.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r10.add(delegate$ui_release);
                                            }
                                        }
                                        delegate$ui_release = delegate$ui_release.getChild$ui_release();
                                        delegatingNode = delegatingNode;
                                        r10 = r10;
                                    }
                                    if (i == 1) {
                                    }
                                }
                            } else {
                                ((LayoutAwareModifierNode) delegatingNode).mo177onRemeasuredozmzZPI(m1768getMeasuredSizeYbymL2g());
                            }
                            delegatingNode = DelegatableNodeKt.pop(r10);
                        }
                    }
                    if (headNode == parent$ui_release) {
                        break;
                    }
                }
                Unit unit2 = Unit.INSTANCE;
                companion.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            } catch (Throwable th) {
                companion.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
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
    public final void onPlaced() {
        int m1903constructorimpl = NodeKind.m1903constructorimpl(128);
        boolean m1904getIncludeSelfInTraversalH91voCI = NodeKindKt.m1904getIncludeSelfInTraversalH91voCI(m1903constructorimpl);
        Modifier.Node tail = getTail();
        if (!m1904getIncludeSelfInTraversalH91voCI && (tail = tail.getParent$ui_release()) == null) {
            return;
        }
        for (Modifier.Node headNode = headNode(m1904getIncludeSelfInTraversalH91voCI); headNode != null && (headNode.getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0; headNode = headNode.getChild$ui_release()) {
            if ((headNode.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                DelegatingNode delegatingNode = headNode;
                ?? r5 = 0;
                while (delegatingNode != 0) {
                    if (!(delegatingNode instanceof LayoutAwareModifierNode)) {
                        if ((delegatingNode.getKindSet$ui_release() & m1903constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node delegate$ui_release = delegatingNode.getDelegate$ui_release();
                            int i = 0;
                            delegatingNode = delegatingNode;
                            r5 = r5;
                            while (delegate$ui_release != null) {
                                if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                    i++;
                                    r5 = r5;
                                    if (i == 1) {
                                        delegatingNode = delegate$ui_release;
                                    } else {
                                        if (r5 == 0) {
                                            r5 = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (delegatingNode != 0) {
                                            r5.add(delegatingNode);
                                            delegatingNode = 0;
                                        }
                                        r5.add(delegate$ui_release);
                                    }
                                }
                                delegate$ui_release = delegate$ui_release.getChild$ui_release();
                                delegatingNode = delegatingNode;
                                r5 = r5;
                            }
                            if (i == 1) {
                            }
                        }
                    } else {
                        ((LayoutAwareModifierNode) delegatingNode).onPlaced(this);
                    }
                    delegatingNode = DelegatableNodeKt.pop(r5);
                }
            }
            if (headNode == tail) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Modifier.Node headNode(boolean z) {
        Modifier.Node tail;
        if (getLayoutNode().getOuterCoordinator$ui_release() == this) {
            return getLayoutNode().getNodes$ui_release().getHead$ui_release();
        }
        if (z) {
            NodeCoordinator nodeCoordinator = this.wrappedBy;
            if (nodeCoordinator != null && (tail = nodeCoordinator.getTail()) != null) {
                return tail.getChild$ui_release();
            }
        } else {
            NodeCoordinator nodeCoordinator2 = this.wrappedBy;
            if (nodeCoordinator2 != null) {
                return nodeCoordinator2.getTail();
            }
        }
        return null;
    }

    /* renamed from: hasNode-H91voCI, reason: not valid java name */
    private final boolean m1872hasNodeH91voCI(int i) {
        Modifier.Node headNode = headNode(NodeKindKt.m1904getIncludeSelfInTraversalH91voCI(i));
        return headNode != null && DelegatableNodeKt.m1802has64DMado(headNode, i);
    }

    /* renamed from: head-H91voCI, reason: not valid java name */
    public final Modifier.Node m1886headH91voCI(int i) {
        boolean m1904getIncludeSelfInTraversalH91voCI = NodeKindKt.m1904getIncludeSelfInTraversalH91voCI(i);
        Modifier.Node tail = getTail();
        if (!m1904getIncludeSelfInTraversalH91voCI && (tail = tail.getParent$ui_release()) == null) {
            return null;
        }
        for (Modifier.Node headNode = headNode(m1904getIncludeSelfInTraversalH91voCI); headNode != null && (headNode.getAggregateChildKindSet$ui_release() & i) != 0; headNode = headNode.getChild$ui_release()) {
            if ((headNode.getKindSet$ui_release() & i) != 0) {
                return headNode;
            }
            if (headNode == tail) {
                return null;
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: getSize-YbymL2g */
    public final long mo1753getSizeYbymL2g() {
        return m1768getMeasuredSizeYbymL2g();
    }

    public final boolean isTransparent() {
        if (this.layer != null && this.lastLayerAlpha <= 0.0f) {
            return true;
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (nodeCoordinator != null) {
            return nodeCoordinator.isTransparent();
        }
        return false;
    }

    public AlignmentLinesOwner getAlignmentLinesOwner() {
        return getLayoutNode().getLayoutDelegate$ui_release().getAlignmentLinesOwner$ui_release();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable getChild() {
        return this.wrapped;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public void replace$ui_release() {
        GraphicsLayer graphicsLayer = this.explicitLayer;
        if (graphicsLayer != null) {
            mo1770placeAtf8xVGno(mo1850getPositionnOccac(), this.zIndex, graphicsLayer);
        } else {
            mo1752placeAtf8xVGno(mo1850getPositionnOccac(), this.zIndex, this.layerBlock);
        }
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public boolean getHasMeasureResult() {
        return this._measureResult != null;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public boolean isAttached() {
        return getTail().isAttached();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public MeasureResult getMeasureResult$ui_release() {
        MeasureResult measureResult = this._measureResult;
        if (measureResult != null) {
            return measureResult;
        }
        throw new IllegalStateException("Asking for measurement result of unmeasured layout modifier");
    }

    public void setMeasureResult$ui_release(MeasureResult measureResult) {
        MeasureResult measureResult2 = this._measureResult;
        if (measureResult != measureResult2) {
            this._measureResult = measureResult;
            if (measureResult2 == null || measureResult.getWidth() != measureResult2.getWidth() || measureResult.getHeight() != measureResult2.getHeight()) {
                onMeasureResultChanged(measureResult.getWidth(), measureResult.getHeight());
            }
            Map map = this.oldAlignmentLines;
            if (((map == null || map.isEmpty()) && measureResult.getAlignmentLines().isEmpty()) || Intrinsics.areEqual(measureResult.getAlignmentLines(), this.oldAlignmentLines)) {
                return;
            }
            getAlignmentLinesOwner().getAlignmentLines().onAlignmentsChanged();
            Map map2 = this.oldAlignmentLines;
            if (map2 == null) {
                map2 = new LinkedHashMap();
                this.oldAlignmentLines = map2;
            }
            map2.clear();
            map2.putAll(measureResult.getAlignmentLines());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
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
    protected void onMeasureResultChanged(int i, int i2) {
        NodeCoordinator nodeCoordinator;
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.mo1909resizeozmzZPI(IntSizeKt.IntSize(i, i2));
        } else if (getLayoutNode().isPlaced() && (nodeCoordinator = this.wrappedBy) != null) {
            nodeCoordinator.invalidateLayer();
        }
        m1771setMeasuredSizeozmzZPI(IntSizeKt.IntSize(i, i2));
        if (this.layerBlock != null) {
            updateLayerParameters(false);
        }
        int m1903constructorimpl = NodeKind.m1903constructorimpl(4);
        boolean m1904getIncludeSelfInTraversalH91voCI = NodeKindKt.m1904getIncludeSelfInTraversalH91voCI(m1903constructorimpl);
        Modifier.Node tail = getTail();
        if (m1904getIncludeSelfInTraversalH91voCI || (tail = tail.getParent$ui_release()) != null) {
            for (Modifier.Node headNode = headNode(m1904getIncludeSelfInTraversalH91voCI); headNode != null && (headNode.getAggregateChildKindSet$ui_release() & m1903constructorimpl) != 0; headNode = headNode.getChild$ui_release()) {
                if ((headNode.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                    DelegatingNode delegatingNode = headNode;
                    ?? r4 = 0;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof DrawModifierNode) {
                            ((DrawModifierNode) delegatingNode).onMeasureResultChanged();
                        } else if ((delegatingNode.getKindSet$ui_release() & m1903constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node delegate$ui_release = delegatingNode.getDelegate$ui_release();
                            int i3 = 0;
                            delegatingNode = delegatingNode;
                            r4 = r4;
                            while (delegate$ui_release != null) {
                                if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                    i3++;
                                    r4 = r4;
                                    if (i3 == 1) {
                                        delegatingNode = delegate$ui_release;
                                    } else {
                                        if (r4 == 0) {
                                            r4 = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (delegatingNode != 0) {
                                            r4.add(delegatingNode);
                                            delegatingNode = 0;
                                        }
                                        r4.add(delegate$ui_release);
                                    }
                                }
                                delegate$ui_release = delegate$ui_release.getChild$ui_release();
                                delegatingNode = delegatingNode;
                                r4 = r4;
                            }
                            if (i3 == 1) {
                            }
                        }
                        delegatingNode = DelegatableNodeKt.pop(r4);
                    }
                }
                if (headNode == tail) {
                    break;
                }
            }
        }
        Owner owner$ui_release = getLayoutNode().getOwner$ui_release();
        if (owner$ui_release != null) {
            owner$ui_release.onLayoutChange(getLayoutNode());
        }
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    /* renamed from: getPosition-nOcc-ac */
    public long mo1850getPositionnOccac() {
        return this.position;
    }

    /* renamed from: setPosition--gyyYBs, reason: not valid java name */
    protected void m1890setPositiongyyYBs(long j) {
        this.position = j;
    }

    public final float getZIndex() {
        return this.zIndex;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
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
    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.IntrinsicMeasurable
    public Object getParentData() {
        if (!getLayoutNode().getNodes$ui_release().m1865hasH91voCI$ui_release(NodeKind.m1903constructorimpl(64))) {
            return null;
        }
        getTail();
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        for (Modifier.Node tail$ui_release = getLayoutNode().getNodes$ui_release().getTail$ui_release(); tail$ui_release != null; tail$ui_release = tail$ui_release.getParent$ui_release()) {
            if ((NodeKind.m1903constructorimpl(64) & tail$ui_release.getKindSet$ui_release()) != 0) {
                int m1903constructorimpl = NodeKind.m1903constructorimpl(64);
                ?? r6 = 0;
                DelegatingNode delegatingNode = tail$ui_release;
                while (delegatingNode != 0) {
                    if (!(delegatingNode instanceof ParentDataModifierNode)) {
                        if ((delegatingNode.getKindSet$ui_release() & m1903constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node delegate$ui_release = delegatingNode.getDelegate$ui_release();
                            int i = 0;
                            delegatingNode = delegatingNode;
                            r6 = r6;
                            while (delegate$ui_release != null) {
                                if ((delegate$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0) {
                                    i++;
                                    r6 = r6;
                                    if (i == 1) {
                                        delegatingNode = delegate$ui_release;
                                    } else {
                                        if (r6 == 0) {
                                            r6 = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (delegatingNode != 0) {
                                            r6.add(delegatingNode);
                                            delegatingNode = 0;
                                        }
                                        r6.add(delegate$ui_release);
                                    }
                                }
                                delegate$ui_release = delegate$ui_release.getChild$ui_release();
                                delegatingNode = delegatingNode;
                                r6 = r6;
                            }
                            if (i == 1) {
                            }
                        }
                    } else {
                        ref$ObjectRef.element = ((ParentDataModifierNode) delegatingNode).modifyParentData(getLayoutNode().getDensity(), ref$ObjectRef.element);
                    }
                    delegatingNode = DelegatableNodeKt.pop(r6);
                }
            }
        }
        return ref$ObjectRef.element;
    }

    public final void onCoordinatesUsed$ui_release() {
        getLayoutNode().getLayoutDelegate$ui_release().onCoordinatesUsed();
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates getParentLayoutCoordinates() {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        onCoordinatesUsed$ui_release();
        return getLayoutNode().getOuterCoordinator$ui_release().wrappedBy;
    }

    protected final MutableRect getRectCache() {
        MutableRect mutableRect = this._rectCache;
        if (mutableRect != null) {
            return mutableRect;
        }
        MutableRect mutableRect2 = new MutableRect(0.0f, 0.0f, 0.0f, 0.0f);
        this._rectCache = mutableRect2;
        return mutableRect2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OwnerSnapshotObserver getSnapshotObserver() {
        return LayoutNodeKt.requireOwner(getLayoutNode()).getSnapshotObserver();
    }

    /* renamed from: getLastMeasurementConstraints-msEJaDk$ui_release, reason: not valid java name */
    public final long m1884getLastMeasurementConstraintsmsEJaDk$ui_release() {
        return m1769getMeasurementConstraintsmsEJaDk();
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    protected void mo1752placeAtf8xVGno(long j, float f, Function1 function1) {
        if (this.forcePlaceWithLookaheadOffset) {
            LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            m1876placeSelfMLgxB_4(lookaheadDelegate.mo1850getPositionnOccac(), f, function1, null);
            return;
        }
        m1876placeSelfMLgxB_4(j, f, function1, null);
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    protected void mo1770placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) {
        if (this.forcePlaceWithLookaheadOffset) {
            LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
            Intrinsics.checkNotNull(lookaheadDelegate);
            m1876placeSelfMLgxB_4(lookaheadDelegate.mo1850getPositionnOccac(), f, null, graphicsLayer);
            return;
        }
        m1876placeSelfMLgxB_4(j, f, null, graphicsLayer);
    }

    /* renamed from: placeSelf-MLgxB_4, reason: not valid java name */
    private final void m1876placeSelfMLgxB_4(long j, float f, Function1 function1, GraphicsLayer graphicsLayer) {
        if (graphicsLayer != null) {
            if (!(function1 == null)) {
                InlineClassHelperKt.throwIllegalArgumentException("both ways to create layers shouldn't be used together");
            }
            if (this.explicitLayer != graphicsLayer) {
                this.explicitLayer = null;
                updateLayerBlock$default(this, null, false, 2, null);
                this.explicitLayer = graphicsLayer;
            }
            if (this.layer == null) {
                OwnedLayer createLayer = LayoutNodeKt.requireOwner(getLayoutNode()).createLayer(this.drawBlock, this.invalidateParentLayer, graphicsLayer);
                createLayer.mo1909resizeozmzZPI(m1768getMeasuredSizeYbymL2g());
                createLayer.mo1908movegyyYBs(j);
                this.layer = createLayer;
                getLayoutNode().setInnerLayerCoordinatorIsDirty$ui_release(true);
                this.invalidateParentLayer.invoke();
            }
        } else {
            if (this.explicitLayer != null) {
                this.explicitLayer = null;
                updateLayerBlock$default(this, null, false, 2, null);
            }
            updateLayerBlock$default(this, function1, false, 2, null);
        }
        if (!IntOffset.m2464equalsimpl0(mo1850getPositionnOccac(), j)) {
            m1890setPositiongyyYBs(j);
            getLayoutNode().getLayoutDelegate$ui_release().getMeasurePassDelegate$ui_release().notifyChildrenUsingCoordinatesWhilePlacing();
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                ownedLayer.mo1908movegyyYBs(j);
            } else {
                NodeCoordinator nodeCoordinator = this.wrappedBy;
                if (nodeCoordinator != null) {
                    nodeCoordinator.invalidateLayer();
                }
            }
            invalidateAlignmentLinesFromPositionChange(this);
            Owner owner$ui_release = getLayoutNode().getOwner$ui_release();
            if (owner$ui_release != null) {
                owner$ui_release.onLayoutChange(getLayoutNode());
            }
        }
        this.zIndex = f;
        if (isPlacingForAlignment$ui_release()) {
            return;
        }
        captureRulers$ui_release(getMeasureResult$ui_release());
    }

    public final void releaseLayer() {
        if (this.layer != null) {
            if (this.explicitLayer != null) {
                this.explicitLayer = null;
            }
            updateLayerBlock$default(this, null, false, 2, null);
            LayoutNode.requestRelayout$ui_release$default(getLayoutNode(), false, 1, null);
        }
    }

    /* renamed from: placeSelfApparentToRealOffset-MLgxB_4, reason: not valid java name */
    public final void m1889placeSelfApparentToRealOffsetMLgxB_4(long j, float f, Function1 function1, GraphicsLayer graphicsLayer) {
        m1876placeSelfMLgxB_4(IntOffset.m2469plusqkQi6aY(j, m1767getApparentToRealOffsetnOccac()), f, function1, graphicsLayer);
    }

    public final void draw(Canvas canvas, GraphicsLayer graphicsLayer) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.drawLayer(canvas, graphicsLayer);
            return;
        }
        float m2465getXimpl = IntOffset.m2465getXimpl(mo1850getPositionnOccac());
        float m2466getYimpl = IntOffset.m2466getYimpl(mo1850getPositionnOccac());
        canvas.translate(m2465getXimpl, m2466getYimpl);
        drawContainedDrawModifiers(canvas, graphicsLayer);
        canvas.translate(-m2465getXimpl, -m2466getYimpl);
    }

    public static /* synthetic */ void updateLayerBlock$default(NodeCoordinator nodeCoordinator, Function1 function1, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateLayerBlock");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        nodeCoordinator.updateLayerBlock(function1, z);
    }

    public final void updateLayerBlock(Function1 function1, boolean z) {
        Owner owner$ui_release;
        if (!(function1 == null || this.explicitLayer == null)) {
            InlineClassHelperKt.throwIllegalArgumentException("layerBlock can't be provided when explicitLayer is provided");
        }
        LayoutNode layoutNode = getLayoutNode();
        boolean z2 = (!z && this.layerBlock == function1 && Intrinsics.areEqual(this.layerDensity, layoutNode.getDensity()) && this.layerLayoutDirection == layoutNode.getLayoutDirection()) ? false : true;
        this.layerDensity = layoutNode.getDensity();
        this.layerLayoutDirection = layoutNode.getLayoutDirection();
        if (layoutNode.isAttached() && function1 != null) {
            this.layerBlock = function1;
            if (this.layer != null) {
                if (z2) {
                    updateLayerParameters$default(this, false, 1, null);
                    return;
                }
                return;
            }
            OwnedLayer createLayer$default = Owner.CC.createLayer$default(LayoutNodeKt.requireOwner(layoutNode), this.drawBlock, this.invalidateParentLayer, null, 4, null);
            createLayer$default.mo1909resizeozmzZPI(m1768getMeasuredSizeYbymL2g());
            createLayer$default.mo1908movegyyYBs(mo1850getPositionnOccac());
            this.layer = createLayer$default;
            updateLayerParameters$default(this, false, 1, null);
            layoutNode.setInnerLayerCoordinatorIsDirty$ui_release(true);
            this.invalidateParentLayer.invoke();
            return;
        }
        this.layerBlock = null;
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.destroy();
            layoutNode.setInnerLayerCoordinatorIsDirty$ui_release(true);
            this.invalidateParentLayer.invoke();
            if (isAttached() && (owner$ui_release = layoutNode.getOwner$ui_release()) != null) {
                owner$ui_release.onLayoutChange(layoutNode);
            }
        }
        this.layer = null;
        this.lastLayerDrawingWasSkipped = false;
    }

    static /* synthetic */ void updateLayerParameters$default(NodeCoordinator nodeCoordinator, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateLayerParameters");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        nodeCoordinator.updateLayerParameters(z);
    }

    private final void updateLayerParameters(boolean z) {
        Owner owner$ui_release;
        if (this.explicitLayer != null) {
            return;
        }
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            final Function1 function1 = this.layerBlock;
            if (function1 == null) {
                InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("updateLayerParameters requires a non-null layerBlock");
                throw new KotlinNothingValueException();
            }
            ReusableGraphicsLayerScope reusableGraphicsLayerScope = graphicsLayerScope;
            reusableGraphicsLayerScope.reset();
            reusableGraphicsLayerScope.setGraphicsDensity$ui_release(getLayoutNode().getDensity());
            reusableGraphicsLayerScope.setLayoutDirection$ui_release(getLayoutNode().getLayoutDirection());
            reusableGraphicsLayerScope.m1407setSizeuvyYCjk(IntSizeKt.m2491toSizeozmzZPI(mo1753getSizeYbymL2g()));
            getSnapshotObserver().observeReads$ui_release(this, onCommitAffectingLayerParams, new Function0() { // from class: androidx.compose.ui.node.NodeCoordinator$updateLayerParameters$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m1900invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m1900invoke() {
                    ReusableGraphicsLayerScope reusableGraphicsLayerScope2;
                    ReusableGraphicsLayerScope reusableGraphicsLayerScope3;
                    Function1 function12 = Function1.this;
                    reusableGraphicsLayerScope2 = NodeCoordinator.graphicsLayerScope;
                    function12.invoke(reusableGraphicsLayerScope2);
                    reusableGraphicsLayerScope3 = NodeCoordinator.graphicsLayerScope;
                    reusableGraphicsLayerScope3.updateOutline$ui_release();
                }
            });
            LayerPositionalProperties layerPositionalProperties = this.layerPositionalProperties;
            if (layerPositionalProperties == null) {
                layerPositionalProperties = new LayerPositionalProperties();
                this.layerPositionalProperties = layerPositionalProperties;
            }
            layerPositionalProperties.copyFrom(reusableGraphicsLayerScope);
            ownedLayer.updateLayerProperties(reusableGraphicsLayerScope);
            this.isClipping = reusableGraphicsLayerScope.getClip();
            this.lastLayerAlpha = reusableGraphicsLayerScope.getAlpha();
            if (!z || (owner$ui_release = getLayoutNode().getOwner$ui_release()) == null) {
                return;
            }
            owner$ui_release.onLayoutChange(getLayoutNode());
            return;
        }
        if (this.layerBlock == null) {
            return;
        }
        InlineClassHelperKt.throwIllegalStateException("null layer with a non-null layerBlock");
    }

    public final boolean getLastLayerDrawingWasSkipped$ui_release() {
        return this.lastLayerDrawingWasSkipped;
    }

    public final OwnedLayer getLayer() {
        return this.layer;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValidOwnerScope() {
        return (this.layer == null || this.released || !getLayoutNode().isAttached()) ? false : true;
    }

    /* renamed from: getMinimumTouchTargetSize-NH-jbRc, reason: not valid java name */
    public final long m1885getMinimumTouchTargetSizeNHjbRc() {
        return this.layerDensity.mo214toSizeXkaWNTQ(getLayoutNode().getViewConfiguration().mo1821getMinimumTouchTargetSizeMYxV2XQ());
    }

    /* renamed from: hitTest-YqVAtuI, reason: not valid java name */
    public final void m1887hitTestYqVAtuI(HitTestSource hitTestSource, long j, HitTestResult hitTestResult, boolean z, boolean z2) {
        Modifier.Node m1886headH91voCI = m1886headH91voCI(hitTestSource.mo1894entityTypeOLwlOKw());
        if (!m1892withinLayerBoundsk4lQ0M(j)) {
            if (z) {
                float m1882distanceInMinimumTouchTargettz77jQw = m1882distanceInMinimumTouchTargettz77jQw(j, m1885getMinimumTouchTargetSizeNHjbRc());
                if (Float.isInfinite(m1882distanceInMinimumTouchTargettz77jQw) || Float.isNaN(m1882distanceInMinimumTouchTargettz77jQw) || !hitTestResult.isHitInMinimumTouchTargetBetter(m1882distanceInMinimumTouchTargettz77jQw, false)) {
                    return;
                }
                m1874hitNearJHbHoSQ(m1886headH91voCI, hitTestSource, j, hitTestResult, z, false, m1882distanceInMinimumTouchTargettz77jQw);
                return;
            }
            return;
        }
        if (m1886headH91voCI == null) {
            mo1809hitTestChildYqVAtuI(hitTestSource, j, hitTestResult, z, z2);
            return;
        }
        if (m1888isPointerInBoundsk4lQ0M(j)) {
            m1873hit1hIXUjU(m1886headH91voCI, hitTestSource, j, hitTestResult, z, z2);
            return;
        }
        float m1882distanceInMinimumTouchTargettz77jQw2 = !z ? Float.POSITIVE_INFINITY : m1882distanceInMinimumTouchTargettz77jQw(j, m1885getMinimumTouchTargetSizeNHjbRc());
        if (!Float.isInfinite(m1882distanceInMinimumTouchTargettz77jQw2) && !Float.isNaN(m1882distanceInMinimumTouchTargettz77jQw2)) {
            if (hitTestResult.isHitInMinimumTouchTargetBetter(m1882distanceInMinimumTouchTargettz77jQw2, z2)) {
                m1874hitNearJHbHoSQ(m1886headH91voCI, hitTestSource, j, hitTestResult, z, z2, m1882distanceInMinimumTouchTargettz77jQw2);
                return;
            }
        }
        m1877speculativeHitJHbHoSQ(m1886headH91voCI, hitTestSource, j, hitTestResult, z, z2, m1882distanceInMinimumTouchTargettz77jQw2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hit-1hIXUjU, reason: not valid java name */
    public final void m1873hit1hIXUjU(final Modifier.Node node, final HitTestSource hitTestSource, final long j, final HitTestResult hitTestResult, final boolean z, final boolean z2) {
        if (node == null) {
            mo1809hitTestChildYqVAtuI(hitTestSource, j, hitTestResult, z, z2);
        } else {
            hitTestResult.hit(node, z2, new Function0() { // from class: androidx.compose.ui.node.NodeCoordinator$hit$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m1896invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m1896invoke() {
                    Modifier.Node m1902nextUntilhw7D004;
                    NodeCoordinator nodeCoordinator = NodeCoordinator.this;
                    m1902nextUntilhw7D004 = NodeCoordinatorKt.m1902nextUntilhw7D004(node, hitTestSource.mo1894entityTypeOLwlOKw(), NodeKind.m1903constructorimpl(2));
                    nodeCoordinator.m1873hit1hIXUjU(m1902nextUntilhw7D004, hitTestSource, j, hitTestResult, z, z2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hitNear-JHbHoSQ, reason: not valid java name */
    public final void m1874hitNearJHbHoSQ(final Modifier.Node node, final HitTestSource hitTestSource, final long j, final HitTestResult hitTestResult, final boolean z, final boolean z2, final float f) {
        if (node == null) {
            mo1809hitTestChildYqVAtuI(hitTestSource, j, hitTestResult, z, z2);
        } else {
            hitTestResult.hitInMinimumTouchTarget(node, f, z2, new Function0() { // from class: androidx.compose.ui.node.NodeCoordinator$hitNear$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m1897invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m1897invoke() {
                    Modifier.Node m1902nextUntilhw7D004;
                    NodeCoordinator nodeCoordinator = NodeCoordinator.this;
                    m1902nextUntilhw7D004 = NodeCoordinatorKt.m1902nextUntilhw7D004(node, hitTestSource.mo1894entityTypeOLwlOKw(), NodeKind.m1903constructorimpl(2));
                    nodeCoordinator.m1874hitNearJHbHoSQ(m1902nextUntilhw7D004, hitTestSource, j, hitTestResult, z, z2, f);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: speculativeHit-JHbHoSQ, reason: not valid java name */
    public final void m1877speculativeHitJHbHoSQ(final Modifier.Node node, final HitTestSource hitTestSource, final long j, final HitTestResult hitTestResult, final boolean z, final boolean z2, final float f) {
        Modifier.Node m1902nextUntilhw7D004;
        if (node == null) {
            mo1809hitTestChildYqVAtuI(hitTestSource, j, hitTestResult, z, z2);
        } else if (!hitTestSource.interceptOutOfBoundsChildEvents(node)) {
            m1902nextUntilhw7D004 = NodeCoordinatorKt.m1902nextUntilhw7D004(node, hitTestSource.mo1894entityTypeOLwlOKw(), NodeKind.m1903constructorimpl(2));
            m1877speculativeHitJHbHoSQ(m1902nextUntilhw7D004, hitTestSource, j, hitTestResult, z, z2, f);
        } else {
            hitTestResult.speculativeHit(node, f, z2, new Function0() { // from class: androidx.compose.ui.node.NodeCoordinator$speculativeHit$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m1899invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m1899invoke() {
                    Modifier.Node m1902nextUntilhw7D0042;
                    NodeCoordinator nodeCoordinator = NodeCoordinator.this;
                    m1902nextUntilhw7D0042 = NodeCoordinatorKt.m1902nextUntilhw7D004(node, hitTestSource.mo1894entityTypeOLwlOKw(), NodeKind.m1903constructorimpl(2));
                    nodeCoordinator.m1877speculativeHitJHbHoSQ(m1902nextUntilhw7D0042, hitTestSource, j, hitTestResult, z, z2, f);
                }
            });
        }
    }

    /* renamed from: hitTestChild-YqVAtuI */
    public void mo1809hitTestChildYqVAtuI(HitTestSource hitTestSource, long j, HitTestResult hitTestResult, boolean z, boolean z2) {
        NodeCoordinator nodeCoordinator = this.wrapped;
        if (nodeCoordinator != null) {
            nodeCoordinator.m1887hitTestYqVAtuI(hitTestSource, m1871fromParentPosition8S9VItk$default(nodeCoordinator, j, false, 2, null), hitTestResult, z, z2);
        }
    }

    public final Rect touchBoundsInRoot() {
        if (!isAttached()) {
            return Rect.Companion.getZero();
        }
        LayoutCoordinates findRootCoordinates = LayoutCoordinatesKt.findRootCoordinates(this);
        MutableRect rectCache = getRectCache();
        long m1881calculateMinimumTouchTargetPaddingE7KxVPU = m1881calculateMinimumTouchTargetPaddingE7KxVPU(m1885getMinimumTouchTargetSizeNHjbRc());
        rectCache.setLeft(-Size.m1204getWidthimpl(m1881calculateMinimumTouchTargetPaddingE7KxVPU));
        rectCache.setTop(-Size.m1202getHeightimpl(m1881calculateMinimumTouchTargetPaddingE7KxVPU));
        rectCache.setRight(getMeasuredWidth() + Size.m1204getWidthimpl(m1881calculateMinimumTouchTargetPaddingE7KxVPU));
        rectCache.setBottom(getMeasuredHeight() + Size.m1202getHeightimpl(m1881calculateMinimumTouchTargetPaddingE7KxVPU));
        NodeCoordinator nodeCoordinator = this;
        while (nodeCoordinator != findRootCoordinates) {
            nodeCoordinator.rectInParent$ui_release(rectCache, false, true);
            if (rectCache.isEmpty()) {
                return Rect.Companion.getZero();
            }
            nodeCoordinator = nodeCoordinator.wrappedBy;
            Intrinsics.checkNotNull(nodeCoordinator);
        }
        return MutableRectKt.toRect(rectCache);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: screenToLocal-MK-Hz9U */
    public long mo1758screenToLocalMKHz9U(long j) {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        return mo1754localPositionOfR5De75A(LayoutCoordinatesKt.findRootCoordinates(this), LayoutNodeKt.requireOwner(getLayoutNode()).mo1719screenToLocalMKHz9U(j));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: windowToLocal-MK-Hz9U */
    public long mo1761windowToLocalMKHz9U(long j) {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        LayoutCoordinates findRootCoordinates = LayoutCoordinatesKt.findRootCoordinates(this);
        return mo1754localPositionOfR5De75A(findRootCoordinates, Offset.m1171minusMKHz9U(LayoutNodeKt.requireOwner(getLayoutNode()).mo1911calculateLocalPositionMKHz9U(j), LayoutCoordinatesKt.positionInRoot(findRootCoordinates)));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToWindow-MK-Hz9U */
    public long mo1757localToWindowMKHz9U(long j) {
        return LayoutNodeKt.requireOwner(getLayoutNode()).mo1912calculatePositionInWindowMKHz9U(mo1756localToRootMKHz9U(j));
    }

    private final NodeCoordinator toCoordinator(LayoutCoordinates layoutCoordinates) {
        NodeCoordinator coordinator;
        LookaheadLayoutCoordinates lookaheadLayoutCoordinates = layoutCoordinates instanceof LookaheadLayoutCoordinates ? (LookaheadLayoutCoordinates) layoutCoordinates : null;
        if (lookaheadLayoutCoordinates != null && (coordinator = lookaheadLayoutCoordinates.getCoordinator()) != null) {
            return coordinator;
        }
        Intrinsics.checkNotNull(layoutCoordinates, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator");
        return (NodeCoordinator) layoutCoordinates;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-R5De75A */
    public long mo1754localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        return mo1755localPositionOfS_NoaFU(layoutCoordinates, j, true);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-S_NoaFU */
    public long mo1755localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j, boolean z) {
        if (layoutCoordinates instanceof LookaheadLayoutCoordinates) {
            ((LookaheadLayoutCoordinates) layoutCoordinates).getCoordinator().onCoordinatesUsed$ui_release();
            return Offset.m1175unaryMinusF1C5BW0(layoutCoordinates.mo1755localPositionOfS_NoaFU(this, Offset.m1175unaryMinusF1C5BW0(j), z));
        }
        NodeCoordinator coordinator = toCoordinator(layoutCoordinates);
        coordinator.onCoordinatesUsed$ui_release();
        NodeCoordinator findCommonAncestor$ui_release = findCommonAncestor$ui_release(coordinator);
        while (coordinator != findCommonAncestor$ui_release) {
            j = coordinator.m1891toParentPosition8S9VItk(j, z);
            coordinator = coordinator.wrappedBy;
            Intrinsics.checkNotNull(coordinator);
        }
        return m1870ancestorToLocalS_NoaFU(findCommonAncestor$ui_release, j, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformFrom-EL8BTi8 */
    public void mo1759transformFromEL8BTi8(LayoutCoordinates layoutCoordinates, float[] fArr) {
        NodeCoordinator coordinator = toCoordinator(layoutCoordinates);
        coordinator.onCoordinatesUsed$ui_release();
        NodeCoordinator findCommonAncestor$ui_release = findCommonAncestor$ui_release(coordinator);
        Matrix.m1369resetimpl(fArr);
        coordinator.m1880transformToAncestorEL8BTi8(findCommonAncestor$ui_release, fArr);
        m1879transformFromAncestorEL8BTi8(findCommonAncestor$ui_release, fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformToScreen-58bKbWc */
    public void mo1760transformToScreen58bKbWc(float[] fArr) {
        Owner requireOwner = LayoutNodeKt.requireOwner(getLayoutNode());
        m1880transformToAncestorEL8BTi8(toCoordinator(LayoutCoordinatesKt.findRootCoordinates(this)), fArr);
        requireOwner.mo1717localToScreen58bKbWc(fArr);
    }

    /* renamed from: transformToAncestor-EL8BTi8, reason: not valid java name */
    private final void m1880transformToAncestorEL8BTi8(NodeCoordinator nodeCoordinator, float[] fArr) {
        NodeCoordinator nodeCoordinator2 = this;
        while (!Intrinsics.areEqual(nodeCoordinator2, nodeCoordinator)) {
            OwnedLayer ownedLayer = nodeCoordinator2.layer;
            if (ownedLayer != null) {
                ownedLayer.mo1910transform58bKbWc(fArr);
            }
            if (!IntOffset.m2464equalsimpl0(nodeCoordinator2.mo1850getPositionnOccac(), IntOffset.Companion.m2472getZeronOccac())) {
                float[] fArr2 = tmpMatrix;
                Matrix.m1369resetimpl(fArr2);
                Matrix.m1378translateimpl$default(fArr2, IntOffset.m2465getXimpl(r1), IntOffset.m2466getYimpl(r1), 0.0f, 4, null);
                Matrix.m1375timesAssign58bKbWc(fArr, fArr2);
            }
            nodeCoordinator2 = nodeCoordinator2.wrappedBy;
            Intrinsics.checkNotNull(nodeCoordinator2);
        }
    }

    /* renamed from: transformFromAncestor-EL8BTi8, reason: not valid java name */
    private final void m1879transformFromAncestorEL8BTi8(NodeCoordinator nodeCoordinator, float[] fArr) {
        if (Intrinsics.areEqual(nodeCoordinator, this)) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        Intrinsics.checkNotNull(nodeCoordinator2);
        nodeCoordinator2.m1879transformFromAncestorEL8BTi8(nodeCoordinator, fArr);
        if (!IntOffset.m2464equalsimpl0(mo1850getPositionnOccac(), IntOffset.Companion.m2472getZeronOccac())) {
            float[] fArr2 = tmpMatrix;
            Matrix.m1369resetimpl(fArr2);
            Matrix.m1378translateimpl$default(fArr2, -IntOffset.m2465getXimpl(mo1850getPositionnOccac()), -IntOffset.m2466getYimpl(mo1850getPositionnOccac()), 0.0f, 4, null);
            Matrix.m1375timesAssign58bKbWc(fArr, fArr2);
        }
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.mo1905inverseTransform58bKbWc(fArr);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public Rect localBoundingBoxOf(LayoutCoordinates layoutCoordinates, boolean z) {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        if (!layoutCoordinates.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinates " + layoutCoordinates + " is not attached!");
        }
        NodeCoordinator coordinator = toCoordinator(layoutCoordinates);
        coordinator.onCoordinatesUsed$ui_release();
        NodeCoordinator findCommonAncestor$ui_release = findCommonAncestor$ui_release(coordinator);
        MutableRect rectCache = getRectCache();
        rectCache.setLeft(0.0f);
        rectCache.setTop(0.0f);
        rectCache.setRight(IntSize.m2484getWidthimpl(layoutCoordinates.mo1753getSizeYbymL2g()));
        rectCache.setBottom(IntSize.m2483getHeightimpl(layoutCoordinates.mo1753getSizeYbymL2g()));
        while (coordinator != findCommonAncestor$ui_release) {
            rectInParent$ui_release$default(coordinator, rectCache, z, false, 4, null);
            if (rectCache.isEmpty()) {
                return Rect.Companion.getZero();
            }
            coordinator = coordinator.wrappedBy;
            Intrinsics.checkNotNull(coordinator);
        }
        ancestorToLocal(findCommonAncestor$ui_release, rectCache, z);
        return MutableRectKt.toRect(rectCache);
    }

    /* renamed from: ancestorToLocal-S_NoaFU, reason: not valid java name */
    private final long m1870ancestorToLocalS_NoaFU(NodeCoordinator nodeCoordinator, long j, boolean z) {
        if (nodeCoordinator == this) {
            return j;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        if (nodeCoordinator2 == null || Intrinsics.areEqual(nodeCoordinator, nodeCoordinator2)) {
            return m1883fromParentPosition8S9VItk(j, z);
        }
        return m1883fromParentPosition8S9VItk(nodeCoordinator2.m1870ancestorToLocalS_NoaFU(nodeCoordinator, j, z), z);
    }

    private final void ancestorToLocal(NodeCoordinator nodeCoordinator, MutableRect mutableRect, boolean z) {
        if (nodeCoordinator == this) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        if (nodeCoordinator2 != null) {
            nodeCoordinator2.ancestorToLocal(nodeCoordinator, mutableRect, z);
        }
        fromParentRect(mutableRect, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToRoot-MK-Hz9U */
    public long mo1756localToRootMKHz9U(long j) {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        onCoordinatesUsed$ui_release();
        long j2 = j;
        for (NodeCoordinator nodeCoordinator = this; nodeCoordinator != null; nodeCoordinator = nodeCoordinator.wrappedBy) {
            j2 = m1878toParentPosition8S9VItk$default(nodeCoordinator, j2, false, 2, null);
        }
        return j2;
    }

    /* renamed from: toParentPosition-8S9VItk$default, reason: not valid java name */
    public static /* synthetic */ long m1878toParentPosition8S9VItk$default(NodeCoordinator nodeCoordinator, long j, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toParentPosition-8S9VItk");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return nodeCoordinator.m1891toParentPosition8S9VItk(j, z);
    }

    /* renamed from: toParentPosition-8S9VItk, reason: not valid java name */
    public long m1891toParentPosition8S9VItk(long j, boolean z) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            j = ownedLayer.mo1907mapOffset8S9VItk(j, false);
        }
        return (z || !isPlacedUnderMotionFrameOfReference()) ? IntOffsetKt.m2474plusNvtHpc(j, mo1850getPositionnOccac()) : j;
    }

    /* renamed from: fromParentPosition-8S9VItk$default, reason: not valid java name */
    public static /* synthetic */ long m1871fromParentPosition8S9VItk$default(NodeCoordinator nodeCoordinator, long j, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fromParentPosition-8S9VItk");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return nodeCoordinator.m1883fromParentPosition8S9VItk(j, z);
    }

    /* renamed from: fromParentPosition-8S9VItk, reason: not valid java name */
    public long m1883fromParentPosition8S9VItk(long j, boolean z) {
        if (z || !isPlacedUnderMotionFrameOfReference()) {
            j = IntOffsetKt.m2473minusNvtHpc(j, mo1850getPositionnOccac());
        }
        OwnedLayer ownedLayer = this.layer;
        return ownedLayer != null ? ownedLayer.mo1907mapOffset8S9VItk(j, true) : j;
    }

    protected final void drawBorder(Canvas canvas, Paint paint) {
        canvas.drawRect(new Rect(0.5f, 0.5f, IntSize.m2484getWidthimpl(m1768getMeasuredSizeYbymL2g()) - 0.5f, IntSize.m2483getHeightimpl(m1768getMeasuredSizeYbymL2g()) - 0.5f), paint);
    }

    public final void onLayoutNodeAttach() {
        updateLayerBlock(this.layerBlock, true);
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
        }
    }

    public final void onRelease() {
        this.released = true;
        this.invalidateParentLayer.invoke();
        releaseLayer();
    }

    public static /* synthetic */ void rectInParent$ui_release$default(NodeCoordinator nodeCoordinator, MutableRect mutableRect, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rectInParent");
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        nodeCoordinator.rectInParent$ui_release(mutableRect, z, z2);
    }

    public final void rectInParent$ui_release(MutableRect mutableRect, boolean z, boolean z2) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            if (this.isClipping) {
                if (z2) {
                    long m1885getMinimumTouchTargetSizeNHjbRc = m1885getMinimumTouchTargetSizeNHjbRc();
                    float m1204getWidthimpl = Size.m1204getWidthimpl(m1885getMinimumTouchTargetSizeNHjbRc) / 2.0f;
                    float m1202getHeightimpl = Size.m1202getHeightimpl(m1885getMinimumTouchTargetSizeNHjbRc) / 2.0f;
                    mutableRect.intersect(-m1204getWidthimpl, -m1202getHeightimpl, IntSize.m2484getWidthimpl(mo1753getSizeYbymL2g()) + m1204getWidthimpl, IntSize.m2483getHeightimpl(mo1753getSizeYbymL2g()) + m1202getHeightimpl);
                } else if (z) {
                    mutableRect.intersect(0.0f, 0.0f, IntSize.m2484getWidthimpl(mo1753getSizeYbymL2g()), IntSize.m2483getHeightimpl(mo1753getSizeYbymL2g()));
                }
                if (mutableRect.isEmpty()) {
                    return;
                }
            }
            ownedLayer.mapBounds(mutableRect, false);
        }
        float m2465getXimpl = IntOffset.m2465getXimpl(mo1850getPositionnOccac());
        mutableRect.setLeft(mutableRect.getLeft() + m2465getXimpl);
        mutableRect.setRight(mutableRect.getRight() + m2465getXimpl);
        float m2466getYimpl = IntOffset.m2466getYimpl(mo1850getPositionnOccac());
        mutableRect.setTop(mutableRect.getTop() + m2466getYimpl);
        mutableRect.setBottom(mutableRect.getBottom() + m2466getYimpl);
    }

    private final void fromParentRect(MutableRect mutableRect, boolean z) {
        float m2465getXimpl = IntOffset.m2465getXimpl(mo1850getPositionnOccac());
        mutableRect.setLeft(mutableRect.getLeft() - m2465getXimpl);
        mutableRect.setRight(mutableRect.getRight() - m2465getXimpl);
        float m2466getYimpl = IntOffset.m2466getYimpl(mo1850getPositionnOccac());
        mutableRect.setTop(mutableRect.getTop() - m2466getYimpl);
        mutableRect.setBottom(mutableRect.getBottom() - m2466getYimpl);
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.mapBounds(mutableRect, true);
            if (this.isClipping && z) {
                mutableRect.intersect(0.0f, 0.0f, IntSize.m2484getWidthimpl(mo1753getSizeYbymL2g()), IntSize.m2483getHeightimpl(mo1753getSizeYbymL2g()));
                mutableRect.isEmpty();
            }
        }
    }

    /* renamed from: withinLayerBounds-k-4lQ0M, reason: not valid java name */
    protected final boolean m1892withinLayerBoundsk4lQ0M(long j) {
        if (!OffsetKt.m1180isFinitek4lQ0M(j)) {
            return false;
        }
        OwnedLayer ownedLayer = this.layer;
        return ownedLayer == null || !this.isClipping || ownedLayer.mo1906isInLayerk4lQ0M(j);
    }

    /* renamed from: isPointerInBounds-k-4lQ0M, reason: not valid java name */
    protected final boolean m1888isPointerInBoundsk4lQ0M(long j) {
        float m1167getXimpl = Offset.m1167getXimpl(j);
        float m1168getYimpl = Offset.m1168getYimpl(j);
        return m1167getXimpl >= 0.0f && m1168getYimpl >= 0.0f && m1167getXimpl < ((float) getMeasuredWidth()) && m1168getYimpl < ((float) getMeasuredHeight());
    }

    public void invalidateLayer() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
            return;
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (nodeCoordinator != null) {
            nodeCoordinator.invalidateLayer();
        }
    }

    public void onLayoutModifierNodeChanged() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
        }
    }

    public final NodeCoordinator findCommonAncestor$ui_release(NodeCoordinator nodeCoordinator) {
        LayoutNode layoutNode = nodeCoordinator.getLayoutNode();
        LayoutNode layoutNode2 = getLayoutNode();
        if (layoutNode == layoutNode2) {
            Modifier.Node tail = nodeCoordinator.getTail();
            Modifier.Node tail2 = getTail();
            int m1903constructorimpl = NodeKind.m1903constructorimpl(2);
            if (!tail2.getNode().isAttached()) {
                InlineClassHelperKt.throwIllegalStateException("visitLocalAncestors called on an unattached node");
            }
            for (Modifier.Node parent$ui_release = tail2.getNode().getParent$ui_release(); parent$ui_release != null; parent$ui_release = parent$ui_release.getParent$ui_release()) {
                if ((parent$ui_release.getKindSet$ui_release() & m1903constructorimpl) != 0 && parent$ui_release == tail) {
                    return nodeCoordinator;
                }
            }
            return this;
        }
        while (layoutNode.getDepth$ui_release() > layoutNode2.getDepth$ui_release()) {
            layoutNode = layoutNode.getParent$ui_release();
            Intrinsics.checkNotNull(layoutNode);
        }
        while (layoutNode2.getDepth$ui_release() > layoutNode.getDepth$ui_release()) {
            layoutNode2 = layoutNode2.getParent$ui_release();
            Intrinsics.checkNotNull(layoutNode2);
        }
        while (layoutNode != layoutNode2) {
            layoutNode = layoutNode.getParent$ui_release();
            layoutNode2 = layoutNode2.getParent$ui_release();
            if (layoutNode == null || layoutNode2 == null) {
                throw new IllegalArgumentException("layouts are not part of the same hierarchy");
            }
        }
        return layoutNode2 == getLayoutNode() ? this : layoutNode == nodeCoordinator.getLayoutNode() ? nodeCoordinator : layoutNode.getInnerCoordinator$ui_release();
    }

    /* renamed from: offsetFromEdge-MK-Hz9U, reason: not valid java name */
    private final long m1875offsetFromEdgeMKHz9U(long j) {
        float m1167getXimpl = Offset.m1167getXimpl(j);
        float max = Math.max(0.0f, m1167getXimpl < 0.0f ? -m1167getXimpl : m1167getXimpl - getMeasuredWidth());
        float m1168getYimpl = Offset.m1168getYimpl(j);
        return OffsetKt.Offset(max, Math.max(0.0f, m1168getYimpl < 0.0f ? -m1168getYimpl : m1168getYimpl - getMeasuredHeight()));
    }

    /* renamed from: calculateMinimumTouchTargetPadding-E7KxVPU, reason: not valid java name */
    protected final long m1881calculateMinimumTouchTargetPaddingE7KxVPU(long j) {
        return SizeKt.Size(Math.max(0.0f, (Size.m1204getWidthimpl(j) - getMeasuredWidth()) / 2.0f), Math.max(0.0f, (Size.m1202getHeightimpl(j) - getMeasuredHeight()) / 2.0f));
    }

    /* renamed from: distanceInMinimumTouchTarget-tz77jQw, reason: not valid java name */
    protected final float m1882distanceInMinimumTouchTargettz77jQw(long j, long j2) {
        if (getMeasuredWidth() >= Size.m1204getWidthimpl(j2) && getMeasuredHeight() >= Size.m1202getHeightimpl(j2)) {
            return Float.POSITIVE_INFINITY;
        }
        long m1881calculateMinimumTouchTargetPaddingE7KxVPU = m1881calculateMinimumTouchTargetPaddingE7KxVPU(j2);
        float m1204getWidthimpl = Size.m1204getWidthimpl(m1881calculateMinimumTouchTargetPaddingE7KxVPU);
        float m1202getHeightimpl = Size.m1202getHeightimpl(m1881calculateMinimumTouchTargetPaddingE7KxVPU);
        long m1875offsetFromEdgeMKHz9U = m1875offsetFromEdgeMKHz9U(j);
        if ((m1204getWidthimpl > 0.0f || m1202getHeightimpl > 0.0f) && Offset.m1167getXimpl(m1875offsetFromEdgeMKHz9U) <= m1204getWidthimpl && Offset.m1168getYimpl(m1875offsetFromEdgeMKHz9U) <= m1202getHeightimpl) {
            return Offset.m1166getDistanceSquaredimpl(m1875offsetFromEdgeMKHz9U);
        }
        return Float.POSITIVE_INFINITY;
    }

    /* compiled from: NodeCoordinator.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final HitTestSource getPointerInputSource() {
            return NodeCoordinator.PointerInputSource;
        }

        public final HitTestSource getSemanticsSource() {
            return NodeCoordinator.SemanticsSource;
        }
    }
}
