package androidx.compose.ui.node;

import android.os.Build;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableLongList;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.platform.WrapperRenderNodeLayerHelperMethods;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.util.AndroidSystemCallbacks;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.acra.util.ProcessFinisher;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class NodeCoordinator extends LookaheadCapablePlaceable implements Measurable, LayoutCoordinates, OwnerScope {
    public NodeCoordinator$drawBlock$1 _drawBlock;
    public MeasureResult _measureResult;
    public MutableRect _rectCache;
    public Canvas drawBlockCanvas;
    public GraphicsLayer drawBlockParentLayer;
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
    public static final TouchBoundsExpansion$Companion PointerInputSource = new TouchBoundsExpansion$Companion(1);
    public static final TouchBoundsExpansion$Companion SemanticsSource = new TouchBoundsExpansion$Companion(2);
    public float lastLayerAlpha = 0.8f;
    public long position = 0;
    public Shape lastShape = Brush.RectangleShape;
    public final NodeCoordinator$invalidateParentLayer$1 invalidateParentLayer = new NodeCoordinator$invalidateParentLayer$1(this);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface HitTestSource {
        /* renamed from: childHitTest-qzLsGqo, reason: not valid java name */
        void mo354childHitTestqzLsGqo(LayoutNode layoutNode, long j, HitTestResult hitTestResult, int i, boolean z);

        /* renamed from: entityType-OLwlOKw, reason: not valid java name */
        int mo355entityTypeOLwlOKw();

        boolean interceptOutOfBoundsChildEvents(Modifier.Node node);

        boolean shareWithSiblings(HitTestResult hitTestResult, LayoutNode layoutNode);

        boolean shouldHitTest(Modifier.Node node);

        boolean shouldHitTestChildren(LayoutNode layoutNode);
    }

    public NodeCoordinator(LayoutNode layoutNode) {
        this.layoutNode = layoutNode;
        this.layerDensity = layoutNode.density;
        this.layerLayoutDirection = layoutNode.layoutDirection;
    }

    public final void ancestorToLocal(NodeCoordinator nodeCoordinator, MutableRect mutableRect, boolean z) {
        if (nodeCoordinator == this) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        if (nodeCoordinator2 != null) {
            nodeCoordinator2.ancestorToLocal(nodeCoordinator, mutableRect, z);
        }
        long j = this.position;
        float f = (int) (j >> 32);
        mutableRect.left -= f;
        mutableRect.right -= f;
        float f2 = (int) (j & 4294967295L);
        mutableRect.top -= f2;
        mutableRect.bottom -= f2;
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            float[] m389getInverseMatrix3i98HWw = graphicsLayerOwnerLayer.m389getInverseMatrix3i98HWw();
            if (!graphicsLayerOwnerLayer.isIdentity) {
                if (m389getInverseMatrix3i98HWw == null) {
                    mutableRect.left = 0.0f;
                    mutableRect.top = 0.0f;
                    mutableRect.right = 0.0f;
                    mutableRect.bottom = 0.0f;
                } else {
                    Brush.m231mapimpl(m389getInverseMatrix3i98HWw, mutableRect);
                }
            }
            if (this.isClipping && z) {
                long j2 = this.measuredSize;
                mutableRect.intersect(0.0f, 0.0f, (int) (j2 >> 32), (int) (j2 & 4294967295L));
            }
        }
    }

    /* renamed from: ancestorToLocal-S_NoaFU, reason: not valid java name */
    public final long m340ancestorToLocalS_NoaFU(NodeCoordinator nodeCoordinator, long j) {
        if (nodeCoordinator == this) {
            return j;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        return (nodeCoordinator2 == null || Intrinsics.areEqual(nodeCoordinator, nodeCoordinator2)) ? m343fromParentPosition8S9VItk(j) : m343fromParentPosition8S9VItk(nodeCoordinator2.m340ancestorToLocalS_NoaFU(nodeCoordinator, j));
    }

    /* renamed from: calculateMinimumTouchTargetPadding-E7KxVPU, reason: not valid java name */
    public final long m341calculateMinimumTouchTargetPaddingE7KxVPU(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - getMeasuredWidth();
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - getMeasuredHeight();
        float max = Math.max(0.0f, intBitsToFloat / 2.0f);
        float max2 = Math.max(0.0f, intBitsToFloat2 / 2.0f);
        return (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(max2) & 4294967295L);
    }

    /* renamed from: distanceInMinimumTouchTarget-tz77jQw, reason: not valid java name */
    public final float m342distanceInMinimumTouchTargettz77jQw(long j, long j2) {
        if (getMeasuredWidth() >= Float.intBitsToFloat((int) (j2 >> 32)) && getMeasuredHeight() >= Float.intBitsToFloat((int) (j2 & 4294967295L))) {
            return Float.POSITIVE_INFINITY;
        }
        long m341calculateMinimumTouchTargetPaddingE7KxVPU = m341calculateMinimumTouchTargetPaddingE7KxVPU(j2);
        float intBitsToFloat = Float.intBitsToFloat((int) (m341calculateMinimumTouchTargetPaddingE7KxVPU >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (m341calculateMinimumTouchTargetPaddingE7KxVPU & 4294967295L));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
        float max = Math.max(0.0f, intBitsToFloat3 < 0.0f ? -intBitsToFloat3 : intBitsToFloat3 - getMeasuredWidth());
        long floatToRawIntBits = (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(Math.max(0.0f, Float.intBitsToFloat((int) (j & 4294967295L)) < 0.0f ? -r9 : r9 - getMeasuredHeight())) & 4294967295L);
        if (intBitsToFloat > 0.0f || intBitsToFloat2 > 0.0f) {
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
        boolean z;
        float f;
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer == null) {
            long j = this.position;
            float f2 = (int) (j >> 32);
            float f3 = (int) (j & 4294967295L);
            canvas.translate(f2, f3);
            drawContainedDrawModifiers(canvas, graphicsLayer);
            canvas.translate(-f2, -f3);
            return;
        }
        GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
        CanvasDrawScope canvasDrawScope = graphicsLayerOwnerLayer.scope;
        graphicsLayerOwnerLayer.updateDisplayList();
        boolean z2 = false;
        graphicsLayerOwnerLayer.drawnWithEnabledZ = graphicsLayerOwnerLayer.graphicsLayer.impl.getShadowElevation() > 0.0f;
        ProcessFinisher processFinisher = canvasDrawScope.drawContext;
        processFinisher.setCanvas(canvas);
        processFinisher.config = graphicsLayer;
        GraphicsLayer graphicsLayer2 = graphicsLayerOwnerLayer.graphicsLayer;
        Canvas canvas2 = canvasDrawScope.getDrawContext().getCanvas();
        GraphicsLayer graphicsLayer3 = (GraphicsLayer) canvasDrawScope.getDrawContext().config;
        GraphicsLayerImpl graphicsLayerImpl = graphicsLayer2.impl;
        if (graphicsLayer2.isReleased) {
            return;
        }
        graphicsLayer2.configureOutlineAndClip();
        if (!graphicsLayerImpl.getHasDisplayList()) {
            try {
                graphicsLayer2.impl.record(graphicsLayer2.density, graphicsLayer2.layoutDirection, graphicsLayer2, graphicsLayer2.clipDrawBlock);
            } catch (Throwable unused) {
            }
        }
        boolean z3 = graphicsLayerImpl.getShadowElevation() > 0.0f;
        if (z3) {
            canvas2.enableZ();
        }
        android.graphics.Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas2);
        boolean isHardwareAccelerated = nativeCanvas.isHardwareAccelerated();
        if (!isHardwareAccelerated) {
            long j2 = graphicsLayer2.topLeft;
            float f4 = (int) (j2 >> 32);
            float f5 = (int) (j2 & 4294967295L);
            long j3 = graphicsLayer2.size;
            float f6 = ((int) (j3 >> 32)) + f4;
            float f7 = f5 + ((int) (j3 & 4294967295L));
            float alpha = graphicsLayerImpl.getAlpha();
            BlendModeColorFilter colorFilter = graphicsLayerImpl.getColorFilter();
            int mo269getBlendMode0nO6VwU = graphicsLayerImpl.mo269getBlendMode0nO6VwU();
            if (alpha < 1.0f || mo269getBlendMode0nO6VwU != 3 || colorFilter != null || graphicsLayerImpl.mo270getCompositingStrategyke2Ky5w() == 1) {
                AndroidPaint androidPaint = graphicsLayer2.softwareLayerPaint;
                if (androidPaint == null) {
                    androidPaint = Brush.Paint();
                    graphicsLayer2.softwareLayerPaint = androidPaint;
                }
                androidPaint.setAlpha(alpha);
                androidPaint.m219setBlendModes9anfk8(mo269getBlendMode0nO6VwU);
                androidPaint.setColorFilter(colorFilter);
                f = f4;
                nativeCanvas.saveLayer(f, f5, f6, f7, Brush.getNativePaint(androidPaint));
            } else {
                nativeCanvas.save();
                f = f4;
            }
            nativeCanvas.translate(f, f5);
            nativeCanvas.concat(graphicsLayerImpl.calculateMatrix());
        }
        boolean z4 = !isHardwareAccelerated && graphicsLayer2.clip;
        if (z4) {
            canvas2.save();
            Brush outline = graphicsLayer2.getOutline();
            if (outline instanceof Outline$Rectangle) {
                canvas2.mo212clipRectmtrdDE(((Outline$Rectangle) outline).rect);
            } else if (outline instanceof Outline$Rounded) {
                AndroidPath androidPath = graphicsLayer2.roundRectClipPath;
                if (androidPath != null) {
                    androidPath.internalPath.rewind();
                } else {
                    androidPath = AndroidPath_androidKt.Path();
                    graphicsLayer2.roundRectClipPath = androidPath;
                }
                Owner.CC.addRoundRect$default(androidPath, ((Outline$Rounded) outline).roundRect);
                canvas2.mo210clipPathmtrdDE(androidPath);
            } else {
                if (!(outline instanceof Outline$Generic)) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                canvas2.mo210clipPathmtrdDE(((Outline$Generic) outline).path);
            }
        }
        if (graphicsLayer3 != null) {
            AndroidSystemCallbacks androidSystemCallbacks = graphicsLayer3.childDependenciesTracker;
            if (!androidSystemCallbacks.shutdown) {
                InlineClassHelperKt.throwIllegalArgumentException("Only add dependencies during a tracking");
            }
            MutableScatterSet mutableScatterSet = (MutableScatterSet) androidSystemCallbacks.componentCallbacks;
            if (mutableScatterSet != null) {
                mutableScatterSet.add(graphicsLayer2);
            } else if (((GraphicsLayer) androidSystemCallbacks.imageLoader) != null) {
                MutableScatterSet mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
                MutableScatterSet mutableScatterSet3 = new MutableScatterSet();
                GraphicsLayer graphicsLayer4 = (GraphicsLayer) androidSystemCallbacks.imageLoader;
                graphicsLayer4.getClass();
                mutableScatterSet3.add(graphicsLayer4);
                mutableScatterSet3.add(graphicsLayer2);
                androidSystemCallbacks.componentCallbacks = mutableScatterSet3;
                androidSystemCallbacks.imageLoader = null;
            } else {
                androidSystemCallbacks.imageLoader = graphicsLayer2;
            }
            MutableScatterSet mutableScatterSet4 = (MutableScatterSet) androidSystemCallbacks.application;
            if (mutableScatterSet4 != null) {
                z2 = !mutableScatterSet4.remove(graphicsLayer2);
            } else if (((GraphicsLayer) androidSystemCallbacks.activityCallbacks) != graphicsLayer2) {
                z2 = true;
            } else {
                androidSystemCallbacks.activityCallbacks = null;
            }
            if (z2) {
                graphicsLayer2.parentLayerUsages++;
            }
        }
        if (((AndroidCanvas) canvas2).internalCanvas.isHardwareAccelerated()) {
            z = z4;
            graphicsLayerImpl.draw(canvas2);
        } else {
            CanvasDrawScope canvasDrawScope2 = graphicsLayer2.softwareDrawScope;
            if (canvasDrawScope2 == null) {
                canvasDrawScope2 = new CanvasDrawScope();
                graphicsLayer2.softwareDrawScope = canvasDrawScope2;
            }
            ProcessFinisher processFinisher2 = canvasDrawScope2.drawContext;
            Density density = graphicsLayer2.density;
            LayoutDirection layoutDirection = graphicsLayer2.layoutDirection;
            long m708toSizeozmzZPI = Cookie.Companion.m708toSizeozmzZPI(graphicsLayer2.size);
            CanvasDrawScope.DrawParams drawParams = ((CanvasDrawScope) processFinisher2.lastActivityManager).drawParams;
            Density density2 = drawParams.density;
            LayoutDirection layoutDirection2 = drawParams.layoutDirection;
            Canvas canvas3 = processFinisher2.getCanvas();
            long m729getSizeNHjbRc = processFinisher2.m729getSizeNHjbRc();
            z = z4;
            GraphicsLayer graphicsLayer5 = (GraphicsLayer) processFinisher2.config;
            processFinisher2.setDensity(density);
            processFinisher2.setLayoutDirection(layoutDirection);
            processFinisher2.setCanvas(canvas2);
            processFinisher2.m730setSizeuvyYCjk(m708toSizeozmzZPI);
            processFinisher2.config = graphicsLayer2;
            canvas2.save();
            try {
                graphicsLayer2.drawWithChildTracking(canvasDrawScope2);
            } finally {
                canvas2.restore();
                processFinisher2.setDensity(density2);
                processFinisher2.setLayoutDirection(layoutDirection2);
                processFinisher2.setCanvas(canvas3);
                processFinisher2.m730setSizeuvyYCjk(m729getSizeNHjbRc);
                processFinisher2.config = graphicsLayer5;
            }
        }
        if (z) {
            canvas2.restore();
        }
        if (z3) {
            canvas2.disableZ();
        }
        if (isHardwareAccelerated) {
            return;
        }
        nativeCanvas.restore();
    }

    public final void drawContainedDrawModifiers(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinator;
        Canvas canvas2;
        GraphicsLayer graphicsLayer2;
        Modifier.Node m345headH91voCI = m345headH91voCI(4);
        if (m345headH91voCI == null) {
            performDraw(canvas, graphicsLayer);
            return;
        }
        LayoutNode layoutNode = this.layoutNode;
        layoutNode.getClass();
        LayoutNodeDrawScope sharedDrawScope = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getSharedDrawScope();
        long m708toSizeozmzZPI = Cookie.Companion.m708toSizeozmzZPI(this.measuredSize);
        sharedDrawScope.getClass();
        MutableVector mutableVector = null;
        while (m345headH91voCI != null) {
            if (m345headH91voCI instanceof DrawModifierNode) {
                nodeCoordinator = this;
                canvas2 = canvas;
                graphicsLayer2 = graphicsLayer;
                sharedDrawScope.m324drawDirecteZhPAX0$ui(canvas2, m708toSizeozmzZPI, nodeCoordinator, (DrawModifierNode) m345headH91voCI, graphicsLayer2);
            } else {
                nodeCoordinator = this;
                canvas2 = canvas;
                graphicsLayer2 = graphicsLayer;
                if ((m345headH91voCI.kindSet & 4) != 0 && (m345headH91voCI instanceof DelegatingNode)) {
                    int i = 0;
                    for (Modifier.Node node = ((DelegatingNode) m345headH91voCI).delegate; node != null; node = node.child) {
                        if ((node.kindSet & 4) != 0) {
                            i++;
                            if (i == 1) {
                                m345headH91voCI = node;
                            } else {
                                if (mutableVector == null) {
                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                }
                                if (m345headH91voCI != null) {
                                    mutableVector.add(m345headH91voCI);
                                    m345headH91voCI = null;
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
            m345headH91voCI = HitTestResultKt.access$pop(mutableVector);
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
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("visitLocalAncestors called on an unattached node");
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
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("layouts are not part of the same hierarchy");
                return null;
            }
        }
        if (layoutNode3 != layoutNode2) {
            if (layoutNode != nodeCoordinator.layoutNode) {
                return layoutNode.nodes.innerCoordinator;
            }
            return nodeCoordinator;
        }
        return this;
    }

    /* renamed from: fromParentPosition-8S9VItk, reason: not valid java name */
    public final long m343fromParentPosition8S9VItk(long j) {
        long j2 = this.position;
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - ((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - ((int) (j2 & 4294967295L));
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            float[] m389getInverseMatrix3i98HWw = graphicsLayerOwnerLayer.m389getInverseMatrix3i98HWw();
            if (m389getInverseMatrix3i98HWw == null) {
                return 9187343241974906880L;
            }
            if (!graphicsLayerOwnerLayer.isIdentity) {
                return Brush.m230mapMKHz9U(m389getInverseMatrix3i98HWw, floatToRawIntBits);
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
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Asking for measurement result of unmeasured layout modifier");
        return null;
    }

    /* renamed from: getMinimumTouchTargetSize-NH-jbRc, reason: not valid java name */
    public final long m344getMinimumTouchTargetSizeNHjbRc() {
        return this.layerDensity.mo64toSizeXkaWNTQ(this.layoutNode.viewConfiguration.mo323getMinimumTouchTargetSizeMYxV2XQ());
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable getParent() {
        return this.wrappedBy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object] */
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
    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.Measurable
    public final Object getParentData() {
        LayoutNode layoutNode = this.layoutNode;
        if (!layoutNode.nodes.m339hasH91voCI$ui(64)) {
            return null;
        }
        getTail();
        Object obj = null;
        for (Modifier.Node node = layoutNode.nodes.tail; node != null; node = node.parent) {
            if ((node.kindSet & 64) != 0) {
                DelegatingNode delegatingNode = node;
                ?? r4 = 0;
                while (delegatingNode != 0) {
                    if (delegatingNode instanceof ParentDataModifierNode) {
                        obj = ((ParentDataModifierNode) delegatingNode).modifyParentData(obj);
                    } else if ((delegatingNode.kindSet & 64) != 0 && (delegatingNode instanceof DelegatingNode)) {
                        Modifier.Node node2 = delegatingNode.delegate;
                        int i = 0;
                        delegatingNode = delegatingNode;
                        r4 = r4;
                        while (node2 != null) {
                            if ((node2.kindSet & 64) != 0) {
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
                    delegatingNode = HitTestResultKt.access$pop(r4);
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
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(sb.toString());
        }
        onCoordinatesUsed$ui();
        return layoutNode.nodes.outerCoordinator.wrappedBy;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    /* renamed from: getPosition-nOcc-ac */
    public final long mo328getPositionnOccac() {
        return this.position;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: getSize-YbymL2g */
    public final long mo296getSizeYbymL2g() {
        return this.measuredSize;
    }

    public abstract Modifier.Node getTail();

    /* renamed from: head-H91voCI, reason: not valid java name */
    public final Modifier.Node m345headH91voCI(int i) {
        boolean m356getIncludeSelfInTraversalH91voCI = NodeKindKt.m356getIncludeSelfInTraversalH91voCI(i);
        Modifier.Node tail = getTail();
        if (!m356getIncludeSelfInTraversalH91voCI && (tail = tail.parent) == null) {
            return null;
        }
        for (Modifier.Node headNode = headNode(m356getIncludeSelfInTraversalH91voCI); headNode != null && (headNode.aggregateChildKindSet & i) != 0; headNode = headNode.child) {
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
        if (nodeChain.outerCoordinator == this) {
            return nodeChain.head;
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
    public final void m346hit5ShdDok(Modifier.Node node, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z) {
        if (node == null) {
            mo318hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.shouldHitTest(node)) {
            m346hit5ShdDok(HitTestResultKt.m312access$nextUntilhw7D004(node, hitTestSource.mo355entityTypeOLwlOKw()), hitTestSource, j, hitTestResult, i, z);
            return;
        }
        int i2 = hitTestResult.hitDepth;
        MutableObjectList mutableObjectList = hitTestResult.values;
        hitTestResult.removeNodesInRange(i2 + 1, mutableObjectList._size);
        hitTestResult.hitDepth++;
        mutableObjectList.add(node);
        hitTestResult.distanceFromEdgeAndFlags.add(HitTestResultKt.DistanceAndFlags(-1.0f, z, false));
        m346hit5ShdDok(HitTestResultKt.m312access$nextUntilhw7D004(node, hitTestSource.mo355entityTypeOLwlOKw()), hitTestSource, j, hitTestResult, i, z);
        hitTestResult.hitDepth = i2;
    }

    /* renamed from: hitNear-Fh5PU_I, reason: not valid java name */
    public final void m347hitNearFh5PU_I(Modifier.Node node, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z, float f) {
        if (node == null) {
            mo318hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.shouldHitTest(node)) {
            m347hitNearFh5PU_I(HitTestResultKt.m312access$nextUntilhw7D004(node, hitTestSource.mo355entityTypeOLwlOKw()), hitTestSource, j, hitTestResult, i, z, f);
            return;
        }
        int i2 = hitTestResult.hitDepth;
        MutableObjectList mutableObjectList = hitTestResult.values;
        hitTestResult.removeNodesInRange(i2 + 1, mutableObjectList._size);
        hitTestResult.hitDepth++;
        mutableObjectList.add(node);
        hitTestResult.distanceFromEdgeAndFlags.add(HitTestResultKt.DistanceAndFlags(f, z, false));
        m350outOfBoundsHit8NAm7pk(HitTestResultKt.m312access$nextUntilhw7D004(node, hitTestSource.mo355entityTypeOLwlOKw()), hitTestSource, j, hitTestResult, i, z, f, true);
        hitTestResult.hitDepth = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c4, code lost:
    
        if (androidx.compose.ui.node.HitTestResultKt.m313compareTo9YPOF3E(r18.m311findBestHitDistancefn2tFes(), androidx.compose.ui.node.HitTestResultKt.DistanceAndFlags(r2, r7, false)) > 0) goto L38;
     */
    /* renamed from: hitTest-qzLsGqo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m348hitTestqzLsGqo(androidx.compose.ui.node.NodeCoordinator.HitTestSource r15, long r16, androidx.compose.ui.node.HitTestResult r18, int r19, boolean r20) {
        /*
            r14 = this;
            r3 = r16
            r5 = r18
            r6 = r19
            int r0 = r15.mo355entityTypeOLwlOKw()
            androidx.compose.ui.Modifier$Node r1 = r14.m345headH91voCI(r0)
            boolean r0 = r14.m353withinLayerBoundsk4lQ0M(r3)
            r8 = 0
            r9 = 2139095040(0x7f800000, float:Infinity)
            r10 = 2147483647(0x7fffffff, float:NaN)
            r11 = 1
            if (r0 != 0) goto L4c
            if (r6 != r11) goto L4b
            long r12 = r14.m344getMinimumTouchTargetSizeNHjbRc()
            float r0 = r14.m342distanceInMinimumTouchTargettz77jQw(r3, r12)
            int r2 = java.lang.Float.floatToRawIntBits(r0)
            r2 = r2 & r10
            if (r2 >= r9) goto L4b
            int r2 = r5.hitDepth
            androidx.collection.MutableObjectList r7 = r5.values
            int r7 = r7._size
            int r7 = r7 - r11
            if (r2 != r7) goto L36
            goto L44
        L36:
            long r7 = androidx.compose.ui.node.HitTestResultKt.DistanceAndFlags(r0, r8, r8)
            long r9 = r5.m311findBestHitDistancefn2tFes()
            int r2 = androidx.compose.ui.node.HitTestResultKt.m313compareTo9YPOF3E(r9, r7)
            if (r2 <= 0) goto L4b
        L44:
            r7 = 0
            r2 = r15
            r8 = r0
            r0 = r14
            r0.m347hitNearFh5PU_I(r1, r2, r3, r5, r6, r7, r8)
        L4b:
            return
        L4c:
            if (r1 != 0) goto L52
            r14.mo318hitTestChildqzLsGqo(r15, r16, r18, r19, r20)
            return
        L52:
            r0 = 32
            long r2 = r16 >> r0
            int r0 = (int) r2
            float r0 = java.lang.Float.intBitsToFloat(r0)
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r16 & r2
            int r2 = (int) r2
            float r2 = java.lang.Float.intBitsToFloat(r2)
            r3 = 0
            int r4 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r4 < 0) goto L90
            int r3 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r3 < 0) goto L90
            int r3 = r14.getMeasuredWidth()
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L90
            int r0 = r14.getMeasuredHeight()
            float r0 = (float) r0
            int r0 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r0 >= 0) goto L90
            r0 = r14
            r2 = r15
            r3 = r16
            r5 = r18
            r6 = r19
            r7 = r20
            r0.m346hit5ShdDok(r1, r2, r3, r5, r6, r7)
            return
        L90:
            r3 = r16
            r5 = r18
            r6 = r19
            if (r6 != r11) goto La1
            long r12 = r14.m344getMinimumTouchTargetSizeNHjbRc()
            float r2 = r14.m342distanceInMinimumTouchTargettz77jQw(r3, r12)
            goto La3
        La1:
            r2 = 2139095040(0x7f800000, float:Infinity)
        La3:
            int r7 = java.lang.Float.floatToRawIntBits(r2)
            r7 = r7 & r10
            if (r7 >= r9) goto Lcb
            int r7 = r5.hitDepth
            androidx.collection.MutableObjectList r9 = r5.values
            int r9 = r9._size
            int r9 = r9 - r11
            if (r7 != r9) goto Lb6
            r7 = r20
            goto Lc6
        Lb6:
            r7 = r20
            long r9 = androidx.compose.ui.node.HitTestResultKt.DistanceAndFlags(r2, r7, r8)
            long r12 = r5.m311findBestHitDistancefn2tFes()
            int r9 = androidx.compose.ui.node.HitTestResultKt.m313compareTo9YPOF3E(r12, r9)
            if (r9 <= 0) goto Lcd
        Lc6:
            r9 = r11
        Lc7:
            r0 = r14
            r8 = r2
            r2 = r15
            goto Lcf
        Lcb:
            r7 = r20
        Lcd:
            r9 = r8
            goto Lc7
        Lcf:
            r0.m350outOfBoundsHit8NAm7pk(r1, r2, r3, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeCoordinator.m348hitTestqzLsGqo(androidx.compose.ui.node.NodeCoordinator$HitTestSource, long, androidx.compose.ui.node.HitTestResult, int, boolean):void");
    }

    /* renamed from: hitTestChild-qzLsGqo */
    public void mo318hitTestChildqzLsGqo(HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z) {
        NodeCoordinator nodeCoordinator = this.wrapped;
        if (nodeCoordinator != null) {
            nodeCoordinator.m348hitTestqzLsGqo(hitTestSource, nodeCoordinator.m343fromParentPosition8S9VItk(j), hitTestResult, i, z);
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
        if (this.layer != null && this.lastLayerAlpha <= 0.0f) {
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
        NodeCoordinator nodeCoordinator;
        if (!getTail().isAttached) {
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        if (!layoutCoordinates.isAttached()) {
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("LayoutCoordinates " + layoutCoordinates + " is not attached!");
        }
        LookaheadLayoutCoordinates lookaheadLayoutCoordinates = layoutCoordinates instanceof LookaheadLayoutCoordinates ? (LookaheadLayoutCoordinates) layoutCoordinates : null;
        if (lookaheadLayoutCoordinates == null || (nodeCoordinator = lookaheadLayoutCoordinates.lookaheadDelegate.coordinator) == null) {
            nodeCoordinator = (NodeCoordinator) layoutCoordinates;
        }
        nodeCoordinator.onCoordinatesUsed$ui();
        NodeCoordinator findCommonAncestor$ui = findCommonAncestor$ui(nodeCoordinator);
        MutableRect mutableRect = this._rectCache;
        if (mutableRect == null) {
            mutableRect = new MutableRect();
            this._rectCache = mutableRect;
        }
        mutableRect.left = 0.0f;
        mutableRect.top = 0.0f;
        mutableRect.right = (int) (layoutCoordinates.mo296getSizeYbymL2g() >> 32);
        mutableRect.bottom = (int) (layoutCoordinates.mo296getSizeYbymL2g() & 4294967295L);
        while (nodeCoordinator != findCommonAncestor$ui) {
            nodeCoordinator.rectInParent$ui(mutableRect, z, false);
            if (mutableRect.isEmpty()) {
                return Rect.Zero;
            }
            nodeCoordinator = nodeCoordinator.wrappedBy;
            nodeCoordinator.getClass();
        }
        ancestorToLocal(findCommonAncestor$ui, mutableRect, z);
        return new Rect(mutableRect.left, mutableRect.top, mutableRect.right, mutableRect.bottom);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-R5De75A */
    public final long mo297localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        return mo298localPositionOfS_NoaFU(layoutCoordinates, j);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-S_NoaFU */
    public final long mo298localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j) {
        NodeCoordinator nodeCoordinator;
        boolean z = layoutCoordinates instanceof LookaheadLayoutCoordinates;
        if (z) {
            LookaheadLayoutCoordinates lookaheadLayoutCoordinates = (LookaheadLayoutCoordinates) layoutCoordinates;
            lookaheadLayoutCoordinates.lookaheadDelegate.coordinator.onCoordinatesUsed$ui();
            return lookaheadLayoutCoordinates.mo298localPositionOfS_NoaFU(this, j ^ (-9223372034707292160L)) ^ (-9223372034707292160L);
        }
        LookaheadLayoutCoordinates lookaheadLayoutCoordinates2 = z ? (LookaheadLayoutCoordinates) layoutCoordinates : null;
        if (lookaheadLayoutCoordinates2 == null || (nodeCoordinator = lookaheadLayoutCoordinates2.lookaheadDelegate.coordinator) == null) {
            layoutCoordinates.getClass();
            nodeCoordinator = (NodeCoordinator) layoutCoordinates;
        }
        nodeCoordinator.onCoordinatesUsed$ui();
        NodeCoordinator findCommonAncestor$ui = findCommonAncestor$ui(nodeCoordinator);
        while (nodeCoordinator != findCommonAncestor$ui) {
            OwnedLayer ownedLayer = nodeCoordinator.layer;
            if (ownedLayer != null) {
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                float[] m390getMatrixsQKQjiQ = graphicsLayerOwnerLayer.m390getMatrixsQKQjiQ();
                if (!graphicsLayerOwnerLayer.isIdentity) {
                    j = Brush.m230mapMKHz9U(m390getMatrixsQKQjiQ, j);
                }
            }
            j = Options.Companion.m727plusNvtHpc(j, nodeCoordinator.position);
            nodeCoordinator = nodeCoordinator.wrappedBy;
            nodeCoordinator.getClass();
        }
        return m340ancestorToLocalS_NoaFU(findCommonAncestor$ui, j);
    }

    /* renamed from: localToRoot-MK-Hz9U, reason: not valid java name */
    public final long m349localToRootMKHz9U(long j) {
        if (!getTail().isAttached) {
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        onCoordinatesUsed$ui();
        while (this != null) {
            LayoutNode layoutNode = this.layoutNode;
            if (this == layoutNode.nodes.outerCoordinator && !layoutNode.hasPositionalLayerTransformationsInOffsetFromRoot) {
                long m401getOffsetFromRectListForBjo55l4 = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getRectManager().m401getOffsetFromRectListForBjo55l4(layoutNode);
                if (!IntOffset.m445equalsimpl0(m401getOffsetFromRectListForBjo55l4, 9223372034707292159L)) {
                    return Options.Companion.m727plusNvtHpc(j, m401getOffsetFromRectListForBjo55l4);
                }
            }
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                float[] m390getMatrixsQKQjiQ = graphicsLayerOwnerLayer.m390getMatrixsQKQjiQ();
                if (!graphicsLayerOwnerLayer.isIdentity) {
                    j = Brush.m230mapMKHz9U(m390getMatrixsQKQjiQ, j);
                }
            }
            j = Options.Companion.m727plusNvtHpc(j, this.position);
            this = this.wrappedBy;
        }
        return j;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToScreen-MK-Hz9U */
    public final long mo299localToScreenMKHz9U(long j) {
        if (!getTail().isAttached) {
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("LayoutCoordinate operations are only valid when isAttached is true");
        }
        return ((AndroidComposeView) LayoutNodeKt.requireOwner(this.layoutNode)).m374localToScreenMKHz9U(m349localToRootMKHz9U(j));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToWindow-MK-Hz9U */
    public final long mo300localToWindowMKHz9U(long j) {
        long m349localToRootMKHz9U = m349localToRootMKHz9U(j);
        AndroidComposeView androidComposeView = (AndroidComposeView) LayoutNodeKt.requireOwner(this.layoutNode);
        androidComposeView.recalculateWindowPosition();
        return Brush.m230mapMKHz9U(androidComposeView.viewToWindowMatrix, m349localToRootMKHz9U);
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
        boolean m356getIncludeSelfInTraversalH91voCI = NodeKindKt.m356getIncludeSelfInTraversalH91voCI(128);
        Modifier.Node headNode = headNode(m356getIncludeSelfInTraversalH91voCI);
        if (headNode == null || (headNode.node.aggregateChildKindSet & 128) == 0) {
            return;
        }
        Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            if (m356getIncludeSelfInTraversalH91voCI) {
                node = getTail();
            } else {
                node = getTail().parent;
                if (node == null) {
                }
            }
            for (Modifier.Node headNode2 = headNode(m356getIncludeSelfInTraversalH91voCI); headNode2 != null; headNode2 = headNode2.child) {
                if ((headNode2.aggregateChildKindSet & 128) == 0) {
                    break;
                }
                if ((headNode2.kindSet & 128) != 0) {
                    DelegatingNode delegatingNode = headNode2;
                    ?? r8 = 0;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof MeasuredSizeAwareModifierNode) {
                            ((MeasuredSizeAwareModifierNode) delegatingNode).mo40onRemeasuredozmzZPI(this.measuredSize);
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
                        delegatingNode = HitTestResultKt.access$pop(r8);
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
        boolean m356getIncludeSelfInTraversalH91voCI = NodeKindKt.m356getIncludeSelfInTraversalH91voCI(4194304);
        Modifier.Node tail = getTail();
        if (!m356getIncludeSelfInTraversalH91voCI && (tail = tail.parent) == null) {
            return;
        }
        for (Modifier.Node headNode = headNode(m356getIncludeSelfInTraversalH91voCI); headNode != null && (headNode.aggregateChildKindSet & 4194304) != 0; headNode = headNode.child) {
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
                    delegatingNode = HitTestResultKt.access$pop(r5);
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
        if (IntOffset.m445equalsimpl0(this.position, 0L)) {
            return;
        }
        this.layoutNode.onCoordinatorRectChanged$ui(this);
    }

    public final void onUnplaced() {
        boolean m356getIncludeSelfInTraversalH91voCI = NodeKindKt.m356getIncludeSelfInTraversalH91voCI(ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES);
        Modifier.Node headNode = headNode(m356getIncludeSelfInTraversalH91voCI);
        if (headNode == null || (headNode.node.aggregateChildKindSet & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) == 0) {
            return;
        }
        Modifier.Node tail = getTail();
        if (!m356getIncludeSelfInTraversalH91voCI && (tail = tail.parent) == null) {
            return;
        }
        for (Modifier.Node headNode2 = headNode(m356getIncludeSelfInTraversalH91voCI); headNode2 != null && (headNode2.aggregateChildKindSet & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0; headNode2 = headNode2.child) {
            if ((headNode2.kindSet & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0) {
                Modifier.Node node = headNode2;
                MutableVector mutableVector = null;
                while (node != null) {
                    if ((node.kindSet & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0 && (node instanceof DelegatingNode)) {
                        int i = 0;
                        for (Modifier.Node node2 = ((DelegatingNode) node).delegate; node2 != null; node2 = node2.child) {
                            if ((node2.kindSet & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0) {
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
                    node = HitTestResultKt.access$pop(mutableVector);
                }
            }
            if (headNode2 == tail) {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.compose.ui.Modifier$Node] */
    /* renamed from: outOfBoundsHit-8NAm7pk, reason: not valid java name */
    public final void m350outOfBoundsHit8NAm7pk(final Modifier.Node node, final HitTestSource hitTestSource, final long j, final HitTestResult hitTestResult, int i, final boolean z, final float f, final boolean z2) {
        Modifier.Node access$pop;
        if (node == null) {
            mo318hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.shouldHitTest(node)) {
            m350outOfBoundsHit8NAm7pk(HitTestResultKt.m312access$nextUntilhw7D004(node, hitTestSource.mo355entityTypeOLwlOKw()), hitTestSource, j, hitTestResult, i, z, f, z2);
            return;
        }
        int i2 = i;
        if (i2 == 3 || i2 == 4) {
            MutableVector mutableVector = null;
            DelegatingNode delegatingNode = node;
            while (true) {
                if (delegatingNode == 0) {
                    break;
                }
                int i3 = 0;
                if (delegatingNode instanceof PointerInputModifierNode) {
                    long mo12getTouchBoundsExpansionRZrCHBk = ((PointerInputModifierNode) delegatingNode).mo12getTouchBoundsExpansionRZrCHBk();
                    int i4 = (int) (j >> 32);
                    float intBitsToFloat = Float.intBitsToFloat(i4);
                    LayoutNode layoutNode = this.layoutNode;
                    LayoutDirection layoutDirection = layoutNode.layoutDirection;
                    long j2 = Long.MIN_VALUE & mo12getTouchBoundsExpansionRZrCHBk;
                    LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
                    if (intBitsToFloat >= (-((j2 == 0 || layoutDirection == layoutDirection2) ? TouchBoundsExpansion$Companion.access$unpack(0, mo12getTouchBoundsExpansionRZrCHBk) : TouchBoundsExpansion$Companion.access$unpack(2, mo12getTouchBoundsExpansionRZrCHBk)))) {
                        if (Float.intBitsToFloat(i4) < getMeasuredWidth() + ((j2 == 0 || layoutNode.layoutDirection == layoutDirection2) ? TouchBoundsExpansion$Companion.access$unpack(2, mo12getTouchBoundsExpansionRZrCHBk) : TouchBoundsExpansion$Companion.access$unpack(0, mo12getTouchBoundsExpansionRZrCHBk))) {
                            int i5 = (int) (j & 4294967295L);
                            if (Float.intBitsToFloat(i5) >= (-TouchBoundsExpansion$Companion.access$unpack(1, mo12getTouchBoundsExpansionRZrCHBk))) {
                                if (Float.intBitsToFloat(i5) < TouchBoundsExpansion$Companion.access$unpack(3, mo12getTouchBoundsExpansionRZrCHBk) + getMeasuredHeight()) {
                                    final int i6 = i2;
                                    Function0 function0 = new Function0() { // from class: androidx.compose.ui.node.NodeCoordinator$outOfBoundsHit$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(0);
                                        }

                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object invoke() {
                                            NodeCoordinator.this.m350outOfBoundsHit8NAm7pk(HitTestResultKt.m312access$nextUntilhw7D004(node, hitTestSource.mo355entityTypeOLwlOKw()), hitTestSource, j, hitTestResult, i6, z, f, z2);
                                            return Unit.INSTANCE;
                                        }
                                    };
                                    MutableLongList mutableLongList = hitTestResult.distanceFromEdgeAndFlags;
                                    MutableObjectList mutableObjectList = hitTestResult.values;
                                    int i7 = hitTestResult.hitDepth;
                                    int i8 = mutableObjectList._size;
                                    if (i7 == i8 - 1) {
                                        hitTestResult.removeNodesInRange(i7 + 1, i8);
                                        hitTestResult.hitDepth++;
                                        mutableObjectList.add(node);
                                        mutableLongList.add(HitTestResultKt.DistanceAndFlags(0.0f, z, true));
                                        function0.invoke();
                                        hitTestResult.hitDepth = i7;
                                        return;
                                    }
                                    long m311findBestHitDistancefn2tFes = hitTestResult.m311findBestHitDistancefn2tFes();
                                    int i9 = hitTestResult.hitDepth;
                                    if (!HitTestResultKt.m315isInExpandedBoundsimpl(m311findBestHitDistancefn2tFes)) {
                                        if (HitTestResultKt.m314getDistanceimpl(m311findBestHitDistancefn2tFes) > 0.0f) {
                                            int i10 = hitTestResult.hitDepth;
                                            hitTestResult.removeNodesInRange(i10 + 1, mutableObjectList._size);
                                            hitTestResult.hitDepth++;
                                            mutableObjectList.add(node);
                                            mutableLongList.add(HitTestResultKt.DistanceAndFlags(0.0f, z, true));
                                            function0.invoke();
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
                                    mutableLongList.add(HitTestResultKt.DistanceAndFlags(0.0f, z, true));
                                    function0.invoke();
                                    hitTestResult.hitDepth = i12;
                                    if (HitTestResultKt.m314getDistanceimpl(hitTestResult.m311findBestHitDistancefn2tFes()) < 0.0f) {
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
                        access$pop = delegatingNode;
                        mutableVector = mutableVector;
                        while (node2 != null) {
                            if ((node2.kindSet & 16) != 0) {
                                i3++;
                                mutableVector = mutableVector;
                                if (i3 == 1) {
                                    access$pop = node2;
                                } else {
                                    if (mutableVector == null) {
                                        mutableVector = new MutableVector(new Modifier.Node[16]);
                                    }
                                    if (access$pop != null) {
                                        mutableVector.add(access$pop);
                                        access$pop = null;
                                    }
                                    mutableVector.add(node2);
                                }
                            }
                            node2 = node2.child;
                            access$pop = access$pop;
                            mutableVector = mutableVector;
                        }
                        if (i3 == 1) {
                            i2 = i;
                            delegatingNode = access$pop;
                            mutableVector = mutableVector;
                        }
                    }
                    access$pop = HitTestResultKt.access$pop(mutableVector);
                    i2 = i;
                    delegatingNode = access$pop;
                    mutableVector = mutableVector;
                }
            }
        }
        if (z2) {
            m347hitNearFh5PU_I(node, hitTestSource, j, hitTestResult, i, z, f);
        } else {
            m352speculativeHitFh5PU_I(node, hitTestSource, j, hitTestResult, i, z, f);
        }
    }

    public abstract void performDraw(Canvas canvas, GraphicsLayer graphicsLayer);

    /* renamed from: placeSelf-MLgxB_4, reason: not valid java name */
    public final void m351placeSelfMLgxB_4(long j, float f, Function1 function1) {
        updateLayerBlock(function1, false);
        boolean m445equalsimpl0 = IntOffset.m445equalsimpl0(this.position, j);
        LayoutNode layoutNode = this.layoutNode;
        if (!m445equalsimpl0) {
            ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).voteFrameRate(-4.0f);
            this.position = j;
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                ((GraphicsLayerOwnerLayer) ownedLayer).m391movegyyYBs(j);
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
        if (this == layoutNode.nodes.outerCoordinator) {
            ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getRectManager().recalculateRectIfDirty(layoutNode);
        }
        if (this.isPlacingForAlignment) {
            return;
        }
        captureRulersIfNeeded$ui(getMeasureResult$ui());
    }

    public final void rectInParent$ui(MutableRect mutableRect, boolean z, boolean z2) {
        long j;
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            if (this.isClipping) {
                if (z2) {
                    long m344getMinimumTouchTargetSizeNHjbRc = m344getMinimumTouchTargetSizeNHjbRc();
                    float f = mutableRect.left;
                    float f2 = mutableRect.top;
                    if (mutableRect.right >= 0.0f) {
                        long j2 = this.measuredSize;
                        if (f <= ((int) (j2 >> 32)) && mutableRect.bottom >= 0.0f && f2 <= ((int) (j2 & 4294967295L))) {
                            float intBitsToFloat = Float.intBitsToFloat((int) (m344getMinimumTouchTargetSizeNHjbRc >> 32));
                            float intBitsToFloat2 = Float.intBitsToFloat((int) (m344getMinimumTouchTargetSizeNHjbRc & 4294967295L));
                            float f3 = (intBitsToFloat - (mutableRect.right - mutableRect.left)) / 2.0f;
                            if (f3 > 0.0f) {
                                f -= f3;
                            } else {
                                float f4 = (-intBitsToFloat) / 2.0f;
                                if (f < f4) {
                                    f = f4;
                                }
                            }
                            float f5 = (intBitsToFloat2 - (mutableRect.bottom - mutableRect.top)) / 2.0f;
                            if (f5 > 0.0f) {
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
                            int i = (int) (m344getMinimumTouchTargetSizeNHjbRc >> 32);
                            float f8 = (int) (j3 & 4294967295L);
                            int i2 = (int) (m344getMinimumTouchTargetSizeNHjbRc & 4294967295L);
                            mutableRect.intersect(intBitsToFloat3, intBitsToFloat4, Math.min(Float.intBitsToFloat(i) + f7, Math.max(f7, Float.intBitsToFloat(i) + intBitsToFloat3)), Math.min(Float.intBitsToFloat(i2) + f8, Math.max(f8, Float.intBitsToFloat(i2) + intBitsToFloat4)));
                        }
                    }
                    j = 0;
                    float intBitsToFloat32 = Float.intBitsToFloat((int) (j >> 32));
                    float intBitsToFloat42 = Float.intBitsToFloat((int) (j & 4294967295L));
                    long j32 = this.measuredSize;
                    float f72 = (int) (j32 >> 32);
                    int i3 = (int) (m344getMinimumTouchTargetSizeNHjbRc >> 32);
                    float f82 = (int) (j32 & 4294967295L);
                    int i22 = (int) (m344getMinimumTouchTargetSizeNHjbRc & 4294967295L);
                    mutableRect.intersect(intBitsToFloat32, intBitsToFloat42, Math.min(Float.intBitsToFloat(i3) + f72, Math.max(f72, Float.intBitsToFloat(i3) + intBitsToFloat32)), Math.min(Float.intBitsToFloat(i22) + f82, Math.max(f82, Float.intBitsToFloat(i22) + intBitsToFloat42)));
                } else if (z) {
                    long j4 = this.measuredSize;
                    mutableRect.intersect(0.0f, 0.0f, (int) (j4 >> 32), (int) (j4 & 4294967295L));
                }
                if (mutableRect.isEmpty()) {
                    return;
                }
            }
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            float[] m390getMatrixsQKQjiQ = graphicsLayerOwnerLayer.m390getMatrixsQKQjiQ();
            if (!graphicsLayerOwnerLayer.isIdentity) {
                if (m390getMatrixsQKQjiQ == null) {
                    mutableRect.left = 0.0f;
                    mutableRect.top = 0.0f;
                    mutableRect.right = 0.0f;
                    mutableRect.bottom = 0.0f;
                } else {
                    Brush.m231mapimpl(m390getMatrixsQKQjiQ, mutableRect);
                }
            }
        }
        long j5 = this.position;
        float f9 = (int) (j5 >> 32);
        mutableRect.left += f9;
        mutableRect.right += f9;
        float f10 = (int) (j5 & 4294967295L);
        mutableRect.top += f10;
        mutableRect.bottom += f10;
    }

    public final void releaseLayer() {
        if (this.layer != null) {
            updateLayerBlock(null, false);
            this.layoutNode.requestRelayout$ui(false);
        }
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final void replace$ui() {
        mo295placeAtf8xVGno(this.position, this.zIndex, this.layerBlock);
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
                    ((GraphicsLayerOwnerLayer) ownedLayer).m392resizeozmzZPI((width << 32) | (height & 4294967295L));
                } else if (layoutNode.isPlaced() && (nodeCoordinator = this.wrappedBy) != null) {
                    nodeCoordinator.invalidateLayer();
                }
                m303setMeasuredSizeozmzZPI((height & 4294967295L) | (width << 32));
                if (this.layerBlock != null) {
                    updateLayerParameters(false);
                }
                boolean m356getIncludeSelfInTraversalH91voCI = NodeKindKt.m356getIncludeSelfInTraversalH91voCI(4);
                Modifier.Node tail = getTail();
                if (m356getIncludeSelfInTraversalH91voCI || (tail = tail.parent) != null) {
                    for (Modifier.Node headNode = headNode(m356getIncludeSelfInTraversalH91voCI); headNode != null && (headNode.aggregateChildKindSet & 4) != 0; headNode = headNode.child) {
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
                                delegatingNode = HitTestResultKt.access$pop(r9);
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

    /* renamed from: speculativeHit-Fh5PU_I, reason: not valid java name */
    public final void m352speculativeHitFh5PU_I(final Modifier.Node node, final HitTestSource hitTestSource, final long j, final HitTestResult hitTestResult, final int i, final boolean z, final float f) {
        int i2;
        if (node == null) {
            mo318hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.shouldHitTest(node)) {
            m352speculativeHitFh5PU_I(HitTestResultKt.m312access$nextUntilhw7D004(node, hitTestSource.mo355entityTypeOLwlOKw()), hitTestSource, j, hitTestResult, i, z, f);
            return;
        }
        if (!hitTestSource.interceptOutOfBoundsChildEvents(node)) {
            m350outOfBoundsHit8NAm7pk(HitTestResultKt.m312access$nextUntilhw7D004(node, hitTestSource.mo355entityTypeOLwlOKw()), hitTestSource, j, hitTestResult, i, z, f, false);
            return;
        }
        Function0 function0 = new Function0() { // from class: androidx.compose.ui.node.NodeCoordinator$speculativeHit$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                NodeCoordinator.this.m350outOfBoundsHit8NAm7pk(HitTestResultKt.m312access$nextUntilhw7D004(node, hitTestSource.mo355entityTypeOLwlOKw()), hitTestSource, j, hitTestResult, i, z, f, false);
                return Unit.INSTANCE;
            }
        };
        MutableLongList mutableLongList = hitTestResult.distanceFromEdgeAndFlags;
        MutableObjectList mutableObjectList = hitTestResult.values;
        int i3 = hitTestResult.hitDepth;
        int i4 = mutableObjectList._size;
        if (i3 != i4 - 1) {
            long m311findBestHitDistancefn2tFes = hitTestResult.m311findBestHitDistancefn2tFes();
            int i5 = hitTestResult.hitDepth;
            int i6 = mutableObjectList._size;
            int i7 = i6 - 1;
            hitTestResult.hitDepth = i7;
            hitTestResult.removeNodesInRange(i6, mutableObjectList._size);
            hitTestResult.hitDepth++;
            mutableObjectList.add(node);
            mutableLongList.add(HitTestResultKt.DistanceAndFlags(f, z, false));
            function0.invoke();
            hitTestResult.hitDepth = i7;
            long m311findBestHitDistancefn2tFes2 = hitTestResult.m311findBestHitDistancefn2tFes();
            if (hitTestResult.hitDepth + 1 >= mutableObjectList._size - 1 || HitTestResultKt.m313compareTo9YPOF3E(m311findBestHitDistancefn2tFes, m311findBestHitDistancefn2tFes2) <= 0) {
                hitTestResult.removeNodesInRange(hitTestResult.hitDepth + 1, mutableObjectList._size);
            } else {
                int i8 = i5 + 1;
                boolean m315isInExpandedBoundsimpl = HitTestResultKt.m315isInExpandedBoundsimpl(m311findBestHitDistancefn2tFes2);
                int i9 = hitTestResult.hitDepth;
                hitTestResult.removeNodesInRange(i8, m315isInExpandedBoundsimpl ? i9 + 2 : i9 + 1);
            }
            hitTestResult.hitDepth = i5;
            return;
        }
        int i10 = i3 + 1;
        hitTestResult.removeNodesInRange(i10, i4);
        hitTestResult.hitDepth++;
        mutableObjectList.add(node);
        mutableLongList.add(HitTestResultKt.DistanceAndFlags(f, z, false));
        function0.invoke();
        hitTestResult.hitDepth = i3;
        if (i10 == mutableObjectList._size - 1 || HitTestResultKt.m315isInExpandedBoundsimpl(hitTestResult.m311findBestHitDistancefn2tFes())) {
            int i11 = hitTestResult.hitDepth;
            int i12 = i11 + 1;
            mutableObjectList.removeAt(i12);
            if (i12 < 0 || i12 >= (i2 = mutableLongList._size)) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("Index must be between 0 and size");
                return;
            }
            long[] jArr = mutableLongList.content;
            long j2 = jArr[i12];
            if (i12 != i2 - 1) {
                ArraysKt.copyInto(jArr, jArr, i12, i11 + 2, i2);
            }
            mutableLongList._size--;
        }
    }

    public final Rect touchBoundsInRoot() {
        if (getTail().isAttached) {
            LayoutCoordinates findRootCoordinates = RulerKt.findRootCoordinates(this);
            MutableRect mutableRect = this._rectCache;
            if (mutableRect == null) {
                mutableRect = new MutableRect();
                this._rectCache = mutableRect;
            }
            long m341calculateMinimumTouchTargetPaddingE7KxVPU = m341calculateMinimumTouchTargetPaddingE7KxVPU(m344getMinimumTouchTargetSizeNHjbRc());
            int i = (int) (m341calculateMinimumTouchTargetPaddingE7KxVPU >> 32);
            mutableRect.left = -Float.intBitsToFloat(i);
            int i2 = (int) (m341calculateMinimumTouchTargetPaddingE7KxVPU & 4294967295L);
            mutableRect.top = -Float.intBitsToFloat(i2);
            mutableRect.right = Float.intBitsToFloat(i) + getMeasuredWidth();
            mutableRect.bottom = Float.intBitsToFloat(i2) + getMeasuredHeight();
            while (this != findRootCoordinates) {
                this.rectInParent$ui(mutableRect, false, true);
                if (!mutableRect.isEmpty()) {
                    this = this.wrappedBy;
                    this.getClass();
                }
            }
            return new Rect(mutableRect.left, mutableRect.top, mutableRect.right, mutableRect.bottom);
        }
        return Rect.Zero;
    }

    /* JADX WARN: Type inference failed for: r12v16, types: [androidx.compose.ui.node.NodeCoordinator$drawBlock$drawBlockCallToDrawModifiers$1] */
    /* JADX WARN: Type inference failed for: r3v15, types: [androidx.compose.ui.node.NodeCoordinator$drawBlock$1] */
    public final void updateLayerBlock(Function1 function1, boolean z) {
        Owner owner;
        MutableVector mutableVector;
        Reference poll;
        NodeCoordinator$drawBlock$1 nodeCoordinator$drawBlock$1;
        MutableVector mutableVector2;
        Reference poll2;
        Object obj;
        LayoutNode layoutNode = this.layoutNode;
        boolean z2 = (!z && this.layerBlock == function1 && Intrinsics.areEqual(this.layerDensity, layoutNode.density) && this.layerLayoutDirection == layoutNode.layoutDirection) ? false : true;
        this.layerDensity = layoutNode.density;
        this.layerLayoutDirection = layoutNode.layoutDirection;
        boolean isAttached = layoutNode.isAttached();
        NodeCoordinator$invalidateParentLayer$1 nodeCoordinator$invalidateParentLayer$1 = this.invalidateParentLayer;
        if (!isAttached || function1 == null) {
            this.layerBlock = null;
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
                if (!Brush.m229isIdentity58bKbWc(graphicsLayerOwnerLayer.m390getMatrixsQKQjiQ())) {
                    layoutNode.onCoordinatorRectChanged$ui(this);
                }
                graphicsLayerOwnerLayer.drawBlock = null;
                graphicsLayerOwnerLayer.invalidateParentLayer = null;
                graphicsLayerOwnerLayer.isDestroyed = true;
                graphicsLayerOwnerLayer.setDirty(false);
                GraphicsContext graphicsContext = graphicsLayerOwnerLayer.context;
                if (graphicsContext != null) {
                    graphicsContext.releaseGraphicsLayer(graphicsLayerOwnerLayer.graphicsLayer);
                    AndroidComposeView androidComposeView = graphicsLayerOwnerLayer.ownerView;
                    CardView.AnonymousClass1 anonymousClass1 = androidComposeView.layerCache;
                    do {
                        ReferenceQueue referenceQueue = (ReferenceQueue) anonymousClass1.this$0;
                        mutableVector = (MutableVector) anonymousClass1.mCardBackground;
                        poll = referenceQueue.poll();
                        if (poll != null) {
                            mutableVector.remove(poll);
                        }
                    } while (poll != null);
                    mutableVector.add(new java.lang.ref.WeakReference(graphicsLayerOwnerLayer, (ReferenceQueue) anonymousClass1.this$0));
                    androidComposeView.dirtyLayers.remove(graphicsLayerOwnerLayer);
                }
                this.layer = null;
                layoutNode.innerLayerCoordinatorIsDirty = true;
                nodeCoordinator$invalidateParentLayer$1.invoke();
                if (getTail().isAttached && layoutNode.isPlaced() && (owner = layoutNode.owner) != null) {
                    ((AndroidComposeView) owner).onLayoutChange(layoutNode);
                }
            }
            this.lastLayerDrawingWasSkipped = false;
            return;
        }
        this.layerBlock = function1;
        if (this.layer != null) {
            if (z2) {
                updateLayerParameters(true);
                return;
            }
            return;
        }
        Owner requireOwner = LayoutNodeKt.requireOwner(layoutNode);
        NodeCoordinator$drawBlock$1 nodeCoordinator$drawBlock$12 = this._drawBlock;
        if (nodeCoordinator$drawBlock$12 == null) {
            final ?? r12 = new Function0() { // from class: androidx.compose.ui.node.NodeCoordinator$drawBlock$drawBlockCallToDrawModifiers$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    NodeCoordinator nodeCoordinator = NodeCoordinator.this;
                    Canvas canvas = nodeCoordinator.drawBlockCanvas;
                    canvas.getClass();
                    nodeCoordinator.drawContainedDrawModifiers(canvas, NodeCoordinator.this.drawBlockParentLayer);
                    return Unit.INSTANCE;
                }
            };
            ?? r3 = new Function2() { // from class: androidx.compose.ui.node.NodeCoordinator$drawBlock$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    Canvas canvas = (Canvas) obj2;
                    GraphicsLayer graphicsLayer = (GraphicsLayer) obj3;
                    boolean isPlaced = NodeCoordinator.this.layoutNode.isPlaced();
                    NodeCoordinator nodeCoordinator = NodeCoordinator.this;
                    if (isPlaced) {
                        nodeCoordinator.drawBlockCanvas = canvas;
                        nodeCoordinator.drawBlockParentLayer = graphicsLayer;
                        OwnerSnapshotObserver snapshotObserver = ((AndroidComposeView) LayoutNodeKt.requireOwner(nodeCoordinator.layoutNode)).getSnapshotObserver();
                        NodeCoordinator nodeCoordinator2 = NodeCoordinator.this;
                        ReusableGraphicsLayerScope reusableGraphicsLayerScope = NodeCoordinator.graphicsLayerScope;
                        snapshotObserver.observer.observeReads(nodeCoordinator2, OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$3, r12);
                        NodeCoordinator.this.lastLayerDrawingWasSkipped = false;
                    } else {
                        nodeCoordinator.lastLayerDrawingWasSkipped = true;
                    }
                    return Unit.INSTANCE;
                }
            };
            this._drawBlock = r3;
            nodeCoordinator$drawBlock$1 = r3;
        } else {
            nodeCoordinator$drawBlock$1 = nodeCoordinator$drawBlock$12;
        }
        AndroidComposeView androidComposeView2 = (AndroidComposeView) requireOwner;
        CardView.AnonymousClass1 anonymousClass12 = androidComposeView2.layerCache;
        do {
            ReferenceQueue referenceQueue2 = (ReferenceQueue) anonymousClass12.this$0;
            mutableVector2 = (MutableVector) anonymousClass12.mCardBackground;
            poll2 = referenceQueue2.poll();
            if (poll2 != null) {
                mutableVector2.remove(poll2);
            }
        } while (poll2 != null);
        while (true) {
            int i = mutableVector2.size;
            if (i == 0) {
                obj = null;
                break;
            } else {
                obj = ((Reference) mutableVector2.removeAt(i - 1)).get();
                if (obj != null) {
                    break;
                }
            }
        }
        OwnedLayer ownedLayer2 = (OwnedLayer) obj;
        if (ownedLayer2 != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer2 = (GraphicsLayerOwnerLayer) ownedLayer2;
            GraphicsContext graphicsContext2 = graphicsLayerOwnerLayer2.context;
            if (graphicsContext2 == null) {
                throw Modifier.CC.m("currently reuse is only supported when we manage the layer lifecycle");
            }
            if (!graphicsLayerOwnerLayer2.graphicsLayer.isReleased) {
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalArgumentException("layer should have been released before reuse");
            }
            graphicsLayerOwnerLayer2.graphicsLayer = graphicsContext2.createGraphicsLayer();
            graphicsLayerOwnerLayer2.isDestroyed = false;
            graphicsLayerOwnerLayer2.drawBlock = nodeCoordinator$drawBlock$1;
            graphicsLayerOwnerLayer2.invalidateParentLayer = nodeCoordinator$invalidateParentLayer$1;
            graphicsLayerOwnerLayer2.isMatrixDirty = false;
            graphicsLayerOwnerLayer2.isInverseMatrixDirty = false;
            graphicsLayerOwnerLayer2.isIdentity = true;
            Brush.m232resetimpl(graphicsLayerOwnerLayer2.matrixCache);
            float[] fArr = graphicsLayerOwnerLayer2.inverseMatrixCache;
            if (fArr != null) {
                Brush.m232resetimpl(fArr);
            }
            graphicsLayerOwnerLayer2.transformOrigin = TransformOrigin.Center;
            graphicsLayerOwnerLayer2.drawnWithEnabledZ = false;
            graphicsLayerOwnerLayer2.size = 9223372034707292159L;
            graphicsLayerOwnerLayer2.outline = null;
            graphicsLayerOwnerLayer2.mutatedFields = 0;
        } else {
            ownedLayer2 = new GraphicsLayerOwnerLayer(androidComposeView2.getGraphicsContext().createGraphicsLayer(), androidComposeView2.getGraphicsContext(), androidComposeView2, nodeCoordinator$drawBlock$1, nodeCoordinator$invalidateParentLayer$1);
        }
        GraphicsLayerOwnerLayer graphicsLayerOwnerLayer3 = (GraphicsLayerOwnerLayer) ownedLayer2;
        graphicsLayerOwnerLayer3.m392resizeozmzZPI(this.measuredSize);
        graphicsLayerOwnerLayer3.m391movegyyYBs(this.position);
        this.layer = ownedLayer2;
        updateLayerParameters(true);
        layoutNode.innerLayerCoordinatorIsDirty = true;
        nodeCoordinator$invalidateParentLayer$1.invoke();
    }

    public final void updateLayerParameters(boolean z) {
        char c;
        AndroidComposeView androidComposeView;
        boolean z2;
        Owner owner;
        Function0 function0;
        Function0 function02;
        OwnedLayer ownedLayer = this.layer;
        final Function1 function1 = this.layerBlock;
        if (ownedLayer == null) {
            if (function1 == null) {
                return;
            }
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException("null layer with a non-null layerBlock");
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
        reusableGraphicsLayerScope.size = Cookie.Companion.m708toSizeozmzZPI(this.measuredSize);
        ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getSnapshotObserver().observer.observeReads(this, OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$4, new Function0() { // from class: androidx.compose.ui.node.NodeCoordinator$updateLayerParameters$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Function1 function12 = Function1.this;
                ReusableGraphicsLayerScope reusableGraphicsLayerScope2 = NodeCoordinator.graphicsLayerScope;
                function12.invoke(reusableGraphicsLayerScope2);
                boolean areEqual = Intrinsics.areEqual(this.lastShape, reusableGraphicsLayerScope2.shape);
                NodeCoordinator nodeCoordinator = this;
                boolean z3 = nodeCoordinator.lastClip;
                boolean z4 = reusableGraphicsLayerScope2.clip;
                boolean z5 = z3 != z4;
                if (!areEqual || z5) {
                    nodeCoordinator.lastShape = reusableGraphicsLayerScope2.shape;
                    nodeCoordinator.lastClip = z4;
                    if (nodeCoordinator.wasLayerBlockInvoked && (z5 || (z4 && !areEqual))) {
                        nodeCoordinator.layoutNode.invalidateSemantics$ui();
                    }
                }
                this.wasLayerBlockInvoked = true;
                reusableGraphicsLayerScope2.outline = reusableGraphicsLayerScope2.shape.mo35createOutlinePq9zytI(reusableGraphicsLayerScope2.size, reusableGraphicsLayerScope2.layoutDirection, reusableGraphicsLayerScope2.graphicsDensity);
                return Unit.INSTANCE;
            }
        });
        LayerPositionalProperties layerPositionalProperties = this.layerPositionalProperties;
        if (layerPositionalProperties == null) {
            layerPositionalProperties = new LayerPositionalProperties();
            this.layerPositionalProperties = layerPositionalProperties;
        }
        LayerPositionalProperties layerPositionalProperties2 = tmpLayerPositionalProperties;
        layerPositionalProperties2.getClass();
        layerPositionalProperties2.scaleX = layerPositionalProperties.scaleX;
        layerPositionalProperties2.scaleY = layerPositionalProperties.scaleY;
        layerPositionalProperties2.cameraDistance = layerPositionalProperties.cameraDistance;
        layerPositionalProperties2.transformOrigin = layerPositionalProperties.transformOrigin;
        float f = reusableGraphicsLayerScope.scaleX;
        layerPositionalProperties.scaleX = f;
        layerPositionalProperties.scaleY = reusableGraphicsLayerScope.scaleY;
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
            GraphicsLayer graphicsLayer2 = graphicsLayerOwnerLayer.graphicsLayer;
            float f3 = reusableGraphicsLayerScope.alpha;
            GraphicsLayerImpl graphicsLayerImpl3 = graphicsLayer2.impl;
            if (graphicsLayerImpl3.getAlpha() != f3) {
                graphicsLayerImpl3.setAlpha(f3);
            }
        }
        if ((i & 8) != 0) {
            GraphicsLayerImpl graphicsLayerImpl4 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl4.getTranslationX() != 0.0f) {
                graphicsLayerImpl4.setTranslationX();
            }
        }
        if ((i & 16) != 0) {
            GraphicsLayerImpl graphicsLayerImpl5 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl5.getTranslationY() != 0.0f) {
                graphicsLayerImpl5.setTranslationY();
            }
        }
        if ((i & 32) != 0) {
            GraphicsLayer graphicsLayer3 = graphicsLayerOwnerLayer.graphicsLayer;
            float f4 = reusableGraphicsLayerScope.shadowElevation;
            GraphicsLayerImpl graphicsLayerImpl6 = graphicsLayer3.impl;
            if (graphicsLayerImpl6.getShadowElevation() != f4) {
                graphicsLayerImpl6.setShadowElevation(f4);
                graphicsLayer3.outlineDirty = true;
                graphicsLayer3.configureOutlineAndClip();
            }
            if (reusableGraphicsLayerScope.shadowElevation > 0.0f && !graphicsLayerOwnerLayer.drawnWithEnabledZ && (function02 = graphicsLayerOwnerLayer.invalidateParentLayer) != null) {
                function02.invoke();
            }
        }
        if ((i & 64) != 0) {
            GraphicsLayer graphicsLayer4 = graphicsLayerOwnerLayer.graphicsLayer;
            long j2 = reusableGraphicsLayerScope.ambientShadowColor;
            GraphicsLayerImpl graphicsLayerImpl7 = graphicsLayer4.impl;
            if (!Color.m244equalsimpl0(j2, graphicsLayerImpl7.mo268getAmbientShadowColor0d7_KjU())) {
                graphicsLayerImpl7.mo272setAmbientShadowColor8_81llA(j2);
            }
        }
        if ((i & 128) != 0) {
            GraphicsLayer graphicsLayer5 = graphicsLayerOwnerLayer.graphicsLayer;
            long j3 = reusableGraphicsLayerScope.spotShadowColor;
            GraphicsLayerImpl graphicsLayerImpl8 = graphicsLayer5.impl;
            if (!Color.m244equalsimpl0(j3, graphicsLayerImpl8.mo271getSpotShadowColor0d7_KjU())) {
                graphicsLayerImpl8.mo278setSpotShadowColor8_81llA(j3);
            }
        }
        if ((i & 1024) != 0) {
            GraphicsLayerImpl graphicsLayerImpl9 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl9.getRotationZ() != 0.0f) {
                graphicsLayerImpl9.setRotationZ();
            }
        }
        if ((i & 256) != 0) {
            GraphicsLayerImpl graphicsLayerImpl10 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl10.getRotationX() != 0.0f) {
                graphicsLayerImpl10.setRotationX();
            }
        }
        if ((i & 512) != 0) {
            GraphicsLayerImpl graphicsLayerImpl11 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl11.getRotationY() != 0.0f) {
                graphicsLayerImpl11.setRotationY();
            }
        }
        if ((i & 2048) != 0) {
            GraphicsLayer graphicsLayer6 = graphicsLayerOwnerLayer.graphicsLayer;
            float f5 = reusableGraphicsLayerScope.cameraDistance;
            GraphicsLayerImpl graphicsLayerImpl12 = graphicsLayer6.impl;
            if (graphicsLayerImpl12.getCameraDistance() != f5) {
                graphicsLayerImpl12.setCameraDistance(f5);
            }
        }
        if (i2 != 0) {
            c = ' ';
            boolean m253equalsimpl0 = TransformOrigin.m253equalsimpl0(graphicsLayerOwnerLayer.transformOrigin, TransformOrigin.Center);
            GraphicsLayer graphicsLayer7 = graphicsLayerOwnerLayer.graphicsLayer;
            if (!m253equalsimpl0) {
                long floatToRawIntBits = (Float.floatToRawIntBits(Float.intBitsToFloat((int) (graphicsLayerOwnerLayer.transformOrigin & 4294967295L)) * ((int) (graphicsLayerOwnerLayer.size & 4294967295L))) & 4294967295L) | (Float.floatToRawIntBits(Float.intBitsToFloat((int) (graphicsLayerOwnerLayer.transformOrigin >> 32)) * ((int) (graphicsLayerOwnerLayer.size >> 32))) << 32);
                if (!Offset.m196equalsimpl0(graphicsLayer7.pivotOffset, floatToRawIntBits)) {
                    graphicsLayer7.pivotOffset = floatToRawIntBits;
                    graphicsLayer7.impl.mo276setPivotOffsetk4lQ0M(floatToRawIntBits);
                }
            } else if (!Offset.m196equalsimpl0(graphicsLayer7.pivotOffset, 9205357640488583168L)) {
                graphicsLayer7.pivotOffset = 9205357640488583168L;
                graphicsLayer7.impl.mo276setPivotOffsetk4lQ0M(9205357640488583168L);
            }
        } else {
            c = ' ';
        }
        if ((i & 16384) != 0) {
            GraphicsLayer graphicsLayer8 = graphicsLayerOwnerLayer.graphicsLayer;
            boolean z3 = reusableGraphicsLayerScope.clip;
            if (graphicsLayer8.clip != z3) {
                graphicsLayer8.clip = z3;
                graphicsLayer8.outlineDirty = true;
                graphicsLayer8.configureOutlineAndClip();
            }
        }
        if ((131072 & i) != 0) {
            GraphicsLayerImpl graphicsLayerImpl13 = graphicsLayerOwnerLayer.graphicsLayer.impl;
        }
        if ((262144 & i) != 0) {
            GraphicsLayerImpl graphicsLayerImpl14 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (!Intrinsics.areEqual(graphicsLayerImpl14.getColorFilter(), null)) {
                graphicsLayerImpl14.setColorFilter();
            }
        }
        if ((524288 & i) != 0) {
            GraphicsLayer graphicsLayer9 = graphicsLayerOwnerLayer.graphicsLayer;
            int i3 = reusableGraphicsLayerScope.blendMode;
            GraphicsLayerImpl graphicsLayerImpl15 = graphicsLayer9.impl;
            if (graphicsLayerImpl15.mo269getBlendMode0nO6VwU() != i3) {
                graphicsLayerImpl15.mo273setBlendModes9anfk8(i3);
            }
        }
        if ((32768 & i) != 0) {
            GraphicsLayerImpl graphicsLayerImpl16 = graphicsLayerOwnerLayer.graphicsLayer.impl;
            if (graphicsLayerImpl16.mo270getCompositingStrategyke2Ky5w() != 0) {
                graphicsLayerImpl16.mo274setCompositingStrategyWpw9cng(0);
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
            Brush brush = reusableGraphicsLayerScope.outline;
            graphicsLayerOwnerLayer.outline = brush;
            if (brush == null) {
                androidComposeView = androidComposeView2;
            } else {
                GraphicsLayer graphicsLayer10 = graphicsLayerOwnerLayer.graphicsLayer;
                if (brush instanceof Outline$Rectangle) {
                    Rect rect = ((Outline$Rectangle) brush).rect;
                    float f6 = rect.left;
                    float f7 = rect.top;
                    androidComposeView = androidComposeView2;
                    graphicsLayer10.m267setRoundRectOutlineTNW_H78((Float.floatToRawIntBits(f6) << c) | (Float.floatToRawIntBits(f7) & 4294967295L), (Float.floatToRawIntBits(rect.right - f6) << c) | (Float.floatToRawIntBits(rect.bottom - f7) & 4294967295L), 0.0f);
                } else {
                    androidComposeView = androidComposeView2;
                    if (brush instanceof Outline$Generic) {
                        AndroidPath androidPath = ((Outline$Generic) brush).path;
                        graphicsLayer10.internalOutline = null;
                        graphicsLayer10.roundRectOutlineSize = 9205357640488583168L;
                        graphicsLayer10.roundRectOutlineTopLeft = 0L;
                        graphicsLayer10.roundRectCornerRadius = 0.0f;
                        graphicsLayer10.outlineDirty = true;
                        graphicsLayer10.usePathForClip = false;
                        graphicsLayer10.outlinePath = androidPath;
                        graphicsLayer10.configureOutlineAndClip();
                    } else {
                        if (!(brush instanceof Outline$Rounded)) {
                            DecodeUtils$$ExternalSyntheticBUOutline0.m();
                            return;
                        }
                        Outline$Rounded outline$Rounded = (Outline$Rounded) brush;
                        AndroidPath androidPath2 = outline$Rounded.roundRectPath;
                        if (androidPath2 != null) {
                            graphicsLayer10.internalOutline = null;
                            graphicsLayer10.roundRectOutlineSize = 9205357640488583168L;
                            graphicsLayer10.roundRectOutlineTopLeft = 0L;
                            graphicsLayer10.roundRectCornerRadius = 0.0f;
                            graphicsLayer10.outlineDirty = true;
                            graphicsLayer10.usePathForClip = false;
                            graphicsLayer10.outlinePath = androidPath2;
                            graphicsLayer10.configureOutlineAndClip();
                        } else {
                            RoundRect roundRect = outline$Rounded.roundRect;
                            float f8 = roundRect.top;
                            float f9 = roundRect.left;
                            graphicsLayer10.m267setRoundRectOutlineTNW_H78((Float.floatToRawIntBits(f9) << c) | (Float.floatToRawIntBits(f8) & 4294967295L), (Float.floatToRawIntBits(roundRect.right - f9) << c) | (Float.floatToRawIntBits(roundRect.bottom - f8) & 4294967295L), Float.intBitsToFloat((int) (roundRect.bottomLeftCornerRadius >> c)));
                        }
                    }
                }
                if (Build.VERSION.SDK_INT < 33 && (((brush instanceof Outline$Generic) || ((brush instanceof Outline$Rounded) && !Jsoup.isSimple(((Outline$Rounded) brush).roundRect))) && (function0 = graphicsLayerOwnerLayer.invalidateParentLayer) != null)) {
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
                androidComposeView.voteFrameRate(0.0f);
            }
        }
        boolean z4 = this.isClipping;
        this.isClipping = reusableGraphicsLayerScope.clip;
        this.lastLayerAlpha = reusableGraphicsLayerScope.alpha;
        boolean z5 = layerPositionalProperties2.scaleX == layerPositionalProperties.scaleX && layerPositionalProperties2.scaleY == layerPositionalProperties.scaleY && layerPositionalProperties2.cameraDistance == layerPositionalProperties.cameraDistance && TransformOrigin.m253equalsimpl0(layerPositionalProperties2.transformOrigin, layerPositionalProperties.transformOrigin);
        if (z && ((!z5 || z4 != this.isClipping) && (owner = layoutNode.owner) != null)) {
            ((AndroidComposeView) owner).onLayoutChange(layoutNode);
        }
        if (z5) {
            return;
        }
        layoutNode.onCoordinatorRectChanged$ui(this);
        if (layoutNode.globallyPositionedObservers > 0) {
            AndroidComposeView androidComposeView3 = (AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode);
            CardView.AnonymousClass1 anonymousClass1 = androidComposeView3.measureAndLayoutDelegate.onPositionedDispatcher;
            anonymousClass1.getClass();
            if (layoutNode.globallyPositionedObservers > 0) {
                ((MutableVector) anonymousClass1.mCardBackground).add(layoutNode);
                layoutNode.needsOnGloballyPositionedDispatch = true;
            }
            androidComposeView3.scheduleMeasureAndLayout(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* renamed from: withinLayerBounds-k-4lQ0M, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m353withinLayerBoundsk4lQ0M(long r24) {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeCoordinator.m353withinLayerBoundsk4lQ0M(long):boolean");
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutCoordinates getCoordinates() {
        return this;
    }
}
