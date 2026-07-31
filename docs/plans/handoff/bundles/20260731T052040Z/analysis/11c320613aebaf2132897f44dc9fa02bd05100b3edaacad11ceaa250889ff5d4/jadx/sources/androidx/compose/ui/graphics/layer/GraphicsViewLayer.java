package androidx.compose.ui.graphics.layer;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.CanvasZHelper;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import org.acra.util.PackageManagerWrapperKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GraphicsViewLayer implements GraphicsLayerImpl {
    public static final GraphicsViewLayer$Companion$PlaceholderCanvas$1 PlaceholderCanvas = new GraphicsViewLayer$Companion$PlaceholderCanvas$1();
    public float alpha;
    public long ambientShadowColor;
    public int blendMode;
    public final CanvasHolder canvasHolder;
    public boolean clipBoundsInvalidated;
    public final Rect clipRect;
    public boolean clipToBounds;
    public int compositingStrategy;
    public final DrawChildContainer layerContainer;
    public Paint layerPaint;
    public boolean outlineIsProvided;
    public final Resources resources;
    public float scaleX;
    public float scaleY;
    public float shadowElevation;
    public boolean shouldManuallySetCenterPivot;
    public long size;
    public long spotShadowColor;
    public final ViewLayer viewLayer;
    public int x;
    public int y;

    public GraphicsViewLayer(DrawChildContainer drawChildContainer) {
        CanvasHolder canvasHolder = new CanvasHolder();
        CanvasDrawScope canvasDrawScope = new CanvasDrawScope();
        this.layerContainer = drawChildContainer;
        this.canvasHolder = canvasHolder;
        ViewLayer viewLayer = new ViewLayer(drawChildContainer, canvasHolder, canvasDrawScope);
        this.viewLayer = viewLayer;
        this.resources = drawChildContainer.getResources();
        this.clipRect = new Rect();
        drawChildContainer.addView(viewLayer);
        viewLayer.setClipBounds(null);
        this.size = 0L;
        View.generateViewId();
        this.blendMode = 3;
        this.compositingStrategy = 0;
        this.alpha = 1.0f;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        long j = Color.Black;
        this.ambientShadowColor = j;
        this.spotShadowColor = j;
    }

    /* renamed from: applyCompositingLayer-Wpw9cng, reason: not valid java name */
    public final void m281applyCompositingLayerWpw9cng(int i) {
        ViewLayer viewLayer = this.viewLayer;
        boolean z = true;
        if (i == 1) {
            viewLayer.setLayerType(2, this.layerPaint);
        } else {
            Paint paint = this.layerPaint;
            if (i == 2) {
                viewLayer.setLayerType(0, paint);
                z = false;
            } else {
                viewLayer.setLayerType(0, paint);
            }
        }
        viewLayer.setCanUseCompositingLayer$ui_graphics(z);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final Matrix calculateMatrix() {
        return this.viewLayer.getMatrix();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void discardDisplayList() {
        this.layerContainer.removeViewInLayout(this.viewLayer);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void draw(Canvas canvas) {
        Rect rect;
        boolean z = this.clipBoundsInvalidated;
        ViewLayer viewLayer = this.viewLayer;
        if (z) {
            if ((this.clipToBounds || viewLayer.getClipToOutline()) && !this.outlineIsProvided) {
                rect = this.clipRect;
                rect.left = 0;
                rect.top = 0;
                rect.right = viewLayer.getWidth();
                rect.bottom = viewLayer.getHeight();
            } else {
                rect = null;
            }
            viewLayer.setClipBounds(rect);
        }
        android.graphics.Canvas canvas2 = AndroidCanvas_androidKt.EmptyCanvas;
        if (((AndroidCanvas) canvas).internalCanvas.isHardwareAccelerated()) {
            this.layerContainer.drawChild$ui_graphics(canvas, viewLayer, viewLayer.getDrawingTime());
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getAlpha() {
        return this.alpha;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: getAmbientShadowColor-0d7_KjU */
    public final long mo268getAmbientShadowColor0d7_KjU() {
        return this.ambientShadowColor;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: getBlendMode-0nO6VwU */
    public final int mo269getBlendMode0nO6VwU() {
        return this.blendMode;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getCameraDistance() {
        return this.viewLayer.getCameraDistance() / this.resources.getDisplayMetrics().densityDpi;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final BlendModeColorFilter getColorFilter() {
        return null;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: getCompositingStrategy-ke2Ky5w */
    public final int mo270getCompositingStrategyke2Ky5w() {
        return this.compositingStrategy;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final /* synthetic */ boolean getHasDisplayList() {
        return true;
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
        return 0.0f;
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
    public final long mo271getSpotShadowColor0d7_KjU() {
        return this.spotShadowColor;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getTranslationX() {
        return 0.0f;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float getTranslationY() {
        return 0.0f;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void record(Density density, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, GraphicsLayer$clipDrawBlock$1 graphicsLayer$clipDrawBlock$1) {
        ViewLayer viewLayer = this.viewLayer;
        ViewParent parent = viewLayer.getParent();
        DrawChildContainer drawChildContainer = this.layerContainer;
        if (parent == null) {
            drawChildContainer.addView(viewLayer);
        }
        viewLayer.density = density;
        viewLayer.layoutDirection = layoutDirection;
        viewLayer.drawBlock = graphicsLayer$clipDrawBlock$1;
        viewLayer.parentLayer = graphicsLayer;
        if (viewLayer.isAttachedToWindow()) {
            viewLayer.setVisibility(4);
            viewLayer.setVisibility(0);
            try {
                CanvasHolder canvasHolder = this.canvasHolder;
                GraphicsViewLayer$Companion$PlaceholderCanvas$1 graphicsViewLayer$Companion$PlaceholderCanvas$1 = PlaceholderCanvas;
                AndroidCanvas androidCanvas = canvasHolder.androidCanvas;
                android.graphics.Canvas canvas = androidCanvas.internalCanvas;
                androidCanvas.internalCanvas = graphicsViewLayer$Companion$PlaceholderCanvas$1;
                drawChildContainer.drawChild$ui_graphics(androidCanvas, viewLayer, viewLayer.getDrawingTime());
                canvasHolder.androidCanvas.internalCanvas = canvas;
            } catch (ClassCastException unused) {
            }
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setAlpha(float f) {
        this.alpha = f;
        this.viewLayer.setAlpha(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setAmbientShadowColor-8_81llA */
    public final void mo272setAmbientShadowColor8_81llA(long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.ambientShadowColor = j;
            PackageManagerWrapperKt.setOutlineAmbientShadowColor(Brush.m235toArgb8_81llA(j), this.viewLayer);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setBlendMode-s9anfk8 */
    public final void mo273setBlendModes9anfk8(int i) {
        this.blendMode = i;
        Paint paint = this.layerPaint;
        if (paint == null) {
            paint = new Paint();
            this.layerPaint = paint;
        }
        paint.setXfermode(new PorterDuffXfermode(CanvasZHelper.m241toPorterDuffModes9anfk8(i)));
        updateLayerProperties$2();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setCameraDistance(float f) {
        this.viewLayer.setCameraDistance(f * this.resources.getDisplayMetrics().densityDpi);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setClip(boolean z) {
        boolean z2 = false;
        this.clipToBounds = z && !this.outlineIsProvided;
        this.clipBoundsInvalidated = true;
        if (z && this.outlineIsProvided) {
            z2 = true;
        }
        this.viewLayer.setClipToOutline(z2);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setColorFilter() {
        Paint paint = this.layerPaint;
        if (paint == null) {
            paint = new Paint();
            this.layerPaint = paint;
        }
        paint.setColorFilter(null);
        updateLayerProperties$2();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setCompositingStrategy-Wpw9cng */
    public final void mo274setCompositingStrategyWpw9cng(int i) {
        this.compositingStrategy = i;
        updateLayerProperties$2();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setOutline-O0kMr_c */
    public final void mo275setOutlineO0kMr_c(Outline outline, long j) {
        ViewLayer viewLayer = this.viewLayer;
        viewLayer.layerOutline = outline;
        viewLayer.invalidateOutline();
        if ((this.clipToBounds || viewLayer.getClipToOutline()) && outline != null) {
            viewLayer.setClipToOutline(true);
            if (this.clipToBounds) {
                this.clipToBounds = false;
                this.clipBoundsInvalidated = true;
            }
        }
        this.outlineIsProvided = outline != null;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setPivotOffset-k-4lQ0M */
    public final void mo276setPivotOffsetk4lQ0M(long j) {
        long j2 = 9223372034707292159L & j;
        ViewLayer viewLayer = this.viewLayer;
        if (j2 != 9205357640488583168L) {
            this.shouldManuallySetCenterPivot = false;
            viewLayer.setPivotX(Float.intBitsToFloat((int) (j >> 32)));
            viewLayer.setPivotY(Float.intBitsToFloat((int) (j & 4294967295L)));
        } else {
            if (Build.VERSION.SDK_INT >= 28) {
                PackageManagerWrapperKt.resetPivot(viewLayer);
                return;
            }
            this.shouldManuallySetCenterPivot = true;
            viewLayer.setPivotX(((int) (this.size >> 32)) / 2.0f);
            viewLayer.setPivotY(((int) (this.size & 4294967295L)) / 2.0f);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setPosition-H0pRuoY */
    public final void mo277setPositionH0pRuoY(int i, long j, int i2) {
        boolean m449equalsimpl0 = IntSize.m449equalsimpl0(this.size, j);
        ViewLayer viewLayer = this.viewLayer;
        if (m449equalsimpl0) {
            int i3 = this.x;
            if (i3 != i) {
                viewLayer.offsetLeftAndRight(i - i3);
            }
            int i4 = this.y;
            if (i4 != i2) {
                viewLayer.offsetTopAndBottom(i2 - i4);
            }
        } else {
            if (this.clipToBounds || viewLayer.getClipToOutline()) {
                this.clipBoundsInvalidated = true;
            }
            int i5 = (int) (j >> 32);
            int i6 = (int) (4294967295L & j);
            viewLayer.layout(i, i2, i + i5, i2 + i6);
            this.size = j;
            if (this.shouldManuallySetCenterPivot) {
                viewLayer.setPivotX(i5 / 2.0f);
                viewLayer.setPivotY(i6 / 2.0f);
            }
        }
        this.x = i;
        this.y = i2;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setRotationX() {
        this.viewLayer.setRotationX(0.0f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setRotationY() {
        this.viewLayer.setRotationY(0.0f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setRotationZ() {
        this.viewLayer.setRotation(0.0f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setScaleX(float f) {
        this.scaleX = f;
        this.viewLayer.setScaleX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setScaleY(float f) {
        this.scaleY = f;
        this.viewLayer.setScaleY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setShadowElevation(float f) {
        this.shadowElevation = f;
        this.viewLayer.setElevation(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setSpotShadowColor-8_81llA */
    public final void mo278setSpotShadowColor8_81llA(long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.spotShadowColor = j;
            PackageManagerWrapperKt.setOutlineSpotShadowColor(Brush.m235toArgb8_81llA(j), this.viewLayer);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setTranslationX() {
        this.viewLayer.setTranslationX(0.0f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setTranslationY() {
        this.viewLayer.setTranslationY(0.0f);
    }

    public final void updateLayerProperties$2() {
        int i = this.compositingStrategy;
        if (i != 1 && this.blendMode == 3) {
            m281applyCompositingLayerWpw9cng(i);
        } else {
            m281applyCompositingLayerWpw9cng(1);
        }
    }
}
