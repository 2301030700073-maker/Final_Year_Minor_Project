package com.google.android.gms.analytics.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import java.util.Collections;

/* loaded from: classes.dex */
public class zzi extends zzd {
    private final zza zzJW;
    private zzac zzJX;
    private final zzt zzJY;
    private zzaj zzJZ;

    protected class zza implements ServiceConnection {
        private volatile zzac zzKb;
        private volatile boolean zzKc;

        protected zza() {
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x005b A[Catch: all -> 0x0014, TRY_ENTER, TryCatch #2 {all -> 0x0014, blocks: (B:5:0x0008, B:12:0x0017, B:14:0x0023, B:16:0x0027, B:28:0x0045, B:20:0x005b, B:22:0x005f, B:26:0x0075, B:35:0x003c, B:36:0x0033), top: B:3:0x0006, outer: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.content.ServiceConnection
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onServiceConnected(android.content.ComponentName r5, android.os.IBinder r6) {
            /*
                r4 = this;
                java.lang.String r0 = "AnalyticsServiceConnection.onServiceConnected"
                com.google.android.gms.common.internal.zzu.zzbY(r0)
                monitor-enter(r4)
                if (r6 != 0) goto L16
                com.google.android.gms.analytics.internal.zzi r0 = com.google.android.gms.analytics.internal.zzi.this     // Catch: java.lang.Throwable -> L14
                java.lang.String r1 = "Service connected with null binder"
                r0.zzaX(r1)     // Catch: java.lang.Throwable -> L14
                r4.notifyAll()     // Catch: java.lang.Throwable -> L80
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L80
                return
            L14:
                r0 = move-exception
                goto L7c
            L16:
                r0 = 0
                java.lang.String r1 = r6.getInterfaceDescriptor()     // Catch: java.lang.Throwable -> L14 android.os.RemoteException -> L3b
                java.lang.String r2 = "com.google.android.gms.analytics.internal.IAnalyticsService"
                boolean r2 = r2.equals(r1)     // Catch: java.lang.Throwable -> L14 android.os.RemoteException -> L3b
                if (r2 == 0) goto L33
                com.google.android.gms.analytics.internal.zzac r1 = com.google.android.gms.analytics.internal.zzac.zza.zzac(r6)     // Catch: java.lang.Throwable -> L14 android.os.RemoteException -> L3b
                com.google.android.gms.analytics.internal.zzi r0 = com.google.android.gms.analytics.internal.zzi.this     // Catch: java.lang.Throwable -> L14 android.os.RemoteException -> L30
                java.lang.String r2 = "Bound to IAnalyticsService interface"
                r0.zzaT(r2)     // Catch: java.lang.Throwable -> L14 android.os.RemoteException -> L30
                r0 = r1
                goto L43
            L30:
                r0 = move-exception
                r0 = r1
                goto L3c
            L33:
                com.google.android.gms.analytics.internal.zzi r2 = com.google.android.gms.analytics.internal.zzi.this     // Catch: java.lang.Throwable -> L14 android.os.RemoteException -> L3b
                java.lang.String r3 = "Got binder with a wrong descriptor"
                r2.zze(r3, r1)     // Catch: java.lang.Throwable -> L14 android.os.RemoteException -> L3b
                goto L43
            L3b:
                r1 = move-exception
            L3c:
                com.google.android.gms.analytics.internal.zzi r1 = com.google.android.gms.analytics.internal.zzi.this     // Catch: java.lang.Throwable -> L14
                java.lang.String r2 = "Service connect failed to get IAnalyticsService"
                r1.zzaX(r2)     // Catch: java.lang.Throwable -> L14
            L43:
                if (r0 != 0) goto L5b
                com.google.android.gms.common.stats.zzb r0 = com.google.android.gms.common.stats.zzb.zzoO()     // Catch: java.lang.Throwable -> L14 java.lang.IllegalArgumentException -> L59
                com.google.android.gms.analytics.internal.zzi r1 = com.google.android.gms.analytics.internal.zzi.this     // Catch: java.lang.Throwable -> L14 java.lang.IllegalArgumentException -> L59
                android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> L14 java.lang.IllegalArgumentException -> L59
                com.google.android.gms.analytics.internal.zzi r2 = com.google.android.gms.analytics.internal.zzi.this     // Catch: java.lang.Throwable -> L14 java.lang.IllegalArgumentException -> L59
                com.google.android.gms.analytics.internal.zzi$zza r2 = com.google.android.gms.analytics.internal.zzi.zza(r2)     // Catch: java.lang.Throwable -> L14 java.lang.IllegalArgumentException -> L59
                r0.zza(r1, r2)     // Catch: java.lang.Throwable -> L14 java.lang.IllegalArgumentException -> L59
                goto L77
            L59:
                r0 = move-exception
                goto L77
            L5b:
                boolean r1 = r4.zzKc     // Catch: java.lang.Throwable -> L14
                if (r1 != 0) goto L75
                com.google.android.gms.analytics.internal.zzi r1 = com.google.android.gms.analytics.internal.zzi.this     // Catch: java.lang.Throwable -> L14
                java.lang.String r2 = "onServiceConnected received after the timeout limit"
                r1.zzaW(r2)     // Catch: java.lang.Throwable -> L14
                com.google.android.gms.analytics.internal.zzi r1 = com.google.android.gms.analytics.internal.zzi.this     // Catch: java.lang.Throwable -> L14
                com.google.android.gms.internal.zzns r1 = r1.zzhS()     // Catch: java.lang.Throwable -> L14
                com.google.android.gms.analytics.internal.zzi$zza$1 r2 = new com.google.android.gms.analytics.internal.zzi$zza$1     // Catch: java.lang.Throwable -> L14
                r2.<init>()     // Catch: java.lang.Throwable -> L14
                r1.zze(r2)     // Catch: java.lang.Throwable -> L14
                goto L77
            L75:
                r4.zzKb = r0     // Catch: java.lang.Throwable -> L14
            L77:
                r4.notifyAll()     // Catch: java.lang.Throwable -> L80
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L80
                return
            L7c:
                r4.notifyAll()     // Catch: java.lang.Throwable -> L80
                throw r0     // Catch: java.lang.Throwable -> L80
            L80:
                r0 = move-exception
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L80
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzi.zza.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(final ComponentName componentName) {
            com.google.android.gms.common.internal.zzu.zzbY("AnalyticsServiceConnection.onServiceDisconnected");
            zzi.this.zzhS().zze(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzi.zza.2
                @Override // java.lang.Runnable
                public void run() {
                    zzi.this.onServiceDisconnected(componentName);
                }
            });
        }

        public zzac zzip() {
            zzi.this.zzhO();
            Intent intent = new Intent("com.google.android.gms.analytics.service.START");
            intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
            Context context = zzi.this.getContext();
            intent.putExtra("app_package_name", context.getPackageName());
            com.google.android.gms.common.stats.zzb zzoO = com.google.android.gms.common.stats.zzb.zzoO();
            synchronized (this) {
                this.zzKb = null;
                this.zzKc = true;
                boolean zza = zzoO.zza(context, intent, zzi.this.zzJW, 129);
                zzi.this.zza("Bind to service requested", Boolean.valueOf(zza));
                if (!zza) {
                    this.zzKc = false;
                    return null;
                }
                try {
                    wait(zzi.this.zzhR().zzjs());
                } catch (InterruptedException e) {
                    zzi.this.zzaW("Wait for service connect was interrupted");
                }
                this.zzKc = false;
                zzac zzacVar = this.zzKb;
                this.zzKb = null;
                if (zzacVar == null) {
                    zzi.this.zzaX("Successfully bound to service but never got onServiceConnected callback");
                }
                return zzacVar;
            }
        }
    }

    protected zzi(zzf zzfVar) {
        super(zzfVar);
        this.zzJZ = new zzaj(zzfVar.zzhP());
        this.zzJW = new zza();
        this.zzJY = new zzt(zzfVar) { // from class: com.google.android.gms.analytics.internal.zzi.1
            @Override // com.google.android.gms.analytics.internal.zzt
            public void run() {
                zzi.this.zzio();
            }
        };
    }

    private void onDisconnect() {
        zzhl().zzhJ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceDisconnected(ComponentName componentName) {
        zzhO();
        if (this.zzJX != null) {
            this.zzJX = null;
            zza("Disconnected from device AnalyticsService", componentName);
            onDisconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzac zzacVar) {
        zzhO();
        this.zzJX = zzacVar;
        zzin();
        zzhl().onServiceConnected();
    }

    private void zzin() {
        this.zzJZ.start();
        this.zzJY.zzt(zzhR().zzjr());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzio() {
        zzhO();
        if (isConnected()) {
            zzaT("Inactivity, disconnecting from device AnalyticsService");
            disconnect();
        }
    }

    public boolean connect() {
        zzhO();
        zzia();
        if (this.zzJX != null) {
            return true;
        }
        zzac zzip = this.zzJW.zzip();
        if (zzip == null) {
            return false;
        }
        this.zzJX = zzip;
        zzin();
        return true;
    }

    public void disconnect() {
        zzhO();
        zzia();
        try {
            com.google.android.gms.common.stats.zzb.zzoO().zza(getContext(), this.zzJW);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        if (this.zzJX != null) {
            this.zzJX = null;
            onDisconnect();
        }
    }

    public boolean isConnected() {
        zzhO();
        zzia();
        return this.zzJX != null;
    }

    public boolean zzb(zzab zzabVar) {
        com.google.android.gms.common.internal.zzu.zzu(zzabVar);
        zzhO();
        zzia();
        zzac zzacVar = this.zzJX;
        if (zzacVar == null) {
            return false;
        }
        try {
            zzacVar.zza(zzabVar.zzn(), zzabVar.zzjW(), zzabVar.zzjY() ? zzhR().zzjk() : zzhR().zzjl(), Collections.emptyList());
            zzin();
            return true;
        } catch (RemoteException e) {
            zzaT("Failed to send hits to AnalyticsService");
            return false;
        }
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzhn() {
    }

    public boolean zzim() {
        zzhO();
        zzia();
        zzac zzacVar = this.zzJX;
        if (zzacVar == null) {
            return false;
        }
        try {
            zzacVar.zzhG();
            zzin();
            return true;
        } catch (RemoteException e) {
            zzaT("Failed to clear hits from AnalyticsService");
            return false;
        }
    }
}
