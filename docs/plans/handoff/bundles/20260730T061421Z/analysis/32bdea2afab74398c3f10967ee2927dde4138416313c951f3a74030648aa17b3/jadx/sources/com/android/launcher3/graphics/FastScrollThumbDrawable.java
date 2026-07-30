package com.android.launcher3.graphics;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class FastScrollThumbDrawable extends Drawable {
    public static final Matrix sMatrix = new Matrix();
    public final boolean mIsRtl;
    public final Paint mPaint;
    public final Path mPath = new Path();

    public FastScrollThumbDrawable(Paint paint, boolean z) {
        this.mPaint = paint;
        this.mIsRtl = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawPath(this.mPath, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.mPath.isConvex()) {
            outline.setConvexPath(this.mPath);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.mPath.reset();
        float height = rect.height() * 0.5f;
        float f = 2.0f * height;
        float f2 = height / 5.0f;
        Path path = this.mPath;
        int i = rect.left;
        int i2 = rect.top;
        path.addRoundRect(i, i2, i + f, f + i2, new float[]{height, height, height, height, f2, f2, height, height}, Path.Direction.CCW);
        sMatrix.setRotate(-45.0f, rect.left + height, rect.top + height);
        if (this.mIsRtl) {
            sMatrix.postTranslate(rect.width(), RecentsState.NO_OFFSET);
            sMatrix.postScale(-1.0f, 1.0f, rect.width(), RecentsState.NO_OFFSET);
        }
        this.mPath.transform(sMatrix);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
