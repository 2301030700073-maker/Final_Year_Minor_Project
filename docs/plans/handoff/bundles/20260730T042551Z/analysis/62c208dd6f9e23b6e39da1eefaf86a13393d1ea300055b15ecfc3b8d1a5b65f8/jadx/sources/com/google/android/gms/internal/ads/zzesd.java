package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzesd implements zzetr {
    private final zzetr zza;
    private final long zzb;
    private final ScheduledExecutorService zzc;

    public zzesd(zzetr zzetrVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzetrVar;
        this.zzb = j;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        InterfaceFutureC3942wq zzb = this.zza.zzb();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcr)).booleanValue()) {
            timeUnit = TimeUnit.MICROSECONDS;
        }
        long j = this.zzb;
        if (j > 0) {
            zzb = zzgch.zzo(zzb, j, timeUnit, this.zzc);
        }
        return zzgch.zzf(zzb, Throwable.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzesc
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzesd.this.zzc((Throwable) obj);
            }
        }, zzbzw.zzg);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcq)).booleanValue()) {
            zzetr zzetrVar = this.zza;
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "OptionalSignalTimeout:" + zzetrVar.zza());
        }
        return zzgch.zzh(null);
    }
}
