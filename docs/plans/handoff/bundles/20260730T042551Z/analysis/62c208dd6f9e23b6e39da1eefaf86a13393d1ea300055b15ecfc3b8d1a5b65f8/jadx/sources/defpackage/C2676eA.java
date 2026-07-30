package defpackage;

import android.animation.TimeInterpolator;
import android.view.animation.Interpolator;

/* renamed from: eA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2676eA implements TimeInterpolator {

    /* renamed from: do, reason: not valid java name */
    public final TimeInterpolator f12596do;

    public C2676eA(Interpolator interpolator) {
        this.f12596do = interpolator;
    }

    /* renamed from: do, reason: not valid java name */
    public static TimeInterpolator m6516do(boolean z, Interpolator interpolator) {
        return z ? interpolator : new C2676eA(interpolator);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return 1.0f - this.f12596do.getInterpolation(f);
    }
}
