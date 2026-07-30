package defpackage;

import androidx.work.ListenableWorker;

/* renamed from: dN, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC2631dN implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ UC f12475do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ RunnableC2748fN f12476do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceFutureC3942wq f12477do;

    public RunnableC2631dN(RunnableC2748fN runnableC2748fN, UC uc, UC uc2) {
        this.f12476do = runnableC2748fN;
        this.f12477do = uc;
        this.f12475do = uc2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        UC uc = this.f12475do;
        RunnableC2748fN runnableC2748fN = this.f12476do;
        try {
            this.f12477do.get();
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            int i = RunnableC2748fN.f12906for;
            String.format("Starting work for %s", runnableC2748fN.f12910do.f3664if);
            m2869for.mo2872do(new Throwable[0]);
            InterfaceFutureC3942wq<ListenableWorker.Cdo> startWork = runnableC2748fN.f12917do.startWork();
            runnableC2748fN.f12924do = startWork;
            uc.m2364break(startWork);
        } catch (Throwable th) {
            uc.m2366this(th);
        }
    }
}
