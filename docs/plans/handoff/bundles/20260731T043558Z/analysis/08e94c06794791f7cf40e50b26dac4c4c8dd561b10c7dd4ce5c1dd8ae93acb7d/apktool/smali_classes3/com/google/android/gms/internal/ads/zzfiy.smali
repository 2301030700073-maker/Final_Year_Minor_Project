.class public final Lcom/google/android/gms/internal/ads/zzfiy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfic;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfiv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfhy;

.field private final zzd:Ljava/util/ArrayDeque;

.field private zze:Lcom/google/android/gms/internal/ads/zzfje;

.field private zzf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfic;Lcom/google/android/gms/internal/ads/zzfhy;Lcom/google/android/gms/internal/ads/zzfiv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zza:Lcom/google/android/gms/internal/ads/zzfic;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzc:Lcom/google/android/gms/internal/ads/zzfhy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzb:Lcom/google/android/gms/internal/ads/zzfiv;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzd:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfix;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfix;-><init>(Lcom/google/android/gms/internal/ads/zzfiy;)V

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfhy;->zza(Lcom/google/android/gms/internal/ads/zzfhx;)V

    return-void
.end method

.method private final declared-synchronized zzh()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzgO:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbj;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzi()Lcom/google/android/gms/internal/ads/zzcbe;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbe;->zzi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzd:Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfiy;->zzi()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzd:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfiw;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfiw;->zzb()Lcom/google/android/gms/internal/ads/zzfim;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zza:Lcom/google/android/gms/internal/ads/zzfic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfiw;->zzb()Lcom/google/android/gms/internal/ads/zzfim;

    move-result-object v2

    .line 9
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfic;->zzc(Lcom/google/android/gms/internal/ads/zzfim;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zza:Lcom/google/android/gms/internal/ads/zzfic;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzb:Lcom/google/android/gms/internal/ads/zzfiv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfje;

    .line 10
    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfje;-><init>(Lcom/google/android/gms/internal/ads/zzfic;Lcom/google/android/gms/internal/ads/zzfiv;Lcom/google/android/gms/internal/ads/zzfiw;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zze:Lcom/google/android/gms/internal/ads/zzfje;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfit;

    .line 11
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfit;-><init>(Lcom/google/android/gms/internal/ads/zzfiy;Lcom/google/android/gms/internal/ads/zzfiw;)V

    .line 12
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfje;->zza(Lcom/google/android/gms/internal/ads/zzguf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final declared-synchronized zzi()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zze:Lcom/google/android/gms/internal/ads/zzfje;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzfiw;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzd:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfiw;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzf:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfiy;->zzi()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zze:Lcom/google/android/gms/internal/ads/zzfje;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfje;->zzb(Lcom/google/android/gms/internal/ads/zzfiw;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final synthetic zzc()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzf:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfiy;->zzh()V

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic zzd()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfiy;->zzh()V

    return-void
.end method

.method final synthetic zze()Ljava/util/ArrayDeque;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzd:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzfje;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zze:Lcom/google/android/gms/internal/ads/zzfje;

    return-void
.end method

.method final synthetic zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfiy;->zzf:I

    return v0
.end method
