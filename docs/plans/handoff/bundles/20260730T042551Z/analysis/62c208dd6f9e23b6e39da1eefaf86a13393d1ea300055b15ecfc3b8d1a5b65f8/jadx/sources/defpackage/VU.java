package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.google.android.gms.internal.measurement.zzcw;

/* loaded from: classes3.dex */
public final class VU extends WU {

    /* renamed from: do, reason: not valid java name */
    public UU f4131do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AlarmManager f4132do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Integer f4133do;

    public VU(ZU zu) {
        super(zu);
        this.f4132do = (AlarmManager) mo2255for().getSystemService("alarm");
    }

    /* renamed from: import, reason: not valid java name */
    public final void m2644import() {
        JobScheduler jobScheduler;
        m2733super();
        mo2249case().f13723this.m7369if("Unscheduling upload");
        AlarmManager alarmManager = this.f4132do;
        if (alarmManager != null) {
            alarmManager.cancel(m2646public());
        }
        m2647return().m450do();
        if (Build.VERSION.SDK_INT < 24 || (jobScheduler = (JobScheduler) mo2255for().getSystemService("jobscheduler")) == null) {
            return;
        }
        jobScheduler.cancel(m2645native());
    }

    /* renamed from: native, reason: not valid java name */
    public final int m2645native() {
        if (this.f4133do == null) {
            this.f4133do = Integer.valueOf(("measurement" + mo2255for().getPackageName()).hashCode());
        }
        return this.f4133do.intValue();
    }

    /* renamed from: public, reason: not valid java name */
    public final PendingIntent m2646public() {
        Context mo2255for = mo2255for();
        return zzcw.zza(mo2255for, 0, new Intent().setClassName(mo2255for, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), zzcw.zza);
    }

    /* renamed from: return, reason: not valid java name */
    public final EP m2647return() {
        if (this.f4131do == null) {
            this.f4131do = new UU(this, ((XU) this).f4519do.f4833do);
        }
        return this.f4131do;
    }

    @Override // defpackage.WU
    /* renamed from: while */
    public final boolean mo372while() {
        JobScheduler jobScheduler;
        AlarmManager alarmManager = this.f4132do;
        if (alarmManager != null) {
            alarmManager.cancel(m2646public());
        }
        if (Build.VERSION.SDK_INT < 24 || (jobScheduler = (JobScheduler) mo2255for().getSystemService("jobscheduler")) == null) {
            return false;
        }
        jobScheduler.cancel(m2645native());
        return false;
    }
}
