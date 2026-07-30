package defpackage;

/* renamed from: dT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC2637dT implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f12488break;

    /* renamed from: catch, reason: not valid java name */
    public final /* synthetic */ String f12489catch;

    /* renamed from: class, reason: not valid java name */
    public final /* synthetic */ String f12490class;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f12491do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ YS f12492do;

    public RunnableC2637dT(YS ys, String str, String str2, String str3, long j) {
        this.f12488break = str;
        this.f12489catch = str2;
        this.f12490class = str3;
        this.f12491do = j;
        this.f12492do = ys;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f12489catch;
        YS ys = this.f12492do;
        String str2 = this.f12488break;
        if (str2 == null) {
            ZU zu = ys.f4740do;
            zu.mo2253do().mo1960catch();
            String str3 = zu.f4840do;
            if (str3 == null || str3.equals(str)) {
                zu.f4840do = str;
                zu.f4837do = null;
                return;
            }
            return;
        }
        C2696eU c2696eU = new C2696eU(this.f12490class, str2, this.f12491do);
        ZU zu2 = ys.f4740do;
        zu2.mo2253do().mo1960catch();
        String str4 = zu2.f4840do;
        if (str4 != null) {
            str4.equals(str);
        }
        zu2.f4840do = str;
        zu2.f4837do = c2696eU;
    }
}
