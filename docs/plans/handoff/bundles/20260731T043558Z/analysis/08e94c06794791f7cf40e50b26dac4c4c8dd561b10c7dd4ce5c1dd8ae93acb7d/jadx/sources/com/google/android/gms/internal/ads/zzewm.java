package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzewm implements zzeya {
    private final zzeya zza;
    private final long zzb;
    private final ScheduledExecutorService zzc;

    public zzewm(zzeya zzeyaVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzeyaVar;
        this.zzb = j;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        ListenableFuture zza = this.zza.zza();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcG)).booleanValue()) {
            timeUnit = TimeUnit.MICROSECONDS;
        }
        long j = this.zzb;
        if (j > 0) {
            zza = zzgui.zzi(zza, j, timeUnit, this.zzc);
        }
        return zzgui.zzh(zza, Throwable.class, new zzgtq() { // from class: com.google.android.gms.internal.ads.zzewl
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzewm.this.zzc((Throwable) obj);
            }
        }, zzcbv.zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return this.zza.zzb();
    }

    final /* synthetic */ ListenableFuture zzc(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcE)).booleanValue()) {
            zzeya zzeyaVar = this.zza;
            zzcbj zzh = com.google.android.gms.ads.internal.zzt.zzh();
            int zzb = zzeyaVar.zzb();
            StringBuilder sb = new StringBuilder(String.valueOf(zzb).length() + 22);
            sb.append("OptionalSignalTimeout:");
            sb.append(zzb);
            zzh.zzg(th, sb.toString());
        }
        return zzgui.zza(null);
    }
}
