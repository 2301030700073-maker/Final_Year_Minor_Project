.class public final Lcom/google/android/gms/internal/ads/zzekf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzctr;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzekv;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfnc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgvb;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzh:Lcom/google/android/gms/internal/ads/zzekg;

.field private zzi:Lcom/google/android/gms/internal/ads/zzfgf;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzctr;Lcom/google/android/gms/internal/ads/zzekv;Lcom/google/android/gms/internal/ads/zzfnc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvb;->zze()Lcom/google/android/gms/internal/ads/zzgvb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzf:Lcom/google/android/gms/internal/ads/zzgvb;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekf;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzc:Lcom/google/android/gms/internal/ads/zzctr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzd:Lcom/google/android/gms/internal/ads/zzekv;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzekf;->zze:Lcom/google/android/gms/internal/ads/zzfnc;

    return-void
.end method

.method private final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzffu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffu;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzc:Lcom/google/android/gms/internal/ads/zzctr;

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzffu;->zzb:I

    .line 2
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzctr;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzehk;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzi:Lcom/google/android/gms/internal/ads/zzfgf;

    .line 3
    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzehk;->zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzi:Lcom/google/android/gms/internal/ads/zzfgf;

    .line 4
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzehk;->zzb(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzffu;->zzR:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-static {v0, v2, v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdzv;

    const/4 v0, 0x3

    .line 6
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzv;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

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

.method private final zze(Lcom/google/android/gms/internal/ads/zzffu;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzekf;->zzd(Lcom/google/android/gms/internal/ads/zzffu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekf;->zze:Lcom/google/android/gms/internal/ads/zzfnc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzd:Lcom/google/android/gms/internal/ads/zzekv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzi:Lcom/google/android/gms/internal/ads/zzfgf;

    .line 2
    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzekv;->zze(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfnc;)Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeke;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzeke;-><init>(Lcom/google/android/gms/internal/ads/zzekf;Lcom/google/android/gms/internal/ads/zzffu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekf;->zza:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfge;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzf:Lcom/google/android/gms/internal/ads/zzgvb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzekz;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzelc;->zzb(Lcom/google/android/gms/internal/ads/zzfgf;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzekz;-><init>(ILjava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvb;->zzb(Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzi:Lcom/google/android/gms/internal/ads/zzfgf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzd:Lcom/google/android/gms/internal/ads/zzekv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzf:Lcom/google/android/gms/internal/ads/zzgvb;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzekg;

    .line 3
    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzekg;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzekv;Lcom/google/android/gms/internal/ads/zzgvb;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzh:Lcom/google/android/gms/internal/ads/zzekg;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzekv;->zzc(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzh:Lcom/google/android/gms/internal/ads/zzekg;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekg;->zza()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzekf;->zze(Lcom/google/android/gms/internal/ads/zzffu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzh:Lcom/google/android/gms/internal/ads/zzekg;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzekg;->zza()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzf:Lcom/google/android/gms/internal/ads/zzgvb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzffu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzekf;->zze(Lcom/google/android/gms/internal/ads/zzffu;)V

    return-void
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzekg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekf;->zzh:Lcom/google/android/gms/internal/ads/zzekg;

    return-object v0
.end method
