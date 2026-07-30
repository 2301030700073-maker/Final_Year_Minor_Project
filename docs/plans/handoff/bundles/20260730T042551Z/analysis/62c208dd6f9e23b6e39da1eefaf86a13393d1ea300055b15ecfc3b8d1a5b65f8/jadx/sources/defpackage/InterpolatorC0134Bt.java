package defpackage;

import android.view.animation.Interpolator;

/* renamed from: Bt, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class InterpolatorC0134Bt implements Interpolator {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3754tf f292do;

    public InterpolatorC0134Bt(C3754tf c3754tf) {
        this.f292do = c3754tf;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return (float) this.f292do.mo8291do(f);
    }
}
