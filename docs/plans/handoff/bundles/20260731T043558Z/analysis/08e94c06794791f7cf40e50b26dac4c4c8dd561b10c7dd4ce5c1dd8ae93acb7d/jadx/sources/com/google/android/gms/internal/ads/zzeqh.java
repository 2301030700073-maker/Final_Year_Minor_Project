package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeqh implements zzeya {
    private final ListenableFuture zza;
    private final Executor zzb;
    private final ScheduledExecutorService zzc;

    zzeqh(ListenableFuture listenableFuture, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.zza = listenableFuture;
        this.zzb = executor;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        ListenableFuture listenableFuture = this.zza;
        zzeqg zzeqgVar = zzeqg.zza;
        Executor executor = this.zzb;
        ListenableFuture zzj = zzgui.zzj(listenableFuture, zzeqgVar, executor);
        if (((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzny)).intValue() > 0) {
            zzj = zzgui.zzi(zzj, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(r1)).intValue(), TimeUnit.MILLISECONDS, this.zzc);
        }
        return zzgui.zzh(zzj, Throwable.class, zzeqf.zza, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 6;
    }
}
