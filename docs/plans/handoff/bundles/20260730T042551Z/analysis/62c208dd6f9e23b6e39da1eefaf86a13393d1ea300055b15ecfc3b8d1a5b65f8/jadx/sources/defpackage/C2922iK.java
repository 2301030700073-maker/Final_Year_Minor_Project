package defpackage;

/* renamed from: iK, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2922iK {

    /* renamed from: case, reason: not valid java name */
    public float f13458case;

    /* renamed from: do, reason: not valid java name */
    public float f13459do;

    /* renamed from: for, reason: not valid java name */
    public float f13460for;

    /* renamed from: if, reason: not valid java name */
    public float f13461if;

    /* renamed from: new, reason: not valid java name */
    public float f13462new;

    /* renamed from: try, reason: not valid java name */
    public float f13463try;

    /* renamed from: do, reason: not valid java name */
    public final void m6892do(float f, float f2, int i, int i2, float[] fArr) {
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = (f2 - 0.5f) * 2.0f;
        float f6 = f3 + this.f13460for;
        float f7 = f4 + this.f13462new;
        float f8 = (this.f13459do * (f - 0.5f) * 2.0f) + f6;
        float f9 = (this.f13461if * f5) + f7;
        float radians = (float) Math.toRadians(this.f13458case);
        float radians2 = (float) Math.toRadians(this.f13463try);
        double d = radians;
        double d2 = i2 * f5;
        float sin = (((float) ((Math.sin(d) * ((-i) * r7)) - (Math.cos(d) * d2))) * radians2) + f8;
        float cos = (radians2 * ((float) ((Math.cos(d) * (i * r7)) - (Math.sin(d) * d2)))) + f9;
        fArr[0] = sin;
        fArr[1] = cos;
    }
}
