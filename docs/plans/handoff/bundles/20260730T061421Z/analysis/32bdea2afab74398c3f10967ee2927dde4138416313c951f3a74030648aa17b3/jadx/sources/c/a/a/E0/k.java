package c.a.a.E0;

import android.view.animation.Interpolator;
import com.android.launcher3.anim.Interpolators;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float f1286a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f1287b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Interpolator f1288c;

    public /* synthetic */ k(float f, float f2, Interpolator interpolator) {
        this.f1286a = f;
        this.f1287b = f2;
        this.f1288c = interpolator;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return Interpolators.a(this.f1286a, this.f1287b, this.f1288c, f);
    }
}
