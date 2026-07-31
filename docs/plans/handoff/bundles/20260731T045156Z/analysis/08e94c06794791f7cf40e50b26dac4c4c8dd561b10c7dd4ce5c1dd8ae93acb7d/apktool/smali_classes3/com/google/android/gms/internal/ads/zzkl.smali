.class public interface abstract Lcom/google/android/gms/internal/ads/zzkl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzpc;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onPrepared not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzkk;Lcom/google/android/gms/internal/ads/zzwv;[Lcom/google/android/gms/internal/ads/zzyk;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onTracksSelected not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzc(Lcom/google/android/gms/internal/ads/zzpc;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onStopped not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzd(Lcom/google/android/gms/internal/ads/zzpc;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onReleased not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract zze(Lcom/google/android/gms/internal/ads/zzpc;)Lcom/google/android/gms/internal/ads/zzyv;
.end method

.method public zzf(Lcom/google/android/gms/internal/ads/zzpc;)J
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getBackBufferDurationUs not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzg(Lcom/google/android/gms/internal/ads/zzpc;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "retainBackBufferFromKeyframe not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzh(Lcom/google/android/gms/internal/ads/zzkk;)Z
    .locals 2

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzkk;->zzd:J

    const/4 p1, 0x0

    throw p1
.end method

.method public zzi(Lcom/google/android/gms/internal/ads/zzkk;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkk;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    const/4 p1, 0x0

    throw p1
.end method

.method public zzj(Lcom/google/android/gms/internal/ads/zzpc;Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzuu;J)Z
    .locals 0

    .line 1
    const-string p1, "LoadControl"

    const-string p2, "shouldContinuePreloading needs to be implemented when playlist preloading is enabled"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
