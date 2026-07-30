package defpackage;

import android.graphics.Typeface;
import defpackage.LI;
import defpackage.Oz;

/* loaded from: classes.dex */
public final class F6 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Typeface f982do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3850vF f983do;

    public F6(C3850vF c3850vF, Typeface typeface) {
        this.f983do = c3850vF;
        this.f982do = typeface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Oz.Ctry ctry = ((LI.Cdo) this.f983do).f1944do;
        if (ctry != null) {
            ctry.mo1733new(this.f982do);
        }
    }
}
