package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class zzemb implements zzetr {
    private final InterfaceFutureC3942wq zza;
    private final Executor zzb;
    private final ScheduledExecutorService zzc;

    public zzemb(InterfaceFutureC3942wq interfaceFutureC3942wq, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.zza = interfaceFutureC3942wq;
        this.zzb = executor;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 6;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        InterfaceFutureC3942wq zzn = zzgch.zzn(this.zza, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzelz
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzgch.zzh(new zzemc((String) obj));
            }
        }, this.zzb);
        if (((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmp)).intValue() > 0) {
            zzn = zzgch.zzo(zzn, ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(r1)).intValue(), TimeUnit.MILLISECONDS, this.zzc);
        }
        return zzgch.zzf(zzn, Throwable.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzema
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return ((Throwable) obj) instanceof TimeoutException ? zzgch.zzh(new zzemc(Integer.toString(17))) : zzgch.zzh(new zzemc(null));
            }
        }, this.zzb);
    }
}
