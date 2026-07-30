package defpackage;

import android.content.Context;
import androidx.work.impl.foreground.Cdo;
import defpackage.Cclass;
import java.util.UUID;

/* loaded from: classes.dex */
public final class AM implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BM f76do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ UC f77do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Context f78do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ UUID f79do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3640rj f80do;

    public AM(BM bm, UC uc, UUID uuid, C3640rj c3640rj, Context context) {
        this.f76do = bm;
        this.f77do = uc;
        this.f79do = uuid;
        this.f80do = c3640rj;
        this.f78do = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (!(((Cclass) this.f77do).f8614do instanceof Cclass.Cif)) {
                String uuid = this.f79do.toString();
                CM m2630case = ((VM) this.f76do.f233do).m2630case(uuid);
                if (m2630case == null || m2630case.m263do()) {
                    throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                }
                ((Lx) this.f76do.f234do).m1366else(uuid, this.f80do);
                this.f78do.startService(Cdo.m4753if(this.f78do, uuid, this.f80do));
            }
            this.f77do.m2365goto(null);
        } catch (Throwable th) {
            this.f77do.m2366this(th);
        }
    }
}
