package defpackage;

/* loaded from: classes3.dex */
public final class NU implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f2391do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ LU f2392do;

    public NU(LU lu, long j) {
        this.f2391do = j;
        this.f2392do = lu;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LU lu = this.f2392do;
        lu.mo1960catch();
        lu.m1328return();
        C3156jS mo2249case = lu.mo2249case();
        long j = this.f2391do;
        mo2249case.f13723this.m7368for("Activity resumed, time", Long.valueOf(j));
        boolean m3012throws = lu.m7572else().m3012throws(null, C3684sQ.a0);
        PU pu = lu.f1956do;
        if (m3012throws) {
            if (lu.m7572else().m3000finally() || lu.f1959if) {
                pu.f2792do.mo1960catch();
                pu.f2793do.m450do();
                pu.f2791do = j;
                pu.f2794if = j;
            }
        } else if (lu.m7572else().m3000finally() || lu.m7574this().f16752for.m8289if()) {
            pu.f2792do.mo1960catch();
            pu.f2793do.m450do();
            pu.f2791do = j;
            pu.f2794if = j;
        }
        M1 m1 = lu.f1955do;
        LU lu2 = (LU) m1.f2078if;
        lu2.mo1960catch();
        OU ou = (OU) m1.f2077do;
        if (ou != null) {
            lu2.f1958do.removeCallbacks(ou);
        }
        lu2.m7574this().f16752for.m8288do(false);
        lu2.mo1960catch();
        lu2.f1959if = false;
        if (lu2.m7572else().m3012throws(null, C3684sQ.X) && lu2.m8798final().f16784new) {
            lu2.mo2249case().f13723this.m7369if("Retrying trigger URI registration in foreground");
            lu2.m8798final().b();
        }
        QU qu = lu.f1957do;
        qu.f2954do.mo1960catch();
        LU lu3 = qu.f2954do;
        if (((TS) ((C3393nT) lu3).f14527do).m2248break()) {
            qu.m1973if(lu3.mo2257new().currentTimeMillis(), false);
        }
    }
}
