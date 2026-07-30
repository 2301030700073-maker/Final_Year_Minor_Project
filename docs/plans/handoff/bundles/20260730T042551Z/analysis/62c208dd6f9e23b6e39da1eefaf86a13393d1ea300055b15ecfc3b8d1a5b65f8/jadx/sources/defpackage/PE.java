package defpackage;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import defpackage.C0821ce;

/* loaded from: classes.dex */
public final class PE extends AbstractC3519pf<PE> {

    /* renamed from: do, reason: not valid java name */
    public QE f2750do;

    /* renamed from: for, reason: not valid java name */
    public boolean f2751for;

    /* renamed from: try, reason: not valid java name */
    public float f2752try;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PE(Object obj) {
        super(obj);
        C0821ce.Cdo cdo = C0821ce.f8567do;
        this.f2750do = null;
        this.f2752try = Float.MAX_VALUE;
        this.f2751for = false;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1754for() {
        if (!(this.f2750do.f2886if > 0.0d)) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (((AbstractC3519pf) this).f14970if) {
            this.f2751for = true;
        }
    }
}
