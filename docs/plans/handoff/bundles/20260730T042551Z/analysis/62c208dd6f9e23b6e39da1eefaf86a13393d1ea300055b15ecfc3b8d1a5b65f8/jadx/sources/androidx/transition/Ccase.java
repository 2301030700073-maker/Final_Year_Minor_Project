package androidx.transition;

import android.animation.TypeEvaluator;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.os.Build;
import defpackage.Cpublic;

/* renamed from: androidx.transition.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase {

    /* renamed from: do, reason: not valid java name */
    public static final boolean f7932do;

    /* renamed from: androidx.transition.case$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static Bitmap m4661do(Picture picture) {
            Bitmap createBitmap;
            createBitmap = Bitmap.createBitmap(picture);
            return createBitmap;
        }
    }

    /* renamed from: androidx.transition.case$if, reason: invalid class name */
    public static class Cif implements TypeEvaluator<Matrix> {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final float[] f7934do = new float[9];

        /* renamed from: if, reason: not valid java name */
        public final float[] f7935if = new float[9];

        /* renamed from: do, reason: not valid java name */
        public final Matrix f7933do = new Matrix();

        @Override // android.animation.TypeEvaluator
        public final Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            float[] fArr = this.f7934do;
            matrix.getValues(fArr);
            float[] fArr2 = this.f7935if;
            matrix2.getValues(fArr2);
            for (int i = 0; i < 9; i++) {
                float f2 = fArr2[i];
                float f3 = fArr[i];
                fArr2[i] = Cpublic.m7823for(f2, f3, f, f3);
            }
            Matrix matrix3 = this.f7933do;
            matrix3.setValues(fArr2);
            return matrix3;
        }
    }

    static {
        f7932do = Build.VERSION.SDK_INT >= 28;
    }
}
