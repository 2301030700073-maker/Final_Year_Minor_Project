package defpackage;

import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;

/* renamed from: lH, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3263lH {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f14131do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f14132do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC3457oc f14133do;

    /* renamed from: if, reason: not valid java name */
    public int f14138if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f14130do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f14136do = new int[10];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[][] f14137do = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 10, 3);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f14135do = new float[3];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14134do = false;

    /* renamed from: do, reason: not valid java name */
    public float f14129do = Float.NaN;

    /* renamed from: lH$break, reason: invalid class name */
    public static class Cbreak extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            view.setScaleY(m7363if(f, j, view, c0174Dp));
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$case, reason: invalid class name */
    public static class Ccase extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            view.setRotation(m7363if(f, j, view, c0174Dp));
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$catch, reason: invalid class name */
    public static class Ccatch extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            view.setTranslationX(m7363if(f, j, view, c0174Dp));
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$class, reason: invalid class name */
    public static class Cclass extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            view.setTranslationY(m7363if(f, j, view, c0174Dp));
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$const, reason: invalid class name */
    public static class Cconst extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            view.setTranslationZ(m7363if(f, j, view, c0174Dp));
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$do, reason: invalid class name */
    public static class Cdo extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            view.setAlpha(m7363if(f, j, view, c0174Dp));
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$else, reason: invalid class name */
    public static class Celse extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            view.setRotationX(m7363if(f, j, view, c0174Dp));
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$for, reason: invalid class name */
    public static class Cfor extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            view.setElevation(m7363if(f, j, view, c0174Dp));
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$goto, reason: invalid class name */
    public static class Cgoto extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            view.setRotationY(m7363if(f, j, view, c0174Dp));
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$if, reason: invalid class name */
    public static class Cif extends AbstractC3263lH {

        /* renamed from: do, reason: not valid java name */
        public final SparseArray<C4044ya> f14139do;

        /* renamed from: for, reason: not valid java name */
        public float[] f14140for;

        /* renamed from: if, reason: not valid java name */
        public final SparseArray<float[]> f14141if = new SparseArray<>();

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public float[] f14142if;

        public Cif(String str, SparseArray<C4044ya> sparseArray) {
            String str2 = str.split(",")[1];
            this.f14139do = sparseArray;
        }

        @Override // defpackage.AbstractC3263lH
        /* renamed from: for */
        public final void mo7362for(float f, float f2, float f3, int i, int i2) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            ((AbstractC3263lH) this).f14133do.mo7286new(f, this.f14142if);
            float[] fArr = this.f14142if;
            float f2 = fArr[fArr.length - 2];
            float f3 = fArr[fArr.length - 1];
            float f4 = (float) (((((j - ((AbstractC3263lH) this).f14131do) * 1.0E-9d) * f2) + ((AbstractC3263lH) this).f14129do) % 1.0d);
            ((AbstractC3263lH) this).f14129do = f4;
            ((AbstractC3263lH) this).f14131do = j;
            float m7361do = m7361do(f4);
            ((AbstractC3263lH) this).f14134do = false;
            int i = 0;
            while (true) {
                float[] fArr2 = this.f14140for;
                if (i >= fArr2.length) {
                    break;
                }
                boolean z = ((AbstractC3263lH) this).f14134do;
                float f5 = this.f14142if[i];
                ((AbstractC3263lH) this).f14134do = z | (((double) f5) != 0.0d);
                fArr2[i] = (f5 * m7361do) + f3;
                i++;
            }
            this.f14139do.valueAt(0).m8752else(this.f14140for, view);
            if (f2 != 0.0f) {
                ((AbstractC3263lH) this).f14134do = true;
            }
            return ((AbstractC3263lH) this).f14134do;
        }

        @Override // defpackage.AbstractC3263lH
        /* renamed from: try */
        public final void mo7365try(int i) {
            SparseArray<C4044ya> sparseArray = this.f14139do;
            int size = sparseArray.size();
            int m8756new = sparseArray.valueAt(0).m8756new();
            double[] dArr = new double[size];
            int i2 = m8756new + 2;
            this.f14142if = new float[i2];
            this.f14140for = new float[m8756new];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i2);
            for (int i3 = 0; i3 < size; i3++) {
                int keyAt = sparseArray.keyAt(i3);
                C4044ya valueAt = sparseArray.valueAt(i3);
                float[] valueAt2 = this.f14141if.valueAt(i3);
                dArr[i3] = keyAt * 0.01d;
                valueAt.m8753for(this.f14142if);
                int i4 = 0;
                while (true) {
                    if (i4 < this.f14142if.length) {
                        dArr2[i3][i4] = r10[i4];
                        i4++;
                    }
                }
                double[] dArr3 = dArr2[i3];
                dArr3[m8756new] = valueAt2[0];
                dArr3[m8756new + 1] = valueAt2[1];
            }
            ((AbstractC3263lH) this).f14133do = AbstractC3457oc.m7714do(i, dArr, dArr2);
        }
    }

    /* renamed from: lH$new, reason: invalid class name */
    public static class Cnew extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$this, reason: invalid class name */
    public static class Cthis extends AbstractC3263lH {
        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            view.setScaleX(m7363if(f, j, view, c0174Dp));
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: lH$try, reason: invalid class name */
    public static class Ctry extends AbstractC3263lH {

        /* renamed from: if, reason: not valid java name */
        public boolean f14143if = false;

        @Override // defpackage.AbstractC3263lH
        /* renamed from: new */
        public final boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).m3580extends(m7363if(f, j, view, c0174Dp));
            } else {
                if (this.f14143if) {
                    return false;
                }
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.f14143if = true;
                    method = null;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(m7363if(f, j, view, c0174Dp)));
                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                    }
                }
            }
            return ((AbstractC3263lH) this).f14134do;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final float m7361do(float f) {
        float abs;
        switch (this.f14130do) {
            case 1:
                return Math.signum(f * 6.2831855f);
            case 2:
                abs = Math.abs(f);
                break;
            case 3:
                return (((f * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                abs = ((f * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f * 6.2831855f);
            case 6:
                float abs2 = 1.0f - Math.abs(((f * 4.0f) % 4.0f) - 2.0f);
                abs = abs2 * abs2;
                break;
            default:
                return (float) Math.sin(f * 6.2831855f);
        }
        return 1.0f - abs;
    }

    /* renamed from: for, reason: not valid java name */
    public void mo7362for(float f, float f2, float f3, int i, int i2) {
        int i3 = this.f14138if;
        this.f14136do[i3] = i;
        float[] fArr = this.f14137do[i3];
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f3;
        this.f14130do = Math.max(this.f14130do, i2);
        this.f14138if++;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float m7363if(float r19, long r20, android.view.View r22, defpackage.C0174Dp r23) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC3263lH.m7363if(float, long, android.view.View, Dp):float");
    }

    /* renamed from: new, reason: not valid java name */
    public abstract boolean mo7364new(float f, long j, View view, C0174Dp c0174Dp);

    public final String toString() {
        String str = this.f14132do;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f14138if; i++) {
            StringBuilder m6916goto = defpackage.Cif.m6916goto(str, "[");
            m6916goto.append(this.f14136do[i]);
            m6916goto.append(" , ");
            m6916goto.append(decimalFormat.format(this.f14137do[i]));
            m6916goto.append("] ");
            str = m6916goto.toString();
        }
        return str;
    }

    /* renamed from: try, reason: not valid java name */
    public void mo7365try(int i) {
        float[][] fArr;
        int i2 = this.f14138if;
        if (i2 == 0) {
            return;
        }
        int[] iArr = this.f14136do;
        int[] iArr2 = new int[iArr.length + 10];
        iArr2[0] = i2 - 1;
        iArr2[1] = 0;
        int i3 = 2;
        while (true) {
            fArr = this.f14137do;
            if (i3 <= 0) {
                break;
            }
            int i4 = i3 - 1;
            int i5 = iArr2[i4];
            i3 = i4 - 1;
            int i6 = iArr2[i3];
            if (i5 < i6) {
                int i7 = iArr[i6];
                int i8 = i5;
                int i9 = i8;
                while (i8 < i6) {
                    int i10 = iArr[i8];
                    if (i10 <= i7) {
                        int i11 = iArr[i9];
                        iArr[i9] = i10;
                        iArr[i8] = i11;
                        float[] fArr2 = fArr[i9];
                        fArr[i9] = fArr[i8];
                        fArr[i8] = fArr2;
                        i9++;
                    }
                    i8++;
                }
                int i12 = iArr[i9];
                iArr[i9] = iArr[i6];
                iArr[i6] = i12;
                float[] fArr3 = fArr[i9];
                fArr[i9] = fArr[i6];
                fArr[i6] = fArr3;
                int i13 = i3 + 1;
                iArr2[i3] = i9 - 1;
                int i14 = i13 + 1;
                iArr2[i13] = i5;
                int i15 = i14 + 1;
                iArr2[i14] = i6;
                i3 = i15 + 1;
                iArr2[i15] = i9 + 1;
            }
        }
        int i16 = 0;
        for (int i17 = 1; i17 < iArr.length; i17++) {
            if (iArr[i17] != iArr[i17 - 1]) {
                i16++;
            }
        }
        if (i16 == 0) {
            i16 = 1;
        }
        double[] dArr = new double[i16];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i16, 3);
        int i18 = 0;
        for (int i19 = 0; i19 < this.f14138if; i19++) {
            if (i19 <= 0 || iArr[i19] != iArr[i19 - 1]) {
                dArr[i18] = iArr[i19] * 0.01d;
                double[] dArr3 = dArr2[i18];
                float[] fArr4 = fArr[i19];
                dArr3[0] = fArr4[0];
                dArr3[1] = fArr4[1];
                dArr3[2] = fArr4[2];
                i18++;
            }
        }
        this.f14133do = AbstractC3457oc.m7714do(i, dArr, dArr2);
    }
}
