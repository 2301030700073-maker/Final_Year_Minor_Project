package defpackage;

import android.view.animation.Interpolator;

/* renamed from: nr, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractInterpolatorC3413nr implements Interpolator {

    /* renamed from: do, reason: not valid java name */
    public final float f14614do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f14615do;

    public AbstractInterpolatorC3413nr(float[] fArr) {
        this.f14615do = fArr;
        this.f14614do = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f14615do;
        int min = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.f14614do;
        float f3 = (f - (min * f2)) / f2;
        float f4 = fArr[min];
        return Cpublic.m7823for(fArr[min + 1], f4, f3, f4);
    }
}
