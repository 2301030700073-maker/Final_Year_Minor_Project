package defpackage;

/* loaded from: classes3.dex */
public final class LT implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f1952do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AbstractC3863vS f1953do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1954for;

    public /* synthetic */ LT(AbstractC3863vS abstractC3863vS, long j, int i) {
        this.f1954for = i;
        this.f1952do = j;
        this.f1953do = abstractC3863vS;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j = this.f1952do;
        int i = this.f1954for;
        AbstractC3863vS abstractC3863vS = this.f1953do;
        switch (i) {
            case 0:
                C4041yT c4041yT = (C4041yT) abstractC3863vS;
                c4041yT.m7574this().f16760if.m8803if(j);
                C3156jS mo2249case = c4041yT.mo2249case();
                mo2249case.f13720goto.m7368for("Session timeout duration set", Long.valueOf(j));
                break;
            case 1:
                C2638dU c2638dU = (C2638dU) abstractC3863vS;
                ((TS) ((C3393nT) c2638dU).f14527do).m2252const().m3128import(j);
                c2638dU.f12496for = null;
                break;
            default:
                LU lu = (LU) abstractC3863vS;
                lu.mo1960catch();
                lu.m1328return();
                C3156jS mo2249case2 = lu.mo2249case();
                mo2249case2.f13723this.m7368for("Activity paused, time", Long.valueOf(j));
                M1 m1 = lu.f1955do;
                LU lu2 = (LU) m1.f2078if;
                OU ou = new OU(m1, lu2.mo2257new().currentTimeMillis(), j);
                m1.f2077do = ou;
                lu2.f1958do.postDelayed(ou, 2000L);
                if (lu.m7572else().m3000finally()) {
                    lu.f1956do.f2793do.m450do();
                    break;
                }
                break;
        }
    }
}
