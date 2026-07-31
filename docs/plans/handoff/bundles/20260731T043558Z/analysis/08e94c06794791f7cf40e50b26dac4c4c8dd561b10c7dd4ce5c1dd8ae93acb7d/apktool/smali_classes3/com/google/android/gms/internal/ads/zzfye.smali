.class final Lcom/google/android/gms/internal/ads/zzfye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifq;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfyf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfyf;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfye;->zza:Lcom/google/android/gms/internal/ads/zzfyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfye;->zza:Lcom/google/android/gms/internal/ads/zzfyf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyf;->zzb()Lcom/google/android/gms/internal/ads/zzfxz;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyf;->zzc()Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzfyi;-><init>(Lcom/google/android/gms/internal/ads/zzfxz;Lcom/google/android/gms/internal/ads/zzfyf;[B)V

    return-object v1
.end method
