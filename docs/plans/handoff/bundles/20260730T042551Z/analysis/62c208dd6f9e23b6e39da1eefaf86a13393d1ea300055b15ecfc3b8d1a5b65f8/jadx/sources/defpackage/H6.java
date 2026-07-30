package defpackage;

import android.os.Handler;
import defpackage.C3405nj;
import defpackage.LI;

/* loaded from: classes.dex */
public final class H6 {

    /* renamed from: do, reason: not valid java name */
    public final Handler f1291do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3850vF f1292do;

    public H6(LI.Cdo cdo, Handler handler) {
        this.f1292do = cdo;
        this.f1291do = handler;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m812do(C3405nj.Cdo cdo) {
        int i = cdo.f14555do;
        boolean z = i == 0;
        Handler handler = this.f1291do;
        C3850vF c3850vF = this.f1292do;
        if (z) {
            handler.post(new F6(c3850vF, cdo.f14556do));
        } else {
            handler.post(new G6(c3850vF, i));
        }
    }
}
