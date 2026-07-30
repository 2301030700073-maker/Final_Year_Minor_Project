package defpackage;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

/* renamed from: qn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3586qn extends Property<ImageView, Matrix> {

    /* renamed from: do, reason: not valid java name */
    public final Matrix f15157do;

    public C3586qn() {
        super(Matrix.class, "imageMatrixProperty");
        this.f15157do = new Matrix();
    }

    @Override // android.util.Property
    public final Matrix get(ImageView imageView) {
        Matrix matrix = this.f15157do;
        matrix.set(imageView.getImageMatrix());
        return matrix;
    }

    @Override // android.util.Property
    public final void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
