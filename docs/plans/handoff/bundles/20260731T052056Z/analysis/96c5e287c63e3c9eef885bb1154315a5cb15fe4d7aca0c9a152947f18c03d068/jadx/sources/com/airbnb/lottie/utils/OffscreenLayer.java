package com.airbnb.lottie.utils;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.os.Build;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.animation.LPaint;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.ExceptionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OffscreenLayer {
    public static final Matrix IDENTITY_MATRIX = new Matrix();
    public Bitmap bitmap;
    public Canvas bitmapCanvas;
    public Rect bitmapSrcRect;
    public LPaint clearPaint;
    public LPaint composePaint;
    public RenderStrategy currentStrategy;
    public Rect intRectIncludingShadow;
    public DropShadow lastRenderNodeShadow;
    public float lastShadowBlurRadius = RecyclerView.DECELERATION_RATE;
    public PriorityQueue op;
    public Canvas parentCanvas;
    public Matrix parentCanvasMatrix;
    public float[] preExistingTransform;
    public RectF rectIncludingShadow;
    public RenderNode renderNode;
    public RectF scaledBounds;
    public RectF scaledRectIncludingShadow;
    public Bitmap shadowBitmap;
    public Canvas shadowBitmapCanvas;
    public Rect shadowBitmapSrcRect;
    public BlurMaskFilter shadowBlurFilter;
    public Bitmap shadowMaskBitmap;
    public Canvas shadowMaskBitmapCanvas;
    public LPaint shadowPaint;
    public RenderNode shadowRenderNode;
    public RectF targetRect;
    public RectF tmpRect;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.airbnb.lottie.utils.OffscreenLayer$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy;

        static {
            int[] iArr = new int[RenderStrategy.values().length];
            $SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy = iArr;
            try {
                iArr[RenderStrategy.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy[RenderStrategy.SAVE_LAYER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy[RenderStrategy.BITMAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy[RenderStrategy.RENDER_NODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RenderStrategy {
        private static final /* synthetic */ RenderStrategy[] $VALUES;
        public static final RenderStrategy BITMAP;
        public static final RenderStrategy DIRECT;
        public static final RenderStrategy RENDER_NODE;
        public static final RenderStrategy SAVE_LAYER;

        static {
            RenderStrategy renderStrategy = new RenderStrategy("DIRECT", 0);
            DIRECT = renderStrategy;
            RenderStrategy renderStrategy2 = new RenderStrategy("SAVE_LAYER", 1);
            SAVE_LAYER = renderStrategy2;
            RenderStrategy renderStrategy3 = new RenderStrategy("BITMAP", 2);
            BITMAP = renderStrategy3;
            RenderStrategy renderStrategy4 = new RenderStrategy("RENDER_NODE", 3);
            RENDER_NODE = renderStrategy4;
            $VALUES = new RenderStrategy[]{renderStrategy, renderStrategy2, renderStrategy3, renderStrategy4};
        }

        public static RenderStrategy valueOf(String str) {
            return (RenderStrategy) Enum.valueOf(RenderStrategy.class, str);
        }

        public static RenderStrategy[] values() {
            return (RenderStrategy[]) $VALUES.clone();
        }
    }

    public static Bitmap allocateBitmap(RectF rectF, Bitmap.Config config) {
        return Bitmap.createBitmap(Math.max((int) Math.ceil(rectF.width() * 1.05d), 1), Math.max((int) Math.ceil(rectF.height() * 1.05d), 1), config);
    }

    public static boolean needNewBitmap(Bitmap bitmap, RectF rectF) {
        return bitmap == null || rectF.width() >= ((float) bitmap.getWidth()) || rectF.height() >= ((float) bitmap.getHeight()) || rectF.width() < ((float) bitmap.getWidth()) * 0.75f || rectF.height() < ((float) bitmap.getHeight()) * 0.75f;
    }

    public final RectF calculateRectIncludingShadow(RectF rectF, DropShadow dropShadow) {
        if (this.rectIncludingShadow == null) {
            this.rectIncludingShadow = new RectF();
        }
        if (this.tmpRect == null) {
            this.tmpRect = new RectF();
        }
        this.rectIncludingShadow.set(rectF);
        this.rectIncludingShadow.offsetTo(rectF.left + dropShadow.dx, rectF.top + dropShadow.dy);
        RectF rectF2 = this.rectIncludingShadow;
        float f = dropShadow.radius;
        rectF2.inset(-f, -f);
        this.tmpRect.set(rectF);
        this.rectIncludingShadow.union(this.tmpRect);
        return this.rectIncludingShadow;
    }

    public final void finish() {
        float f;
        LPaint lPaint;
        if (this.parentCanvas == null || this.op == null || this.preExistingTransform == null || this.targetRect == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("OffscreenBitmap: finish() call without matching start()");
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy[this.currentStrategy.ordinal()];
        if (i == 1) {
            this.parentCanvas.restore();
        } else if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    if (this.renderNode == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("RenderNode is not ready; should've been initialized at start() time");
                        return;
                    }
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 < 29) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("RenderNode not supported but we chose it as render strategy");
                        return;
                    }
                    this.parentCanvas.save();
                    Canvas canvas = this.parentCanvas;
                    float[] fArr = this.preExistingTransform;
                    canvas.scale(1.0f / fArr[0], 1.0f / fArr[4]);
                    this.renderNode.endRecording();
                    if (this.op.hasShadow()) {
                        Canvas canvas2 = this.parentCanvas;
                        DropShadow dropShadow = (DropShadow) this.op.array;
                        if (this.renderNode == null || this.shadowRenderNode == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot render to render node outside a start()/finish() block");
                            return;
                        }
                        if (i2 < 31) {
                            Gson$$ExternalSyntheticBUOutline0.m$1("RenderEffect is not supported on API level <31");
                            return;
                        }
                        float[] fArr2 = this.preExistingTransform;
                        float f2 = fArr2 != null ? fArr2[0] : 1.0f;
                        f = fArr2 != null ? fArr2[4] : 1.0f;
                        DropShadow dropShadow2 = this.lastRenderNodeShadow;
                        if (dropShadow2 == null || dropShadow.radius != dropShadow2.radius || dropShadow.dx != dropShadow2.dx || dropShadow.dy != dropShadow2.dy || dropShadow.color != dropShadow2.color) {
                            RenderEffect createColorFilterEffect = RenderEffect.createColorFilterEffect(new PorterDuffColorFilter(dropShadow.color, PorterDuff.Mode.SRC_IN));
                            float f3 = dropShadow.radius;
                            if (f3 > RecyclerView.DECELERATION_RATE) {
                                float f4 = ((f2 + f) * f3) / 2.0f;
                                createColorFilterEffect = RenderEffect.createBlurEffect(f4, f4, createColorFilterEffect, Shader.TileMode.CLAMP);
                            }
                            this.shadowRenderNode.setRenderEffect(createColorFilterEffect);
                            this.lastRenderNodeShadow = dropShadow;
                        }
                        RectF calculateRectIncludingShadow = calculateRectIncludingShadow(this.targetRect, dropShadow);
                        RectF rectF = new RectF(calculateRectIncludingShadow.left * f2, calculateRectIncludingShadow.top * f, calculateRectIncludingShadow.right * f2, calculateRectIncludingShadow.bottom * f);
                        this.shadowRenderNode.setPosition(0, 0, (int) rectF.width(), (int) rectF.height());
                        RecordingCanvas beginRecording = this.shadowRenderNode.beginRecording((int) rectF.width(), (int) rectF.height());
                        beginRecording.translate((dropShadow.dx * f2) + (-rectF.left), (dropShadow.dy * f) + (-rectF.top));
                        beginRecording.drawRenderNode(this.renderNode);
                        this.shadowRenderNode.endRecording();
                        canvas2.save();
                        canvas2.translate(rectF.left, rectF.top);
                        canvas2.drawRenderNode(this.shadowRenderNode);
                        canvas2.restore();
                    }
                    this.parentCanvas.drawRenderNode(this.renderNode);
                    this.parentCanvas.restore();
                }
            } else {
                if (this.bitmap == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Bitmap is not ready; should've been initialized at start() time");
                    return;
                }
                if (this.op.hasShadow()) {
                    Canvas canvas3 = this.parentCanvas;
                    DropShadow dropShadow3 = (DropShadow) this.op.array;
                    RectF rectF2 = this.targetRect;
                    if (rectF2 == null || this.bitmap == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot render to bitmap outside a start()/finish() block");
                        return;
                    }
                    RectF calculateRectIncludingShadow2 = calculateRectIncludingShadow(rectF2, dropShadow3);
                    Rect rect = this.intRectIncludingShadow;
                    if (rect == null) {
                        rect = new Rect();
                        this.intRectIncludingShadow = rect;
                    }
                    rect.set((int) Math.floor(calculateRectIncludingShadow2.left), (int) Math.floor(calculateRectIncludingShadow2.top), (int) Math.ceil(calculateRectIncludingShadow2.right), (int) Math.ceil(calculateRectIncludingShadow2.bottom));
                    float[] fArr3 = this.preExistingTransform;
                    float f5 = fArr3 != null ? fArr3[0] : 1.0f;
                    f = fArr3 != null ? fArr3[4] : 1.0f;
                    RectF rectF3 = this.scaledRectIncludingShadow;
                    if (rectF3 == null) {
                        rectF3 = new RectF();
                        this.scaledRectIncludingShadow = rectF3;
                    }
                    rectF3.set(calculateRectIncludingShadow2.left * f5, calculateRectIncludingShadow2.top * f, calculateRectIncludingShadow2.right * f5, calculateRectIncludingShadow2.bottom * f);
                    Rect rect2 = this.shadowBitmapSrcRect;
                    if (rect2 == null) {
                        rect2 = new Rect();
                        this.shadowBitmapSrcRect = rect2;
                    }
                    rect2.set(0, 0, Math.round(this.scaledRectIncludingShadow.width()), Math.round(this.scaledRectIncludingShadow.height()));
                    if (needNewBitmap(this.shadowBitmap, this.scaledRectIncludingShadow)) {
                        Bitmap bitmap = this.shadowBitmap;
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                        Bitmap bitmap2 = this.shadowMaskBitmap;
                        if (bitmap2 != null) {
                            bitmap2.recycle();
                        }
                        this.shadowBitmap = allocateBitmap(this.scaledRectIncludingShadow, Bitmap.Config.ARGB_8888);
                        this.shadowMaskBitmap = allocateBitmap(this.scaledRectIncludingShadow, Bitmap.Config.ALPHA_8);
                        this.shadowBitmapCanvas = new Canvas(this.shadowBitmap);
                        this.shadowMaskBitmapCanvas = new Canvas(this.shadowMaskBitmap);
                    } else {
                        Canvas canvas4 = this.shadowBitmapCanvas;
                        if (canvas4 == null || this.shadowMaskBitmapCanvas == null || (lPaint = this.clearPaint) == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("If needNewBitmap() returns true, we should have a canvas and bitmap ready");
                            return;
                        } else {
                            canvas4.drawRect(this.shadowBitmapSrcRect, lPaint);
                            this.shadowMaskBitmapCanvas.drawRect(this.shadowBitmapSrcRect, this.clearPaint);
                        }
                    }
                    if (this.shadowMaskBitmap == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Expected to have allocated a shadow mask bitmap");
                        return;
                    }
                    if (this.shadowPaint == null) {
                        this.shadowPaint = new LPaint(1, 0);
                    }
                    RectF rectF4 = this.targetRect;
                    this.shadowMaskBitmapCanvas.drawBitmap(this.bitmap, Math.round((rectF4.left - calculateRectIncludingShadow2.left) * f5), Math.round((rectF4.top - calculateRectIncludingShadow2.top) * f), (Paint) null);
                    if (this.shadowBlurFilter == null || this.lastShadowBlurRadius != dropShadow3.radius) {
                        float f6 = ((f5 + f) * dropShadow3.radius) / 2.0f;
                        if (f6 > RecyclerView.DECELERATION_RATE) {
                            this.shadowBlurFilter = new BlurMaskFilter(f6, BlurMaskFilter.Blur.NORMAL);
                        } else {
                            this.shadowBlurFilter = null;
                        }
                        this.lastShadowBlurRadius = dropShadow3.radius;
                    }
                    this.shadowPaint.setColor(dropShadow3.color);
                    float f7 = dropShadow3.radius;
                    LPaint lPaint2 = this.shadowPaint;
                    if (f7 > RecyclerView.DECELERATION_RATE) {
                        lPaint2.setMaskFilter(this.shadowBlurFilter);
                    } else {
                        lPaint2.setMaskFilter(null);
                    }
                    this.shadowPaint.setFilterBitmap(true);
                    this.shadowBitmapCanvas.drawBitmap(this.shadowMaskBitmap, Math.round(dropShadow3.dx * f5), Math.round(dropShadow3.dy * f), this.shadowPaint);
                    canvas3.drawBitmap(this.shadowBitmap, this.shadowBitmapSrcRect, this.intRectIncludingShadow, this.composePaint);
                }
                Rect rect3 = this.bitmapSrcRect;
                if (rect3 == null) {
                    rect3 = new Rect();
                    this.bitmapSrcRect = rect3;
                }
                rect3.set(0, 0, (int) (this.targetRect.width() * this.preExistingTransform[0]), (int) (this.targetRect.height() * this.preExistingTransform[4]));
                this.parentCanvas.drawBitmap(this.bitmap, this.bitmapSrcRect, this.targetRect, this.composePaint);
            }
        } else {
            this.parentCanvas.restore();
        }
        this.parentCanvas = null;
    }

    public final Canvas start(Canvas canvas, RectF rectF, PriorityQueue priorityQueue) {
        RenderStrategy renderStrategy;
        if (this.parentCanvas != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot nest start() calls on a single OffscreenBitmap - call finish() first");
            return null;
        }
        if (this.preExistingTransform == null) {
            this.preExistingTransform = new float[9];
        }
        Matrix matrix = this.parentCanvasMatrix;
        if (matrix == null) {
            matrix = new Matrix();
            this.parentCanvasMatrix = matrix;
        }
        canvas.getMatrix(matrix);
        this.parentCanvasMatrix.getValues(this.preExistingTransform);
        float[] fArr = this.preExistingTransform;
        float f = fArr[0];
        float f2 = fArr[4];
        RectF rectF2 = this.scaledBounds;
        if (rectF2 == null) {
            rectF2 = new RectF();
            this.scaledBounds = rectF2;
        }
        rectF2.set(rectF.left * f, rectF.top * f2, rectF.right * f, rectF.bottom * f2);
        this.parentCanvas = canvas;
        this.op = priorityQueue;
        if (priorityQueue.size >= 255 && !priorityQueue.hasShadow()) {
            renderStrategy = RenderStrategy.DIRECT;
        } else if (priorityQueue.hasShadow()) {
            int i = Build.VERSION.SDK_INT;
            renderStrategy = (i < 29 || !canvas.isHardwareAccelerated()) ? RenderStrategy.BITMAP : i <= 31 ? RenderStrategy.BITMAP : RenderStrategy.RENDER_NODE;
        } else {
            renderStrategy = RenderStrategy.SAVE_LAYER;
        }
        this.currentStrategy = renderStrategy;
        RectF rectF3 = this.targetRect;
        if (rectF3 == null) {
            rectF3 = new RectF();
            this.targetRect = rectF3;
        }
        rectF3.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        LPaint lPaint = this.composePaint;
        if (lPaint == null) {
            lPaint = new LPaint();
            this.composePaint = lPaint;
        }
        lPaint.reset();
        int i2 = AnonymousClass1.$SwitchMap$com$airbnb$lottie$utils$OffscreenLayer$RenderStrategy[this.currentStrategy.ordinal()];
        if (i2 == 1) {
            canvas.save();
            return canvas;
        }
        if (i2 == 2) {
            this.composePaint.setAlpha(priorityQueue.size);
            this.composePaint.setColorFilter(null);
            Utils.saveLayerCompat(canvas, rectF, this.composePaint);
            return canvas;
        }
        Matrix matrix2 = IDENTITY_MATRIX;
        if (i2 == 3) {
            if (this.clearPaint == null) {
                LPaint lPaint2 = new LPaint();
                this.clearPaint = lPaint2;
                lPaint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            if (needNewBitmap(this.bitmap, this.scaledBounds)) {
                Bitmap bitmap = this.bitmap;
                if (bitmap != null) {
                    bitmap.recycle();
                }
                this.bitmap = allocateBitmap(this.scaledBounds, Bitmap.Config.ARGB_8888);
                this.bitmapCanvas = new Canvas(this.bitmap);
            } else {
                Canvas canvas2 = this.bitmapCanvas;
                if (canvas2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("If needNewBitmap() returns true, we should have a canvas ready");
                    return null;
                }
                canvas2.setMatrix(matrix2);
                this.bitmapCanvas.drawRect(-1.0f, -1.0f, this.scaledBounds.width() + 1.0f, this.scaledBounds.height() + 1.0f, this.clearPaint);
            }
            ExceptionsKt.setBlendMode(this.composePaint, null);
            this.composePaint.setColorFilter(null);
            this.composePaint.setAlpha(priorityQueue.size);
            Canvas canvas3 = this.bitmapCanvas;
            canvas3.scale(f, f2);
            canvas3.translate(-rectF.left, -rectF.top);
            return canvas3;
        }
        if (i2 != 4) {
            Gson$$ExternalSyntheticBUOutline0.m$1("Invalid render strategy for OffscreenLayer");
            return null;
        }
        if (Build.VERSION.SDK_INT < 29) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("RenderNode not supported but we chose it as render strategy");
            return null;
        }
        if (this.renderNode == null) {
            this.renderNode = new RenderNode("OffscreenLayer.main");
        }
        if (priorityQueue.hasShadow() && this.shadowRenderNode == null) {
            this.shadowRenderNode = new RenderNode("OffscreenLayer.shadow");
            this.lastRenderNodeShadow = null;
        }
        this.renderNode.setAlpha(priorityQueue.size / 255.0f);
        if (priorityQueue.hasShadow()) {
            RenderNode renderNode = this.shadowRenderNode;
            if (renderNode == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Must initialize shadowRenderNode when we have shadow");
                return null;
            }
            renderNode.setAlpha(priorityQueue.size / 255.0f);
        }
        this.renderNode.setHasOverlappingRendering(true);
        RenderNode renderNode2 = this.renderNode;
        RectF rectF4 = this.scaledBounds;
        renderNode2.setPosition((int) rectF4.left, (int) rectF4.top, (int) rectF4.right, (int) rectF4.bottom);
        RecordingCanvas beginRecording = this.renderNode.beginRecording((int) this.scaledBounds.width(), (int) this.scaledBounds.height());
        beginRecording.setMatrix(matrix2);
        beginRecording.scale(f, f2);
        beginRecording.translate(-rectF.left, -rectF.top);
        return beginRecording;
    }
}
