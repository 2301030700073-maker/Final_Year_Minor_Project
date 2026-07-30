package defpackage;

import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class OE {

    /* renamed from: do, reason: not valid java name */
    public int f2602do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f2603do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC3457oc f2604do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f2606do = new int[10];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float[] f2605do = new float[10];

    /* renamed from: OE$break, reason: invalid class name */
    public static class Cbreak extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setRotationY(m1648do(f));
        }
    }

    /* renamed from: OE$case, reason: invalid class name */
    public static class Ccase extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setPivotY(m1648do(f));
        }
    }

    /* renamed from: OE$catch, reason: invalid class name */
    public static class Ccatch extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setScaleX(m1648do(f));
        }
    }

    /* renamed from: OE$class, reason: invalid class name */
    public static class Cclass extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setScaleY(m1648do(f));
        }
    }

    /* renamed from: OE$const, reason: invalid class name */
    public static class Cconst extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setTranslationX(m1648do(f));
        }
    }

    /* renamed from: OE$do, reason: invalid class name */
    public static class Cdo extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setAlpha(m1648do(f));
        }
    }

    /* renamed from: OE$else, reason: invalid class name */
    public static class Celse extends OE {

        /* renamed from: do, reason: not valid java name */
        public boolean f2607do = false;

        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).m3580extends(m1648do(f));
                return;
            }
            if (this.f2607do) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f2607do = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(m1648do(f)));
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
            }
        }
    }

    /* renamed from: OE$final, reason: invalid class name */
    public static class Cfinal extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setTranslationY(m1648do(f));
        }
    }

    /* renamed from: OE$for, reason: invalid class name */
    public static class Cfor extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setElevation(m1648do(f));
        }
    }

    /* renamed from: OE$goto, reason: invalid class name */
    public static class Cgoto extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setRotation(m1648do(f));
        }
    }

    /* renamed from: OE$if, reason: invalid class name */
    public static class Cif extends OE {

        /* renamed from: do, reason: not valid java name */
        public final SparseArray<C4044ya> f2608do;

        /* renamed from: if, reason: not valid java name */
        public float[] f2609if;

        public Cif(String str, SparseArray<C4044ya> sparseArray) {
            String str2 = str.split(",")[1];
            this.f2608do = sparseArray;
        }

        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            ((OE) this).f2604do.mo7286new(f, this.f2609if);
            this.f2608do.valueAt(0).m8752else(this.f2609if, view);
        }

        @Override // defpackage.OE
        /* renamed from: if */
        public final void mo1650if(float f, int i) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // defpackage.OE
        /* renamed from: new */
        public final void mo1651new(int i) {
            SparseArray<C4044ya> sparseArray = this.f2608do;
            int size = sparseArray.size();
            int m8756new = sparseArray.valueAt(0).m8756new();
            double[] dArr = new double[size];
            this.f2609if = new float[m8756new];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, m8756new);
            for (int i2 = 0; i2 < size; i2++) {
                int keyAt = sparseArray.keyAt(i2);
                C4044ya valueAt = sparseArray.valueAt(i2);
                dArr[i2] = keyAt * 0.01d;
                valueAt.m8753for(this.f2609if);
                int i3 = 0;
                while (true) {
                    if (i3 < this.f2609if.length) {
                        dArr2[i2][i3] = r7[i3];
                        i3++;
                    }
                }
            }
            ((OE) this).f2604do = AbstractC3457oc.m7714do(i, dArr, dArr2);
        }
    }

    /* renamed from: OE$new, reason: invalid class name */
    public static class Cnew extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
        }
    }

    /* renamed from: OE$super, reason: invalid class name */
    public static class Csuper extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setTranslationZ(m1648do(f));
        }
    }

    /* renamed from: OE$this, reason: invalid class name */
    public static class Cthis extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setRotationX(m1648do(f));
        }
    }

    /* renamed from: OE$try, reason: invalid class name */
    public static class Ctry extends OE {
        @Override // defpackage.OE
        /* renamed from: for */
        public final void mo1649for(View view, float f) {
            view.setPivotX(m1648do(f));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final float m1648do(float f) {
        return (float) this.f2604do.mo7285if(f);
    }

    /* renamed from: for, reason: not valid java name */
    public abstract void mo1649for(View view, float f);

    /* renamed from: if, reason: not valid java name */
    public void mo1650if(float f, int i) {
        int[] iArr = this.f2606do;
        if (iArr.length < this.f2602do + 1) {
            this.f2606do = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f2605do;
            this.f2605do = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f2606do;
        int i2 = this.f2602do;
        iArr2[i2] = i;
        this.f2605do[i2] = f;
        this.f2602do = i2 + 1;
    }

    /* renamed from: new, reason: not valid java name */
    public void mo1651new(int i) {
        int i2;
        int i3 = this.f2602do;
        if (i3 == 0) {
            return;
        }
        int[] iArr = this.f2606do;
        float[] fArr = this.f2605do;
        int[] iArr2 = new int[iArr.length + 10];
        iArr2[0] = i3 - 1;
        iArr2[1] = 0;
        int i4 = 2;
        while (i4 > 0) {
            int i5 = i4 - 1;
            int i6 = iArr2[i5];
            i4 = i5 - 1;
            int i7 = iArr2[i4];
            if (i6 < i7) {
                int i8 = iArr[i7];
                int i9 = i6;
                int i10 = i9;
                while (i9 < i7) {
                    int i11 = iArr[i9];
                    if (i11 <= i8) {
                        int i12 = iArr[i10];
                        iArr[i10] = i11;
                        iArr[i9] = i12;
                        float f = fArr[i10];
                        fArr[i10] = fArr[i9];
                        fArr[i9] = f;
                        i10++;
                    }
                    i9++;
                }
                int i13 = iArr[i10];
                iArr[i10] = iArr[i7];
                iArr[i7] = i13;
                float f2 = fArr[i10];
                fArr[i10] = fArr[i7];
                fArr[i7] = f2;
                int i14 = i4 + 1;
                iArr2[i4] = i10 - 1;
                int i15 = i14 + 1;
                iArr2[i14] = i6;
                int i16 = i15 + 1;
                iArr2[i15] = i7;
                i4 = i16 + 1;
                iArr2[i16] = i10 + 1;
            }
        }
        int i17 = 1;
        for (int i18 = 1; i18 < this.f2602do; i18++) {
            int[] iArr3 = this.f2606do;
            if (iArr3[i18 - 1] != iArr3[i18]) {
                i17++;
            }
        }
        double[] dArr = new double[i17];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i17, 1);
        int i19 = 0;
        while (i2 < this.f2602do) {
            if (i2 > 0) {
                int[] iArr4 = this.f2606do;
                i2 = iArr4[i2] == iArr4[i2 + (-1)] ? i2 + 1 : 0;
            }
            dArr[i19] = this.f2606do[i2] * 0.01d;
            dArr2[i19][0] = this.f2605do[i2];
            i19++;
        }
        this.f2604do = AbstractC3457oc.m7714do(i, dArr, dArr2);
    }

    public final String toString() {
        String str = this.f2603do;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f2602do; i++) {
            StringBuilder m6916goto = defpackage.Cif.m6916goto(str, "[");
            m6916goto.append(this.f2606do[i]);
            m6916goto.append(" , ");
            m6916goto.append(decimalFormat.format(this.f2605do[i]));
            m6916goto.append("] ");
            str = m6916goto.toString();
        }
        return str;
    }
}
