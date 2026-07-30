package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class O6 extends Q6 {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f2584break = "offline_ping_sender_work";

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ GM f2585do;

    public O6(GM gm) {
        this.f2585do = gm;
    }

    @Override // defpackage.Q6
    /* renamed from: if */
    public final void mo1493if() {
        GM gm = this.f2585do;
        WorkDatabase workDatabase = gm.f1178do;
        workDatabase.m8560for();
        try {
            Iterator it = ((VM) workDatabase.mo4729final()).m2638goto(this.f2584break).iterator();
            while (it.hasNext()) {
                Q6.m1829do(gm, (String) it.next());
            }
            workDatabase.m8561goto();
            workDatabase.m8557case();
            C4023yB.m8704do(gm.f1177do, gm.f1178do, gm.f1179do);
        } catch (Throwable th) {
            workDatabase.m8557case();
            throw th;
        }
    }
}
