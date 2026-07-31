package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Canvas {
    /* renamed from: clipPath-mtrdD-E */
    void mo210clipPathmtrdDE(AndroidPath androidPath);

    /* renamed from: clipRect-N_I0leg */
    void mo211clipRectN_I0leg(float f, float f2, float f3, float f4, int i);

    /* renamed from: clipRect-mtrdD-E */
    void mo212clipRectmtrdDE(Rect rect);

    /* renamed from: concat-58bKbWc */
    void mo213concat58bKbWc(float[] fArr);

    void disableZ();

    /* renamed from: drawCircle-9KIMszo */
    void mo214drawCircle9KIMszo(float f, long j, AndroidPaint androidPaint);

    /* renamed from: drawImageRect-HPBpro0 */
    void mo215drawImageRectHPBpro0(AndroidImageBitmap androidImageBitmap, long j, long j2, long j3, AndroidPaint androidPaint);

    /* renamed from: drawLine-Wko1d7g */
    void mo216drawLineWko1d7g(long j, long j2, AndroidPaint androidPaint);

    void drawPath(AndroidPath androidPath, AndroidPaint androidPaint);

    void drawRect(float f, float f2, float f3, float f4, AndroidPaint androidPaint);

    void drawRoundRect(float f, float f2, float f3, float f4, float f5, float f6, AndroidPaint androidPaint);

    void enableZ();

    void restore();

    void save();

    void saveLayer(Rect rect, AndroidPaint androidPaint);

    void scale(float f, float f2);

    void translate(float f, float f2);
}
