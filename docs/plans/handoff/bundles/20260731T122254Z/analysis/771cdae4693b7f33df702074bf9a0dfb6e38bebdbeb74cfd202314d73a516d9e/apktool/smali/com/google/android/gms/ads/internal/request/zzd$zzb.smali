.class public Lcom/google/android/gms/ads/internal/request/zzd$zzb;
.super Lcom/google/android/gms/ads/internal/request/zzd;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final zzCi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

.field protected zzCj:Lcom/google/android/gms/ads/internal/request/zze;

.field private final zzqt:Ljava/lang/Object;

.field private zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/zzd;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzqt:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzCi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    new-instance p3, Lcom/google/android/gms/ads/internal/request/zze;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget p2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGI:I

    invoke-direct {p3, p1, p0, p0, p2}, Lcom/google/android/gms/ads/internal/request/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;I)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzCj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->connect()V

    return-void
.end method


# virtual methods
.method protected connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzCj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zze;->zznJ()V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzgi()Ljava/util/concurrent/Future;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 7

    const-string v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzfx()Lcom/google/android/gms/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhh;->zzgi()Ljava/util/concurrent/Future;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    return-void
.end method

.method public zzfv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzCj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/request/zze;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzCj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/request/zze;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzCj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/request/zze;->disconnect()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzfw()Lcom/google/android/gms/ads/internal/request/zzi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzCj:Lcom/google/android/gms/ads/internal/request/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/request/zze;->zzfy()Lcom/google/android/gms/ads/internal/request/zzi;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method zzfx()Lcom/google/android/gms/internal/zzhh;
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzd$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzxm:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzd$zzb;->zzCi:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/zzd$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    return-object v0
.end method
