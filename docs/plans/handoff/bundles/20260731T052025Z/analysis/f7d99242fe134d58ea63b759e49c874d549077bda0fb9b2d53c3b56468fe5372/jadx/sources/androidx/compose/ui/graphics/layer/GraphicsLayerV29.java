package androidx.compose.ui.graphics.layer;

import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.CanvasZHelper;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.MenuHostHelper;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GraphicsLayerV29 implements GraphicsLayerImpl {
    public float alpha;
    public long ambientShadowColor;
    public int blendMode;
    public float cameraDistance;
    public final CanvasDrawScope canvasDrawScope;
    public final CanvasHolder canvasHolder;
    public boolean clip;
    public boolean clipToBounds;
    public boolean clipToOutline;
    public int compositingStrategy;
    public Paint layerPaint;
    public Matrix matrix;
    public boolean outlineIsProvided;
    public final RenderNode renderNode;
    public float rotationZ;
    public float scaleX;
    public float scaleY;
    public float shadowElevation;
    public long size;
    public long spotShadowColor;
    public float translationY;

    public GraphicsLayerV29() {
        CanvasHolder canvasHolder = new CanvasHolder();
        CanvasDrawScope canvasDrawScope = new CanvasDrawScope();
        this.canvasHolder = canvasHolder;
        this.canvasDrawScope = canvasDrawScope;
        RenderNode renderNode = new RenderNode("graphicsLayer");
        this.renderNode = renderNode;
        this.size = 0L;
        renderNode.setClipToBounds(false);
        m548applyCompositingStrategyZ1X6vPc(renderNode, 0);
        this.alpha = 1.0f;
        this.blendMode = 3;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        long j = Color.Black;
        this.ambientShadowColor = j;
        this.spotShadowColor = j;
        this.cameraDistance = 8.0f;
        this.compositingStrategy = 0;
    }

    public final void applyClip$1() {
        boolean z = this.clip;
        boolean z2 = false;
        boolean z3 = z && !this.outlineIsProvided;
        if (z && this.outlineIsProvided) {
            z2 = true;
        }
        if (z3 != this.clipToBounds) {
            this.clipToBounds = z3;
            this.renderNode.setClipToBounds(z3);
        }
        if (z2 != this.clipToOutline) {
            this.clipToOutline = z2;
            this.renderNode.setClipToOutline(z2);
        }
    }

    /* renamed from: applyCompositingStrategy-Z1X6vPc, reason: not valid java name */
    public final void m548applyCompositingStrategyZ1X6vPc(RenderNode renderNode, int i) {
        if (i == 1) {
            renderNode.setUseCompositingLayer(true, this.layerPaint);
            renderNode.setHasOverlappingRendering(true);
            return;
        }
        Paint paint = this.layerPaint;
        if (i == 2) {
            renderNode.setUseCompositingLayer(false, paint);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setUseCompositingLayer(false, paint);
            renderNode.setHasOverlappingRendering(true);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final Matrix calculateMatrix() {
        Matrix matrix = this.matrix;
        if (matrix == null) {
            matrix = new Matrix();
            this.matrix = matrix;
        }
        this.renderNode.getMatrix(matrix);
        return matrix;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void discardDisplayList() {
        this.renderNode.discardDisplayList();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void draw(Canvas canvas) {
        android.graphics.Canvas canvas2 = AndroidCanvas_androidKt.EmptyCanvas;
        ((AndroidCanvas) canvas).internalCanvas.drawRenderNode(this.renderNode);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getAlpha() {
        return this.alpha;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: getAmbientShadowColor-0d7_KjU */
    public final long mo536getAmbientShadowColor0d7_KjU() {
        return this.ambientShadowColor;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: getBlendMode-0nO6VwU */
    public final int mo537getBlendMode0nO6VwU() {
        return this.blendMode;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getCameraDistance() {
        return this.cameraDistance;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final ColorFilter getColorFilter() {
        return null;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: getCompositingStrategy-ke2Ky5w */
    public final int mo538getCompositingStrategyke2Ky5w() {
        return this.compositingStrategy;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final boolean getHasDisplayList() {
        return this.renderNode.hasDisplayList();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getRotationX() {
        return 0.0f;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getRotationY() {
        return 0.0f;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getRotationZ() {
        return this.rotationZ;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getScaleX() {
        return this.scaleX;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getScaleY() {
        return this.scaleY;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getShadowElevation() {
        return this.shadowElevation;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: getSpotShadowColor-0d7_KjU */
    public final long mo539getSpotShadowColor0d7_KjU() {
        return this.spotShadowColor;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getTranslationX() {
        return 0.0f;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getTranslationY() {
        return this.translationY;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void record(Density density, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, NodeChainKt$fillVector$1 nodeChainKt$fillVector$1) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        RecordingCanvas beginRecording = this.renderNode.beginRecording();
        try {
            CanvasHolder canvasHolder = this.canvasHolder;
            AndroidCanvas androidCanvas = canvasHolder.androidCanvas;
            android.graphics.Canvas canvas = androidCanvas.internalCanvas;
            androidCanvas.internalCanvas = beginRecording;
            MenuHostHelper menuHostHelper = canvasDrawScope.drawContext;
            menuHostHelper.setDensity(density);
            menuHostHelper.setLayoutDirection(layoutDirection);
            menuHostHelper.mMenuProviders = graphicsLayer;
            menuHostHelper.m797setSizeuvyYCjk(this.size);
            menuHostHelper.setCanvas(androidCanvas);
            nodeChainKt$fillVector$1.invoke(canvasDrawScope);
            canvasHolder.androidCanvas.internalCanvas = canvas;
        } finally {
            this.renderNode.endRecording();
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setAlpha(float f) {
        this.alpha = f;
        this.renderNode.setAlpha(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setAmbientShadowColor-8_81llA */
    public final void mo540setAmbientShadowColor8_81llA(long j) {
        this.ambientShadowColor = j;
        this.renderNode.setAmbientShadowColor(ColorKt.m500toArgb8_81llA(j));
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setBlendMode-s9anfk8 */
    public final void mo541setBlendModes9anfk8(int i) {
        this.blendMode = i;
        Paint paint = this.layerPaint;
        if (paint == null) {
            paint = new Paint();
            this.layerPaint = paint;
        }
        paint.setBlendMode(CanvasZHelper.m478toAndroidBlendModes9anfk8(i));
        updateLayerProperties$1();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setCameraDistance(float f) {
        this.cameraDistance = f;
        this.renderNode.setCameraDistance(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setClip(boolean z) {
        this.clip = z;
        applyClip$1();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setColorFilter() {
        Paint paint = this.layerPaint;
        if (paint == null) {
            paint = new Paint();
            this.layerPaint = paint;
        }
        paint.setColorFilter(null);
        updateLayerProperties$1();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setCompositingStrategy-Wpw9cng */
    public final void mo542setCompositingStrategyWpw9cng(int i) {
        this.compositingStrategy = i;
        updateLayerProperties$1();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setOutline-O0kMr_c */
    public final void mo543setOutlineO0kMr_c(Outline outline, long j) {
        this.renderNode.setOutline(outline);
        this.outlineIsProvided = outline != null;
        applyClip$1();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setPivotOffset-k-4lQ0M */
    public final void mo544setPivotOffsetk4lQ0M(long j) {
        long j2 = 9223372034707292159L & j;
        RenderNode renderNode = this.renderNode;
        if (j2 == 9205357640488583168L) {
            renderNode.resetPivot();
        } else {
            renderNode.setPivotX(Float.intBitsToFloat((int) (j >> 32)));
            this.renderNode.setPivotY(Float.intBitsToFloat((int) (j & 4294967295L)));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setPosition-H0pRuoY */
    public final void mo545setPositionH0pRuoY(int i, int i2, long j) {
        this.renderNode.setPosition(i, i2, ((int) (j >> 32)) + i, ((int) (4294967295L & j)) + i2);
        this.size = Validate.m1072toSizeozmzZPI(j);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setRotationX() {
        this.renderNode.setRotationX(0.0f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setRotationY() {
        this.renderNode.setRotationY(0.0f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setRotationZ(float f) {
        this.rotationZ = f;
        this.renderNode.setRotationZ(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setScaleX(float f) {
        this.scaleX = f;
        this.renderNode.setScaleX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setScaleY(float f) {
        this.scaleY = f;
        this.renderNode.setScaleY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setShadowElevation(float f) {
        this.shadowElevation = f;
        this.renderNode.setElevation(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setSpotShadowColor-8_81llA */
    public final void mo546setSpotShadowColor8_81llA(long j) {
        this.spotShadowColor = j;
        this.renderNode.setSpotShadowColor(ColorKt.m500toArgb8_81llA(j));
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setTranslationX() {
        this.renderNode.setTranslationX(0.0f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setTranslationY(float f) {
        this.translationY = f;
        this.renderNode.setTranslationY(f);
    }

    public final void updateLayerProperties$1() {
        int i = this.compositingStrategy;
        if (i != 1 && this.blendMode == 3) {
            m548applyCompositingStrategyZ1X6vPc(this.renderNode, i);
        } else {
            m548applyCompositingStrategyZ1X6vPc(this.renderNode, 1);
        }
    }
}
