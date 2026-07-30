package c.a.a.E0;

import android.view.animation.Interpolator;
import com.android.launcher3.Utilities;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Interpolator f1279a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f1280b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f1281c;

    public /* synthetic */ h(Interpolator interpolator, float f, float f2) {
        this.f1279a = interpolator;
        this.f1280b = f;
        this.f1281c = f2;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float mapRange;
        mapRange = Utilities.mapRange(this.f1279a.getInterpolation(f), this.f1280b, this.f1281c);
        return mapRange;
    }
}
