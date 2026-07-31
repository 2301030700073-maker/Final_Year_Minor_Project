.class final Lcom/google/android/gms/internal/ads/zzph;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzpj;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpj;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzph;->zza:Lcom/google/android/gms/internal/ads/zzpj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzph;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzph;->zza:Lcom/google/android/gms/internal/ads/zzpj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpj;->zzj()Lcom/google/android/gms/internal/ads/zzd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpj;->zzh()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 2
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzpe;->zzb(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zzd;Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzpe;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpj;->zzf(Lcom/google/android/gms/internal/ads/zzpe;)V

    :cond_0
    return-void
.end method
