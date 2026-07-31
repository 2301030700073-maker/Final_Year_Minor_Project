.class final synthetic Lcom/google/android/gms/internal/ads/zzeir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzctm;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzehn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzehn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeir;->zza:Lcom/google/android/gms/internal/ads/zzehn;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeir;->zza:Lcom/google/android/gms/internal/ads/zzehn;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbti;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbti;->zzh()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgu;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfgu;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
