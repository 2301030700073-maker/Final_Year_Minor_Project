package com.android.launcher3.icons;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import c.a.c.a.a;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class IconNormalizer {
    public final RectF mAdaptiveIconBounds;
    public float mAdaptiveIconScale;
    public final Bitmap mBitmap;
    public final Rect mBounds;
    public final Canvas mCanvas;
    public boolean mEnableShapeDetection;
    public final float[] mLeftBorder;
    public final Matrix mMatrix;
    public final int mMaxSize;
    public final Paint mPaintMaskShape;
    public final Paint mPaintMaskShapeOutline;
    public final byte[] mPixels;
    public final float[] mRightBorder;
    public final Path mShapePath;

    public IconNormalizer(Context context, int i, boolean z) {
        int i2 = i * 2;
        this.mMaxSize = i2;
        this.mBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ALPHA_8);
        this.mCanvas = new Canvas(this.mBitmap);
        int i3 = this.mMaxSize;
        this.mPixels = new byte[i3 * i3];
        this.mLeftBorder = new float[i3];
        this.mRightBorder = new float[i3];
        this.mBounds = new Rect();
        this.mAdaptiveIconBounds = new RectF();
        Paint paint = new Paint();
        this.mPaintMaskShape = paint;
        paint.setColor(-65536);
        this.mPaintMaskShape.setStyle(Paint.Style.FILL);
        this.mPaintMaskShape.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.XOR));
        Paint paint2 = new Paint();
        this.mPaintMaskShapeOutline = paint2;
        paint2.setStrokeWidth(context.getResources().getDisplayMetrics().density * 2.0f);
        this.mPaintMaskShapeOutline.setStyle(Paint.Style.STROKE);
        this.mPaintMaskShapeOutline.setColor(-16777216);
        this.mPaintMaskShapeOutline.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.mShapePath = new Path();
        this.mMatrix = new Matrix();
        this.mAdaptiveIconScale = RecentsState.NO_OFFSET;
        this.mEnableShapeDetection = z;
    }

    public static void convertToConvexArray(float[] fArr, int i, int i2, int i3) {
        float[] fArr2 = new float[fArr.length - 1];
        int i4 = -1;
        float f = Float.MAX_VALUE;
        for (int i5 = i2 + 1; i5 <= i3; i5++) {
            if (fArr[i5] > -1.0f) {
                if (f == Float.MAX_VALUE) {
                    i4 = i2;
                } else {
                    float f2 = ((fArr[i5] - fArr[i4]) / (i5 - i4)) - f;
                    float f3 = i;
                    if (f2 * f3 < RecentsState.NO_OFFSET) {
                        while (i4 > i2) {
                            i4--;
                            if ((((fArr[i5] - fArr[i4]) / (i5 - i4)) - fArr2[i4]) * f3 >= RecentsState.NO_OFFSET) {
                                break;
                            }
                        }
                    }
                }
                f = (fArr[i5] - fArr[i4]) / (i5 - i4);
                for (int i6 = i4; i6 < i5; i6++) {
                    fArr2[i6] = f;
                    fArr[i6] = ((i6 - i4) * f) + fArr[i4];
                }
                i4 = i5;
            }
        }
    }

    public static int getNormalizedCircleSize(int i) {
        return (int) Math.round(Math.sqrt((((i * i) * 0.6597222f) * 4.0f) / 3.141592653589793d));
    }

    public static float getScale(float f, float f2, float f3) {
        float f4 = f / f2;
        if (f / f3 > (f4 < 0.7853982f ? 0.6597222f : a.a(1.0f, f4, 0.040449437f, 0.6510417f))) {
            return (float) Math.sqrt(r4 / r3);
        }
        return 1.0f;
    }

    @TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
    public static float normalizeAdaptiveIcon(Drawable drawable, int i, RectF rectF) {
        Rect rect = new Rect(drawable.getBounds());
        drawable.setBounds(0, 0, i, i);
        Path iconMask = ((AdaptiveIconDrawable) drawable).getIconMask();
        Region region = new Region();
        region.setPath(iconMask, new Region(0, 0, i, i));
        Rect bounds = region.getBounds();
        int area = GraphicsUtils.getArea(region);
        if (rectF != null) {
            float f = i;
            rectF.set(bounds.left / f, bounds.top / f, 1.0f - (bounds.right / f), 1.0f - (bounds.bottom / f));
        }
        drawable.setBounds(rect);
        float f2 = area;
        return getScale(f2, f2, i * i);
    }

    public final boolean isShape(Path path) {
        Rect rect;
        if (Math.abs((this.mBounds.width() / this.mBounds.height()) - 1.0f) > 0.05f) {
            return false;
        }
        this.mMatrix.reset();
        this.mMatrix.setScale(this.mBounds.width(), this.mBounds.height());
        Matrix matrix = this.mMatrix;
        Rect rect2 = this.mBounds;
        matrix.postTranslate(rect2.left, rect2.top);
        path.transform(this.mMatrix, this.mShapePath);
        this.mCanvas.drawPath(this.mShapePath, this.mPaintMaskShape);
        this.mCanvas.drawPath(this.mShapePath, this.mPaintMaskShapeOutline);
        ByteBuffer wrap = ByteBuffer.wrap(this.mPixels);
        wrap.rewind();
        this.mBitmap.copyPixelsToBuffer(wrap);
        Rect rect3 = this.mBounds;
        int i = rect3.top;
        int i2 = this.mMaxSize;
        int i3 = i * i2;
        int i4 = i2 - rect3.right;
        int i5 = 0;
        while (true) {
            rect = this.mBounds;
            if (i >= rect.bottom) {
                break;
            }
            int i6 = rect.left;
            int i7 = i3 + i6;
            while (i6 < this.mBounds.right) {
                if ((this.mPixels[i7] & 255) > 40) {
                    i5++;
                }
                i7++;
                i6++;
            }
            i3 = i7 + i4;
            i++;
        }
        return ((float) i5) / ((float) (this.mBounds.height() * rect.width())) < 0.005f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x0051, code lost:
    
        if (r4 <= r16.mMaxSize) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00dc A[Catch: all -> 0x014d, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000e, B:8:0x0014, B:10:0x0020, B:11:0x0025, B:15:0x0029, B:19:0x0036, B:21:0x003a, B:23:0x005d, B:27:0x008c, B:34:0x009b, B:37:0x00a2, B:41:0x00b3, B:43:0x00bc, B:50:0x00cd, B:52:0x00dc, B:56:0x00f3, B:57:0x00e7, B:60:0x00f6, B:62:0x0108, B:65:0x012c, B:67:0x0130, B:69:0x0133, B:70:0x013c, B:75:0x003e, B:77:0x004f, B:80:0x0057, B:82:0x005b, B:83:0x0053), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0108 A[Catch: all -> 0x014d, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000e, B:8:0x0014, B:10:0x0020, B:11:0x0025, B:15:0x0029, B:19:0x0036, B:21:0x003a, B:23:0x005d, B:27:0x008c, B:34:0x009b, B:37:0x00a2, B:41:0x00b3, B:43:0x00bc, B:50:0x00cd, B:52:0x00dc, B:56:0x00f3, B:57:0x00e7, B:60:0x00f6, B:62:0x0108, B:65:0x012c, B:67:0x0130, B:69:0x0133, B:70:0x013c, B:75:0x003e, B:77:0x004f, B:80:0x0057, B:82:0x005b, B:83:0x0053), top: B:3:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized float getScale(android.graphics.drawable.Drawable r17, android.graphics.RectF r18, android.graphics.Path r19, boolean[] r20) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.IconNormalizer.getScale(android.graphics.drawable.Drawable, android.graphics.RectF, android.graphics.Path, boolean[]):float");
    }
}
