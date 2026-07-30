package defpackage;

import androidx.work.impl.WorkDatabase;

/* renamed from: oF, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC3438oF implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final String f14715break;

    /* renamed from: do, reason: not valid java name */
    public final GM f14716do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f14717do;

    static {
        AbstractC0614Xq.m2870try("StopWorkRunnable");
    }

    public RunnableC3438oF(GM gm, String str, boolean z) {
        this.f14716do = gm;
        this.f14715break = str;
        this.f14717do = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean containsKey;
        boolean m1364catch;
        GM gm = this.f14716do;
        WorkDatabase workDatabase = gm.f1178do;
        Lx lx = gm.f1174do;
        UM mo4729final = workDatabase.mo4729final();
        workDatabase.m8560for();
        try {
            String str = this.f14715break;
            synchronized (lx.f2056do) {
                containsKey = lx.f2058do.containsKey(str);
            }
            if (this.f14717do) {
                m1364catch = this.f14716do.f1174do.m1362break(this.f14715break);
            } else {
                if (!containsKey) {
                    VM vm = (VM) mo4729final;
                    if (vm.m2630case(this.f14715break) == CM.RUNNING) {
                        vm.m2636final(CM.ENQUEUED, this.f14715break);
                    }
                }
                m1364catch = this.f14716do.f1174do.m1364catch(this.f14715break);
            }
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f14715break, Boolean.valueOf(m1364catch));
            m2869for.mo2872do(new Throwable[0]);
            workDatabase.m8561goto();
        } finally {
            workDatabase.m8557case();
        }
    }
}
