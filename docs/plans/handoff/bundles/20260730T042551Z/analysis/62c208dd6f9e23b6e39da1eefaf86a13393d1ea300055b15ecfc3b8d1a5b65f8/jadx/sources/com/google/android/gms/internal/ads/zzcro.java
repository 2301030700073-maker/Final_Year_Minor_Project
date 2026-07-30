package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzcro {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final InterfaceFutureC3942wq zzc;
    private volatile boolean zzd = true;

    public zzcro(Executor executor, ScheduledExecutorService scheduledExecutorService, InterfaceFutureC3942wq interfaceFutureC3942wq) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = interfaceFutureC3942wq;
    }

    public static /* bridge */ /* synthetic */ void zzb(final zzcro zzcroVar, List list, final zzgcd zzgcdVar) {
        if (list == null || list.isEmpty()) {
            zzcroVar.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrj
                @Override // java.lang.Runnable
                public final void run() {
                    zzgcd.this.zza(new zzdvy(3));
                }
            });
            return;
        }
        InterfaceFutureC3942wq zzh = zzgch.zzh(null);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final InterfaceFutureC3942wq interfaceFutureC3942wq = (InterfaceFutureC3942wq) it.next();
            zzh = zzgch.zzn(zzgch.zzf(zzh, Throwable.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzcrk
                @Override // com.google.android.gms.internal.ads.zzgbo
                public final InterfaceFutureC3942wq zza(Object obj) {
                    zzgcd.this.zza((Throwable) obj);
                    return zzgch.zzh(null);
                }
            }, zzcroVar.zza), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzcrl
                @Override // com.google.android.gms.internal.ads.zzgbo
                public final InterfaceFutureC3942wq zza(Object obj) {
                    return zzcro.this.zza(zzgcdVar, interfaceFutureC3942wq, (zzcqz) obj);
                }
            }, zzcroVar.zza);
        }
        zzgch.zzr(zzh, new zzcrn(zzcroVar, zzgcdVar), zzcroVar.zza);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zza(zzgcd zzgcdVar, InterfaceFutureC3942wq interfaceFutureC3942wq, zzcqz zzcqzVar) {
        if (zzcqzVar != null) {
            zzgcdVar.zzb(zzcqzVar);
        }
        return zzgch.zzo(interfaceFutureC3942wq, ((Long) zzbey.zza.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzb);
    }

    public final /* synthetic */ void zzd() {
        this.zzd = false;
    }

    public final void zze(zzgcd zzgcdVar) {
        zzgch.zzr(this.zzc, new zzcrm(this, zzgcdVar), this.zza);
    }

    public final boolean zzf() {
        return this.zzd;
    }
}
