package defpackage;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.Cdo;

/* renamed from: qG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC3557qG implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f15084break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ WorkDatabase f15085do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cdo f15086do;

    public RunnableC3557qG(Cdo cdo, WorkDatabase workDatabase, String str) {
        this.f15086do = cdo;
        this.f15085do = workDatabase;
        this.f15084break = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TM m2641this = ((VM) this.f15085do.mo4729final()).m2641this(this.f15084break);
        if (m2641this == null || !m2641this.m2243if()) {
            return;
        }
        synchronized (this.f15086do.f8218do) {
            this.f15086do.f8219do.put(this.f15084break, m2641this);
            this.f15086do.f8220do.add(m2641this);
            Cdo cdo = this.f15086do;
            cdo.f8222do.m8385for(cdo.f8220do);
        }
    }
}
