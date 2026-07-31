package androidx.compose.ui.platform;

import android.os.Build;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import kotlin.ExceptionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public ColorKt outline;
    public final AndroidComposeView ownerView;
    public long size = 9223372034707292159L;
    public final float[] matrixCache = Matrix.m446constructorimpl$default();
    public Density density = UuidKt.Density$default();
    public LayoutDirection layoutDirection = LayoutDirection.Ltr;
    public final CanvasDrawScope scope = new CanvasDrawScope();
    public long transformOrigin = TransformOrigin.Center;
    public boolean isIdentity = true;
    public final NodeChainKt$fillVector$1 recordLambda = new NodeChainKt$fillVector$1(20, this);

    public GraphicsLayerOwnerLayer(GraphicsLayer graphicsLayer, GraphicsContext graphicsContext, AndroidComposeView androidComposeView, Function2 function2, Function0 function0) {
        this.graphicsLayer = graphicsLayer;
        this.context = graphicsContext;
        this.ownerView = androidComposeView;
        this.drawBlock = function2;
        this.invalidateParentLayer = function0;
    }

    /* renamed from: getInverseMatrix-3i98HWw, reason: not valid java name */
    public final float[] m604getInverseMatrix3i98HWw() {
        float[] fArr = this.inverseMatrixCache;
        if (fArr == null) {
            fArr = Matrix.m446constructorimpl$default();
            this.inverseMatrixCache = fArr;
        }
        if (this.isInverseMatrixDirty) {
            this.isInverseMatrixDirty = false;
            float[] m605getMatrixsQKQjiQ = m605getMatrixsQKQjiQ();
            if (this.isIdentity) {
                return m605getMatrixsQKQjiQ;
            }
            if (!TestTagKt.m610invertToJiSxe2E(m605getMatrixsQKQjiQ, fArr)) {
                fArr[0] = Float.NaN;
                return null;
            }
        } else if (Float.isNaN(fArr[0])) {
            return null;
        }
        return fArr;
    }

    /* renamed from: getMatrix-sQKQjiQ, reason: not valid java name */
    public final float[] m605getMatrixsQKQjiQ() {
        boolean z = this.isMatrixDirty;
        float[] fArr = this.matrixCache;
        if (z) {
            GraphicsLayer graphicsLayer = this.graphicsLayer;
            long j = graphicsLayer.pivotOffset;
            GraphicsLayerImpl graphicsLayerImpl = graphicsLayer.impl;
            if ((9223372034707292159L & j) == 9205357640488583168L) {
                j = Room.m759getCenteruvyYCjk(ExceptionsKt.m813toSizeozmzZPI(this.size));
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
            float f2 = (translationY * cos) - (RecyclerView.DECELERATION_RATE * sin);
            float f3 = (RecyclerView.DECELERATION_RATE * cos) + (translationY * sin);
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
            this.isIdentity = ColorKt.m440isIdentity58bKbWc(fArr);
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
    public final void m606movegyyYBs(long j) {
        boolean isArrEnabled$ui = AndroidComposeView.isArrEnabled$ui();
        AndroidComposeView androidComposeView = this.ownerView;
        if (isArrEnabled$ui) {
            androidComposeView.voteFrameRate(-4.0f);
        }
        GraphicsLayer graphicsLayer = this.graphicsLayer;
        if (!IntOffset.m715equalsimpl0(graphicsLayer.topLeft, j)) {
            graphicsLayer.topLeft = j;
            graphicsLayer.impl.mo488setPositionH0pRuoY((int) (j >> 32), (int) (j & 4294967295L), graphicsLayer.size);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            WrapperRenderNodeLayerHelperMethods.onDescendantInvalidated(androidComposeView);
        } else {
            androidComposeView.invalidate();
        }
    }

    /* renamed from: resize-ozmzZPI, reason: not valid java name */
    public final void m607resizeozmzZPI(long j) {
        if (IntSize.m721equalsimpl0(j, this.size)) {
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
            if (!TransformOrigin.m455equalsimpl0(this.transformOrigin, TransformOrigin.Center) && !IntSize.m721equalsimpl0(this.graphicsLayer.size, this.size)) {
                GraphicsLayer graphicsLayer = this.graphicsLayer;
                float intBitsToFloat = Float.intBitsToFloat((int) (this.transformOrigin >> 32)) * ((int) (this.size >> 32));
                float intBitsToFloat2 = Float.intBitsToFloat((int) (this.transformOrigin & 4294967295L)) * ((int) (this.size & 4294967295L));
                long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
                if (!Offset.m383equalsimpl0(graphicsLayer.pivotOffset, floatToRawIntBits)) {
                    graphicsLayer.pivotOffset = floatToRawIntBits;
                    graphicsLayer.impl.mo487setPivotOffsetk4lQ0M(floatToRawIntBits);
                }
            }
            this.graphicsLayer.m477recordmLhObY(this.density, this.layoutDirection, this.size, this.recordLambda);
            setDirty(false);
        }
    }
}
