package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Canvas {
    /* renamed from: clipPath-mtrdD-E */
    void mo400clipPathmtrdDE(AndroidPath androidPath);

    /* renamed from: clipRect-N_I0leg */
    void mo401clipRectN_I0leg(float f, float f2, float f3, float f4, int i);

    /* renamed from: clipRect-mtrdD-E */
    void mo402clipRectmtrdDE(Rect rect);

    /* renamed from: concat-58bKbWc */
    void mo403concat58bKbWc(float[] fArr);

    void disableZ();

    void drawArc(float f, float f2, float f3, float f4, float f5, float f6, AndroidPaint androidPaint);

    /* renamed from: drawCircle-9KIMszo */
    void mo404drawCircle9KIMszo(float f, long j, AndroidPaint androidPaint);

    /* renamed from: drawImage-d-4ec7I */
    void mo405drawImaged4ec7I(AndroidImageBitmap androidImageBitmap, long j, AndroidPaint androidPaint);

    /* renamed from: drawImageRect-HPBpro0 */
    void mo406drawImageRectHPBpro0(AndroidImageBitmap androidImageBitmap, long j, long j2, long j3, AndroidPaint androidPaint);

    /* renamed from: drawLine-Wko1d7g */
    void mo407drawLineWko1d7g(long j, long j2, AndroidPaint androidPaint);

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
