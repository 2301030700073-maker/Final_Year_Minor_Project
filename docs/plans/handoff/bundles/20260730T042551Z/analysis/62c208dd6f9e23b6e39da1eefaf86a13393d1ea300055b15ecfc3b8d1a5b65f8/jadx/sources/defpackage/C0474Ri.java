package defpackage;

import android.animation.TypeEvaluator;

/* renamed from: Ri, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0474Ri implements TypeEvaluator<float[]> {

    /* renamed from: do, reason: not valid java name */
    public final float[] f3220do;

    public C0474Ri(float[] fArr) {
        this.f3220do = fArr;
    }

    @Override // android.animation.TypeEvaluator
    public final float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = fArr;
        float[] fArr4 = fArr2;
        float[] fArr5 = this.f3220do;
        if (fArr5 == null) {
            fArr5 = new float[fArr3.length];
        }
        for (int i = 0; i < fArr5.length; i++) {
            float f2 = fArr3[i];
            fArr5[i] = Cpublic.m7823for(fArr4[i], f2, f, f2);
        }
        return fArr5;
    }
}
