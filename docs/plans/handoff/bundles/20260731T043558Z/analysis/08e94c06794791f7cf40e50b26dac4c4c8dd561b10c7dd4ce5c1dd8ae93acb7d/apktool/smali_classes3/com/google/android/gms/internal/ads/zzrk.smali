.class final Lcom/google/android/gms/internal/ads/zzrk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqe;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzrl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzrl;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrk;->zza:Lcom/google/android/gms/internal/ads/zzrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zza:Lcom/google/android/gms/internal/ads/zzrl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzat(Lcom/google/android/gms/internal/ads/zzrl;)Lcom/google/android/gms/internal/ads/zzlm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlm;->zza()V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zza:Lcom/google/android/gms/internal/ads/zzrl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzaw()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpz;->zzi(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzqb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrk;->zza:Lcom/google/android/gms/internal/ads/zzrl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzaw()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpz;->zzl(Lcom/google/android/gms/internal/ads/zzqb;)V

    return-void
.end method
