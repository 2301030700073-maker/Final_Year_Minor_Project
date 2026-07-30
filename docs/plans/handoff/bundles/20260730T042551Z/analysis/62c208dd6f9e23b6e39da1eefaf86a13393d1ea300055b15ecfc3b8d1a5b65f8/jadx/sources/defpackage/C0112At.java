package defpackage;

import androidx.constraintlayout.widget.Cdo;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.LinkedHashMap;

/* renamed from: At, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0112At implements Comparable<C0112At> {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f144do = {"position", "x", "y", ViewHierarchyConstants.DIMENSION_WIDTH_KEY, ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, "pathRotate"};

    /* renamed from: case, reason: not valid java name */
    public float f145case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f146do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashMap<String, C4044ya> f147do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3754tf f148do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public double[] f149do;

    /* renamed from: else, reason: not valid java name */
    public float f150else;

    /* renamed from: for, reason: not valid java name */
    public float f151for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f152for;

    /* renamed from: if, reason: not valid java name */
    public float f153if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public double[] f154if;

    /* renamed from: new, reason: not valid java name */
    public float f155new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f156new;

    /* renamed from: try, reason: not valid java name */
    public float f157try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f158try;

    public C0112At() {
        this.f152for = 0;
        this.f150else = Float.NaN;
        this.f156new = -1;
        this.f147do = new LinkedHashMap<>();
        this.f158try = 0;
        this.f149do = new double[18];
        this.f154if = new double[18];
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m104case(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m105this(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            double d = dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f4 = f7;
            } else if (i2 == 2) {
                f6 = f7;
            } else if (i2 == 3) {
                f3 = f7;
            } else if (i2 == 4) {
                f5 = f7;
            }
        }
        float f8 = f4 - ((0.0f * f3) / 2.0f);
        float f9 = f6 - ((0.0f * f5) / 2.0f);
        fArr[0] = (((f3 * 1.0f) + f8) * f) + ((1.0f - f) * f8) + 0.0f;
        fArr[1] = (((f5 * 1.0f) + f9) * f2) + ((1.0f - f2) * f9) + 0.0f;
    }

    @Override // java.lang.Comparable
    public final int compareTo(C0112At c0112At) {
        return Float.compare(this.f153if, c0112At.f153if);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m106do(Cdo.C0033do c0033do) {
        this.f148do = C3754tf.m8290for(c0033do.f6351do.f6359do);
        Cdo.Cfor cfor = c0033do.f6351do;
        this.f156new = cfor.f6363if;
        this.f150else = cfor.f6362if;
        this.f152for = cfor.f6361for;
        float f = c0033do.f6353do.f6424if;
        for (String str : c0033do.f6355do.keySet()) {
            C4044ya c4044ya = c0033do.f6355do.get(str);
            if (c4044ya.f16796do != 5) {
                this.f147do.put(str, c4044ya);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m107goto(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f151for;
        float f2 = this.f155new;
        float f3 = this.f157try;
        float f4 = this.f145case;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        fArr[i] = (f3 / 2.0f) + f + 0.0f;
        fArr[i + 1] = (f4 / 2.0f) + f2 + 0.0f;
    }

    public C0112At(int i, int i2, C0306Jp c0306Jp, C0112At c0112At, C0112At c0112At2) {
        float f;
        int i3;
        this.f152for = 0;
        this.f150else = Float.NaN;
        this.f156new = -1;
        this.f147do = new LinkedHashMap<>();
        this.f158try = 0;
        this.f149do = new double[18];
        this.f154if = new double[18];
        int i4 = c0306Jp.f1691case;
        if (i4 == 1) {
            float f2 = ((AbstractC0130Bp) c0306Jp).f284do / 100.0f;
            this.f146do = f2;
            this.f152for = c0306Jp.f1699try;
            float f3 = Float.isNaN(c0306Jp.f1692do) ? f2 : c0306Jp.f1692do;
            float f4 = Float.isNaN(c0306Jp.f1694if) ? f2 : c0306Jp.f1694if;
            float f5 = c0112At2.f157try - c0112At.f157try;
            float f6 = c0112At2.f145case - c0112At.f145case;
            this.f153if = this.f146do;
            f2 = Float.isNaN(c0306Jp.f1693for) ? f2 : c0306Jp.f1693for;
            float f7 = c0112At.f151for;
            float f8 = c0112At.f157try;
            float f9 = c0112At.f155new;
            float f10 = c0112At.f145case;
            float f11 = ((c0112At2.f157try / 2.0f) + c0112At2.f151for) - ((f8 / 2.0f) + f7);
            float f12 = ((c0112At2.f145case / 2.0f) + c0112At2.f155new) - ((f10 / 2.0f) + f9);
            float f13 = f11 * f2;
            float f14 = (f5 * f3) / 2.0f;
            this.f151for = (int) ((f7 + f13) - f14);
            float f15 = f2 * f12;
            float f16 = (f6 * f4) / 2.0f;
            this.f155new = (int) ((f9 + f15) - f16);
            this.f157try = (int) (f8 + r8);
            this.f145case = (int) (f10 + r10);
            float f17 = Float.isNaN(c0306Jp.f1696new) ? 0.0f : c0306Jp.f1696new;
            this.f158try = 1;
            float f18 = (int) ((c0112At.f151for + f13) - f14);
            float f19 = (int) ((c0112At.f155new + f15) - f16);
            this.f151for = f18 + ((-f12) * f17);
            this.f155new = f19 + (f11 * f17);
            this.f148do = C3754tf.m8290for(c0306Jp.f1695if);
            this.f156new = c0306Jp.f1697new;
            return;
        }
        if (i4 != 2) {
            float f20 = ((AbstractC0130Bp) c0306Jp).f284do / 100.0f;
            this.f146do = f20;
            this.f152for = c0306Jp.f1699try;
            float f21 = Float.isNaN(c0306Jp.f1692do) ? f20 : c0306Jp.f1692do;
            float f22 = Float.isNaN(c0306Jp.f1694if) ? f20 : c0306Jp.f1694if;
            float f23 = c0112At2.f157try;
            float f24 = c0112At.f157try;
            float f25 = f23 - f24;
            float f26 = c0112At2.f145case;
            float f27 = c0112At.f145case;
            float f28 = f26 - f27;
            this.f153if = this.f146do;
            float f29 = c0112At.f151for;
            float f30 = c0112At.f155new;
            float f31 = ((f23 / 2.0f) + c0112At2.f151for) - ((f24 / 2.0f) + f29);
            float f32 = ((f26 / 2.0f) + c0112At2.f155new) - ((f27 / 2.0f) + f30);
            float f33 = (f25 * f21) / 2.0f;
            this.f151for = (int) (((f31 * f20) + f29) - f33);
            float f34 = (f32 * f20) + f30;
            float f35 = (f28 * f22) / 2.0f;
            this.f155new = (int) (f34 - f35);
            this.f157try = (int) (f24 + r12);
            this.f145case = (int) (f27 + r15);
            float f36 = Float.isNaN(c0306Jp.f1693for) ? f20 : c0306Jp.f1693for;
            float f37 = c0306Jp.f1690case;
            f37 = Float.isNaN(f37) ? 0.0f : f37;
            f20 = Float.isNaN(c0306Jp.f1696new) ? f20 : c0306Jp.f1696new;
            float f38 = c0306Jp.f1698try;
            if (Float.isNaN(f38)) {
                i3 = 2;
                f = 0.0f;
            } else {
                f = f38;
                i3 = 2;
            }
            this.f158try = i3;
            this.f151for = (int) (((f * f32) + ((f36 * f31) + c0112At.f151for)) - f33);
            this.f155new = (int) (((f32 * f20) + ((f31 * f37) + c0112At.f155new)) - f35);
            this.f148do = C3754tf.m8290for(c0306Jp.f1695if);
            this.f156new = c0306Jp.f1697new;
            return;
        }
        float f39 = ((AbstractC0130Bp) c0306Jp).f284do / 100.0f;
        this.f146do = f39;
        this.f152for = c0306Jp.f1699try;
        float f40 = Float.isNaN(c0306Jp.f1692do) ? f39 : c0306Jp.f1692do;
        float f41 = Float.isNaN(c0306Jp.f1694if) ? f39 : c0306Jp.f1694if;
        float f42 = c0112At2.f157try;
        float f43 = f42 - c0112At.f157try;
        float f44 = c0112At2.f145case;
        float f45 = f44 - c0112At.f145case;
        this.f153if = this.f146do;
        float f46 = c0112At.f151for;
        float f47 = c0112At.f155new;
        float f48 = (f42 / 2.0f) + c0112At2.f151for;
        float f49 = (f44 / 2.0f) + c0112At2.f155new;
        float f50 = f43 * f40;
        this.f151for = (int) ((((f48 - ((r8 / 2.0f) + f46)) * f39) + f46) - (f50 / 2.0f));
        float f51 = f45 * f41;
        this.f155new = (int) ((((f49 - ((r12 / 2.0f) + f47)) * f39) + f47) - (f51 / 2.0f));
        this.f157try = (int) (r8 + f50);
        this.f145case = (int) (r12 + f51);
        this.f158try = 3;
        if (!Float.isNaN(c0306Jp.f1693for)) {
            this.f151for = (int) (c0306Jp.f1693for * ((int) (i - this.f157try)));
        }
        if (!Float.isNaN(c0306Jp.f1696new)) {
            this.f155new = (int) (c0306Jp.f1696new * ((int) (i2 - this.f145case)));
        }
        this.f148do = C3754tf.m8290for(c0306Jp.f1695if);
        this.f156new = c0306Jp.f1697new;
    }
}
