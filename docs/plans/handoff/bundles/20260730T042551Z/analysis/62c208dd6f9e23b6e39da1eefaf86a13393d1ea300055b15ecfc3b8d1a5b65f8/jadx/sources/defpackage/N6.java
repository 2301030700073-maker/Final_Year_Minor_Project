package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.UUID;

/* loaded from: classes.dex */
public final class N6 extends Q6 {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ GM f2304do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ UUID f2305do;

    public N6(GM gm, UUID uuid) {
        this.f2304do = gm;
        this.f2305do = uuid;
    }

    @Override // defpackage.Q6
    /* renamed from: if, reason: not valid java name */
    public final void mo1493if() {
        GM gm = this.f2304do;
        WorkDatabase workDatabase = gm.f1178do;
        workDatabase.m8560for();
        try {
            Q6.m1829do(gm, this.f2305do.toString());
            workDatabase.m8561goto();
            workDatabase.m8557case();
            C4023yB.m8704do(gm.f1177do, gm.f1178do, gm.f1179do);
        } catch (Throwable th) {
            workDatabase.m8557case();
            throw th;
        }
    }
}
