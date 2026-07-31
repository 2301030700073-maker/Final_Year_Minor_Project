package androidx.compose.ui.platform;

import android.os.Build;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlin.text.UStringsKt;
import okhttp3.Cookie;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GraphicsLayerOwnerLayer implements OwnedLayer {
    public final GraphicsContext context;
    public Function2 drawBlock;
    public boolean drawnWithEnabledZ;
    public GraphicsLayer graphicsLayer;
    public Function0 invalidateParentLayer;
    public float[] inverseMatrixCache;
    public boolean isDestroyed;
    public boolean isDirty;
    public boolean isInverseMatrixDirty;
    public boolean isMatrixDirty;
    public int mutatedFields;
    public Brush outline;
    public final AndroidComposeView ownerView;
    public long size = 9223372034707292159L;
    public final float[] matrixCache = Brush.m227constructorimpl$default();
    public Density density = UStringsKt.Density$default();
    public LayoutDirection layoutDirection = LayoutDirection.Ltr;
    public final CanvasDrawScope scope = new CanvasDrawScope();
    public long transformOrigin = TransformOrigin.Center;
    public boolean isIdentity = true;
    public final GraphicsLayerOwnerLayer$recordLambda$1 recordLambda = new Function1() { // from class: androidx.compose.ui.platform.GraphicsLayerOwnerLayer$recordLambda$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            DrawScope drawScope = (DrawScope) obj;
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = GraphicsLayerOwnerLayer.this;
            Canvas canvas = drawScope.getDrawContext().getCanvas();
            Function2 function2 = graphicsLayerOwnerLayer.drawBlock;
            if (function2 != null) {
                function2.invoke(canvas, (GraphicsLayer) drawScope.getDrawContext().config);
            }
            return Unit.INSTANCE;
        }
    };

    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.compose.ui.platform.GraphicsLayerOwnerLayer$recordLambda$1] */
    public GraphicsLayerOwnerLayer(GraphicsLayer graphicsLayer, GraphicsContext graphicsContext, AndroidComposeView androidComposeView, Function2 function2, Function0 function0) {
        this.graphicsLayer = graphicsLayer;
        this.context = graphicsContext;
        this.ownerView = androidComposeView;
        this.drawBlock = function2;
        this.invalidateParentLayer = function0;
    }

    /* renamed from: getInverseMatrix-3i98HWw, reason: not valid java name */
    public final float[] m389getInverseMatrix3i98HWw() {
        float[] fArr = this.inverseMatrixCache;
        if (fArr == null) {
            fArr = Brush.m227constructorimpl$default();
            this.inverseMatrixCache = fArr;
        }
        if (this.isInverseMatrixDirty) {
            this.isInverseMatrixDirty = false;
            float[] m390getMatrixsQKQjiQ = m390getMatrixsQKQjiQ();
            if (this.isIdentity) {
                return m390getMatrixsQKQjiQ;
            }
            if (!TestTagKt.m394invertToJiSxe2E(m390getMatrixsQKQjiQ, fArr)) {
                fArr[0] = Float.NaN;
                return null;
            }
        } else if (Float.isNaN(fArr[0])) {
            return null;
        }
        return fArr;
    }

    /* renamed from: getMatrix-sQKQjiQ, reason: not valid java name */
    public final float[] m390getMatrixsQKQjiQ() {
        boolean z = this.isMatrixDirty;
        float[] fArr = this.matrixCache;
        if (z) {
            GraphicsLayer graphicsLayer = this.graphicsLayer;
            long j = graphicsLayer.pivotOffset;
            GraphicsLayerImpl graphicsLayerImpl = graphicsLayer.impl;
            if ((9223372034707292159L & j) == 9205357640488583168L) {
                j = RangesKt.m668getCenteruvyYCjk(Cookie.Companion.m708toSizeozmzZPI(this.size));
            }
            float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
            float translationX = graphicsLayerImpl.getTranslationX();
            float translationY = graphicsLayerImpl.getTranslationY();
            float rotationX = graphicsLayerImpl.getRotationX();
            float rotationY = graphicsLayerImpl.getRotationY();
            float rotationZ = graphicsLayerImpl.getRotationZ();
            float scaleX = graphicsLayerImpl.getScaleX();
            float scaleY = graphicsLayerImpl.getScaleY();
            double d = rotationX * 0.017453292519943295d;
            float sin = (float) Math.sin(d);
            float cos = (float) Math.cos(d);
            float f = -sin;
            float f2 = (translationY * cos) - (0.0f * sin);
            float f3 = (0.0f * cos) + (translationY * sin);
            double d2 = rotationY * 0.017453292519943295d;
            float sin2 = (float) Math.sin(d2);
            float cos2 = (float) Math.cos(d2);
            float f4 = -sin2;
            float f5 = sin * sin2;
            float f6 = sin * cos2;
            float f7 = cos * sin2;
            float f8 = cos * cos2;
            float f9 = (f3 * sin2) + (translationX * cos2);
            float f10 = (f3 * cos2) + ((-translationX) * sin2);
            double d3 = rotationZ * 0.017453292519943295d;
            float sin3 = (float) Math.sin(d3);
            float cos3 = (float) Math.cos(d3);
            float f11 = -sin3;
            float f12 = (cos3 * f5) + (f11 * cos2);
            float f13 = ((f5 * sin3) + (cos2 * cos3)) * scaleX;
            float f14 = sin3 * cos * scaleX;
            float f15 = ((sin3 * f6) + (cos3 * f4)) * scaleX;
            float f16 = f12 * scaleY;
            float f17 = cos * cos3 * scaleY;
            float f18 = ((cos3 * f6) + (f11 * f4)) * scaleY;
            float f19 = f7 * 1.0f;
            float f20 = f * 1.0f;
            float f21 = f8 * 1.0f;
            if (fArr.length >= 16) {
                fArr[0] = f13;
                fArr[1] = f14;
                fArr[2] = f15;
                fArr[3] = 0.0f;
                fArr[4] = f16;
                fArr[5] = f17;
                fArr[6] = f18;
                fArr[7] = 0.0f;
                fArr[8] = f19;
                fArr[9] = f20;
                fArr[10] = f21;
                fArr[11] = 0.0f;
                float f22 = -intBitsToFloat;
                fArr[12] = ((f13 * f22) - (intBitsToFloat2 * f16)) + f9 + intBitsToFloat;
                fArr[13] = ((f14 * f22) - (intBitsToFloat2 * f17)) + f2 + intBitsToFloat2;
                fArr[14] = ((f22 * f15) - (intBitsToFloat2 * f18)) + f10;
                fArr[15] = 1.0f;
            }
            this.isMatrixDirty = false;
            this.isIdentity = Brush.m229isIdentity58bKbWc(fArr);
        }
        return fArr;
    }

    public final void invalidate() {
        if (this.isDirty || this.isDestroyed) {
            return;
        }
        this.ownerView.invalidate();
        setDirty(true);
    }

    /* renamed from: move--gyyYBs, reason: not valid java name */
    public final void m391movegyyYBs(long j) {
        boolean isArrEnabled$ui = AndroidComposeView.isArrEnabled$ui();
        AndroidComposeView androidComposeView = this.ownerView;
        if (isArrEnabled$ui) {
            androidComposeView.voteFrameRate(-4.0f);
        }
        GraphicsLayer graphicsLayer = this.graphicsLayer;
        if (!IntOffset.m445equalsimpl0(graphicsLayer.topLeft, j)) {
            graphicsLayer.topLeft = j;
            graphicsLayer.impl.mo277setPositionH0pRuoY((int) (j >> 32), graphicsLayer.size, (int) (j & 4294967295L));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            WrapperRenderNodeLayerHelperMethods.onDescendantInvalidated(androidComposeView);
        } else {
            androidComposeView.invalidate();
        }
    }

    /* renamed from: resize-ozmzZPI, reason: not valid java name */
    public final void m392resizeozmzZPI(long j) {
        if (IntSize.m449equalsimpl0(j, this.size)) {
            return;
        }
        if (AndroidComposeView.isArrEnabled$ui()) {
            this.ownerView.voteFrameRate(-4.0f);
        }
        this.size = j;
        invalidate();
    }

    public final void setDirty(boolean z) {
        if (z != this.isDirty) {
            this.isDirty = z;
            AndroidComposeView androidComposeView = this.ownerView;
            MutableObjectList mutableObjectList = androidComposeView.dirtyLayers;
            boolean z2 = androidComposeView.isDrawingContent;
            if (!z) {
                if (z2) {
                    return;
                }
                mutableObjectList.remove(this);
                MutableObjectList mutableObjectList2 = androidComposeView.postponedDirtyLayers;
                if (mutableObjectList2 != null) {
                    mutableObjectList2.remove(this);
                    return;
                }
                return;
            }
            if (!z2) {
                mutableObjectList.add(this);
                return;
            }
            MutableObjectList mutableObjectList3 = androidComposeView.postponedDirtyLayers;
            if (mutableObjectList3 == null) {
                mutableObjectList3 = new MutableObjectList();
                androidComposeView.postponedDirtyLayers = mutableObjectList3;
            }
            mutableObjectList3.add(this);
        }
    }

    public final void updateDisplayList() {
        AndroidComposeView.isArrEnabled$ui();
        if (this.isDirty) {
            if (!TransformOrigin.m253equalsimpl0(this.transformOrigin, TransformOrigin.Center) && !IntSize.m449equalsimpl0(this.graphicsLayer.size, this.size)) {
                GraphicsLayer graphicsLayer = this.graphicsLayer;
                float intBitsToFloat = Float.intBitsToFloat((int) (this.transformOrigin >> 32)) * ((int) (this.size >> 32));
                float intBitsToFloat2 = Float.intBitsToFloat((int) (this.transformOrigin & 4294967295L)) * ((int) (this.size & 4294967295L));
                long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
                if (!Offset.m196equalsimpl0(graphicsLayer.pivotOffset, floatToRawIntBits)) {
                    graphicsLayer.pivotOffset = floatToRawIntBits;
                    graphicsLayer.impl.mo276setPivotOffsetk4lQ0M(floatToRawIntBits);
                }
            }
            GraphicsLayer graphicsLayer2 = this.graphicsLayer;
            Density density = this.density;
            LayoutDirection layoutDirection = this.layoutDirection;
            long j = this.size;
            long j2 = graphicsLayer2.size;
            GraphicsLayerImpl graphicsLayerImpl = graphicsLayer2.impl;
            if (!IntSize.m449equalsimpl0(j2, j)) {
                graphicsLayer2.size = j;
                long j3 = graphicsLayer2.topLeft;
                graphicsLayerImpl.mo277setPositionH0pRuoY((int) (j3 >> 32), j, (int) (4294967295L & j3));
                if (graphicsLayer2.roundRectOutlineSize == 9205357640488583168L) {
                    graphicsLayer2.outlineDirty = true;
                    graphicsLayer2.configureOutlineAndClip();
                }
            }
            graphicsLayer2.density = density;
            graphicsLayer2.layoutDirection = layoutDirection;
            graphicsLayer2.drawBlock = this.recordLambda;
            graphicsLayerImpl.record(density, layoutDirection, graphicsLayer2, graphicsLayer2.clipDrawBlock);
            setDirty(false);
        }
    }
}
