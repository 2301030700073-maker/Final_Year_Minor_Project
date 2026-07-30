package defpackage;

/* renamed from: bi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0766bi {

    /* renamed from: do, reason: not valid java name */
    public final C0445Qb f8440do;

    public C0766bi(C0445Qb c0445Qb) {
        this.f8440do = c0445Qb;
    }

    /* renamed from: do, reason: not valid java name */
    public static C0766bi m4854do() {
        C0766bi c0766bi = (C0766bi) C0706ai.m3146for().m3149if(C0766bi.class);
        if (c0766bi != null) {
            return c0766bi;
        }
        throw new NullPointerException("FirebaseCrashlytics component is not present.");
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4855for(Throwable th) {
        C0445Qb c0445Qb = this.f8440do;
        c0445Qb.f2970do.f13734do.m6567do(new RunnableC3998xn(3, c0445Qb, th));
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4856if(String str) {
        C0445Qb c0445Qb = this.f8440do;
        c0445Qb.getClass();
        c0445Qb.f2970do.f13734do.m6567do(new O(c0445Qb, System.currentTimeMillis() - c0445Qb.f2959do, str));
    }
}
