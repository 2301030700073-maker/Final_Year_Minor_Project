package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import defpackage.AbstractC3794uI;
import defpackage.BI;
import defpackage.C4075z4;
import defpackage.CJ;
import defpackage.G0;
import defpackage.Gx;
import defpackage.RunnableC3913wJ;

/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f9486do = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        BI.m174if(context);
        C4075z4.Cdo m8379do = AbstractC3794uI.m8379do();
        m8379do.m8785if(queryParameter);
        m8379do.m8784for(Gx.m776if(intValue));
        if (queryParameter2 != null) {
            m8379do.f16859do = Base64.decode(queryParameter2, 0);
        }
        CJ cj = BI.m173do().f225do;
        C4075z4 m8783do = m8379do.m8783do();
        G0 g0 = new G0(1);
        cj.getClass();
        cj.f356do.execute(new RunnableC3913wJ(cj, m8783do, i, g0));
    }
}
