package defpackage;

/* loaded from: classes3.dex */
public final class G5 extends C3872vf implements Cloneable {

    /* renamed from: case, reason: not valid java name */
    public float f1125case = -1.0f;

    /* renamed from: do, reason: not valid java name */
    public final float f1126do;

    /* renamed from: for, reason: not valid java name */
    public float f1127for;

    /* renamed from: if, reason: not valid java name */
    public final float f1128if;

    /* renamed from: new, reason: not valid java name */
    public float f1129new;

    /* renamed from: try, reason: not valid java name */
    public float f1130try;

    public G5(float f, float f2, float f3) {
        this.f1128if = f;
        this.f1126do = f2;
        if (f3 < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.f1129new = f3;
        this.f1130try = 0.0f;
    }

    @Override // defpackage.C3872vf
    /* renamed from: if */
    public final void mo103if(float f, float f2, float f3, C3730tD c3730tD) {
        float f4;
        float f5;
        float f6 = this.f1127for;
        if (f6 == 0.0f) {
            c3730tD.m8228new(f, 0.0f);
            return;
        }
        float f7 = this.f1128if;
        float f8 = ((f7 * 2.0f) + f6) / 2.0f;
        float f9 = f3 * this.f1126do;
        float f10 = f2 + this.f1130try;
        float m7823for = Cpublic.m7823for(1.0f, f3, f8, this.f1129new * f3);
        if (m7823for / f8 >= 1.0f) {
            c3730tD.m8228new(f, 0.0f);
            return;
        }
        float f11 = this.f1125case;
        float f12 = f11 * f3;
        boolean z = f11 == -1.0f || Math.abs((f11 * 2.0f) - f6) < 0.1f;
        if (z) {
            f4 = 0.0f;
            f5 = m7823for;
        } else {
            f4 = 1.75f;
            f5 = 0.0f;
        }
        float f13 = f8 + f9;
        float f14 = f5 + f9;
        float sqrt = (float) Math.sqrt((f13 * f13) - (f14 * f14));
        float f15 = f10 - sqrt;
        float f16 = f10 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f14));
        float f17 = (90.0f - degrees) + f4;
        c3730tD.m8228new(f15, 0.0f);
        float f18 = f9 * 2.0f;
        c3730tD.m8225do(f15 - f9, 0.0f, f15 + f9, f18, 270.0f, degrees);
        if (z) {
            c3730tD.m8225do(f10 - f8, (-f8) - f5, f10 + f8, f8 - f5, 180.0f - f17, (f17 * 2.0f) - 180.0f);
        } else {
            float f19 = (f12 * 2.0f) + f7;
            float f20 = f10 - f8;
            float f21 = f12 + f7;
            float f22 = -f21;
            c3730tD.m8225do(f20, f22, f20 + f19, f21, 180.0f - f17, ((f17 * 2.0f) - 180.0f) / 2.0f);
            float f23 = f10 + f8;
            c3730tD.m8228new(f23 - ((f7 / 2.0f) + f12), f21);
            c3730tD.m8225do(f23 - f19, f22, f23, f21, 90.0f, f17 - 90.0f);
        }
        c3730tD.m8225do(f16 - f9, 0.0f, f16 + f9, f18, 270.0f - degrees, degrees);
        c3730tD.m8228new(f, 0.0f);
    }
}
