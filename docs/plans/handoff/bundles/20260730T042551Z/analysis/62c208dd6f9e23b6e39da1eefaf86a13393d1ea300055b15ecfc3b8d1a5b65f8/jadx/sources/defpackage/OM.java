package defpackage;

import androidx.work.Cif;
import androidx.work.impl.WorkDatabase;
import java.util.UUID;

/* loaded from: classes.dex */
public final class OM implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ PM f2634do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ UC f2635do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cif f2636do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ UUID f2637do;

    public OM(PM pm, UUID uuid, Cif cif, UC uc) {
        this.f2634do = pm;
        this.f2637do = uuid;
        this.f2636do = cif;
        this.f2635do = uc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TM m2641this;
        UC uc = this.f2635do;
        UUID uuid = this.f2637do;
        String uuid2 = uuid.toString();
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        int i = PM.f2774do;
        Cif cif = this.f2636do;
        String.format("Updating progress for %s (%s)", uuid, cif);
        m2869for.mo2872do(new Throwable[0]);
        PM pm = this.f2634do;
        WorkDatabase workDatabase = pm.f2776do;
        WorkDatabase workDatabase2 = pm.f2776do;
        workDatabase.m8560for();
        try {
            m2641this = ((VM) workDatabase2.mo4729final()).m2641this(uuid2);
        } finally {
            try {
            } finally {
            }
        }
        if (m2641this == null) {
            throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
        }
        if (m2641this.f3652do == CM.RUNNING) {
            LM lm = new LM(uuid2, cif);
            NM nm = (NM) workDatabase2.mo4728const();
            AbstractC3904wA abstractC3904wA = nm.f2367do;
            abstractC3904wA.m8562if();
            abstractC3904wA.m8560for();
            try {
                nm.f2364do.m6827try(lm);
                abstractC3904wA.m8561goto();
                abstractC3904wA.m8557case();
            } catch (Throwable th) {
                abstractC3904wA.m8557case();
                throw th;
            }
        } else {
            AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
            String.format("Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state.", uuid2);
            m2869for2.mo2871case(new Throwable[0]);
        }
        uc.m2365goto(null);
        workDatabase2.m8561goto();
    }
}
