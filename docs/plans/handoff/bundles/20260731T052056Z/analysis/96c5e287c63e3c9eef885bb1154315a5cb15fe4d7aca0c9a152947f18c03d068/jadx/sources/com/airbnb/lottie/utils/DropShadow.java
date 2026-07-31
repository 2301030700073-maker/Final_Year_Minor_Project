package com.airbnb.lottie.utils;

import android.graphics.Color;
import android.graphics.Matrix;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.animation.LPaint;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DropShadow {
    public int color;
    public float dx;
    public float dy;
    public float radius;
    public float[] vecs = null;

    public DropShadow(DropShadow dropShadow) {
        this.radius = RecyclerView.DECELERATION_RATE;
        this.dx = RecyclerView.DECELERATION_RATE;
        this.dy = RecyclerView.DECELERATION_RATE;
        this.color = 0;
        this.radius = dropShadow.radius;
        this.dx = dropShadow.dx;
        this.dy = dropShadow.dy;
        this.color = dropShadow.color;
    }

    public final void applyWithAlpha(int i, LPaint lPaint) {
        int alpha = Color.alpha(this.color);
        int clamp = MiscUtils.clamp(i);
        Matrix matrix = Utils.IDENTITY_MATRIX;
        int i2 = (int) ((((alpha / 255.0f) * clamp) / 255.0f) * 255.0f);
        if (i2 <= 0) {
            lPaint.clearShadowLayer();
        } else {
            lPaint.setShadowLayer(Math.max(this.radius, Float.MIN_VALUE), this.dx, this.dy, Color.argb(i2, Color.red(this.color), Color.green(this.color), Color.blue(this.color)));
        }
    }

    public final void multiplyOpacity(int i) {
        this.color = Color.argb(Math.round((MiscUtils.clamp(i) * Color.alpha(this.color)) / 255.0f), Color.red(this.color), Color.green(this.color), Color.blue(this.color));
    }

    public final void transformBy(Matrix matrix) {
        float[] fArr = this.vecs;
        if (fArr == null) {
            fArr = new float[2];
            this.vecs = fArr;
        }
        fArr[0] = this.dx;
        fArr[1] = this.dy;
        matrix.mapVectors(fArr);
        float[] fArr2 = this.vecs;
        this.dx = fArr2[0];
        this.dy = fArr2[1];
        this.radius = matrix.mapRadius(this.radius);
    }
}
