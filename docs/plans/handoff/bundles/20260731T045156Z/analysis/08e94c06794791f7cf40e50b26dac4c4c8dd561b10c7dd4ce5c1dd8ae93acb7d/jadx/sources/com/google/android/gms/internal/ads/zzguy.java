package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzguy extends zzguu implements zzgut {
    final ScheduledExecutorService zza;

    zzguy(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.zza = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzgut, java.util.concurrent.ScheduledExecutorService
    /* renamed from: zzd */
    public final zzgur schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService = this.zza;
        zzgvh zze = zzgvh.zze(runnable, null);
        return new zzguw(zze, scheduledExecutorService.schedule(zze, j, timeUnit));
    }

    @Override // com.google.android.gms.internal.ads.zzgut, java.util.concurrent.ScheduledExecutorService
    /* renamed from: zze */
    public final zzgur schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzgvh zzgvhVar = new zzgvh(callable);
        return new zzguw(zzgvhVar, this.zza.schedule(zzgvhVar, j, timeUnit));
    }

    @Override // com.google.android.gms.internal.ads.zzgut, java.util.concurrent.ScheduledExecutorService
    /* renamed from: zzf */
    public final zzgur scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzgux zzguxVar = new zzgux(runnable);
        return new zzguw(zzguxVar, this.zza.scheduleAtFixedRate(zzguxVar, j, j2, timeUnit));
    }

    @Override // com.google.android.gms.internal.ads.zzgut, java.util.concurrent.ScheduledExecutorService
    /* renamed from: zzg */
    public final zzgur scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzgux zzguxVar = new zzgux(runnable);
        return new zzguw(zzguxVar, this.zza.scheduleWithFixedDelay(zzguxVar, j, j2, timeUnit));
    }
}
