package defpackage;

import defpackage.LI;
import defpackage.Oz;

/* loaded from: classes.dex */
public final class G6 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3850vF f1131do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1132for;

    public G6(C3850vF c3850vF, int i) {
        this.f1131do = c3850vF;
        this.f1132for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Oz.Ctry ctry = ((LI.Cdo) this.f1131do).f1944do;
        if (ctry != null) {
            ctry.mo1731for(this.f1132for);
        }
    }
}
