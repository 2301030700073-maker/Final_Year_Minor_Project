package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class P6 extends Q6 {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f2735break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ GM f2736do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f2737do = false;

    public P6(GM gm, String str) {
        this.f2736do = gm;
        this.f2735break = str;
    }

    @Override // defpackage.Q6
    /* renamed from: if */
    public final void mo1493if() {
        GM gm = this.f2736do;
        WorkDatabase workDatabase = gm.f1178do;
        workDatabase.m8560for();
        try {
            Iterator it = ((VM) workDatabase.mo4729final()).m2635else(this.f2735break).iterator();
            while (it.hasNext()) {
                Q6.m1829do(gm, (String) it.next());
            }
            workDatabase.m8561goto();
            workDatabase.m8557case();
            if (this.f2737do) {
                C4023yB.m8704do(gm.f1177do, gm.f1178do, gm.f1179do);
            }
        } catch (Throwable th) {
            workDatabase.m8557case();
            throw th;
        }
    }
}
