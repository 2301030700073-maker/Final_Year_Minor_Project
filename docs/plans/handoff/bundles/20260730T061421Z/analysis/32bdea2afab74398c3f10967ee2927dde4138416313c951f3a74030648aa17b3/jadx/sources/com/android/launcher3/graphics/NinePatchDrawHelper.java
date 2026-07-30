package com.android.launcher3.graphics;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* loaded from: classes.dex */
public class NinePatchDrawHelper {
    public final Rect mSrc = new Rect();
    public final RectF mDst = new RectF();
    public final Paint paint = new Paint(3);

    public void draw(Bitmap bitmap, Canvas canvas, float f, float f2, float f3) {
        int height = bitmap.getHeight();
        Rect rect = this.mSrc;
        rect.top = 0;
        rect.bottom = height;
        RectF rectF = this.mDst;
        rectF.top = f2;
        rectF.bottom = f2 + height;
        int width = bitmap.getWidth();
        int i = width / 2;
        float f4 = i;
        float f5 = f + f4;
        drawRegion(bitmap, canvas, 0, i, f, f5);
        float f6 = f3 - f4;
        drawRegion(bitmap, canvas, i, width, f6, f3);
        drawRegion(bitmap, canvas, i - 5, i + 5, f5, f6);
    }

    public final void drawRegion(Bitmap bitmap, Canvas canvas, int i, int i2, float f, float f2) {
        Rect rect = this.mSrc;
        rect.left = i;
        rect.right = i2;
        RectF rectF = this.mDst;
        rectF.left = f;
        rectF.right = f2;
        canvas.drawBitmap(bitmap, rect, rectF, this.paint);
    }
}
