.class public final Lcom/google/android/gms/internal/ads/zzbpv;
.super Lcom/google/android/gms/internal/ads/zzcch;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbqa;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbqa;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcch;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpv;->zza:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpv;->zzb:Lcom/google/android/gms/internal/ads/zzbqa;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    const-string v0, "release: Trying to acquire lock"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpv;->zza:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    const-string v1, "release: Lock acquired"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbpv;->zzc:Z

    if-eqz v1, :cond_0

    const-string v1, "release: Lock already released"

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbpv;->zzc:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbps;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbps;-><init>(Lcom/google/android/gms/internal/ads/zzbpv;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzccd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzccd;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcch;->zze(Lcom/google/android/gms/internal/ads/zzcce;Lcom/google/android/gms/internal/ads/zzccc;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpt;

    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbpt;-><init>(Lcom/google/android/gms/internal/ads/zzbpv;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbpu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbpu;-><init>(Lcom/google/android/gms/internal/ads/zzbpv;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcch;->zze(Lcom/google/android/gms/internal/ads/zzcce;Lcom/google/android/gms/internal/ads/zzccc;)V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "release: Lock released"

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final synthetic zzb()Lcom/google/android/gms/internal/ads/zzbqa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpv;->zzb:Lcom/google/android/gms/internal/ads/zzbqa;

    return-object v0
.end method
