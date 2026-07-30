package defpackage;

/* renamed from: Fd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0206Fd implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0228Gd f1074do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ TM f1075do;

    public RunnableC0206Fd(C0228Gd c0228Gd, TM tm) {
        this.f1074do = c0228Gd;
        this.f1075do = tm;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        int i = C0228Gd.f1212do;
        TM tm = this.f1075do;
        String.format("Scheduling work %s", tm.f3655do);
        m2869for.mo2872do(new Throwable[0]);
        this.f1074do.f1213do.mo1455case(tm);
    }
}
