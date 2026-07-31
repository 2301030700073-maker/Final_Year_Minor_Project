package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.utils.DropShadow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SolidLayer extends BaseLayer {
    public final Layer layerModel;
    public final LPaint paint;
    public final Path path;
    public final float[] points;
    public final RectF rect;

    public SolidLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.rect = new RectF();
        LPaint lPaint = new LPaint();
        this.paint = lPaint;
        this.points = new float[8];
        this.path = new Path();
        this.layerModel = layer;
        lPaint.setAlpha(0);
        lPaint.setStyle(Paint.Style.FILL);
        lPaint.setColor(layer.solidColor);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void drawLayer(Canvas canvas, Matrix matrix, int i, DropShadow dropShadow) {
        Layer layer = this.layerModel;
        int alpha = Color.alpha(layer.solidColor);
        if (alpha == 0) {
            return;
        }
        int i2 = layer.solidColor;
        LPaint lPaint = this.paint;
        lPaint.setColor(i2);
        int intValue = (int) ((((alpha / 255.0f) * (this.transform.opacity == null ? 100 : ((Integer) r2.getValue()).intValue())) / 100.0f) * (i / 255.0f) * 255.0f);
        lPaint.setAlpha(intValue);
        if (dropShadow == null) {
            lPaint.clearShadowLayer();
        } else if (Color.alpha(dropShadow.color) > 0) {
            lPaint.setShadowLayer(Math.max(dropShadow.radius, Float.MIN_VALUE), dropShadow.dx, dropShadow.dy, dropShadow.color);
        } else {
            lPaint.clearShadowLayer();
        }
        if (intValue > 0) {
            float[] fArr = this.points;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            float f = layer.solidWidth;
            fArr[2] = f;
            fArr[3] = 0.0f;
            fArr[4] = f;
            float f2 = layer.solidHeight;
            fArr[5] = f2;
            fArr[6] = 0.0f;
            fArr[7] = f2;
            matrix.mapPoints(fArr);
            Path path = this.path;
            path.reset();
            path.moveTo(fArr[0], fArr[1]);
            path.lineTo(fArr[2], fArr[3]);
            path.lineTo(fArr[4], fArr[5]);
            path.lineTo(fArr[6], fArr[7]);
            path.lineTo(fArr[0], fArr[1]);
            path.close();
            canvas.drawPath(path, lPaint);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public final void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        Layer layer = this.layerModel;
        float f = layer.solidWidth;
        float f2 = layer.solidHeight;
        RectF rectF2 = this.rect;
        rectF2.set(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, f, f2);
        this.boundsMatrix.mapRect(rectF2);
        rectF.set(rectF2);
    }
}
