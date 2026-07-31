.class public Lcom/google/android/gms/internal/zzgn;
.super Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzEM:Lcom/google/android/gms/internal/zzgo;

.field private final zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzqt:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgn;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgn;->zzoM:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzgo;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzcx()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/zzgo;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzEM:Lcom/google/android/gms/internal/zzgo;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgn;->zzqt:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzEM:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgo;->destroy()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLoaded()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzEM:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgo;->isLoaded()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzEM:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgo;->pause()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzEM:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgo;->resume()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzEM:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzgo;->setUserId(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzEM:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgo;->zzfK()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzEM:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgn;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzgn;->zzEM:Lcom/google/android/gms/internal/zzgo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzgo;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
