package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.util.Log;
import android.view.ViewDebug;
import com.android.launcher3.icons.ShadowGenerator;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class DotRenderer {
    public final Bitmap mBackgroundWithShadow;
    public final float mBitmapOffset;
    public final Paint mCirclePaint = new Paint(3);
    public final float mCircleRadius;
    public final float[] mLeftDotPosition;
    public final float[] mRightDotPosition;

    public class DrawParams {

        @ViewDebug.ExportedProperty(category = "notification dot", formatToHexString = true)
        public int color;

        @ViewDebug.ExportedProperty(category = "notification dot")
        public Rect iconBounds = new Rect();

        @ViewDebug.ExportedProperty(category = "notification dot")
        public float scale;
    }

    public DotRenderer(int i, Path path, int i2) {
        int round = Math.round(i * 0.228f);
        ShadowGenerator.Builder builder = new ShadowGenerator.Builder(0);
        builder.ambientShadowAlpha = 88;
        float f = round;
        float f2 = f * 1.0f;
        builder.shadowBlur = f2 / 24.0f;
        builder.keyShadowDistance = f2 / 16.0f;
        this.mBackgroundWithShadow = builder.createPill(round, round, f / 2.0f);
        this.mCircleRadius = builder.radius;
        this.mBitmapOffset = (-r6.getHeight()) * 0.5f;
        float f3 = i2;
        this.mLeftDotPosition = getPathPoint(path, f3, -1.0f);
        this.mRightDotPosition = getPathPoint(path, f3, 1.0f);
    }

    public static float[] getPathPoint(Path path, float f, float f2) {
        float f3 = f / 2.0f;
        float f4 = (f2 * f3) + f3;
        Path path2 = new Path();
        path2.moveTo(f3, f3);
        path2.lineTo((f2 * 1.0f) + f4, RecentsState.NO_OFFSET);
        path2.lineTo(f4, -1.0f);
        path2.close();
        path2.op(path, Path.Op.INTERSECT);
        float[] fArr = new float[2];
        new PathMeasure(path2, false).getPosTan(RecentsState.NO_OFFSET, fArr, null);
        fArr[0] = fArr[0] / f;
        fArr[1] = fArr[1] / f;
        return fArr;
    }

    public void draw(Canvas canvas, DrawParams drawParams) {
        if (drawParams == null) {
            Log.e("DotRenderer", "Invalid null argument(s) passed in call to draw.");
            return;
        }
        canvas.save();
        Rect rect = drawParams.iconBounds;
        float[] fArr = this.mRightDotPosition;
        float width = (rect.width() * fArr[0]) + rect.left;
        float height = (rect.height() * fArr[1]) + rect.top;
        Rect clipBounds = canvas.getClipBounds();
        canvas.translate(width + Math.min(RecentsState.NO_OFFSET, clipBounds.right - (width - this.mBitmapOffset)), height + Math.max(RecentsState.NO_OFFSET, clipBounds.top - (this.mBitmapOffset + height)));
        float f = drawParams.scale;
        canvas.scale(f, f);
        this.mCirclePaint.setColor(-16777216);
        Bitmap bitmap = this.mBackgroundWithShadow;
        float f2 = this.mBitmapOffset;
        canvas.drawBitmap(bitmap, f2, f2, this.mCirclePaint);
        this.mCirclePaint.setColor(drawParams.color);
        canvas.drawCircle(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, this.mCircleRadius, this.mCirclePaint);
        canvas.restore();
    }
}
