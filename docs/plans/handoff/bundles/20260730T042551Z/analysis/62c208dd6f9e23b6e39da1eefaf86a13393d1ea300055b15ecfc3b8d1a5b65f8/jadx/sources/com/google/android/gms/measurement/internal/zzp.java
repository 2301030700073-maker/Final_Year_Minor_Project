package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.measurement.zzpn;
import defpackage.BU;
import defpackage.C3156jS;
import defpackage.C3684sQ;
import defpackage.QS;
import defpackage.TS;

/* loaded from: classes3.dex */
public final class zzp extends BroadcastReceiver {

    /* renamed from: do, reason: not valid java name */
    public final TS f10359do;

    public zzp(TS ts) {
        this.f10359do = ts;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        TS ts = this.f10359do;
        if (intent == null) {
            C3156jS c3156jS = ts.f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7369if("App receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            C3156jS c3156jS2 = ts.f3695do;
            TS.m2247this(c3156jS2);
            c3156jS2.f13722new.m7369if("App receiver called with null action");
        } else if (!action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
            C3156jS c3156jS3 = ts.f3695do;
            TS.m2247this(c3156jS3);
            c3156jS3.f13722new.m7369if("App receiver called with unknown action");
        } else if (zzpn.zza() && ts.f3685do.m3012throws(null, C3684sQ.U)) {
            C3156jS c3156jS4 = ts.f3695do;
            TS.m2247this(c3156jS4);
            c3156jS4.f13723this.m7369if("App receiver notified triggers are available");
            QS qs = ts.f3683do;
            TS.m2247this(qs);
            qs.m1964public(new BU(ts, 1));
        }
    }
}
