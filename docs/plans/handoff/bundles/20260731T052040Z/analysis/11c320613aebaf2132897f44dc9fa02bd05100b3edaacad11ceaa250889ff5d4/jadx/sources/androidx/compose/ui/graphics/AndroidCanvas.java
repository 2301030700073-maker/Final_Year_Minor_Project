package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.Region;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidCanvas implements Canvas {
    public Rect dstRect;
    public android.graphics.Canvas internalCanvas = AndroidCanvas_androidKt.EmptyCanvas;
    public Rect srcRect;

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: clipPath-mtrdD-E, reason: not valid java name */
    public final void mo210clipPathmtrdDE(AndroidPath androidPath) {
        android.graphics.Canvas canvas = this.internalCanvas;
        if (androidPath instanceof AndroidPath) {
            canvas.clipPath(androidPath.internalPath, Region.Op.INTERSECT);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Unable to obtain android.graphics.Path");
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: clipRect-N_I0leg, reason: not valid java name */
    public final void mo211clipRectN_I0leg(float f, float f2, float f3, float f4, int i) {
        this.internalCanvas.clipRect(f, f2, f3, f4, i == 0 ? Region.Op.DIFFERENCE : Region.Op.INTERSECT);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: clipRect-mtrdD-E, reason: not valid java name */
    public final void mo212clipRectmtrdDE(androidx.compose.ui.geometry.Rect rect) {
        mo211clipRectN_I0leg(rect.left, rect.top, rect.right, rect.bottom, 1);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: concat-58bKbWc, reason: not valid java name */
    public final void mo213concat58bKbWc(float[] fArr) {
        if (Brush.m229isIdentity58bKbWc(fArr)) {
            return;
        }
        Matrix matrix = new Matrix();
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[6];
        float f8 = fArr[7];
        float f9 = fArr[8];
        float f10 = fArr[12];
        float f11 = fArr[13];
        float f12 = fArr[15];
        fArr[0] = f;
        fArr[1] = f5;
        fArr[2] = f10;
        fArr[3] = f2;
        fArr[4] = f6;
        fArr[5] = f11;
        fArr[6] = f4;
        fArr[7] = f8;
        fArr[8] = f12;
        matrix.setValues(fArr);
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f3;
        fArr[3] = f4;
        fArr[4] = f5;
        fArr[5] = f6;
        fArr[6] = f7;
        fArr[7] = f8;
        fArr[8] = f9;
        this.internalCanvas.concat(matrix);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void disableZ() {
        Brush.enableZ(this.internalCanvas, false);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawCircle-9KIMszo, reason: not valid java name */
    public final void mo214drawCircle9KIMszo(float f, long j, AndroidPaint androidPaint) {
        this.internalCanvas.drawCircle(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), f, Brush.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawImageRect-HPBpro0, reason: not valid java name */
    public final void mo215drawImageRectHPBpro0(AndroidImageBitmap androidImageBitmap, long j, long j2, long j3, AndroidPaint androidPaint) {
        if (this.srcRect == null) {
            this.srcRect = new Rect();
            this.dstRect = new Rect();
        }
        android.graphics.Canvas canvas = this.internalCanvas;
        if (!(androidImageBitmap instanceof AndroidImageBitmap)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Unable to obtain android.graphics.Bitmap");
            return;
        }
        Bitmap bitmap = androidImageBitmap.bitmap;
        Rect rect = this.srcRect;
        rect.getClass();
        int i = (int) (j >> 32);
        rect.left = i;
        int i2 = (int) (j & 4294967295L);
        rect.top = i2;
        rect.right = i + ((int) (j2 >> 32));
        rect.bottom = i2 + ((int) (j2 & 4294967295L));
        Rect rect2 = this.dstRect;
        rect2.getClass();
        rect2.left = 0;
        rect2.top = 0;
        rect2.right = (int) (j3 >> 32);
        rect2.bottom = (int) (j3 & 4294967295L);
        canvas.drawBitmap(bitmap, rect, rect2, Brush.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawLine-Wko1d7g, reason: not valid java name */
    public final void mo216drawLineWko1d7g(long j, long j2, AndroidPaint androidPaint) {
        this.internalCanvas.drawLine(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)), Brush.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void drawPath(AndroidPath androidPath, AndroidPaint androidPaint) {
        android.graphics.Canvas canvas = this.internalCanvas;
        if (androidPath instanceof AndroidPath) {
            canvas.drawPath(androidPath.internalPath, Brush.getNativePaint(androidPaint));
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Unable to obtain android.graphics.Path");
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void drawRect(float f, float f2, float f3, float f4, AndroidPaint androidPaint) {
        this.internalCanvas.drawRect(f, f2, f3, f4, Brush.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void drawRoundRect(float f, float f2, float f3, float f4, float f5, float f6, AndroidPaint androidPaint) {
        this.internalCanvas.drawRoundRect(f, f2, f3, f4, f5, f6, Brush.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void enableZ() {
        Brush.enableZ(this.internalCanvas, true);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void restore() {
        this.internalCanvas.restore();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void save() {
        this.internalCanvas.save();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void saveLayer(androidx.compose.ui.geometry.Rect rect, AndroidPaint androidPaint) {
        this.internalCanvas.saveLayer(rect.left, rect.top, rect.right, rect.bottom, Brush.getNativePaint(androidPaint), 31);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void scale(float f, float f2) {
        this.internalCanvas.scale(f, f2);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void translate(float f, float f2) {
        this.internalCanvas.translate(f, f2);
    }
}
