package defpackage;

import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;

/* renamed from: sn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3703sn {

    /* renamed from: do, reason: not valid java name */
    public static boolean f15515do = true;

    /* renamed from: sn$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m8138do(ImageView imageView, Matrix matrix) {
            imageView.animateTransform(matrix);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8137do(ImageView imageView, Matrix matrix) {
        if (Build.VERSION.SDK_INT >= 29) {
            Cdo.m8138do(imageView, matrix);
            return;
        }
        if (matrix == null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable != null) {
                drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
                imageView.invalidate();
                return;
            }
            return;
        }
        if (f15515do) {
            try {
                Cdo.m8138do(imageView, matrix);
            } catch (NoSuchMethodError unused) {
                f15515do = false;
            }
        }
    }
}
