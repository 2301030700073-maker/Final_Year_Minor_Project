package androidx.compose.ui.node;

import android.os.Build;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableLongList;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableObjectList;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.platform.WrapperRenderNodeLayerHelperMethods;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.glance.GlanceThemeKt$GlanceTheme$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.ULong;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.text.RegexKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NodeCoordinator extends LookaheadCapablePlaceable implements Measurable, LayoutCoordinates, OwnerScope {
    public GlanceThemeKt$GlanceTheme$1 _drawBlock;
    public MeasureResult _measureResult;
    public SVG.Box _rectCache;
    public Canvas drawBlockCanvas;
    public GraphicsLayer drawBlockParentLayer;
    public GraphicsLayer explicitLayer;
    public boolean isClipping;
    public boolean lastClip;
    public boolean lastLayerDrawingWasSkipped;
    public OwnedLayer layer;
    public Function1 layerBlock;
    public Density layerDensity;
    public LayoutDirection layerLayoutDirection;
    public LayerPositionalProperties layerPositionalProperties;
    public final LayoutNode layoutNode;
    public MutableObjectIntMap oldAlignmentLines;
    public boolean released;
    public boolean wasLayerBlockInvoked;
    public NodeCoordinator wrapped;
    public NodeCoordinator wrappedBy;
    public float zIndex;
    public static final ReusableGraphicsLayerScope graphicsLayerScope = new ReusableGraphicsLayerScope();
    public static final LayerPositionalProperties tmpLayerPositionalProperties = new LayerPositionalProperties();
    public static final float[] tmpMatrix = Matrix.m446constructorimpl$default();
    public static final NodeCoordinator$Companion$SemanticsSource$1 PointerInputSource = new NodeCoordinator$Companion$SemanticsSource$1(1);
    public static final NodeCoordinator$Companion$SemanticsSource$1 SemanticsSource = new NodeCoordinator$Companion$SemanticsSource$1(0);
    public float lastLayerAlpha = 0.8f;
    public long position = 0;
    public Shape lastShape = ColorKt.RectangleShape;
    public final NodeCoordinator$invalidateParentLayer$1 invalidateParentLayer = new NodeCoordinator$invalidateParentLayer$1(this, 0);

    public NodeCoordinator(LayoutNode layoutNode) {
        this.layoutNode = layoutNode;
        this.layerDensity = layoutNode.density;
        this.layerLayoutDirection = layoutNode.layoutDirection;
    }

    public static NodeCoordinator toCoordinator(LayoutCoordinates layoutCoordinates) {
        NodeCoordinator nodeCoordinator;
        LookaheadLayoutCoordinates lookaheadLayoutCoordinates = layoutCoordinates instanceof LookaheadLayoutCoordinates ? (LookaheadLayoutCoordinates) layoutCoordinates : null;
        if (lookaheadLayoutCoordinates != null && (nodeCoordinator = lookaheadLayoutCoordinates.lookaheadDelegate.coordinator) != null) {
            return nodeCoordinator;
        }
        layoutCoordinates.getClass();
        return (NodeCoordinator) layoutCoordinates;
    }

    public final void ancestorToLocal(NodeCoordinator nodeCoordinator, SVG.Box box, boolean z) {
        if (nodeCoordinator == this) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        if (nodeCoordinator2 != null) {
            nodeCoordinator2.ancestorToLocal(nodeCoordinator, box, z);
        }
        long j = this.position;
        float f = (int) (j >> 32);
        box.minX -= f;
        box.width -= f;
        float f2 = (int) (j & 4294967295L);
        box.minY -= f2;
        box.height -= f2;
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            float[] m604getInverseMatrix3i98HWw = graphicsLayerOwnerLayer.m604getInverseMatrix3i98HWw();
            if (!graphicsLayerOwnerLayer.isIdentity) {
                if (m604getInverseMatrix3i98HWw == null) {
                    box.minX = RecyclerView.DECELERATION_RATE;
                    box.minY = RecyclerView.DECELERATION_RATE;
                    box.width = RecyclerView.DECELERATION_RATE;
                    box.height = RecyclerView.DECELERATION_RATE;
                } else {
                    Matrix.m448mapimpl(m604getInverseMatrix3i98HWw, box);
                }
            }
            if (this.isClipping && z) {
                long j2 = this.measuredSize;
                box.intersect(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, (int) (j2 >> 32), (int) (j2 & 4294967295L));
            }
        }
    }

    /* renamed from: ancestorToLocal-S_NoaFU, reason: not valid java name */
    public final long m564ancestorToLocalS_NoaFU(NodeCoordinator nodeCoordinator, long j) {
        if (nodeCoordinator == this) {
            return j;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        return (nodeCoordinator2 == null || Intrinsics.areEqual(nodeCoordinator, nodeCoordinator2)) ? m567fromParentPosition8S9VItk(j) : m567fromParentPosition8S9VItk(nodeCoordinator2.m564ancestorToLocalS_NoaFU(nodeCoordinator, j));
    }

    /* renamed from: calculateMinimumTouchTargetPadding-E7KxVPU, reason: not valid java name */
    public final long m565calculateMinimumTouchTargetPaddingE7KxVPU(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - getMeasuredWidth();
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - getMeasuredHeight();
        float max = Math.max(RecyclerView.DECELERATION_RATE, intBitsToFloat / 2.0f);
        float max2 = Math.max(RecyclerView.DECELERATION_RATE, intBitsToFloat2 / 2.0f);
        return (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(max2) & 4294967295L);
    }

    /* renamed from: distanceInMinimumTouchTarget-tz77jQw, reason: not valid java name */
    public final float m566distanceInMinimumTouchTargettz77jQw(long j, long j2) {
        if (getMeasuredWidth() >= Float.intBitsToFloat((int) (j2 >> 32)) && getMeasuredHeight() >= Float.intBitsToFloat((int) (j2 & 4294967295L))) {
            return Float.POSITIVE_INFINITY;
        }
        long m565calculateMinimumTouchTargetPaddingE7KxVPU = m565calculateMinimumTouchTargetPaddingE7KxVPU(j2);
        float intBitsToFloat = Float.intBitsToFloat((int) (m565calculateMinimumTouchTargetPaddingE7KxVPU >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (m565calculateMinimumTouchTargetPaddingE7KxVPU & 4294967295L));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
        float max = Math.max(RecyclerView.DECELERATION_RATE, intBitsToFloat3 < RecyclerView.DECELERATION_RATE ? -intBitsToFloat3 : intBitsToFloat3 - getMeasuredWidth());
        long floatToRawIntBits = (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(Math.max(RecyclerView.DECELERATION_RATE, Float.intBitsToFloat((int) (j & 4294967295L)) < RecyclerView.DECELERATION_RATE ? -r9 : r9 - getMeasuredHeight())) & 4294967295L);
        if (intBitsToFloat > RecyclerView.DECELERATION_RATE || intBitsToFloat2 > RecyclerView.DECELERATION_RATE) {
            int i = (int) (floatToRawIntBits >> 32);
            if (Float.intBitsToFloat(i) <= intBitsToFloat) {
                int i2 = (int) (floatToRawIntBits & 4294967295L);
                if (Float.intBitsToFloat(i2) <= intBitsToFloat2) {
                    float intBitsToFloat4 = Float.intBitsToFloat(i);
                    float intBitsToFloat5 = Float.intBitsToFloat(i2);
                    return (intBitsToFloat5 * intBitsToFloat5) + (intBitsToFloat4 * intBitsToFloat4);
                }
            }
        }
        return Float.POSITIVE_INFINITY;
    }

    public final void draw(Canvas canvas, GraphicsLayer graphicsLayer) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer == null) {
            long j = this.position;
            float f = (int) (j >> 32);
            float f2 = (int) (j & 4294967295L);
            canvas.translate(f, f2);
            drawContainedDrawModifiers(canvas, graphicsLayer);
            canvas.translate(-f, -f2);
            return;
        }
        GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
        CanvasDrawScope canvasDrawScope = graphicsLayerOwnerLayer.scope;
        graphicsLayerOwnerLayer.updateDisplayList();
        graphicsLayerOwnerLayer.drawnWithEnabledZ = graphicsLayerOwnerLayer.graphicsLayer.impl.getShadowElevation() > RecyclerView.DECELERATION_RATE;
        SVG svg = canvasDrawScope.drawContext;
        svg.setCanvas(canvas);
        svg.cssRules = graphicsLayer;
        graphicsLayerOwnerLayer.graphicsLayer.draw$ui_graphics(canvasDrawScope.getDrawContext().getCanvas(), (GraphicsLayer) canvasDrawScope.getDrawContext().cssRules);
    }

    public final void drawContainedDrawModifiers(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinator;
        Canvas canvas2;
        GraphicsLayer graphicsLayer2;
        Modifier.Node m569headH91voCI = m569headH91voCI(4);
        if (m569headH91voCI == null) {
            performDraw(canvas, graphicsLayer);
            return;
        }
        LayoutNode layoutNode = this.layoutNode;
        layoutNode.getClass();
        LayoutNodeDrawScope sharedDrawScope = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getSharedDrawScope();
        long m813toSizeozmzZPI = ExceptionsKt.m813toSizeozmzZPI(this.measuredSize);
        sharedDrawScope.getClass();
        MutableVector mutableVector = null;
        while (m569headH91voCI != null) {
            if (m569headH91voCI instanceof DrawModifierNode) {
                nodeCoordinator = this;
                canvas2 = canvas;
                graphicsLayer2 = graphicsLayer;
                sharedDrawScope.m551drawDirecteZhPAX0$ui(canvas2, m813toSizeozmzZPI, nodeCoordinator, (DrawModifierNode) m569headH91voCI, graphicsLayer2);
            } else {
                nodeCoordinator = this;
                canvas2 = canvas;
                graphicsLayer2 = graphicsLayer;
                if ((m569headH91voCI.kindSet & 4) != 0 && (m569headH91voCI instanceof DelegatingNode)) {
                    int i = 0;
                    for (Modifier.Node node = ((DelegatingNode) m569headH91voCI).delegate; node != null; node = node.child) {
                        if ((node.kindSet & 4) != 0) {
                            i++;
                            if (i == 1) {
                                m569headH91voCI = node;
                            } else {
                                if (mutableVector == null) {
                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                }
                                if (m569headH91voCI != null) {
                                    mutableVector.add(m569headH91voCI);
                                    m569headH91voCI = null;
                                }
                                mutableVector.add(node);
                            }
                        }
                    }
                    if (i == 1) {
                        canvas = canvas2;
                        this = nodeCoordinator;
                        graphicsLayer = graphicsLayer2;
                    }
                }
            }
            m569headH91voCI = HitTestResultKt.pop(mutableVector);
            canvas = canvas2;
            this = nodeCoordinator;
            graphicsLayer = graphicsLayer2;
        }
    }

    public abstract void ensureLookaheadDelegateCreated();

    public final NodeCoordinator findCommonAncestor$ui(NodeCoordinator nodeCoordinator) {
        LayoutNode layoutNode = nodeCoordinator.layoutNode;
        LayoutNode layoutNode2 = this.layoutNode;
        if (layoutNode == layoutNode2) {
            Modifier.Node tail = nodeCoordinator.getTail();
            Modifier.Node tail2 = getTail();
            if (!tail2.node.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("visitLocalAncestors called on an unattached node");
            }
            for (Modifier.Node node = tail2.node.parent; node != null; node = node.parent) {
                if ((node.kindSet & 2) != 0 && node == tail) {
                    return nodeCoordinator;
                }
            }
            return this;
        }
        while (layoutNode.depth > layoutNode2.depth) {
            layoutNode = layoutNode.getParent$ui();
            layoutNode.getClass();
        }
        LayoutNode layoutNode3 = layoutNode2;
        while (layoutNode3.depth > layoutNode.depth) {
            layoutNode3 = layoutNode3.getParent$ui();
            layoutNode3.getClass();
        }
        while (layoutNode != layoutNode3) {
            layoutNode = layoutNode.getParent$ui();
            layoutNode3 = layoutNode3.getParent$ui();
            if (layoutNode == null || layoutNode3 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("layouts are not part of the same hierarchy");
                return null;
            }
        }
        if (layoutNode3 != layoutNode2) {
            if (layoutNode != nodeCoordinator.layoutNode) {
                return (InnerNodeCoordinator) layoutNode.nodes.innerCoordinator;
            }
            return nodeCoordinator;
        }
        return this;
    }

    /* renamed from: fromParentPosition-8S9VItk, reason: not valid java name */
    public final long m567fromParentPosition8S9VItk(long j) {
        long j2 = this.position;
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - ((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - ((int) (j2 & 4294967295L));
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            float[] m604getInverseMatrix3i98HWw = graphicsLayerOwnerLayer.m604getInverseMatrix3i98HWw();
            if (m604getInverseMatrix3i98HWw == null) {
                return 9187343241974906880L;
            }
            if (!graphicsLayerOwnerLayer.isIdentity) {
                return Matrix.m447mapMKHz9U(floatToRawIntBits, m604getInverseMatrix3i98HWw);
            }
        }
        return floatToRawIntBits;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable getChild() {
        return this.wrapped;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.layoutNode.density.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return this.layoutNode.density.getFontScale();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final boolean getHasMeasureResult() {
        return this._measureResult != null;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final LayoutDirection getLayoutDirection() {
        return this.layoutNode.layoutDirection;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    public abstract LookaheadDelegate getLookaheadDelegate();

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final MeasureResult getMeasureResult$ui() {
        MeasureResult measureResult = this._measureResult;
        if (measureResult != null) {
            return measureResult;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Asking for measurement result of unmeasured layout modifier");
        return null;
    }

    /* renamed from: getMinimumTouchTargetSize-NH-jbRc, reason: not valid java name */
    public final long m568getMinimumTouchTargetSizeNHjbRc() {
        return this.layerDensity.mo88toSizeXkaWNTQ(this.layoutNode.viewConfiguration.mo550getMinimumTouchTargetSizeMYxV2XQ());
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable getParent() {
        return this.wrappedBy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.Object] */
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
    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.Measurable
    public final Object getParentData() {
        LayoutNode layoutNode = this.layoutNode;
        if (!layoutNode.nodes.m563hasH91voCI$ui(64)) {
            return null;
        }
        getTail();
        Object obj = null;
        for (Modifier.Node node = (TailModifierNode) layoutNode.nodes.tail; node != null; node = node.parent) {
            if ((node.kindSet & 64) != 0) {
                DelegatingNode delegatingNode = node;
                ?? r5 = 0;
                while (delegatingNode != 0) {
                    if (delegatingNode instanceof ParentDataModifierNode) {
                        obj = ((ParentDataModifierNode) delegatingNode).modifyParentData(layoutNode.density, obj);
                    } else if ((delegatingNode.kindSet & 64) != 0 && (delegatingNode instanceof DelegatingNode)) {
                        Modifier.Node node2 = delegatingNode.delegate;
                        int i = 0;
                        delegatingNode = delegatingNode;
                        r5 = r5;
                        while (node2 != null) {
                            if ((node2.kindSet & 64) != 0) {
                                i++;
                                r5 = r5;
                                if (i == 1) {
                                    delegatingNode = node2;
                                } else {
                                    if (r5 == 0) {
                                        r5 = new MutableVector(new Modifier.Node[16]);
                                    }
                                    if (delegatingNode != 0) {
                                        r5.add(delegatingNode);
                                        delegatingNode = 0;
                                    }
                                    r5.add(node2);
                                }
                            }
                            node2 = node2.child;
                            delegatingNode = delegatingNode;
                            r5 = r5;
                        }
                        if (i == 1) {
                        }
                    }
                    delegatingNode = HitTestResultKt.pop(r5);
                }
            }
        }
        return obj;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates getParentLayoutCoordinates() {
        boolean z = getTail().isAttached;
        LayoutNode layoutNode = this.layoutNode;
        if (!z) {
            StringBuilder sb = new StringBuilder("LayoutCoordinate operations are only valid when isAttached is true");
            for (LayoutNode layoutNode2 = layoutNode; layoutNode2 != null; layoutNode2 = layoutNode2.getParent$ui()) {
                sb.append("\n|");
                sb.append(layoutNode2);
                sb.append(" isAttached=");
                sb.append(layoutNode2.isAttached());
                sb.append(" modifier=");
                sb.append(layoutNode2._modifier);
                sb.append(" tail=");
                sb.append(getTail());
            }
            InlineClassHelperKt.throwIllegalStateException(sb.toString());
        }
        onCoordinatesUsed$ui();
        return ((NodeCoordinator) layoutNode.nodes.outerCoordinator).wrappedBy;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    /* renamed from: getPosition-nOcc-ac */
    public final long mo555getPositionnOccac() {
        return this.position;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: getSize-YbymL2g */
    public final long mo517getSizeYbymL2g() {
        return this.measuredSize;
    }

    public abstract Modifier.Node getTail();

    /* renamed from: head-H91voCI, reason: not valid java name */
    public final Modifier.Node m569headH91voCI(int i) {
        boolean m580getIncludeSelfInTraversalH91voCI = NodeKindKt.m580getIncludeSelfInTraversalH91voCI(i);
        Modifier.Node tail = getTail();
        if (!m580getIncludeSelfInTraversalH91voCI && (tail = tail.parent) == null) {
            return null;
        }
        for (Modifier.Node headNode = headNode(m580getIncludeSelfInTraversalH91voCI); headNode != null && (headNode.aggregateChildKindSet & i) != 0; headNode = headNode.child) {
            if ((headNode.kindSet & i) != 0) {
                return headNode;
            }
            if (headNode == tail) {
                return null;
            }
        }
        return null;
    }

    public final Modifier.Node headNode(boolean z) {
        Modifier.Node tail;
        NodeChain nodeChain = this.layoutNode.nodes;
        if (((NodeCoordinator) nodeChain.outerCoordinator) == this) {
            return (Modifier.Node) nodeChain.head;
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (!z) {
            if (nodeCoordinator != null) {
                return nodeCoordinator.getTail();
            }
            return null;
        }
        if (nodeCoordinator == null || (tail = nodeCoordinator.getTail()) == null) {
            return null;
        }
        return tail.child;
    }

    /* renamed from: hit-5ShdDok, reason: not valid java name */
    public final void m570hit5ShdDok(Modifier.Node node, NodeCoordinator$Companion$SemanticsSource$1 nodeCoordinator$Companion$SemanticsSource$1, long j, HitTestResult hitTestResult, int i, boolean z) {
        if (node == null) {
            mo548hitTestChildqzLsGqo(nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z);
            return;
        }
        if (!nodeCoordinator$Companion$SemanticsSource$1.shouldHitTest(node)) {
            m570hit5ShdDok(HitTestResultKt.m546nextUntilhw7D004(node, nodeCoordinator$Companion$SemanticsSource$1.m579entityTypeOLwlOKw()), nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z);
            return;
        }
        int i2 = hitTestResult.hitDepth;
        MutableObjectList mutableObjectList = hitTestResult.values;
        hitTestResult.removeNodesInRange(i2 + 1, mutableObjectList._size);
        hitTestResult.hitDepth++;
        mutableObjectList.add(node);
        hitTestResult.distanceFromEdgeAndFlags.add(HitTestResultKt.DistanceAndFlags(-1.0f, z, false));
        m570hit5ShdDok(HitTestResultKt.m546nextUntilhw7D004(node, nodeCoordinator$Companion$SemanticsSource$1.m579entityTypeOLwlOKw()), nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z);
        hitTestResult.hitDepth = i2;
    }

    /* renamed from: hitNear-Fh5PU_I, reason: not valid java name */
    public final void m571hitNearFh5PU_I(Modifier.Node node, NodeCoordinator$Companion$SemanticsSource$1 nodeCoordinator$Companion$SemanticsSource$1, long j, HitTestResult hitTestResult, int i, boolean z, float f) {
        if (node == null) {
            mo548hitTestChildqzLsGqo(nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z);
            return;
        }
        if (!nodeCoordinator$Companion$SemanticsSource$1.shouldHitTest(node)) {
            m571hitNearFh5PU_I(HitTestResultKt.m546nextUntilhw7D004(node, nodeCoordinator$Companion$SemanticsSource$1.m579entityTypeOLwlOKw()), nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z, f);
            return;
        }
        int i2 = hitTestResult.hitDepth;
        MutableObjectList mutableObjectList = hitTestResult.values;
        hitTestResult.removeNodesInRange(i2 + 1, mutableObjectList._size);
        hitTestResult.hitDepth++;
        mutableObjectList.add(node);
        hitTestResult.distanceFromEdgeAndFlags.add(HitTestResultKt.DistanceAndFlags(f, z, false));
        m573outOfBoundsHit8NAm7pk(HitTestResultKt.m546nextUntilhw7D004(node, nodeCoordinator$Companion$SemanticsSource$1.m579entityTypeOLwlOKw()), nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z, f, true);
        hitTestResult.hitDepth = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c4, code lost:
    
        if (androidx.compose.ui.node.HitTestResultKt.m542compareTo9YPOF3E(r19.m541findBestHitDistancefn2tFes(), androidx.compose.ui.node.HitTestResultKt.DistanceAndFlags(r2, r7, false)) > 0) goto L38;
     */
    /* renamed from: hitTest-qzLsGqo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m572hitTestqzLsGqo(androidx.compose.ui.node.NodeCoordinator$Companion$SemanticsSource$1 r16, long r17, androidx.compose.ui.node.HitTestResult r19, int r20, boolean r21) {
        /*
            r15 = this;
            r3 = r17
            r5 = r19
            r6 = r20
            androidx.collection.MutableObjectList r8 = r5.values
            int r0 = r16.m579entityTypeOLwlOKw()
            androidx.compose.ui.Modifier$Node r1 = r15.m569headH91voCI(r0)
            boolean r0 = r15.m578withinLayerBoundsk4lQ0M(r3)
            r9 = 0
            r10 = 2139095040(0x7f800000, float:Infinity)
            r11 = 2147483647(0x7fffffff, float:NaN)
            r12 = 1
            if (r0 != 0) goto L4d
            if (r6 != r12) goto L4c
            long r13 = r15.m568getMinimumTouchTargetSizeNHjbRc()
            float r0 = r15.m566distanceInMinimumTouchTargettz77jQw(r3, r13)
            int r2 = java.lang.Float.floatToRawIntBits(r0)
            r2 = r2 & r11
            if (r2 >= r10) goto L4c
            int r2 = r5.hitDepth
            int r7 = r8._size
            int r7 = r7 - r12
            if (r2 != r7) goto L36
            goto L44
        L36:
            long r7 = androidx.compose.ui.node.HitTestResultKt.DistanceAndFlags(r0, r9, r9)
            long r9 = r5.m541findBestHitDistancefn2tFes()
            int r2 = androidx.compose.ui.node.HitTestResultKt.m542compareTo9YPOF3E(r9, r7)
            if (r2 <= 0) goto L4c
        L44:
            r7 = 0
            r2 = r16
            r8 = r0
            r0 = r15
            r0.m571hitNearFh5PU_I(r1, r2, r3, r5, r6, r7, r8)
        L4c:
            return
        L4d:
            if (r1 != 0) goto L53
            r15.mo548hitTestChildqzLsGqo(r16, r17, r19, r20, r21)
            return
        L53:
            r0 = 32
            long r2 = r17 >> r0
            int r0 = (int) r2
            float r0 = java.lang.Float.intBitsToFloat(r0)
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r17 & r2
            int r2 = (int) r2
            float r2 = java.lang.Float.intBitsToFloat(r2)
            r3 = 0
            int r4 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r4 < 0) goto L92
            int r3 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r3 < 0) goto L92
            int r3 = r15.getMeasuredWidth()
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L92
            int r0 = r15.getMeasuredHeight()
            float r0 = (float) r0
            int r0 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r0 >= 0) goto L92
            r0 = r15
            r2 = r16
            r3 = r17
            r5 = r19
            r6 = r20
            r7 = r21
            r0.m570hit5ShdDok(r1, r2, r3, r5, r6, r7)
            return
        L92:
            r3 = r17
            r5 = r19
            r6 = r20
            if (r6 != r12) goto La3
            long r13 = r15.m568getMinimumTouchTargetSizeNHjbRc()
            float r2 = r15.m566distanceInMinimumTouchTargettz77jQw(r3, r13)
            goto La5
        La3:
            r2 = 2139095040(0x7f800000, float:Infinity)
        La5:
            int r7 = java.lang.Float.floatToRawIntBits(r2)
            r7 = r7 & r11
            if (r7 >= r10) goto Lcc
            int r7 = r5.hitDepth
            int r8 = r8._size
            int r8 = r8 - r12
            if (r7 != r8) goto Lb6
            r7 = r21
            goto Lc6
        Lb6:
            r7 = r21
            long r10 = androidx.compose.ui.node.HitTestResultKt.DistanceAndFlags(r2, r7, r9)
            long r13 = r5.m541findBestHitDistancefn2tFes()
            int r8 = androidx.compose.ui.node.HitTestResultKt.m542compareTo9YPOF3E(r13, r10)
            if (r8 <= 0) goto Lc7
        Lc6:
            r9 = r12
        Lc7:
            r0 = r15
            r8 = r2
            r2 = r16
            goto Lcf
        Lcc:
            r7 = r21
            goto Lc7
        Lcf:
            r0.m573outOfBoundsHit8NAm7pk(r1, r2, r3, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeCoordinator.m572hitTestqzLsGqo(androidx.compose.ui.node.NodeCoordinator$Companion$SemanticsSource$1, long, androidx.compose.ui.node.HitTestResult, int, boolean):void");
    }

    /* renamed from: hitTestChild-qzLsGqo */
    public void mo548hitTestChildqzLsGqo(NodeCoordinator$Companion$SemanticsSource$1 nodeCoordinator$Companion$SemanticsSource$1, long j, HitTestResult hitTestResult, int i, boolean z) {
        NodeCoordinator nodeCoordinator = this.wrapped;
        if (nodeCoordinator != null) {
            nodeCoordinator.m572hitTestqzLsGqo(nodeCoordinator$Companion$SemanticsSource$1, nodeCoordinator.m567fromParentPosition8S9VItk(j), hitTestResult, i, z);
        }
    }

    public final void invalidateLayer() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ((GraphicsLayerOwnerLayer) ownedLayer).invalidate();
            return;
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (nodeCoordinator != null) {
            nodeCoordinator.invalidateLayer();
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final boolean isAttached() {
        return getTail().isAttached;
    }

    public final boolean isTransparent() {
        if (this.layer != null && this.lastLayerAlpha <= RecyclerView.DECELERATION_RATE) {
            return true;
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (nodeCoordinator != null) {
            return nodeCoordinator.isTransparent();
        }
        return false;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean isValidOwnerScope() {
        return (this.layer == null || this.released || !this.layoutNode.isAttached()) ? false : true;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final Rect localBoundingBoxOf(LayoutCoordinates layoutCoordinates, boolean z) {
        if (!getTail().isAttached) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        if (!layoutCoordinates.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinates " + layoutCoordinates + " is not attached!");
        }
        NodeCoordinator coordinator = toCoordinator(layoutCoordinates);
        coordinator.onCoordinatesUsed$ui();
        NodeCoordinator findCommonAncestor$ui = findCommonAncestor$ui(coordinator);
        SVG.Box box = this._rectCache;
        if (box == null) {
            box = new SVG.Box();
            this._rectCache = box;
        }
        box.minX = RecyclerView.DECELERATION_RATE;
        box.minY = RecyclerView.DECELERATION_RATE;
        box.width = (int) (layoutCoordinates.mo517getSizeYbymL2g() >> 32);
        box.height = (int) (layoutCoordinates.mo517getSizeYbymL2g() & 4294967295L);
        while (coordinator != findCommonAncestor$ui) {
            coordinator.rectInParent$ui(box, z, false);
            if (box.isEmpty()) {
                return Rect.Zero;
            }
            coordinator = coordinator.wrappedBy;
            coordinator.getClass();
        }
        ancestorToLocal(findCommonAncestor$ui, box, z);
        return new Rect(box.minX, box.minY, box.width, box.height);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-R5De75A */
    public final long mo518localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        return mo519localPositionOfS_NoaFU(layoutCoordinates, j);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-S_NoaFU */
    public final long mo519localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j) {
        if (layoutCoordinates instanceof LookaheadLayoutCoordinates) {
            LookaheadLayoutCoordinates lookaheadLayoutCoordinates = (LookaheadLayoutCoordinates) layoutCoordinates;
            lookaheadLayoutCoordinates.lookaheadDelegate.coordinator.onCoordinatesUsed$ui();
            return lookaheadLayoutCoordinates.mo519localPositionOfS_NoaFU(this, j ^ (-9223372034707292160L)) ^ (-9223372034707292160L);
        }
        NodeCoordinator coordinator = toCoordinator(layoutCoordinates);
        coordinator.onCoordinatesUsed$ui();
        NodeCoordinator findCommonAncestor$ui = findCommonAncestor$ui(coordinator);
        while (coordinator != findCommonAncestor$ui) {
            OwnedLayer ownedLayer = coordinator.layer;
            if (ownedLayer != null) {
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                float[] m605getMatrixsQKQjiQ = graphicsLayerOwnerLayer.m605getMatrixsQKQjiQ();
                if (!graphicsLayerOwnerLayer.isIdentity) {
                    j = Matrix.m447mapMKHz9U(j, m605getMatrixsQKQjiQ);
                }
            }
            j = Operation$State.m766plusNvtHpc(j, coordinator.position);
            coordinator = coordinator.wrappedBy;
            coordinator.getClass();
        }
        return m564ancestorToLocalS_NoaFU(findCommonAncestor$ui, j);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToRoot-MK-Hz9U */
    public final long mo520localToRootMKHz9U(long j) {
        if (!getTail().isAttached) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        onCoordinatesUsed$ui();
        while (this != null) {
            LayoutNode layoutNode = this.layoutNode;
            if (this == ((NodeCoordinator) layoutNode.nodes.outerCoordinator) && !layoutNode.hasPositionalLayerTransformationsInOffsetFromRoot) {
                long m618getOffsetFromRectListForBjo55l4 = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getRectManager().m618getOffsetFromRectListForBjo55l4(layoutNode);
                if (!IntOffset.m715equalsimpl0(m618getOffsetFromRectListForBjo55l4, 9223372034707292159L)) {
                    return Operation$State.m766plusNvtHpc(j, m618getOffsetFromRectListForBjo55l4);
                }
            }
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                float[] m605getMatrixsQKQjiQ = graphicsLayerOwnerLayer.m605getMatrixsQKQjiQ();
                if (!graphicsLayerOwnerLayer.isIdentity) {
                    j = Matrix.m447mapMKHz9U(j, m605getMatrixsQKQjiQ);
                }
            }
            j = Operation$State.m766plusNvtHpc(j, this.position);
            this = this.wrappedBy;
        }
        return j;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToScreen-MK-Hz9U */
    public final long mo521localToScreenMKHz9U(long j) {
        if (!getTail().isAttached) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        return ((AndroidComposeView) LayoutNodeKt.requireOwner(this.layoutNode)).m588localToScreenMKHz9U(mo520localToRootMKHz9U(j));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToWindow-MK-Hz9U */
    public final long mo522localToWindowMKHz9U(long j) {
        long mo520localToRootMKHz9U = mo520localToRootMKHz9U(j);
        AndroidComposeView androidComposeView = (AndroidComposeView) LayoutNodeKt.requireOwner(this.layoutNode);
        androidComposeView.recalculateWindowPosition();
        return Matrix.m447mapMKHz9U(mo520localToRootMKHz9U, androidComposeView.viewToWindowMatrix);
    }

    public final void onCoordinatesUsed$ui() {
        this.layoutNode.layoutDelegate.onCoordinatesUsed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final void onMeasured() {
        Modifier.Node node;
        boolean m580getIncludeSelfInTraversalH91voCI = NodeKindKt.m580getIncludeSelfInTraversalH91voCI(128);
        Modifier.Node headNode = headNode(m580getIncludeSelfInTraversalH91voCI);
        if (headNode == null || (headNode.node.aggregateChildKindSet & 128) == 0) {
            return;
        }
        Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            if (m580getIncludeSelfInTraversalH91voCI) {
                node = getTail();
            } else {
                node = getTail().parent;
                if (node == null) {
                }
            }
            for (Modifier.Node headNode2 = headNode(m580getIncludeSelfInTraversalH91voCI); headNode2 != null; headNode2 = headNode2.child) {
                if ((headNode2.aggregateChildKindSet & 128) == 0) {
                    break;
                }
                if ((headNode2.kindSet & 128) != 0) {
                    DelegatingNode delegatingNode = headNode2;
                    ?? r8 = 0;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof MeasuredSizeAwareModifierNode) {
                            ((MeasuredSizeAwareModifierNode) delegatingNode).mo66onRemeasuredozmzZPI(this.measuredSize);
                        } else if ((delegatingNode.kindSet & 128) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node node2 = delegatingNode.delegate;
                            int i = 0;
                            delegatingNode = delegatingNode;
                            r8 = r8;
                            while (node2 != null) {
                                if ((node2.kindSet & 128) != 0) {
                                    i++;
                                    r8 = r8;
                                    if (i == 1) {
                                        delegatingNode = node2;
                                    } else {
                                        if (r8 == 0) {
                                            r8 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (delegatingNode != 0) {
                                            r8.add(delegatingNode);
                                            delegatingNode = 0;
                                        }
                                        r8.add(node2);
                                    }
                                }
                                node2 = node2.child;
                                delegatingNode = delegatingNode;
                                r8 = r8;
                            }
                            if (i == 1) {
                            }
                        }
                        delegatingNode = HitTestResultKt.pop(r8);
                    }
                }
                if (headNode2 == node) {
                    break;
                }
            }
        } finally {
            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
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
        boolean m580getIncludeSelfInTraversalH91voCI = NodeKindKt.m580getIncludeSelfInTraversalH91voCI(4194304);
        Modifier.Node tail = getTail();
        if (!m580getIncludeSelfInTraversalH91voCI && (tail = tail.parent) == null) {
            return;
        }
        for (Modifier.Node headNode = headNode(m580getIncludeSelfInTraversalH91voCI); headNode != null && (headNode.aggregateChildKindSet & 4194304) != 0; headNode = headNode.child) {
            if ((headNode.kindSet & 4194304) != 0) {
                DelegatingNode delegatingNode = headNode;
                ?? r5 = 0;
                while (delegatingNode != 0) {
                    if (delegatingNode instanceof LayoutAwareModifierNode) {
                        ((LayoutAwareModifierNode) delegatingNode).onPlaced(this);
                    } else if ((delegatingNode.kindSet & 4194304) != 0 && (delegatingNode instanceof DelegatingNode)) {
                        Modifier.Node node = delegatingNode.delegate;
                        int i = 0;
                        delegatingNode = delegatingNode;
                        r5 = r5;
                        while (node != null) {
                            if ((node.kindSet & 4194304) != 0) {
                                i++;
                                r5 = r5;
                                if (i == 1) {
                                    delegatingNode = node;
                                } else {
                                    if (r5 == 0) {
                                        r5 = new MutableVector(new Modifier.Node[16]);
                                    }
                                    if (delegatingNode != 0) {
                                        r5.add(delegatingNode);
                                        delegatingNode = 0;
                                    }
                                    r5.add(node);
                                }
                            }
                            node = node.child;
                            delegatingNode = delegatingNode;
                            r5 = r5;
                        }
                        if (i == 1) {
                        }
                    }
                    delegatingNode = HitTestResultKt.pop(r5);
                }
            }
            if (headNode == tail) {
                return;
            }
        }
    }

    public final void onRelease() {
        this.released = true;
        this.invalidateParentLayer.invoke();
        releaseLayer();
        if (IntOffset.m715equalsimpl0(this.position, 0L)) {
            return;
        }
        this.layoutNode.onCoordinatorRectChanged$ui(this);
    }

    public final void onUnplaced() {
        boolean m580getIncludeSelfInTraversalH91voCI = NodeKindKt.m580getIncludeSelfInTraversalH91voCI(1048576);
        Modifier.Node headNode = headNode(m580getIncludeSelfInTraversalH91voCI);
        if (headNode == null || (headNode.node.aggregateChildKindSet & 1048576) == 0) {
            return;
        }
        Modifier.Node tail = getTail();
        if (!m580getIncludeSelfInTraversalH91voCI && (tail = tail.parent) == null) {
            return;
        }
        for (Modifier.Node headNode2 = headNode(m580getIncludeSelfInTraversalH91voCI); headNode2 != null && (headNode2.aggregateChildKindSet & 1048576) != 0; headNode2 = headNode2.child) {
            if ((headNode2.kindSet & 1048576) != 0) {
                Modifier.Node node = headNode2;
                MutableVector mutableVector = null;
                while (node != null) {
                    if ((node.kindSet & 1048576) != 0 && (node instanceof DelegatingNode)) {
                        int i = 0;
                        for (Modifier.Node node2 = ((DelegatingNode) node).delegate; node2 != null; node2 = node2.child) {
                            if ((node2.kindSet & 1048576) != 0) {
                                i++;
                                if (i == 1) {
                                    node = node2;
                                } else {
                                    if (mutableVector == null) {
                                        mutableVector = new MutableVector(new Modifier.Node[16]);
                                    }
                                    if (node != null) {
                                        mutableVector.add(node);
                                        node = null;
                                    }
                                    mutableVector.add(node2);
                                }
                            }
                        }
                        if (i == 1) {
                        }
                    }
                    node = HitTestResultKt.pop(mutableVector);
                }
            }
            if (headNode2 == tail) {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* renamed from: outOfBoundsHit-8NAm7pk, reason: not valid java name */
    public final void m573outOfBoundsHit8NAm7pk(Modifier.Node node, NodeCoordinator$Companion$SemanticsSource$1 nodeCoordinator$Companion$SemanticsSource$1, long j, HitTestResult hitTestResult, int i, boolean z, float f, boolean z2) {
        char c;
        int i2;
        Modifier.Node pop;
        MutableObjectList mutableObjectList = hitTestResult.values;
        if (node == null) {
            mo548hitTestChildqzLsGqo(nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z);
            return;
        }
        if (!nodeCoordinator$Companion$SemanticsSource$1.shouldHitTest(node)) {
            m573outOfBoundsHit8NAm7pk(HitTestResultKt.m546nextUntilhw7D004(node, nodeCoordinator$Companion$SemanticsSource$1.m579entityTypeOLwlOKw()), nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z, f, z2);
            return;
        }
        int i3 = i;
        boolean z3 = z;
        if (i3 == 3 || i3 == 4) {
            DelegatingNode delegatingNode = node;
            MutableVector mutableVector = null;
            while (true) {
                if (delegatingNode == 0) {
                    break;
                }
                if (delegatingNode instanceof PointerInputModifierNode) {
                    long mo29getTouchBoundsExpansionRZrCHBk = ((PointerInputModifierNode) delegatingNode).mo29getTouchBoundsExpansionRZrCHBk();
                    int i4 = (int) (j >> 32);
                    float intBitsToFloat = Float.intBitsToFloat(i4);
                    LayoutNode layoutNode = this.layoutNode;
                    LayoutDirection layoutDirection = layoutNode.layoutDirection;
                    int i5 = TouchBoundsExpansion.$r8$clinit;
                    long j2 = Long.MIN_VALUE & mo29getTouchBoundsExpansionRZrCHBk;
                    if (j2 == 0 || layoutDirection == LayoutDirection.Ltr) {
                        c = 30;
                        i2 = (int) mo29getTouchBoundsExpansionRZrCHBk;
                    } else {
                        c = 30;
                        i2 = (int) (mo29getTouchBoundsExpansionRZrCHBk >> 30);
                    }
                    if (intBitsToFloat >= (-(i2 & 32767))) {
                        if (Float.intBitsToFloat(i4) < getMeasuredWidth() + (((j2 == 0 || layoutNode.layoutDirection == LayoutDirection.Ltr) ? (int) (mo29getTouchBoundsExpansionRZrCHBk >> c) : (int) mo29getTouchBoundsExpansionRZrCHBk) & 32767)) {
                            int i6 = (int) (j & 4294967295L);
                            if (Float.intBitsToFloat(i6) >= (-(((int) (mo29getTouchBoundsExpansionRZrCHBk >> 15)) & 32767))) {
                                if (Float.intBitsToFloat(i6) < (((int) (mo29getTouchBoundsExpansionRZrCHBk >> 45)) & 32767) + getMeasuredHeight()) {
                                    MutableLongList mutableLongList = hitTestResult.distanceFromEdgeAndFlags;
                                    int i7 = hitTestResult.hitDepth;
                                    int i8 = mutableObjectList._size;
                                    if (i7 == i8 - 1) {
                                        hitTestResult.removeNodesInRange(i7 + 1, i8);
                                        hitTestResult.hitDepth++;
                                        mutableObjectList.add(node);
                                        mutableLongList.add(HitTestResultKt.DistanceAndFlags(RecyclerView.DECELERATION_RATE, z3, true));
                                        m573outOfBoundsHit8NAm7pk(HitTestResultKt.m546nextUntilhw7D004(node, nodeCoordinator$Companion$SemanticsSource$1.m579entityTypeOLwlOKw()), nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i3, z3, f, z2);
                                        hitTestResult.hitDepth = i7;
                                        return;
                                    }
                                    long m541findBestHitDistancefn2tFes = hitTestResult.m541findBestHitDistancefn2tFes();
                                    int i9 = hitTestResult.hitDepth;
                                    if (!HitTestResultKt.m544isInExpandedBoundsimpl(m541findBestHitDistancefn2tFes)) {
                                        if (HitTestResultKt.m543getDistanceimpl(m541findBestHitDistancefn2tFes) > RecyclerView.DECELERATION_RATE) {
                                            int i10 = hitTestResult.hitDepth;
                                            hitTestResult.removeNodesInRange(i10 + 1, mutableObjectList._size);
                                            hitTestResult.hitDepth++;
                                            mutableObjectList.add(node);
                                            mutableLongList.add(HitTestResultKt.DistanceAndFlags(RecyclerView.DECELERATION_RATE, z3, true));
                                            m573outOfBoundsHit8NAm7pk(HitTestResultKt.m546nextUntilhw7D004(node, nodeCoordinator$Companion$SemanticsSource$1.m579entityTypeOLwlOKw()), nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z3, f, z2);
                                            hitTestResult.hitDepth = i10;
                                            return;
                                        }
                                        return;
                                    }
                                    int i11 = mutableObjectList._size;
                                    int i12 = i11 - 1;
                                    hitTestResult.hitDepth = i12;
                                    hitTestResult.removeNodesInRange(i11, mutableObjectList._size);
                                    hitTestResult.hitDepth++;
                                    mutableObjectList.add(node);
                                    mutableLongList.add(HitTestResultKt.DistanceAndFlags(RecyclerView.DECELERATION_RATE, z3, true));
                                    m573outOfBoundsHit8NAm7pk(HitTestResultKt.m546nextUntilhw7D004(node, nodeCoordinator$Companion$SemanticsSource$1.m579entityTypeOLwlOKw()), nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z3, f, z2);
                                    hitTestResult.hitDepth = i12;
                                    if (HitTestResultKt.m543getDistanceimpl(hitTestResult.m541findBestHitDistancefn2tFes()) < RecyclerView.DECELERATION_RATE) {
                                        hitTestResult.removeNodesInRange(i9 + 1, hitTestResult.hitDepth + 1);
                                    }
                                    hitTestResult.hitDepth = i9;
                                    return;
                                }
                            }
                        }
                    }
                } else {
                    if ((delegatingNode.kindSet & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                        Modifier.Node node2 = delegatingNode.delegate;
                        int i13 = 0;
                        pop = delegatingNode;
                        mutableVector = mutableVector;
                        while (node2 != null) {
                            if ((node2.kindSet & 16) != 0) {
                                i13++;
                                mutableVector = mutableVector;
                                if (i13 == 1) {
                                    pop = node2;
                                } else {
                                    if (mutableVector == null) {
                                        mutableVector = new MutableVector(new Modifier.Node[16]);
                                    }
                                    if (pop != null) {
                                        mutableVector.add(pop);
                                        pop = null;
                                    }
                                    mutableVector.add(node2);
                                }
                            }
                            node2 = node2.child;
                            pop = pop;
                            mutableVector = mutableVector;
                        }
                        if (i13 == 1) {
                            i3 = i;
                            z3 = z;
                            delegatingNode = pop;
                            mutableVector = mutableVector;
                        }
                    }
                    pop = HitTestResultKt.pop(mutableVector);
                    i3 = i;
                    z3 = z;
                    delegatingNode = pop;
                    mutableVector = mutableVector;
                }
            }
        }
        if (z2) {
            m571hitNearFh5PU_I(node, nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z, f);
        } else {
            m575speculativeHitFh5PU_I(node, nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z, f);
        }
    }

    public abstract void performDraw(Canvas canvas, GraphicsLayer graphicsLayer);

    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public abstract void mo530placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer);

    /* renamed from: placeSelf-MLgxB_4, reason: not valid java name */
    public final void m574placeSelfMLgxB_4(long j, float f, Function1 function1, GraphicsLayer graphicsLayer) {
        LayoutNode layoutNode = this.layoutNode;
        if (graphicsLayer != null) {
            if (function1 != null) {
                InlineClassHelperKt.throwIllegalArgumentException("both ways to create layers shouldn't be used together");
            }
            if (this.explicitLayer != graphicsLayer) {
                this.explicitLayer = null;
                updateLayerBlock(null, false);
                this.explicitLayer = graphicsLayer;
            }
            if (this.layer == null) {
                Owner requireOwner = LayoutNodeKt.requireOwner(layoutNode);
                GlanceThemeKt$GlanceTheme$1 glanceThemeKt$GlanceTheme$1 = this._drawBlock;
                int i = 1;
                if (glanceThemeKt$GlanceTheme$1 == null) {
                    GlanceThemeKt$GlanceTheme$1 glanceThemeKt$GlanceTheme$12 = new GlanceThemeKt$GlanceTheme$1(3, this, new NodeCoordinator$invalidateParentLayer$1(this, i));
                    this._drawBlock = glanceThemeKt$GlanceTheme$12;
                    glanceThemeKt$GlanceTheme$1 = glanceThemeKt$GlanceTheme$12;
                }
                NodeCoordinator$invalidateParentLayer$1 nodeCoordinator$invalidateParentLayer$1 = this.invalidateParentLayer;
                OwnedLayer createLayer = ((AndroidComposeView) requireOwner).createLayer(glanceThemeKt$GlanceTheme$1, nodeCoordinator$invalidateParentLayer$1, graphicsLayer);
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) createLayer;
                graphicsLayerOwnerLayer.m607resizeozmzZPI(this.measuredSize);
                graphicsLayerOwnerLayer.m606movegyyYBs(j);
                this.layer = createLayer;
                layoutNode.innerLayerCoordinatorIsDirty = true;
                nodeCoordinator$invalidateParentLayer$1.invoke();
            }
        } else {
            if (this.explicitLayer != null) {
                this.explicitLayer = null;
                updateLayerBlock(null, false);
            }
            updateLayerBlock(function1, false);
        }
        if (!IntOffset.m715equalsimpl0(this.position, j)) {
            ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).voteFrameRate(-4.0f);
            this.position = j;
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                ((GraphicsLayerOwnerLayer) ownedLayer).m606movegyyYBs(j);
            } else {
                NodeCoordinator nodeCoordinator = this.wrappedBy;
                if (nodeCoordinator != null) {
                    nodeCoordinator.invalidateLayer();
                }
            }
            layoutNode.onCoordinatorRectChanged$ui(this);
            LookaheadCapablePlaceable.invalidateAlignmentLinesFromPositionChange(this);
            Owner owner = layoutNode.owner;
            if (owner != null) {
                ((AndroidComposeView) owner).onLayoutChange(layoutNode);
            }
        }
        this.zIndex = f;
        if (this == ((NodeCoordinator) layoutNode.nodes.outerCoordinator)) {
            ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getRectManager().recalculateRectIfDirty(layoutNode);
        }
        if (this.isPlacingForAlignment) {
            return;
        }
        captureRulersIfNeeded$ui(getMeasureResult$ui());
    }

    public final void rectInParent$ui(SVG.Box box, boolean z, boolean z2) {
        long j;
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            if (this.isClipping) {
                if (z2) {
                    long m568getMinimumTouchTargetSizeNHjbRc = m568getMinimumTouchTargetSizeNHjbRc();
                    float f = box.minX;
                    float f2 = box.minY;
                    if (box.width >= RecyclerView.DECELERATION_RATE) {
                        long j2 = this.measuredSize;
                        if (f <= ((int) (j2 >> 32)) && box.height >= RecyclerView.DECELERATION_RATE && f2 <= ((int) (j2 & 4294967295L))) {
                            float intBitsToFloat = Float.intBitsToFloat((int) (m568getMinimumTouchTargetSizeNHjbRc >> 32));
                            float intBitsToFloat2 = Float.intBitsToFloat((int) (m568getMinimumTouchTargetSizeNHjbRc & 4294967295L));
                            float f3 = (intBitsToFloat - (box.width - box.minX)) / 2.0f;
                            if (f3 > RecyclerView.DECELERATION_RATE) {
                                f -= f3;
                            } else {
                                float f4 = (-intBitsToFloat) / 2.0f;
                                if (f < f4) {
                                    f = f4;
                                }
                            }
                            float f5 = (intBitsToFloat2 - (box.height - box.minY)) / 2.0f;
                            if (f5 > RecyclerView.DECELERATION_RATE) {
                                f2 -= f5;
                            } else {
                                float f6 = (-intBitsToFloat2) / 2.0f;
                                if (f2 < f6) {
                                    f2 = f6;
                                }
                            }
                            j = (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L);
                            float intBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
                            float intBitsToFloat4 = Float.intBitsToFloat((int) (j & 4294967295L));
                            long j3 = this.measuredSize;
                            float f7 = (int) (j3 >> 32);
                            int i = (int) (m568getMinimumTouchTargetSizeNHjbRc >> 32);
                            float f8 = (int) (j3 & 4294967295L);
                            int i2 = (int) (m568getMinimumTouchTargetSizeNHjbRc & 4294967295L);
                            box.intersect(intBitsToFloat3, intBitsToFloat4, Math.min(Float.intBitsToFloat(i) + f7, Math.max(f7, Float.intBitsToFloat(i) + intBitsToFloat3)), Math.min(Float.intBitsToFloat(i2) + f8, Math.max(f8, Float.intBitsToFloat(i2) + intBitsToFloat4)));
                        }
                    }
                    j = 0;
                    float intBitsToFloat32 = Float.intBitsToFloat((int) (j >> 32));
                    float intBitsToFloat42 = Float.intBitsToFloat((int) (j & 4294967295L));
                    long j32 = this.measuredSize;
                    float f72 = (int) (j32 >> 32);
                    int i3 = (int) (m568getMinimumTouchTargetSizeNHjbRc >> 32);
                    float f82 = (int) (j32 & 4294967295L);
                    int i22 = (int) (m568getMinimumTouchTargetSizeNHjbRc & 4294967295L);
                    box.intersect(intBitsToFloat32, intBitsToFloat42, Math.min(Float.intBitsToFloat(i3) + f72, Math.max(f72, Float.intBitsToFloat(i3) + intBitsToFloat32)), Math.min(Float.intBitsToFloat(i22) + f82, Math.max(f82, Float.intBitsToFloat(i22) + intBitsToFloat42)));
                } else if (z) {
                    long j4 = this.measuredSize;
                    box.intersect(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, (int) (j4 >> 32), (int) (j4 & 4294967295L));
                }
                if (box.isEmpty()) {
                    return;
                }
            }
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            float[] m605getMatrixsQKQjiQ = graphicsLayerOwnerLayer.m605getMatrixsQKQjiQ();
            if (!graphicsLayerOwnerLayer.isIdentity) {
                if (m605getMatrixsQKQjiQ == null) {
                    box.minX = RecyclerView.DECELERATION_RATE;
                    box.minY = RecyclerView.DECELERATION_RATE;
                    box.width = RecyclerView.DECELERATION_RATE;
                    box.height = RecyclerView.DECELERATION_RATE;
                } else {
                    Matrix.m448mapimpl(m605getMatrixsQKQjiQ, box);
                }
            }
        }
        long j5 = this.position;
        float f9 = (int) (j5 >> 32);
        box.minX += f9;
        box.width += f9;
        float f10 = (int) (j5 & 4294967295L);
        box.minY += f10;
        box.height += f10;
    }

    public final void releaseLayer() {
        if (this.layer != null) {
            if (this.explicitLayer != null) {
                this.explicitLayer = null;
            }
            updateLayerBlock(null, false);
            this.layoutNode.requestRelayout$ui(false);
        }
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final void replace$ui() {
        GraphicsLayer graphicsLayer = this.explicitLayer;
        long j = this.position;
        if (graphicsLayer != null) {
            mo530placeAtf8xVGno(j, this.zIndex, graphicsLayer);
        } else {
            mo516placeAtf8xVGno(j, this.zIndex, this.layerBlock);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: screenToLocal-MK-Hz9U */
    public final long mo523screenToLocalMKHz9U(long j) {
        if (!getTail().isAttached) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        return mo519localPositionOfS_NoaFU(RulerKt.findRootCoordinates(this), ((AndroidComposeView) LayoutNodeKt.requireOwner(this.layoutNode)).m592screenToLocalMKHz9U(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [androidx.compose.runtime.collection.MutableVector] */
    public final void setMeasureResult$ui(MeasureResult measureResult) {
        NodeCoordinator nodeCoordinator;
        MeasureResult measureResult2 = this._measureResult;
        if (measureResult != measureResult2) {
            this._measureResult = measureResult;
            LayoutNode layoutNode = this.layoutNode;
            int i = 0;
            if (measureResult2 == null || measureResult.getWidth() != measureResult2.getWidth() || measureResult.getHeight() != measureResult2.getHeight()) {
                int width = measureResult.getWidth();
                int height = measureResult.getHeight();
                OwnedLayer ownedLayer = this.layer;
                if (ownedLayer != null) {
                    ((GraphicsLayerOwnerLayer) ownedLayer).m607resizeozmzZPI((width << 32) | (height & 4294967295L));
                } else if (layoutNode.isPlaced() && (nodeCoordinator = this.wrappedBy) != null) {
                    nodeCoordinator.invalidateLayer();
                }
                m531setMeasuredSizeozmzZPI((height & 4294967295L) | (width << 32));
                if (this.layerBlock != null) {
                    updateLayerParameters(false);
                }
                boolean m580getIncludeSelfInTraversalH91voCI = NodeKindKt.m580getIncludeSelfInTraversalH91voCI(4);
                Modifier.Node tail = getTail();
                if (m580getIncludeSelfInTraversalH91voCI || (tail = tail.parent) != null) {
                    for (Modifier.Node headNode = headNode(m580getIncludeSelfInTraversalH91voCI); headNode != null && (headNode.aggregateChildKindSet & 4) != 0; headNode = headNode.child) {
                        if ((headNode.kindSet & 4) != 0) {
                            DelegatingNode delegatingNode = headNode;
                            ?? r9 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof DrawModifierNode) {
                                    ((DrawModifierNode) delegatingNode).onMeasureResultChanged();
                                } else if ((delegatingNode.kindSet & 4) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node = delegatingNode.delegate;
                                    int i2 = 0;
                                    delegatingNode = delegatingNode;
                                    r9 = r9;
                                    while (node != null) {
                                        if ((node.kindSet & 4) != 0) {
                                            i2++;
                                            r9 = r9;
                                            if (i2 == 1) {
                                                delegatingNode = node;
                                            } else {
                                                if (r9 == 0) {
                                                    r9 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r9.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r9.add(node);
                                            }
                                        }
                                        node = node.child;
                                        delegatingNode = delegatingNode;
                                        r9 = r9;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                delegatingNode = HitTestResultKt.pop(r9);
                            }
                        }
                        if (headNode == tail) {
                            break;
                        }
                    }
                }
                Owner owner = layoutNode.owner;
                if (owner != null) {
                    ((AndroidComposeView) owner).onLayoutChange(layoutNode);
                }
                layoutNode.onCoordinatorRectChanged$ui(this);
            }
            MutableObjectIntMap mutableObjectIntMap = this.oldAlignmentLines;
            if ((mutableObjectIntMap == null || mutableObjectIntMap._size == 0) && measureResult.getAlignmentLines().isEmpty()) {
                return;
            }
            MutableObjectIntMap mutableObjectIntMap2 = this.oldAlignmentLines;
            Map alignmentLines = measureResult.getAlignmentLines();
            if (mutableObjectIntMap2 != null && mutableObjectIntMap2._size == alignmentLines.size()) {
                Object[] objArr = mutableObjectIntMap2.keys;
                int[] iArr = mutableObjectIntMap2.values;
                long[] jArr = mutableObjectIntMap2.metadata;
                int length = jArr.length - 2;
                if (length < 0) {
                    return;
                }
                int i3 = 0;
                loop0: while (true) {
                    long j = jArr[i3];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i4 = 8 - ((~(i3 - length)) >>> 31);
                        for (int i5 = i; i5 < i4; i5++) {
                            if ((255 & j) < 128) {
                                int i6 = (i3 << 3) + i5;
                                Object obj = objArr[i6];
                                int i7 = iArr[i6];
                                Integer num = (Integer) alignmentLines.get((AlignmentLine) obj);
                                if (num == null || num.intValue() != i7) {
                                    break loop0;
                                }
                            }
                            j >>= 8;
                        }
                        if (i4 != 8) {
                            return;
                        }
                    }
                    if (i3 == length) {
                        return;
                    }
                    i3++;
                    i = 0;
                }
            }
            layoutNode.layoutDelegate.measurePassDelegate.alignmentLines.onAlignmentsChanged();
            MutableObjectIntMap mutableObjectIntMap3 = this.oldAlignmentLines;
            if (mutableObjectIntMap3 == null) {
                MutableObjectIntMap mutableObjectIntMap4 = ObjectIntMapKt.EmptyObjectIntMap;
                mutableObjectIntMap3 = new MutableObjectIntMap();
                this.oldAlignmentLines = mutableObjectIntMap3;
            }
            mutableObjectIntMap3.clear();
            for (Map.Entry entry : measureResult.getAlignmentLines().entrySet()) {
                mutableObjectIntMap3.set(((Number) entry.getValue()).intValue(), entry.getKey());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object] */
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
    /* renamed from: speculativeHit-Fh5PU_I, reason: not valid java name */
    public final void m575speculativeHitFh5PU_I(Modifier.Node node, NodeCoordinator$Companion$SemanticsSource$1 nodeCoordinator$Companion$SemanticsSource$1, long j, HitTestResult hitTestResult, int i, boolean z, float f) {
        MutableObjectList mutableObjectList = hitTestResult.values;
        if (node == null) {
            mo548hitTestChildqzLsGqo(nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z);
            return;
        }
        if (!nodeCoordinator$Companion$SemanticsSource$1.shouldHitTest(node)) {
            m575speculativeHitFh5PU_I(HitTestResultKt.m546nextUntilhw7D004(node, nodeCoordinator$Companion$SemanticsSource$1.m579entityTypeOLwlOKw()), nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z, f);
            return;
        }
        switch (nodeCoordinator$Companion$SemanticsSource$1.$r8$classId) {
            case 0:
                break;
            default:
                DelegatingNode delegatingNode = node;
                ?? r4 = 0;
                while (delegatingNode != 0) {
                    if (delegatingNode instanceof PointerInputModifierNode) {
                        ((PointerInputModifierNode) delegatingNode).interceptOutOfBoundsChildEvents();
                    } else if ((delegatingNode.kindSet & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                        Modifier.Node node2 = delegatingNode.delegate;
                        int i2 = 0;
                        delegatingNode = delegatingNode;
                        r4 = r4;
                        while (node2 != null) {
                            if ((node2.kindSet & 16) != 0) {
                                i2++;
                                r4 = r4;
                                if (i2 == 1) {
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
                        if (i2 == 1) {
                        }
                    }
                    delegatingNode = HitTestResultKt.pop(r4);
                }
                break;
        }
        m573outOfBoundsHit8NAm7pk(HitTestResultKt.m546nextUntilhw7D004(node, nodeCoordinator$Companion$SemanticsSource$1.m579entityTypeOLwlOKw()), nodeCoordinator$Companion$SemanticsSource$1, j, hitTestResult, i, z, f, false);
    }

    public final Rect touchBoundsInRoot() {
        if (getTail().isAttached) {
            LayoutCoordinates findRootCoordinates = RulerKt.findRootCoordinates(this);
            SVG.Box box = this._rectCache;
            if (box == null) {
                box = new SVG.Box();
                this._rectCache = box;
            }
            long m565calculateMinimumTouchTargetPaddingE7KxVPU = m565calculateMinimumTouchTargetPaddingE7KxVPU(m568getMinimumTouchTargetSizeNHjbRc());
            int i = (int) (m565calculateMinimumTouchTargetPaddingE7KxVPU >> 32);
            box.minX = -Float.intBitsToFloat(i);
            int i2 = (int) (m565calculateMinimumTouchTargetPaddingE7KxVPU & 4294967295L);
            box.minY = -Float.intBitsToFloat(i2);
            box.width = Float.intBitsToFloat(i) + getMeasuredWidth();
            box.height = Float.intBitsToFloat(i2) + getMeasuredHeight();
            while (this != findRootCoordinates) {
                this.rectInParent$ui(box, false, true);
                if (!box.isEmpty()) {
                    this = this.wrappedBy;
                    this.getClass();
                }
            }
            return new Rect(box.minX, box.minY, box.width, box.height);
        }
        return Rect.Zero;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformFrom-EL8BTi8 */
    public final void mo524transformFromEL8BTi8(LayoutCoordinates layoutCoordinates, float[] fArr) {
        NodeCoordinator coordinator = toCoordinator(layoutCoordinates);
        coordinator.onCoordinatesUsed$ui();
        NodeCoordinator findCommonAncestor$ui = findCommonAncestor$ui(coordinator);
        Matrix.m449resetimpl(fArr);
        coordinator.m577transformToAncestorEL8BTi8(findCommonAncestor$ui, fArr);
        m576transformFromAncestorEL8BTi8(findCommonAncestor$ui, fArr);
    }

    /* renamed from: transformFromAncestor-EL8BTi8, reason: not valid java name */
    public final void m576transformFromAncestorEL8BTi8(NodeCoordinator nodeCoordinator, float[] fArr) {
        float[] m604getInverseMatrix3i98HWw;
        if (Intrinsics.areEqual(nodeCoordinator, this)) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        nodeCoordinator2.getClass();
        nodeCoordinator2.m576transformFromAncestorEL8BTi8(nodeCoordinator, fArr);
        if (!IntOffset.m715equalsimpl0(this.position, 0L)) {
            float[] fArr2 = tmpMatrix;
            Matrix.m449resetimpl(fArr2);
            long j = this.position;
            Matrix.m451translateimpl(fArr2, -((int) (j >> 32)), -((int) (j & 4294967295L)));
            Matrix.m450timesAssign58bKbWc(fArr, fArr2);
        }
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer == null || (m604getInverseMatrix3i98HWw = ((GraphicsLayerOwnerLayer) ownedLayer).m604getInverseMatrix3i98HWw()) == null) {
            return;
        }
        Matrix.m450timesAssign58bKbWc(fArr, m604getInverseMatrix3i98HWw);
    }

    /* renamed from: transformToAncestor-EL8BTi8, reason: not valid java name */
    public final void m577transformToAncestorEL8BTi8(NodeCoordinator nodeCoordinator, float[] fArr) {
        while (!this.equals(nodeCoordinator)) {
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                Matrix.m450timesAssign58bKbWc(fArr, ((GraphicsLayerOwnerLayer) ownedLayer).m605getMatrixsQKQjiQ());
            }
            if (!IntOffset.m715equalsimpl0(this.position, 0L)) {
                float[] fArr2 = tmpMatrix;
                Matrix.m449resetimpl(fArr2);
                Matrix.m451translateimpl(fArr2, (int) (r0 >> 32), (int) (r0 & 4294967295L));
                Matrix.m450timesAssign58bKbWc(fArr, fArr2);
            }
            this = this.wrappedBy;
            this.getClass();
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: transformToScreen-58bKbWc */
    public final void mo525transformToScreen58bKbWc(float[] fArr) {
        Owner requireOwner = LayoutNodeKt.requireOwner(this.layoutNode);
        NodeCoordinator coordinator = toCoordinator(RulerKt.findRootCoordinates(this));
        m577transformToAncestorEL8BTi8(coordinator, fArr);
        if (requireOwner instanceof MatrixPositionCalculator) {
            ((AndroidComposeView) ((MatrixPositionCalculator) requireOwner)).m587localToScreen58bKbWc(fArr);
            return;
        }
        long mo521localToScreenMKHz9U = coordinator.mo521localToScreenMKHz9U(0L);
        if ((9223372034707292159L & mo521localToScreenMKHz9U) != 9205357640488583168L) {
            Matrix.m451translateimpl(fArr, Float.intBitsToFloat((int) (mo521localToScreenMKHz9U >> 32)), Float.intBitsToFloat((int) (mo521localToScreenMKHz9U & 4294967295L)));
        }
    }

    public final void updateLayerBlock(Function1 function1, boolean z) {
        Owner owner;
        MutableVector mutableVector;
        Reference poll;
        if (function1 != null && this.explicitLayer != null) {
            InlineClassHelperKt.throwIllegalArgumentException("layerBlock can't be provided when explicitLayer is provided");
        }
        int i = 1;
        LayoutNode layoutNode = this.layoutNode;
        boolean z2 = (!z && this.layerBlock == function1 && Intrinsics.areEqual(this.layerDensity, layoutNode.density) && this.layerLayoutDirection == layoutNode.layoutDirection) ? false : true;
        this.layerDensity = layoutNode.density;
        this.layerLayoutDirection = layoutNode.layoutDirection;
        boolean isAttached = layoutNode.isAttached();
        NodeCoordinator$invalidateParentLayer$1 nodeCoordinator$invalidateParentLayer$1 = this.invalidateParentLayer;
        if (isAttached && function1 != null) {
            this.layerBlock = function1;
            if (this.layer != null) {
                if (z2) {
                    updateLayerParameters(true);
                    return;
                }
                return;
            }
            Owner requireOwner = LayoutNodeKt.requireOwner(layoutNode);
            GlanceThemeKt$GlanceTheme$1 glanceThemeKt$GlanceTheme$1 = this._drawBlock;
            if (glanceThemeKt$GlanceTheme$1 == null) {
                GlanceThemeKt$GlanceTheme$1 glanceThemeKt$GlanceTheme$12 = new GlanceThemeKt$GlanceTheme$1(3, this, new NodeCoordinator$invalidateParentLayer$1(this, i));
                this._drawBlock = glanceThemeKt$GlanceTheme$12;
                glanceThemeKt$GlanceTheme$1 = glanceThemeKt$GlanceTheme$12;
            }
            OwnedLayer createLayer = ((AndroidComposeView) requireOwner).createLayer(glanceThemeKt$GlanceTheme$1, nodeCoordinator$invalidateParentLayer$1, null);
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) createLayer;
            graphicsLayerOwnerLayer.m607resizeozmzZPI(this.measuredSize);
            graphicsLayerOwnerLayer.m606movegyyYBs(this.position);
            this.layer = createLayer;
            updateLayerParameters(true);
            layoutNode.innerLayerCoordinatorIsDirty = true;
            nodeCoordinator$invalidateParentLayer$1.invoke();
            return;
        }
        this.layerBlock = null;
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer2 = (GraphicsLayerOwnerLayer) ownedLayer;
            if (!ColorKt.m440isIdentity58bKbWc(graphicsLayerOwnerLayer2.m605getMatrixsQKQjiQ())) {
                layoutNode.onCoordinatorRectChanged$ui(this);
            }
            graphicsLayerOwnerLayer2.drawBlock = null;
            graphicsLayerOwnerLayer2.invalidateParentLayer = null;
            graphicsLayerOwnerLayer2.isDestroyed = true;
            graphicsLayerOwnerLayer2.setDirty(false);
            GraphicsContext graphicsContext = graphicsLayerOwnerLayer2.context;
            if (graphicsContext != null) {
                graphicsContext.releaseGraphicsLayer(graphicsLayerOwnerLayer2.graphicsLayer);
                AndroidComposeView androidComposeView = graphicsLayerOwnerLayer2.ownerView;
                CardView.AnonymousClass1 anonymousClass1 = androidComposeView.layerCache;
                do {
                    ReferenceQueue referenceQueue = (ReferenceQueue) anonymousClass1.this$0;
                    mutableVector = (MutableVector) anonymousClass1.mCardBackground;
                    poll = referenceQueue.poll();
                    if (poll != null) {
                        mutableVector.remove(poll);
                    }
                } while (poll != null);
                mutableVector.add(new java.lang.ref.WeakReference(graphicsLayerOwnerLayer2, (ReferenceQueue) anonymousClass1.this$0));
                androidComposeView.dirtyLayers.remove(graphicsLayerOwnerLayer2);
            }
            this.layer = null;
            layoutNode.innerLayerCoordinatorIsDirty = true;
            nodeCoordinator$invalidateParentLayer$1.invoke();
            if (getTail().isAttached && layoutNode.isPlaced() && (owner = layoutNode.owner) != null) {
                ((AndroidComposeView) owner).onLayoutChange(layoutNode);
            }
        }
        this.lastLayerDrawingWasSkipped = false;
    }

    public final void updateLayerParameters(boolean z) {
        char c;
        AndroidComposeView androidComposeView;
        boolean z2;
        Owner owner;
        Function0 function0;
        Function0 function02;
        if (this.explicitLayer != null) {
            return;
        }
        OwnedLayer ownedLayer = this.layer;
        Function1 function1 = this.layerBlock;
        if (ownedLayer == null) {
            if (function1 == null) {
                return;
            }
            InlineClassHelperKt.throwIllegalStateException("null layer with a non-null layerBlock");
            return;
        }
        if (function1 == null) {
            throw Modifier.CC.m("updateLayerParameters requires a non-null layerBlock");
        }
        ReusableGraphicsLayerScope reusableGraphicsLayerScope = graphicsLayerScope;
        reusableGraphicsLayerScope.reset$1();
        LayoutNode layoutNode = this.layoutNode;
        reusableGraphicsLayerScope.graphicsDensity = layoutNode.density;
        reusableGraphicsLayerScope.layoutDirection = layoutNode.layoutDirection;
        reusableGraphicsLayerScope.size = ExceptionsKt.m813toSizeozmzZPI(this.measuredSize);
        ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getSnapshotObserver().observer.observeReads(this, OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$4, new KTypeImpl$arguments$2(5, function1, this));
        LayerPositionalProperties layerPositionalProperties = this.layerPositionalProperties;
        if (layerPositionalProperties == null) {
            layerPositionalProperties = new LayerPositionalProperties();
            this.layerPositionalProperties = layerPositionalProperties;
        }
        LayerPositionalProperties layerPositionalProperties2 = tmpLayerPositionalProperties;
        layerPositionalProperties2.getClass();
        layerPositionalProperties2.scaleX = layerPositionalProperties.scaleX;
        layerPositionalProperties2.scaleY = layerPositionalProperties.scaleY;
        layerPositionalProperties2.translationY = layerPositionalProperties.translationY;
        layerPositionalProperties2.rotationZ = layerPositionalProperties.rotationZ;
        layerPositionalProperties2.cameraDistance = layerPositionalProperties.cameraDistance;
        layerPositionalProperties2.transformOrigin = layerPositionalProperties.transformOrigin;
        float f = reusableGraphicsLayerScope.scaleX;
        layerPositionalProperties.scaleX = f;
        layerPositionalProperties.scaleY = reusableGraphicsLayerScope.scaleY;
        layerPositionalProperties.translationY = reusableGraphicsLayerScope.translationY;
        layerPositionalProperties.rotationZ = reusableGraphicsLayerScope.rotationZ;
        layerPositionalProperties.cameraDistance = reusableGraphicsLayerScope.cameraDistance;
        long j = reusableGraphicsLayerScope.transformOrigin;
        layerPositionalProperties.transformOrigin = j;
        GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
        AndroidComposeView androidComposeView2 = graphicsLayerOwnerLayer.ownerView;
        int i = reusableGraphicsLayerScope.mutatedFields | graphicsLayerOwnerLayer.mutatedFields;
        graphicsLayerOwnerLayer.layoutDirection = reusableGraphicsLayerScope.layoutDirection;
        graphicsLayerOwnerLayer.density = reusableGraphicsLayerScope.graphicsDensity;
        int i2 = i & 4096;
        if (i2 != 0) {
            graphicsLayerOwnerLayer.transformOrigin = j;
        }
        if ((i & 1) != 0) {
            GraphicsLayerImpl graphicsLayerImpl = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl.getScaleX() != f) {
                graphicsLayerImpl.setScaleX(f);
            }
        }
        if ((i & 2) != 0) {
            GraphicsLayer graphicsLayer = graphicsLayerOwnerLayer.graphicsLayer;
            float f2 = reusableGraphicsLayerScope.scaleY;
            GraphicsLayerImpl graphicsLayerImpl2 = graphicsLayer.impl;
            if (graphicsLayerImpl2.getScaleY() != f2) {
                graphicsLayerImpl2.setScaleY(f2);
            }
        }
        if ((i & 4) != 0) {
            graphicsLayerOwnerLayer.graphicsLayer.setAlpha(reusableGraphicsLayerScope.alpha);
        }
        if ((i & 8) != 0) {
            GraphicsLayerImpl graphicsLayerImpl3 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl3.getTranslationX() != RecyclerView.DECELERATION_RATE) {
                graphicsLayerImpl3.setTranslationX();
            }
        }
        if ((i & 16) != 0) {
            GraphicsLayer graphicsLayer2 = graphicsLayerOwnerLayer.graphicsLayer;
            float f3 = reusableGraphicsLayerScope.translationY;
            GraphicsLayerImpl graphicsLayerImpl4 = graphicsLayer2.impl;
            if (graphicsLayerImpl4.getTranslationY() != f3) {
                graphicsLayerImpl4.setTranslationY(f3);
            }
        }
        if ((i & 32) != 0) {
            GraphicsLayer graphicsLayer3 = graphicsLayerOwnerLayer.graphicsLayer;
            float f4 = reusableGraphicsLayerScope.shadowElevation;
            GraphicsLayerImpl graphicsLayerImpl5 = graphicsLayer3.impl;
            if (graphicsLayerImpl5.getShadowElevation() != f4) {
                graphicsLayerImpl5.setShadowElevation(f4);
                graphicsLayer3.outlineDirty = true;
                graphicsLayer3.configureOutlineAndClip();
            }
            if (reusableGraphicsLayerScope.shadowElevation > RecyclerView.DECELERATION_RATE && !graphicsLayerOwnerLayer.drawnWithEnabledZ && (function02 = graphicsLayerOwnerLayer.invalidateParentLayer) != null) {
                function02.invoke();
            }
        }
        if ((i & 64) != 0) {
            GraphicsLayer graphicsLayer4 = graphicsLayerOwnerLayer.graphicsLayer;
            long j2 = reusableGraphicsLayerScope.ambientShadowColor;
            GraphicsLayerImpl graphicsLayerImpl6 = graphicsLayer4.impl;
            long mo479getAmbientShadowColor0d7_KjU = graphicsLayerImpl6.mo479getAmbientShadowColor0d7_KjU();
            int i3 = Color.$r8$clinit;
            if (!ULong.m820equalsimpl0(j2, mo479getAmbientShadowColor0d7_KjU)) {
                graphicsLayerImpl6.mo483setAmbientShadowColor8_81llA(j2);
            }
        }
        if ((i & 128) != 0) {
            GraphicsLayer graphicsLayer5 = graphicsLayerOwnerLayer.graphicsLayer;
            long j3 = reusableGraphicsLayerScope.spotShadowColor;
            GraphicsLayerImpl graphicsLayerImpl7 = graphicsLayer5.impl;
            long mo482getSpotShadowColor0d7_KjU = graphicsLayerImpl7.mo482getSpotShadowColor0d7_KjU();
            int i4 = Color.$r8$clinit;
            if (!ULong.m820equalsimpl0(j3, mo482getSpotShadowColor0d7_KjU)) {
                graphicsLayerImpl7.mo489setSpotShadowColor8_81llA(j3);
            }
        }
        if ((i & 1024) != 0) {
            GraphicsLayer graphicsLayer6 = graphicsLayerOwnerLayer.graphicsLayer;
            float f5 = reusableGraphicsLayerScope.rotationZ;
            GraphicsLayerImpl graphicsLayerImpl8 = graphicsLayer6.impl;
            if (graphicsLayerImpl8.getRotationZ() != f5) {
                graphicsLayerImpl8.setRotationZ(f5);
            }
        }
        if ((i & 256) != 0) {
            GraphicsLayerImpl graphicsLayerImpl9 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl9.getRotationX() != RecyclerView.DECELERATION_RATE) {
                graphicsLayerImpl9.setRotationX();
            }
        }
        if ((i & 512) != 0) {
            GraphicsLayerImpl graphicsLayerImpl10 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl10.getRotationY() != RecyclerView.DECELERATION_RATE) {
                graphicsLayerImpl10.setRotationY();
            }
        }
        if ((i & 2048) != 0) {
            GraphicsLayer graphicsLayer7 = graphicsLayerOwnerLayer.graphicsLayer;
            float f6 = reusableGraphicsLayerScope.cameraDistance;
            GraphicsLayerImpl graphicsLayerImpl11 = graphicsLayer7.impl;
            if (graphicsLayerImpl11.getCameraDistance() != f6) {
                graphicsLayerImpl11.setCameraDistance(f6);
            }
        }
        if (i2 != 0) {
            c = ' ';
            boolean m455equalsimpl0 = TransformOrigin.m455equalsimpl0(graphicsLayerOwnerLayer.transformOrigin, TransformOrigin.Center);
            GraphicsLayer graphicsLayer8 = graphicsLayerOwnerLayer.graphicsLayer;
            if (!m455equalsimpl0) {
                long floatToRawIntBits = (Float.floatToRawIntBits(Float.intBitsToFloat((int) (graphicsLayerOwnerLayer.transformOrigin & 4294967295L)) * ((int) (graphicsLayerOwnerLayer.size & 4294967295L))) & 4294967295L) | (Float.floatToRawIntBits(Float.intBitsToFloat((int) (graphicsLayerOwnerLayer.transformOrigin >> 32)) * ((int) (graphicsLayerOwnerLayer.size >> 32))) << 32);
                if (!Offset.m383equalsimpl0(graphicsLayer8.pivotOffset, floatToRawIntBits)) {
                    graphicsLayer8.pivotOffset = floatToRawIntBits;
                    graphicsLayer8.impl.mo487setPivotOffsetk4lQ0M(floatToRawIntBits);
                }
            } else if (!Offset.m383equalsimpl0(graphicsLayer8.pivotOffset, 9205357640488583168L)) {
                graphicsLayer8.pivotOffset = 9205357640488583168L;
                graphicsLayer8.impl.mo487setPivotOffsetk4lQ0M(9205357640488583168L);
            }
        } else {
            c = ' ';
        }
        if ((i & 16384) != 0) {
            GraphicsLayer graphicsLayer9 = graphicsLayerOwnerLayer.graphicsLayer;
            boolean z3 = reusableGraphicsLayerScope.clip;
            if (graphicsLayer9.clip != z3) {
                graphicsLayer9.clip = z3;
                graphicsLayer9.outlineDirty = true;
                graphicsLayer9.configureOutlineAndClip();
            }
        }
        if ((131072 & i) != 0) {
            GraphicsLayerImpl graphicsLayerImpl12 = graphicsLayerOwnerLayer.graphicsLayer.impl;
        }
        if ((262144 & i) != 0) {
            GraphicsLayerImpl graphicsLayerImpl13 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (!Intrinsics.areEqual(graphicsLayerImpl13.getColorFilter(), null)) {
                graphicsLayerImpl13.setColorFilter();
            }
        }
        if ((524288 & i) != 0) {
            GraphicsLayer graphicsLayer10 = graphicsLayerOwnerLayer.graphicsLayer;
            int i5 = reusableGraphicsLayerScope.blendMode;
            GraphicsLayerImpl graphicsLayerImpl14 = graphicsLayer10.impl;
            if (graphicsLayerImpl14.mo480getBlendMode0nO6VwU() != i5) {
                graphicsLayerImpl14.mo484setBlendModes9anfk8(i5);
            }
        }
        if ((32768 & i) != 0) {
            GraphicsLayerImpl graphicsLayerImpl15 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl15.mo481getCompositingStrategyke2Ky5w() != 0) {
                graphicsLayerImpl15.mo485setCompositingStrategyWpw9cng(0);
            }
        }
        if ((i & 7963) != 0) {
            graphicsLayerOwnerLayer.isMatrixDirty = true;
            graphicsLayerOwnerLayer.isInverseMatrixDirty = true;
        }
        if (Intrinsics.areEqual(graphicsLayerOwnerLayer.outline, reusableGraphicsLayerScope.outline)) {
            androidComposeView = androidComposeView2;
            z2 = false;
        } else {
            ColorKt colorKt = reusableGraphicsLayerScope.outline;
            graphicsLayerOwnerLayer.outline = colorKt;
            if (colorKt == null) {
                androidComposeView = androidComposeView2;
            } else {
                GraphicsLayer graphicsLayer11 = graphicsLayerOwnerLayer.graphicsLayer;
                if (colorKt instanceof Outline$Rectangle) {
                    Rect rect = ((Outline$Rectangle) colorKt).rect;
                    float f7 = rect.left;
                    float f8 = rect.top;
                    androidComposeView = androidComposeView2;
                    graphicsLayer11.m478setRoundRectOutlineTNW_H78((Float.floatToRawIntBits(f7) << c) | (Float.floatToRawIntBits(f8) & 4294967295L), (Float.floatToRawIntBits(rect.right - f7) << c) | (Float.floatToRawIntBits(rect.bottom - f8) & 4294967295L), RecyclerView.DECELERATION_RATE);
                } else {
                    androidComposeView = androidComposeView2;
                    if (colorKt instanceof Outline$Generic) {
                        AndroidPath androidPath = ((Outline$Generic) colorKt).path;
                        graphicsLayer11.internalOutline = null;
                        graphicsLayer11.roundRectOutlineSize = 9205357640488583168L;
                        graphicsLayer11.roundRectOutlineTopLeft = 0L;
                        graphicsLayer11.roundRectCornerRadius = RecyclerView.DECELERATION_RATE;
                        graphicsLayer11.outlineDirty = true;
                        graphicsLayer11.usePathForClip = false;
                        graphicsLayer11.outlinePath = androidPath;
                        graphicsLayer11.configureOutlineAndClip();
                    } else {
                        if (!(colorKt instanceof Outline$Rounded)) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            return;
                        }
                        Outline$Rounded outline$Rounded = (Outline$Rounded) colorKt;
                        AndroidPath androidPath2 = outline$Rounded.roundRectPath;
                        if (androidPath2 != null) {
                            graphicsLayer11.internalOutline = null;
                            graphicsLayer11.roundRectOutlineSize = 9205357640488583168L;
                            graphicsLayer11.roundRectOutlineTopLeft = 0L;
                            graphicsLayer11.roundRectCornerRadius = RecyclerView.DECELERATION_RATE;
                            graphicsLayer11.outlineDirty = true;
                            graphicsLayer11.usePathForClip = false;
                            graphicsLayer11.outlinePath = androidPath2;
                            graphicsLayer11.configureOutlineAndClip();
                        } else {
                            graphicsLayer11.m478setRoundRectOutlineTNW_H78((Float.floatToRawIntBits(r8.left) << c) | (Float.floatToRawIntBits(r8.top) & 4294967295L), (Float.floatToRawIntBits(r8.getWidth()) << c) | (Float.floatToRawIntBits(r8.getHeight()) & 4294967295L), Float.intBitsToFloat((int) (outline$Rounded.roundRect.bottomLeftCornerRadius >> c)));
                        }
                    }
                }
                if (Build.VERSION.SDK_INT < 33 && (((colorKt instanceof Outline$Generic) || ((colorKt instanceof Outline$Rounded) && !RegexKt.isSimple(((Outline$Rounded) colorKt).roundRect))) && (function0 = graphicsLayerOwnerLayer.invalidateParentLayer) != null)) {
                    function0.invoke();
                }
            }
            z2 = true;
        }
        graphicsLayerOwnerLayer.mutatedFields = reusableGraphicsLayerScope.mutatedFields;
        if (i != 0 || z2) {
            if (Build.VERSION.SDK_INT >= 26) {
                WrapperRenderNodeLayerHelperMethods.onDescendantInvalidated(androidComposeView);
            } else {
                androidComposeView.invalidate();
            }
            if (AndroidComposeView.isArrEnabled$ui()) {
                androidComposeView.voteFrameRate(RecyclerView.DECELERATION_RATE);
            }
        }
        boolean z4 = this.isClipping;
        this.isClipping = reusableGraphicsLayerScope.clip;
        this.lastLayerAlpha = reusableGraphicsLayerScope.alpha;
        boolean z5 = layerPositionalProperties2.scaleX == layerPositionalProperties.scaleX && layerPositionalProperties2.scaleY == layerPositionalProperties.scaleY && layerPositionalProperties2.translationY == layerPositionalProperties.translationY && layerPositionalProperties2.rotationZ == layerPositionalProperties.rotationZ && layerPositionalProperties2.cameraDistance == layerPositionalProperties.cameraDistance && TransformOrigin.m455equalsimpl0(layerPositionalProperties2.transformOrigin, layerPositionalProperties.transformOrigin);
        if (z && ((!z5 || z4 != this.isClipping) && (owner = layoutNode.owner) != null)) {
            ((AndroidComposeView) owner).onLayoutChange(layoutNode);
        }
        if (z5) {
            return;
        }
        layoutNode.onCoordinatorRectChanged$ui(this);
        if (layoutNode.globallyPositionedObservers > 0) {
            AndroidComposeView androidComposeView3 = (AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode);
            CardView.AnonymousClass1 anonymousClass1 = (CardView.AnonymousClass1) androidComposeView3.measureAndLayoutDelegate.createdAtMillis;
            if (layoutNode.globallyPositionedObservers > 0) {
                ((MutableVector) anonymousClass1.mCardBackground).add(layoutNode);
                layoutNode.needsOnGloballyPositionedDispatch = true;
            }
            androidComposeView3.scheduleMeasureAndLayout(null);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: windowToLocal-MK-Hz9U */
    public final long mo526windowToLocalMKHz9U(long j) {
        if (!getTail().isAttached) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        LayoutCoordinates findRootCoordinates = RulerKt.findRootCoordinates(this);
        AndroidComposeView androidComposeView = (AndroidComposeView) LayoutNodeKt.requireOwner(this.layoutNode);
        androidComposeView.recalculateWindowPosition();
        return mo519localPositionOfS_NoaFU(findRootCoordinates, Offset.m385minusMKHz9U(Matrix.m447mapMKHz9U(j, androidComposeView.windowToViewMatrix), findRootCoordinates.mo520localToRootMKHz9U(0L)));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* renamed from: withinLayerBounds-k-4lQ0M, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m578withinLayerBoundsk4lQ0M(long r24) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeCoordinator.m578withinLayerBoundsk4lQ0M(long):boolean");
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutCoordinates getCoordinates() {
        return this;
    }
}
