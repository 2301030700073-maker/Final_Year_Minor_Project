package androidx.compose.ui.graphics;

import android.graphics.Path;
import android.graphics.RectF;
import androidx.compose.ui.geometry.Rect;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidPath {
    public final Path internalPath;
    public android.graphics.Matrix mMatrix;
    public float[] radii;
    public RectF rectF;

    public AndroidPath(Path path) {
        this.internalPath = path;
    }

    public final Rect getBounds() {
        if (this.rectF == null) {
            this.rectF = new RectF();
        }
        RectF rectF = this.rectF;
        rectF.getClass();
        this.internalPath.computeBounds(rectF, true);
        return new Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public final void lineTo(float f, float f2) {
        this.internalPath.lineTo(f, f2);
    }

    /* renamed from: op-N5in7k0, reason: not valid java name */
    public final boolean m469opN5in7k0(AndroidPath androidPath, AndroidPath androidPath2, int i) {
        Path.Op op = i == 0 ? Path.Op.DIFFERENCE : i == 1 ? Path.Op.INTERSECT : i == 4 ? Path.Op.REVERSE_DIFFERENCE : i == 2 ? Path.Op.UNION : Path.Op.XOR;
        if (!(androidPath instanceof AndroidPath)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Unable to obtain android.graphics.Path");
            return false;
        }
        Path path = androidPath.internalPath;
        if (androidPath2 instanceof AndroidPath) {
            return this.internalPath.op(path, androidPath2.internalPath, op);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Unable to obtain android.graphics.Path");
        return false;
    }

    public final void reset() {
        this.internalPath.reset();
    }

    /* renamed from: setFillType-oQ8Xj4U, reason: not valid java name */
    public final void m470setFillTypeoQ8Xj4U(int i) {
        this.internalPath.setFillType(i == 1 ? Path.FillType.EVEN_ODD : Path.FillType.WINDING);
    }

    /* renamed from: translate-k-4lQ0M, reason: not valid java name */
    public final void m471translatek4lQ0M(long j) {
        android.graphics.Matrix matrix = this.mMatrix;
        if (matrix == null) {
            this.mMatrix = new android.graphics.Matrix();
        } else {
            matrix.reset();
        }
        android.graphics.Matrix matrix2 = this.mMatrix;
        matrix2.getClass();
        matrix2.setTranslate(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
        android.graphics.Matrix matrix3 = this.mMatrix;
        matrix3.getClass();
        this.internalPath.transform(matrix3);
    }
}
