package com.google.android.gms.internal.ads;

import defpackage.Cif;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zzgdf extends zzgbx {
    private InterfaceFutureC3942wq zza;
    private ScheduledFuture zzb;

    private zzgdf(InterfaceFutureC3942wq interfaceFutureC3942wq) {
        interfaceFutureC3942wq.getClass();
        this.zza = interfaceFutureC3942wq;
    }

    public static InterfaceFutureC3942wq zzf(InterfaceFutureC3942wq interfaceFutureC3942wq, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzgdf zzgdfVar = new zzgdf(interfaceFutureC3942wq);
        zzgdc zzgdcVar = new zzgdc(zzgdfVar);
        zzgdfVar.zzb = scheduledExecutorService.schedule(zzgdcVar, j, timeUnit);
        interfaceFutureC3942wq.addListener(zzgdcVar, zzgbv.INSTANCE);
        return zzgdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final String zza() {
        InterfaceFutureC3942wq interfaceFutureC3942wq = this.zza;
        ScheduledFuture scheduledFuture = this.zzb;
        if (interfaceFutureC3942wq == null) {
            return null;
        }
        String m6908case = Cif.m6908case("inputFuture=[", interfaceFutureC3942wq.toString(), "]");
        if (scheduledFuture == null) {
            return m6908case;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return m6908case;
        }
        return m6908case + ", remaining delay=[" + delay + " ms]";
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zzb() {
        zzr(this.zza);
        ScheduledFuture scheduledFuture = this.zzb;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zza = null;
        this.zzb = null;
    }
}
