package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.ConnectionResult;
import defpackage.C3156jS;
import defpackage.EU;
import defpackage.MU;
import defpackage.RQ;
import defpackage.RunnableC3807uV;
import defpackage.TS;
import defpackage.ZU;

@TargetApi(ConnectionResult.API_DISABLED_FOR_CONNECTION)
/* loaded from: classes3.dex */
public final class AppMeasurementJobService extends JobService implements MU {

    /* renamed from: do, reason: not valid java name */
    public EU<AppMeasurementJobService> f10286do;

    @Override // defpackage.MU
    @TargetApi(ConnectionResult.API_DISABLED_FOR_CONNECTION)
    /* renamed from: do */
    public final void mo1430do(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    /* renamed from: for, reason: not valid java name */
    public final EU<AppMeasurementJobService> m5614for() {
        if (this.f10286do == null) {
            this.f10286do = new EU<>(this);
        }
        return this.f10286do;
    }

    @Override // defpackage.MU
    /* renamed from: if */
    public final void mo1431if(Intent intent) {
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C3156jS c3156jS = TS.m2246if(m5614for().f798do, null, null).f3695do;
        TS.m2247this(c3156jS);
        c3156jS.f13723this.m7369if("Local AppMeasurementService is starting up");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        C3156jS c3156jS = TS.m2246if(m5614for().f798do, null, null).f3695do;
        TS.m2247this(c3156jS);
        c3156jS.f13723this.m7369if("Local AppMeasurementService is shutting down");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m5614for().m454do(intent);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        EU<AppMeasurementJobService> m5614for = m5614for();
        C3156jS c3156jS = TS.m2246if(m5614for.f798do, null, null).f3695do;
        TS.m2247this(c3156jS);
        String string = jobParameters.getExtras().getString(NativeProtocol.WEB_DIALOG_ACTION);
        c3156jS.f13723this.m7368for("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        RQ rq = new RQ(m5614for, c3156jS, jobParameters, 2);
        ZU m3015const = ZU.m3015const(m5614for.f798do);
        m3015const.mo2253do().m1964public(new RunnableC3807uV(m3015const, rq));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        m5614for().m455for(intent);
        return true;
    }

    @Override // defpackage.MU
    public final boolean zza(int i) {
        throw new UnsupportedOperationException();
    }
}
