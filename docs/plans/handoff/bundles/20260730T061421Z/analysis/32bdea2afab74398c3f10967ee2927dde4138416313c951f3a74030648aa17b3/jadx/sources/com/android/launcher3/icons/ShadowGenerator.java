package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class ShadowGenerator {
    public final BlurMaskFilter mDefaultBlurMaskFilter;
    public final int mIconSize;
    public final Paint mBlurPaint = new Paint(3);
    public final Paint mDrawPaint = new Paint(3);

    public class Builder {
        public final int color;
        public float keyShadowDistance;
        public float radius;
        public float shadowBlur;
        public final RectF bounds = new RectF();
        public int ambientShadowAlpha = 30;
        public int keyShadowAlpha = 61;

        public Builder(int i) {
            this.color = i;
        }

        public Bitmap createPill(int i, int i2, float f) {
            this.radius = f;
            float f2 = i;
            float f3 = f2 / 2.0f;
            int max = Math.max(Math.round(this.shadowBlur + f3), Math.round(this.radius + this.shadowBlur + this.keyShadowDistance));
            float f4 = i2;
            this.bounds.set(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, f2, f4);
            float f5 = max;
            this.bounds.offsetTo(f5 - f3, f5 - (f4 / 2.0f));
            int i3 = max * 2;
            GraphicsUtils.noteNewBitmapCreated();
            Picture picture = new Picture();
            drawShadow(picture.beginRecording(i3, i3));
            picture.endRecording();
            return Bitmap.createBitmap(picture);
        }

        public void drawShadow(Canvas canvas) {
            Paint paint = new Paint(3);
            paint.setColor(this.color);
            paint.setShadowLayer(this.shadowBlur, RecentsState.NO_OFFSET, this.keyShadowDistance, GraphicsUtils.setColorAlphaBound(-16777216, this.keyShadowAlpha));
            RectF rectF = this.bounds;
            float f = this.radius;
            canvas.drawRoundRect(rectF, f, f, paint);
            paint.setShadowLayer(this.shadowBlur, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, GraphicsUtils.setColorAlphaBound(-16777216, this.ambientShadowAlpha));
            RectF rectF2 = this.bounds;
            float f2 = this.radius;
            canvas.drawRoundRect(rectF2, f2, f2, paint);
            if (Color.alpha(this.color) < 255) {
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                paint.clearShadowLayer();
                paint.setColor(-16777216);
                RectF rectF3 = this.bounds;
                float f3 = this.radius;
                canvas.drawRoundRect(rectF3, f3, f3, paint);
                paint.setXfermode(null);
                paint.setColor(this.color);
                RectF rectF4 = this.bounds;
                float f4 = this.radius;
                canvas.drawRoundRect(rectF4, f4, f4, paint);
            }
        }
    }

    public ShadowGenerator(int i) {
        this.mIconSize = i;
        this.mDefaultBlurMaskFilter = new BlurMaskFilter(this.mIconSize * 0.010416667f, BlurMaskFilter.Blur.NORMAL);
    }

    public synchronized void recreateIcon(Bitmap bitmap, Canvas canvas) {
        recreateIcon(bitmap, this.mDefaultBlurMaskFilter, 30, 61, canvas);
    }

    public synchronized void recreateIcon(Bitmap bitmap, BlurMaskFilter blurMaskFilter, int i, int i2, Canvas canvas) {
        this.mBlurPaint.setMaskFilter(blurMaskFilter);
        Bitmap extractAlpha = bitmap.extractAlpha(this.mBlurPaint, new int[2]);
        this.mDrawPaint.setAlpha(i);
        canvas.drawBitmap(extractAlpha, r0[0], r0[1], this.mDrawPaint);
        this.mDrawPaint.setAlpha(i2);
        canvas.drawBitmap(extractAlpha, r0[0], (this.mIconSize * 0.020833334f) + r0[1], this.mDrawPaint);
        this.mDrawPaint.setAlpha(255);
        canvas.drawBitmap(bitmap, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, this.mDrawPaint);
    }
}
