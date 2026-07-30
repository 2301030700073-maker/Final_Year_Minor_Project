package defpackage;

/* loaded from: classes.dex */
public final class DL {

    /* renamed from: do, reason: not valid java name */
    public static final DL f596do;

    /* renamed from: case, reason: not valid java name */
    public final float f597case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float f598do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f599do;

    /* renamed from: else, reason: not valid java name */
    public final float f600else;

    /* renamed from: for, reason: not valid java name */
    public final float f601for;

    /* renamed from: goto, reason: not valid java name */
    public final float f602goto;

    /* renamed from: if, reason: not valid java name */
    public final float f603if;

    /* renamed from: new, reason: not valid java name */
    public final float f604new;

    /* renamed from: this, reason: not valid java name */
    public final float f605this;

    /* renamed from: try, reason: not valid java name */
    public final float f606try;

    static {
        float f;
        float f2;
        float[] fArr = O2.f2481do;
        float m1590super = (float) ((O2.m1590super() * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = O2.f2484do;
        float f3 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f4 = fArr3[0] * f3;
        float f5 = fArr[1];
        float f6 = (fArr3[1] * f5) + f4;
        float f7 = fArr[2];
        float f8 = (fArr3[2] * f7) + f6;
        float[] fArr4 = fArr2[1];
        float f9 = (fArr4[2] * f7) + (fArr4[1] * f5) + (fArr4[0] * f3);
        float[] fArr5 = fArr2[2];
        float f10 = (f7 * fArr5[2]) + (f5 * fArr5[1]) + (f3 * fArr5[0]);
        if (1.0f >= 0.9d) {
            f = 0.100000046f;
            f2 = 0.59f;
        } else {
            f = 0.12999998f;
            f2 = 0.525f;
        }
        float f11 = f + f2;
        float exp = (1.0f - (((float) Math.exp(((-m1590super) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d = exp;
        if (d > 1.0d) {
            exp = 1.0f;
        } else if (d < 0.0d) {
            exp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f8) * exp) + 1.0f) - exp, (((100.0f / f9) * exp) + 1.0f) - exp, (((100.0f / f10) * exp) + 1.0f) - exp};
        float f12 = 1.0f / ((5.0f * m1590super) + 1.0f);
        float f13 = f12 * f12 * f12 * f12;
        float f14 = 1.0f - f13;
        float cbrt = (0.1f * f14 * f14 * ((float) Math.cbrt(m1590super * 5.0d))) + (f13 * m1590super);
        float m1590super2 = O2.m1590super() / fArr[1];
        double d2 = m1590super2;
        float sqrt = ((float) Math.sqrt(d2)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d2, 0.2d));
        float pow2 = (float) Math.pow(((fArr6[2] * cbrt) * f10) / 100.0d, 0.42d);
        float[] fArr7 = {(float) Math.pow(((fArr6[0] * cbrt) * f8) / 100.0d, 0.42d), (float) Math.pow(((fArr6[1] * cbrt) * f9) / 100.0d, 0.42d), pow2};
        float f15 = fArr7[0];
        float f16 = fArr7[1];
        f596do = new DL(m1590super2, ((((400.0f * pow2) / (pow2 + 27.13f)) * 0.05f) + (((f15 * 400.0f) / (f15 + 27.13f)) * 2.0f) + ((f16 * 400.0f) / (f16 + 27.13f))) * pow, pow, pow, f11, 1.0f, fArr6, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }

    public DL(float f, float f2, float f3, float f4, float f5, float f6, float[] fArr, float f7, float f8, float f9) {
        this.f597case = f;
        this.f598do = f2;
        this.f603if = f3;
        this.f601for = f4;
        this.f604new = f5;
        this.f606try = f6;
        this.f599do = fArr;
        this.f600else = f7;
        this.f602goto = f8;
        this.f605this = f9;
    }
}
