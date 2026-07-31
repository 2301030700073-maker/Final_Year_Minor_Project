package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.DropShadowKeyframeAnimation;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.OffscreenLayer;
import com.airbnb.lottie.utils.Utils;
import java.util.HashMap;
import okhttp3.Request;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImageLayer extends BaseLayer {
    public final DropShadowKeyframeAnimation dropShadowAnimation;
    public final Rect dst;
    public final RectF layerBounds;
    public final LottieImageAsset lottieImageAsset;
    public OffscreenLayer offscreenLayer;
    public PriorityQueue offscreenOp;
    public final LPaint paint;
    public final Rect src;

    public ImageLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.paint = new LPaint(3, 0);
        this.src = new Rect();
        this.dst = new Rect();
        this.layerBounds = new RectF();
        String str = layer.refId;
        LottieComposition lottieComposition = lottieDrawable.composition;
        this.lottieImageAsset = lottieComposition == null ? null : (LottieImageAsset) ((HashMap) lottieComposition.getImages()).get(str);
        Request.Builder builder = this.layerModel.dropShadowEffect;
        if (builder != null) {
            this.dropShadowAnimation = new DropShadowKeyframeAnimation(this, this, builder);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void drawLayer(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        Bitmap bitmap = getBitmap();
        if (bitmap == null || bitmap.isRecycled() || this.lottieImageAsset == null) {
            return;
        }
        float dpScale = Utils.dpScale();
        LPaint lPaint = this.paint;
        lPaint.setAlpha(i);
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation = this.dropShadowAnimation;
        if (dropShadowKeyframeAnimation != null) {
            dropShadow = dropShadowKeyframeAnimation.evaluate(matrix, i);
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Rect rect = this.src;
        rect.set(0, 0, width, height);
        this.lottieDrawable.getClass();
        Rect rect2 = this.dst;
        rect2.set(0, 0, (int) (bitmap.getWidth() * dpScale), (int) (bitmap.getHeight() * dpScale));
        boolean z = dropShadow != null;
        if (z) {
            if (this.offscreenLayer == null) {
                this.offscreenLayer = new OffscreenLayer();
            }
            PriorityQueue priorityQueue = this.offscreenOp;
            if (priorityQueue == null) {
                priorityQueue = new PriorityQueue(9, (byte) 0);
                this.offscreenOp = priorityQueue;
            }
            PriorityQueue priorityQueue2 = priorityQueue;
            priorityQueue.size = 255;
            priorityQueue.array = null;
            dropShadow.getClass();
            DropShadow dropShadow2 = new DropShadow(dropShadow);
            priorityQueue2.array = dropShadow2;
            dropShadow2.multiplyOpacity(i);
            float f = rect2.left;
            float f2 = rect2.top;
            float f3 = rect2.right;
            float f4 = rect2.bottom;
            RectF rectF = this.layerBounds;
            rectF.set(f, f2, f3, f4);
            matrix.mapRect(rectF);
            canvas = this.offscreenLayer.start(canvas, rectF, this.offscreenOp);
        }
        canvas.save();
        canvas.concat(matrix);
        canvas.drawBitmap(bitmap, rect, rect2, lPaint);
        if (z) {
            this.offscreenLayer.finish();
            if (this.offscreenLayer.currentStrategy == OffscreenLayer.RenderStrategy.RENDER_NODE) {
                return;
            }
        }
        canvas.restore();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        if (r4 == r2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
    
        if (r2 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        r1.imageAssetManager = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x013f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap getBitmap() {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.layer.ImageLayer.getBitmap():android.graphics.Bitmap");
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public final void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        if (this.lottieImageAsset != null) {
            float dpScale = Utils.dpScale();
            this.lottieDrawable.getClass();
            if (getBitmap() != null) {
                rectF.set(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, r0.getWidth() * dpScale, r0.getHeight() * dpScale);
            } else {
                rectF.set(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, r4.width * dpScale, r4.height * dpScale);
            }
            this.boundsMatrix.mapRect(rectF);
        }
    }
}
