package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.SparseArray;
import androidx.legacy.content.WakefulBroadcastReceiver;
import defpackage.C3156jS;
import defpackage.EU;
import defpackage.MU;
import defpackage.RunnableC3807uV;
import defpackage.TS;
import defpackage.YS;
import defpackage.ZU;

/* loaded from: classes3.dex */
public final class AppMeasurementService extends Service implements MU {

    /* renamed from: do, reason: not valid java name */
    public EU<AppMeasurementService> f10288do;

    @Override // defpackage.MU
    /* renamed from: do */
    public final void mo1430do(JobParameters jobParameters) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: for, reason: not valid java name */
    public final EU<AppMeasurementService> m5615for() {
        if (this.f10288do == null) {
            this.f10288do = new EU<>(this);
        }
        return this.f10288do;
    }

    @Override // defpackage.MU
    /* renamed from: if */
    public final void mo1431if(Intent intent) {
        SparseArray<PowerManager.WakeLock> sparseArray = WakefulBroadcastReceiver.f7057do;
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return;
        }
        SparseArray<PowerManager.WakeLock> sparseArray2 = WakefulBroadcastReceiver.f7057do;
        synchronized (sparseArray2) {
            PowerManager.WakeLock wakeLock = sparseArray2.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                sparseArray2.remove(intExtra);
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        EU<AppMeasurementService> m5615for = m5615for();
        if (intent == null) {
            m5615for.m456if().f13717do.m7369if("onBind called with null intent");
            return null;
        }
        m5615for.getClass();
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new YS(ZU.m3015const(m5615for.f798do));
        }
        m5615for.m456if().f13722new.m7368for("onBind received unknown action", action);
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C3156jS c3156jS = TS.m2246if(m5615for().f798do, null, null).f3695do;
        TS.m2247this(c3156jS);
        c3156jS.f13723this.m7369if("Local AppMeasurementService is starting up");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        C3156jS c3156jS = TS.m2246if(m5615for().f798do, null, null).f3695do;
        TS.m2247this(c3156jS);
        c3156jS.f13723this.m7369if("Local AppMeasurementService is shutting down");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m5615for().m454do(intent);
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i, final int i2) {
        final EU<AppMeasurementService> m5615for = m5615for();
        final C3156jS c3156jS = TS.m2246if(m5615for.f798do, null, null).f3695do;
        TS.m2247this(c3156jS);
        if (intent == null) {
            c3156jS.f13722new.m7369if("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        c3156jS.f13723this.m7367do(Integer.valueOf(i2), "Local AppMeasurementService called. startId, action", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        Runnable runnable = new Runnable() { // from class: KU
            @Override // java.lang.Runnable
            public final void run() {
                EU eu = EU.this;
                MU mu = eu.f798do;
                int i3 = i2;
                if (mu.zza(i3)) {
                    c3156jS.f13723this.m7368for("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i3));
                    eu.m456if().f13723this.m7369if("Completed wakeful intent.");
                    mu.mo1431if(intent);
                }
            }
        };
        ZU m3015const = ZU.m3015const(m5615for.f798do);
        m3015const.mo2253do().m1964public(new RunnableC3807uV(m3015const, runnable));
        return 2;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        m5615for().m455for(intent);
        return true;
    }

    @Override // defpackage.MU
    public final boolean zza(int i) {
        return stopSelfResult(i);
    }
}
