package defpackage;

/* renamed from: Ar, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0110Ar extends C3872vf {

    /* renamed from: do, reason: not valid java name */
    public final float f142do;

    public C0110Ar(float f) {
        this.f142do = f - 0.001f;
    }

    @Override // defpackage.C3872vf
    /* renamed from: if, reason: not valid java name */
    public final void mo103if(float f, float f2, float f3, C3730tD c3730tD) {
        double d = this.f142do;
        float sqrt = (float) ((Math.sqrt(2.0d) * d) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(d, 2.0d) - Math.pow(sqrt, 2.0d));
        c3730tD.m8229try(f2 - sqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + sqrt2, 270.0f, 0.0f);
        c3730tD.m8228new(f2, (float) (-((Math.sqrt(2.0d) * d) - d)));
        c3730tD.m8228new(f2 + sqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + sqrt2);
    }
}
