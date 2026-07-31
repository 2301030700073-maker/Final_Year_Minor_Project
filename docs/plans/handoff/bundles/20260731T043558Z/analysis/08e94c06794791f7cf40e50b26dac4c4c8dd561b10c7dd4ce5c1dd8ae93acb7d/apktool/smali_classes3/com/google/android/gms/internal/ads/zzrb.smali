.class final Lcom/google/android/gms/internal/ads/zzrb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/media/AudioTrack;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzpj;

.field private final zzc:Landroid/os/Handler;

.field private zzd:Landroid/media/AudioRouting$OnRoutingChangedListener;


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrb;->zza:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrb;->zzb:Lcom/google/android/gms/internal/ads/zzpj;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzra;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzra;-><init>(Lcom/google/android/gms/internal/ads/zzrb;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrb;->zzd:Landroid/media/AudioRouting$OnRoutingChangedListener;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrb;->zzc:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrb;->zzd:Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrb;->zzd:Landroid/media/AudioRouting$OnRoutingChangedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrb;->zza:Landroid/media/AudioTrack;

    .line 1
    move-object v2, v0

    check-cast v2, Landroid/media/AudioRouting$OnRoutingChangedListener;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrb;->zzd:Landroid/media/AudioRouting$OnRoutingChangedListener;

    return-void
.end method

.method final synthetic zzb(Landroid/media/AudioRouting;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrb;->zzd:Landroid/media/AudioRouting$OnRoutingChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcw;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzqy;-><init>(Lcom/google/android/gms/internal/ads/zzrb;Landroid/media/AudioRouting;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzc(Landroid/media/AudioRouting;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrb;->zzc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Lcom/google/android/gms/internal/ads/zzrb;Landroid/media/AudioDeviceInfo;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic zzd(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrb;->zzd:Landroid/media/AudioRouting$OnRoutingChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrb;->zzb:Lcom/google/android/gms/internal/ads/zzpj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpj;->zzc(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method
