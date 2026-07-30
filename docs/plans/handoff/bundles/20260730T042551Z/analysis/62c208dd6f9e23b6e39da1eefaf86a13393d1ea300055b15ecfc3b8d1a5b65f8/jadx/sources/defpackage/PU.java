package defpackage;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class PU {

    /* renamed from: do, reason: not valid java name */
    public long f2791do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ LU f2792do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PT f2793do;

    /* renamed from: if, reason: not valid java name */
    public long f2794if;

    public PU(LU lu) {
        this.f2792do = lu;
        this.f2793do = new PT(this, (TS) ((C3393nT) lu).f14527do, 2);
        long elapsedRealtime = lu.mo2257new().elapsedRealtime();
        this.f2791do = elapsedRealtime;
        this.f2794if = elapsedRealtime;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m1772do(long j, boolean z, boolean z2) {
        LU lu = this.f2792do;
        lu.mo1960catch();
        lu.m8474import();
        if (((TS) ((C3393nT) lu).f14527do).m2248break()) {
            lu.m7574this().f16753for.m8803if(lu.mo2257new().currentTimeMillis());
        }
        long j2 = j - this.f2791do;
        if (!z && j2 < 1000) {
            lu.mo2249case().f13723this.m7368for("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j2));
            return false;
        }
        if (!z2) {
            j2 = j - this.f2794if;
            this.f2794if = j;
        }
        lu.mo2249case().f13723this.m7368for("Recording user engagement, ms", Long.valueOf(j2));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j2);
        C3395nV.a(lu.m8799super().m6459static(!lu.m7572else().m3000finally()), bundle, true);
        if (!z2) {
            lu.m8798final().f("auto", "_e", bundle);
        }
        this.f2791do = j;
        PT pt = this.f2793do;
        pt.m450do();
        pt.m452if(C3684sQ.p.m2158do(null).longValue());
        return true;
    }
}
