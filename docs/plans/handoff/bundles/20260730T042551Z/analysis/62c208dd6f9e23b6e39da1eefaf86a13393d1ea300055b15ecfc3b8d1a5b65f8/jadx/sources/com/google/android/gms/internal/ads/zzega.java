package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzega {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final zzcrc zzc;
    private final zzegq zzd;
    private final zzfiv zze;
    private final zzgdb zzf = zzgdb.zze();
    private final AtomicBoolean zzg = new AtomicBoolean();
    private zzegb zzh;
    private zzfca zzi;

    public zzega(Executor executor, ScheduledExecutorService scheduledExecutorService, zzcrc zzcrcVar, zzegq zzegqVar, zzfiv zzfivVar) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = zzcrcVar;
        this.zzd = zzegqVar;
        this.zze = zzfivVar;
    }

    private final synchronized InterfaceFutureC3942wq zzd(zzfbo zzfboVar) {
        Iterator it = zzfboVar.zza.iterator();
        while (it.hasNext()) {
            zzecw zza = this.zzc.zza(zzfboVar.zzb, (String) it.next());
            if (zza != null && zza.zzb(this.zzi, zzfboVar)) {
                return zzgch.zzo(zza.zza(this.zzi, zzfboVar), zzfboVar.zzR, TimeUnit.MILLISECONDS, this.zzb);
            }
        }
        return zzgch.zzg(new zzdvy(3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zze(zzfbo zzfboVar) {
        InterfaceFutureC3942wq zzd = zzd(zzfboVar);
        this.zzd.zzf(this.zzi, zzfboVar, zzd, this.zze);
        zzgch.zzr(zzd, new zzefz(this, zzfboVar), this.zza);
    }

    public final synchronized InterfaceFutureC3942wq zzb(zzfca zzfcaVar) {
        if (!this.zzg.getAndSet(true)) {
            if (zzfcaVar.zzb.zza.isEmpty()) {
                this.zzf.zzd(new zzegu(3, zzegx.zzc(zzfcaVar)));
            } else {
                this.zzi = zzfcaVar;
                this.zzh = new zzegb(zzfcaVar, this.zzd, this.zzf);
                this.zzd.zzk(zzfcaVar.zzb.zza);
                zzfbo zza = this.zzh.zza();
                while (zza != null) {
                    zze(zza);
                    zza = this.zzh.zza();
                }
            }
        }
        return this.zzf;
    }
}
