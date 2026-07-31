package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Canvas {
    /* renamed from: clipPath-mtrdD-E */
    void mo453clipPathmtrdDE(AndroidPath androidPath);

    /* renamed from: clipRect-N_I0leg */
    void mo454clipRectN_I0leg(float f, float f2, float f3, float f4, int i);

    /* renamed from: clipRect-mtrdD-E */
    void mo455clipRectmtrdDE(Rect rect);

    /* renamed from: concat-58bKbWc */
    void mo456concat58bKbWc(float[] fArr);

    void disableZ();

    void drawArc(float f, float f2, float f3, float f4, float f5, float f6, AndroidPaint androidPaint);

    /* renamed from: drawCircle-9KIMszo */
    void mo457drawCircle9KIMszo(float f, long j, AndroidPaint androidPaint);

    /* renamed from: drawImage-d-4ec7I */
    void mo458drawImaged4ec7I(ImageBitmap imageBitmap, AndroidPaint androidPaint);

    /* renamed from: drawImageRect-HPBpro0 */
    void mo459drawImageRectHPBpro0(ImageBitmap imageBitmap, long j, long j2, long j3, AndroidPaint androidPaint);

    /* renamed from: drawLine-Wko1d7g */
    void mo460drawLineWko1d7g(long j, long j2, AndroidPaint androidPaint);

    void drawPath(AndroidPath androidPath, AndroidPaint androidPaint);

    void drawRect(float f, float f2, float f3, float f4, AndroidPaint androidPaint);

    void drawRoundRect(float f, float f2, float f3, float f4, float f5, float f6, AndroidPaint androidPaint);

    void enableZ();

    void restore();

    void rotate(float f);

    void save();

    void saveLayer(Rect rect, AndroidPaint androidPaint);

    void scale(float f, float f2);

    void translate(float f, float f2);
}
