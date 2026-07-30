package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;

/* compiled from: Canvas.kt */
/* loaded from: classes.dex */
public interface Canvas {
    /* renamed from: clipPath-mtrdD-E */
    void mo1215clipPathmtrdDE(Path path, int i);

    /* renamed from: clipRect-N_I0leg */
    void mo1216clipRectN_I0leg(float f, float f2, float f3, float f4, int i);

    /* renamed from: clipRect-mtrdD-E */
    void mo1217clipRectmtrdDE(Rect rect, int i);

    /* renamed from: concat-58bKbWc */
    void mo1218concat58bKbWc(float[] fArr);

    void disableZ();

    void drawArc(float f, float f2, float f3, float f4, float f5, float f6, boolean z, Paint paint);

    /* renamed from: drawCircle-9KIMszo */
    void mo1219drawCircle9KIMszo(long j, float f, Paint paint);

    /* renamed from: drawImage-d-4ec7I */
    void mo1220drawImaged4ec7I(ImageBitmap imageBitmap, long j, Paint paint);

    /* renamed from: drawImageRect-HPBpro0 */
    void mo1221drawImageRectHPBpro0(ImageBitmap imageBitmap, long j, long j2, long j3, long j4, Paint paint);

    /* renamed from: drawLine-Wko1d7g */
    void mo1222drawLineWko1d7g(long j, long j2, Paint paint);

    void drawPath(Path path, Paint paint);

    void drawRect(float f, float f2, float f3, float f4, Paint paint);

    void drawRect(Rect rect, Paint paint);

    void drawRoundRect(float f, float f2, float f3, float f4, float f5, float f6, Paint paint);

    void enableZ();

    void restore();

    void rotate(float f);

    void save();

    void saveLayer(Rect rect, Paint paint);

    void scale(float f, float f2);

    void translate(float f, float f2);

    /* compiled from: Canvas.kt */
    /* renamed from: androidx.compose.ui.graphics.Canvas$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* renamed from: clipRect-mtrdD-E$default, reason: not valid java name */
        public static /* synthetic */ void m1293clipRectmtrdDE$default(Canvas canvas, Rect rect, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-mtrdD-E");
            }
            if ((i2 & 2) != 0) {
                i = ClipOp.Companion.m1297getIntersectrtfAjoo();
            }
            canvas.mo1217clipRectmtrdDE(rect, i);
        }

        /* renamed from: clipRect-N_I0leg$default, reason: not valid java name */
        public static /* synthetic */ void m1292clipRectN_I0leg$default(Canvas canvas, float f, float f2, float f3, float f4, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-N_I0leg");
            }
            if ((i2 & 16) != 0) {
                i = ClipOp.Companion.m1297getIntersectrtfAjoo();
            }
            canvas.mo1216clipRectN_I0leg(f, f2, f3, f4, i);
        }

        /* renamed from: clipPath-mtrdD-E$default, reason: not valid java name */
        public static /* synthetic */ void m1291clipPathmtrdDE$default(Canvas canvas, Path path, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E");
            }
            if ((i2 & 2) != 0) {
                i = ClipOp.Companion.m1297getIntersectrtfAjoo();
            }
            canvas.mo1215clipPathmtrdDE(path, i);
        }
    }
}
