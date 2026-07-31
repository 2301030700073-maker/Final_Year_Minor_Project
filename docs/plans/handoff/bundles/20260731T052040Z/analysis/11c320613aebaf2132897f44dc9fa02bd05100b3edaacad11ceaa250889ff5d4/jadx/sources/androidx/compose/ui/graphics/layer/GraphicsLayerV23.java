package androidx.compose.ui.graphics.layer;

import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.CanvasZHelper;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.Cookie;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GraphicsLayerV23 implements GraphicsLayerImpl {
    public static final AtomicBoolean needToValidateAccess = new AtomicBoolean(true);
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
    public long outlineSize;
    public final RenderNode renderNode;
    public float scaleX;
    public float scaleY;
    public float shadowElevation;
    public boolean shouldManuallySetCenterPivot;
    public long size;
    public long spotShadowColor;

    public GraphicsLayerV23(AndroidComposeView androidComposeView, CanvasHolder canvasHolder, CanvasDrawScope canvasDrawScope) {
        this.canvasHolder = canvasHolder;
        this.canvasDrawScope = canvasDrawScope;
        RenderNode create = RenderNode.create("Compose", androidComposeView);
        this.renderNode = create;
        this.size = 0L;
        this.outlineSize = 0L;
        if (needToValidateAccess.getAndSet(false)) {
            create.setScaleX(create.getScaleX());
            create.setScaleY(create.getScaleY());
            create.setTranslationX(create.getTranslationX());
            create.setTranslationY(create.getTranslationY());
            create.setElevation(create.getElevation());
            create.setRotation(create.getRotation());
            create.setRotationX(create.getRotationX());
            create.setRotationY(create.getRotationY());
            create.setCameraDistance(create.getCameraDistance());
            create.setPivotX(create.getPivotX());
            create.setPivotY(create.getPivotY());
            create.setClipToOutline(create.getClipToOutline());
            create.setClipToBounds(false);
            create.setAlpha(create.getAlpha());
            create.isValid();
            create.setLeftTopRightBottom(0, 0, 0, 0);
            create.offsetLeftAndRight(0);
            create.offsetTopAndBottom(0);
            int i = Build.VERSION.SDK_INT;
            if (i >= 28) {
                RenderNodeVerificationHelper28.setAmbientShadowColor(create, RenderNodeVerificationHelper28.getAmbientShadowColor(create));
                RenderNodeVerificationHelper28.setSpotShadowColor(create, RenderNodeVerificationHelper28.getSpotShadowColor(create));
            }
            if (i >= 24) {
                RenderNodeVerificationHelper24.discardDisplayList(create);
            } else {
                RenderNodeVerificationHelper23.destroyDisplayListData(create);
            }
            create.setLayerType(0);
            create.setHasOverlappingRendering(create.hasOverlappingRendering());
        }
        create.setClipToBounds(false);
        m279applyCompositingStrategyWpw9cng(0);
        this.compositingStrategy = 0;
        this.blendMode = 3;
        this.alpha = 1.0f;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        long j = Color.Black;
        this.ambientShadowColor = j;
        this.spotShadowColor = j;
        this.cameraDistance = 8.0f;
    }

    public final void applyClip() {
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

    /* renamed from: applyCompositingStrategy-Wpw9cng, reason: not valid java name */
    public final void m279applyCompositingStrategyWpw9cng(int i) {
        RenderNode renderNode = this.renderNode;
        if (i == 1) {
            renderNode.setLayerType(2);
            renderNode.setLayerPaint(this.layerPaint);
            renderNode.setHasOverlappingRendering(true);
        } else if (i == 2) {
            renderNode.setLayerType(0);
            renderNode.setLayerPaint(this.layerPaint);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setLayerType(0);
            renderNode.setLayerPaint(this.layerPaint);
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
        int i = Build.VERSION.SDK_INT;
        RenderNode renderNode = this.renderNode;
        if (i >= 24) {
            RenderNodeVerificationHelper24.discardDisplayList(renderNode);
        } else {
            RenderNodeVerificationHelper23.destroyDisplayListData(renderNode);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void draw(Canvas canvas) {
        android.graphics.Canvas canvas2 = AndroidCanvas_androidKt.EmptyCanvas;
        DisplayListCanvas displayListCanvas = ((AndroidCanvas) canvas).internalCanvas;
        displayListCanvas.getClass();
        displayListCanvas.drawRenderNode(this.renderNode);
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
        return this.cameraDistance;
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
    public final boolean getHasDisplayList() {
        return this.renderNode.isValid();
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
        android.graphics.Canvas start = this.renderNode.start(Math.max((int) (this.size >> 32), (int) (this.outlineSize >> 32)), Math.max((int) (this.size & 4294967295L), (int) (4294967295L & this.outlineSize)));
        try {
            AndroidCanvas androidCanvas = this.canvasHolder.androidCanvas;
            android.graphics.Canvas canvas = androidCanvas.internalCanvas;
            androidCanvas.internalCanvas = start;
            CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
            ProcessFinisher processFinisher = canvasDrawScope.drawContext;
            long m708toSizeozmzZPI = Cookie.Companion.m708toSizeozmzZPI(this.size);
            CanvasDrawScope.DrawParams drawParams = ((CanvasDrawScope) processFinisher.lastActivityManager).drawParams;
            Density density2 = drawParams.density;
            LayoutDirection layoutDirection2 = drawParams.layoutDirection;
            Canvas canvas2 = processFinisher.getCanvas();
            long m729getSizeNHjbRc = processFinisher.m729getSizeNHjbRc();
            GraphicsLayer graphicsLayer2 = (GraphicsLayer) processFinisher.config;
            processFinisher.setDensity(density);
            processFinisher.setLayoutDirection(layoutDirection);
            processFinisher.setCanvas(androidCanvas);
            processFinisher.m730setSizeuvyYCjk(m708toSizeozmzZPI);
            processFinisher.config = graphicsLayer;
            androidCanvas.save();
            try {
                graphicsLayer$clipDrawBlock$1.invoke(canvasDrawScope);
                androidCanvas.restore();
                processFinisher.setDensity(density2);
                processFinisher.setLayoutDirection(layoutDirection2);
                processFinisher.setCanvas(canvas2);
                processFinisher.m730setSizeuvyYCjk(m729getSizeNHjbRc);
                processFinisher.config = graphicsLayer2;
                androidCanvas.internalCanvas = canvas;
            } catch (Throwable th) {
                androidCanvas.restore();
                ProcessFinisher processFinisher2 = canvasDrawScope.drawContext;
                processFinisher2.setDensity(density2);
                processFinisher2.setLayoutDirection(layoutDirection2);
                processFinisher2.setCanvas(canvas2);
                processFinisher2.m730setSizeuvyYCjk(m729getSizeNHjbRc);
                processFinisher2.config = graphicsLayer2;
                throw th;
            }
        } finally {
            this.renderNode.end(start);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setAlpha(float f) {
        this.alpha = f;
        this.renderNode.setAlpha(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setAmbientShadowColor-8_81llA */
    public final void mo272setAmbientShadowColor8_81llA(long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.ambientShadowColor = j;
            RenderNodeVerificationHelper28.setAmbientShadowColor(this.renderNode, Brush.m235toArgb8_81llA(j));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setBlendMode-s9anfk8 */
    public final void mo273setBlendModes9anfk8(int i) {
        if (this.blendMode == i) {
            return;
        }
        this.blendMode = i;
        Paint paint = this.layerPaint;
        if (paint == null) {
            paint = new Paint();
            this.layerPaint = paint;
        }
        paint.setXfermode(new PorterDuffXfermode(CanvasZHelper.m241toPorterDuffModes9anfk8(i)));
        updateLayerProperties();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setCameraDistance(float f) {
        this.cameraDistance = f;
        this.renderNode.setCameraDistance(-f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setClip(boolean z) {
        this.clip = z;
        applyClip();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setColorFilter() {
        updateLayerProperties();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setCompositingStrategy-Wpw9cng */
    public final void mo274setCompositingStrategyWpw9cng(int i) {
        this.compositingStrategy = i;
        updateLayerProperties();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setOutline-O0kMr_c */
    public final void mo275setOutlineO0kMr_c(Outline outline, long j) {
        this.outlineSize = j;
        this.renderNode.setOutline(outline);
        this.outlineIsProvided = outline != null;
        applyClip();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setPivotOffset-k-4lQ0M */
    public final void mo276setPivotOffsetk4lQ0M(long j) {
        if ((9223372034707292159L & j) == 9205357640488583168L) {
            this.shouldManuallySetCenterPivot = true;
            this.renderNode.setPivotX(((int) (this.size >> 32)) / 2.0f);
            this.renderNode.setPivotY(((int) (4294967295L & this.size)) / 2.0f);
        } else {
            this.shouldManuallySetCenterPivot = false;
            this.renderNode.setPivotX(Float.intBitsToFloat((int) (j >> 32)));
            this.renderNode.setPivotY(Float.intBitsToFloat((int) (j & 4294967295L)));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    /* renamed from: setPosition-H0pRuoY */
    public final void mo277setPositionH0pRuoY(int i, long j, int i2) {
        int i3 = (int) (j >> 32);
        int i4 = (int) (4294967295L & j);
        this.renderNode.setLeftTopRightBottom(i, i2, i + i3, i2 + i4);
        if (IntSize.m449equalsimpl0(this.size, j)) {
            return;
        }
        if (this.shouldManuallySetCenterPivot) {
            this.renderNode.setPivotX(i3 / 2.0f);
            this.renderNode.setPivotY(i4 / 2.0f);
        }
        this.size = j;
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
    public final void setRotationZ() {
        this.renderNode.setRotation(0.0f);
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
    public final void mo278setSpotShadowColor8_81llA(long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.spotShadowColor = j;
            RenderNodeVerificationHelper28.setSpotShadowColor(this.renderNode, Brush.m235toArgb8_81llA(j));
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setTranslationX() {
        this.renderNode.setTranslationX(0.0f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void setTranslationY() {
        this.renderNode.setTranslationY(0.0f);
    }

    public final void updateLayerProperties() {
        int i = this.compositingStrategy;
        if (i != 1 && this.blendMode == 3) {
            m279applyCompositingStrategyWpw9cng(i);
        } else {
            m279applyCompositingStrategyWpw9cng(1);
        }
    }
}
