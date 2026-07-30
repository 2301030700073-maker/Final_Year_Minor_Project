package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;

/* renamed from: yL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C4033yL extends C3974xL {

    /* renamed from: case, reason: not valid java name */
    public static boolean f16732case = true;

    /* renamed from: new, reason: not valid java name */
    public static boolean f16733new = true;

    /* renamed from: try, reason: not valid java name */
    public static boolean f16734try = true;

    /* renamed from: yL$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m8712do(View view, Matrix matrix) {
            view.setAnimationMatrix(matrix);
        }

        /* renamed from: for, reason: not valid java name */
        public static void m8713for(View view, Matrix matrix) {
            view.transformMatrixToLocal(matrix);
        }

        /* renamed from: if, reason: not valid java name */
        public static void m8714if(View view, Matrix matrix) {
            view.transformMatrixToGlobal(matrix);
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: case */
    public void mo176case(View view, Matrix matrix) {
        if (f16734try) {
            try {
                Cdo.m8714if(view, matrix);
            } catch (NoSuchMethodError unused) {
                f16734try = false;
            }
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: else */
    public void mo178else(View view, Matrix matrix) {
        if (f16732case) {
            try {
                Cdo.m8713for(view, matrix);
            } catch (NoSuchMethodError unused) {
                f16732case = false;
            }
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: try */
    public void mo181try(View view, Matrix matrix) {
        if (f16733new) {
            try {
                Cdo.m8712do(view, matrix);
            } catch (NoSuchMethodError unused) {
                f16733new = false;
            }
        }
    }
}
