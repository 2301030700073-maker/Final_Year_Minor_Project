package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import defpackage.AbstractC3794uI;
import defpackage.BI;
import defpackage.C4075z4;
import defpackage.CJ;
import defpackage.Gx;
import defpackage.Pz;
import defpackage.RunnableC3913wJ;

/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f9487for = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        BI.m174if(getApplicationContext());
        C4075z4.Cdo m8379do = AbstractC3794uI.m8379do();
        m8379do.m8785if(string);
        m8379do.m8784for(Gx.m776if(i));
        if (string2 != null) {
            m8379do.f16859do = Base64.decode(string2, 0);
        }
        CJ cj = BI.m173do().f225do;
        C4075z4 m8783do = m8379do.m8783do();
        Pz pz = new Pz(2, this, jobParameters);
        cj.getClass();
        cj.f356do.execute(new RunnableC3913wJ(cj, m8783do, i2, pz));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
