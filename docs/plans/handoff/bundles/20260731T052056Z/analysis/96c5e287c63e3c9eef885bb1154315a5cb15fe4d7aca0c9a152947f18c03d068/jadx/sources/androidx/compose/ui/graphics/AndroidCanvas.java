package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Region;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidCanvas implements Canvas {
    public Rect dstRect;
    public android.graphics.Canvas internalCanvas = AndroidCanvas_androidKt.EmptyCanvas;
    public Rect srcRect;

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: clipPath-mtrdD-E, reason: not valid java name */
    public final void mo400clipPathmtrdDE(AndroidPath androidPath) {
        android.graphics.Canvas canvas = this.internalCanvas;
        if (androidPath instanceof AndroidPath) {
            canvas.clipPath(androidPath.internalPath, Region.Op.INTERSECT);
        } else {
            Gson$$ExternalSyntheticBUOutline0.m("Unable to obtain android.graphics.Path");
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: clipRect-N_I0leg, reason: not valid java name */
    public final void mo401clipRectN_I0leg(float f, float f2, float f3, float f4, int i) {
        this.internalCanvas.clipRect(f, f2, f3, f4, i == 0 ? Region.Op.DIFFERENCE : Region.Op.INTERSECT);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: clipRect-mtrdD-E, reason: not valid java name */
    public final void mo402clipRectmtrdDE(androidx.compose.ui.geometry.Rect rect) {
        mo401clipRectN_I0leg(rect.left, rect.top, rect.right, rect.bottom, 1);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: concat-58bKbWc, reason: not valid java name */
    public final void mo403concat58bKbWc(float[] fArr) {
        if (ColorKt.m440isIdentity58bKbWc(fArr)) {
            return;
        }
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        ColorKt.m442setFromEL8BTi8(matrix, fArr);
        this.internalCanvas.concat(matrix);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void disableZ() {
        ColorKt.enableZ(this.internalCanvas, false);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void drawArc(float f, float f2, float f3, float f4, float f5, float f6, AndroidPaint androidPaint) {
        this.internalCanvas.drawArc(f, f2, f3, f4, f5, f6, false, ColorKt.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawCircle-9KIMszo, reason: not valid java name */
    public final void mo404drawCircle9KIMszo(float f, long j, AndroidPaint androidPaint) {
        this.internalCanvas.drawCircle(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), f, ColorKt.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawImage-d-4ec7I, reason: not valid java name */
    public final void mo405drawImaged4ec7I(AndroidImageBitmap androidImageBitmap, long j, AndroidPaint androidPaint) {
        this.internalCanvas.drawBitmap(Api26Bitmap.asAndroidBitmap(androidImageBitmap), Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), ColorKt.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawImageRect-HPBpro0, reason: not valid java name */
    public final void mo406drawImageRectHPBpro0(AndroidImageBitmap androidImageBitmap, long j, long j2, long j3, AndroidPaint androidPaint) {
        if (this.srcRect == null) {
            this.srcRect = new Rect();
            this.dstRect = new Rect();
        }
        android.graphics.Canvas canvas = this.internalCanvas;
        Bitmap asAndroidBitmap = Api26Bitmap.asAndroidBitmap(androidImageBitmap);
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
        canvas.drawBitmap(asAndroidBitmap, rect, rect2, ColorKt.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawLine-Wko1d7g, reason: not valid java name */
    public final void mo407drawLineWko1d7g(long j, long j2, AndroidPaint androidPaint) {
        this.internalCanvas.drawLine(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)), ColorKt.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void drawPath(AndroidPath androidPath, AndroidPaint androidPaint) {
        android.graphics.Canvas canvas = this.internalCanvas;
        if (androidPath instanceof AndroidPath) {
            canvas.drawPath(androidPath.internalPath, ColorKt.getNativePaint(androidPaint));
        } else {
            Gson$$ExternalSyntheticBUOutline0.m("Unable to obtain android.graphics.Path");
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void drawRect(float f, float f2, float f3, float f4, AndroidPaint androidPaint) {
        this.internalCanvas.drawRect(f, f2, f3, f4, ColorKt.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void drawRoundRect(float f, float f2, float f3, float f4, float f5, float f6, AndroidPaint androidPaint) {
        this.internalCanvas.drawRoundRect(f, f2, f3, f4, f5, f6, ColorKt.getNativePaint(androidPaint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void enableZ() {
        ColorKt.enableZ(this.internalCanvas, true);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void restore() {
        this.internalCanvas.restore();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void rotate(float f) {
        this.internalCanvas.rotate(f);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void save() {
        this.internalCanvas.save();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void saveLayer(androidx.compose.ui.geometry.Rect rect, AndroidPaint androidPaint) {
        this.internalCanvas.saveLayer(rect.left, rect.top, rect.right, rect.bottom, ColorKt.getNativePaint(androidPaint), 31);
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
