package defpackage;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* loaded from: classes.dex */
public final class Bw {
    /* renamed from: do, reason: not valid java name */
    public static Interpolator m239do(float f, float f2) {
        return new PathInterpolator(f, f2);
    }

    /* renamed from: for, reason: not valid java name */
    public static Interpolator m240for(Path path) {
        return new PathInterpolator(path);
    }

    /* renamed from: if, reason: not valid java name */
    public static Interpolator m241if(float f, float f2, float f3, float f4) {
        return new PathInterpolator(f, f2, f3, f4);
    }
}
