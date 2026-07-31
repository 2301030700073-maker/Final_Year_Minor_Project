.class final Lcom/google/android/gms/internal/ads/zzggb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzght;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzggu;

.field private final zzc:Ljava/util/concurrent/ExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzghy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgjd;

.field private final zzf:Ljava/lang/Object;

.field private final zzg:Ljava/lang/String;

.field private final zzh:J

.field private final zzi:J

.field private zzj:Lcom/google/android/gms/internal/ads/zzgga;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzifw;Lcom/google/android/gms/internal/ads/zzght;Lcom/google/android/gms/internal/ads/zzggu;Lcom/google/android/gms/internal/ads/zzghy;Lcom/google/android/gms/internal/ads/zzgjd;Lcom/google/android/gms/internal/ads/zzfxt;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzf:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzggb;->zza:Lcom/google/android/gms/internal/ads/zzght;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzb:Lcom/google/android/gms/internal/ads/zzggu;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzc:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzd:Lcom/google/android/gms/internal/ads/zzghy;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfxt;->zzb()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzg:Ljava/lang/String;

    .line 2
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfxt;->zzk()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzh:J

    .line 3
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfxt;->zzj()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzi:J

    return-void
.end method

.method private final zzq(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarp;,
            Lcom/google/android/gms/internal/ads/zzarl;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v1, 0x4e8e

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(I)Lcom/google/android/gms/internal/ads/zzgjb;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjb;->zza()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzf:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzj:Lcom/google/android/gms/internal/ads/zzgga;

    if-nez v3, :cond_0

    const/16 p1, 0x4e8d

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    const-string p1, ""

    .line 4
    monitor-exit v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzb(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzc()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 7
    :try_start_4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzb(Ljava/lang/Throwable;)V

    .line 8
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzc()V

    .line 10
    throw p1
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzj:Lcom/google/android/gms/internal/ads/zzgga;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgga;->zzd()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const-string v1, "3.-1"

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzb:Lcom/google/android/gms/internal/ads/zzggu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggu;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgfz;->zza:Lcom/google/android/gms/internal/ads/zzgfz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzc:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgfr;-><init>(Lcom/google/android/gms/internal/ads/zzggb;)V

    .line 3
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgfs;-><init>(Lcom/google/android/gms/internal/ads/zzggb;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzc:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgft;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgft;-><init>(Lcom/google/android/gms/internal/ads/zzggb;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzc:Ljava/util/concurrent/ExecutorService;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzgfu;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgfu;-><init>(Lcom/google/android/gms/internal/ads/zzggb;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzc:Ljava/util/concurrent/ExecutorService;

    invoke-static {p4, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Landroid/view/InputEvent;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzf:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzarp; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzarl; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzj:Lcom/google/android/gms/internal/ads/zzgga;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "evt"

    .line 2
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgga;->zzc(Ljava/util/Map;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v1, 0x4e89

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzarp; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzarl; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v1, 0x4e88

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzd(ILjava/lang/Throwable;)V

    return-void
.end method

.method public final zzg()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method final zzh(Ljava/util/Map;)V
    .locals 11

    .line 1
    const-string v0, "v"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzg:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gs"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v1, "ai"

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const-string v6, "E"

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v8, 0x4e8b

    .line 4
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(I)Lcom/google/android/gms/internal/ads/zzgjb;

    move-result-object v7

    .line 5
    :try_start_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgjb;->zza()V

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzi:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-interface {v0, v8, v9, v10}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauz;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauz;->zzh()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzhur;->zzaN()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauz;->zzb()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauz;->zzb()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauz;->zzc()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauz;->zzd()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_1
    move-object v8, v6

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v8, v6

    .line 9
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object v0, v9

    .line 10
    :cond_2
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzgjb;->zzb(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    :goto_2
    move-object v8, v6

    .line 12
    :goto_3
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzgjb;->zzb(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_3
    :goto_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgjb;->zzc()V

    goto :goto_6

    :goto_5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgjb;->zzc()V

    .line 13
    throw p1

    :cond_4
    move-object v8, v6

    .line 14
    :goto_6
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v6, 0x4e8c

    .line 15
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(I)Lcom/google/android/gms/internal/ads/zzgjb;

    move-result-object v0

    .line 16
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjb;->zza()V

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzh:J

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-interface {v1, v6, v7, v9}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmu;->zzc(Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eq v2, v6, :cond_5

    move-object v8, v1

    .line 21
    :cond_5
    :goto_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjb;->zzc()V

    goto :goto_a

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_8
    move-exception v1

    .line 19
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object v1, v2

    .line 20
    :cond_6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzb(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_8

    :catch_b
    move-exception v1

    .line 22
    :goto_8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzb(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    .line 21
    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjb;->zzc()V

    .line 23
    throw p1

    .line 21
    :cond_7
    :goto_a
    const-string v0, "int"

    .line 24
    invoke-interface {p1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_8

    const-string v0, "att"

    .line 25
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "gv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzgaa;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggb;->zza:Lcom/google/android/gms/internal/ads/zzght;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzght;->zzb(Lcom/google/android/gms/internal/ads/zzgaa;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzb:Lcom/google/android/gms/internal/ads/zzggu;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzggu;->zzc()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgfv;-><init>(Lcom/google/android/gms/internal/ads/zzggb;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v0, 0x4e87

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgfi;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgfi;-><init>(I)V

    throw p1
.end method

.method final synthetic zzj(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzggb;Ljava/util/Map;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v2, 0x4e8a

    .line 2
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzf(ILjava/lang/Runnable;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzggb;->zzq(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p1
.end method

.method final synthetic zzk(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzgfx;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgfx;-><init>(Lcom/google/android/gms/internal/ads/zzggb;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 p3, 0x4e8a

    .line 2
    invoke-virtual {p1, p3, v7}, Lcom/google/android/gms/internal/ads/zzgjd;->zzf(ILjava/lang/Runnable;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzggb;->zzq(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    return-object p1
.end method

.method final synthetic zzl(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzgfy;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgfy;-><init>(Lcom/google/android/gms/internal/ads/zzggb;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 p2, 0x4e8a

    .line 2
    invoke-virtual {p1, p2, v7}, Lcom/google/android/gms/internal/ads/zzgjd;->zzf(ILjava/lang/Runnable;)V

    .line 3
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzggb;->zzq(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {p4}, Ljava/util/Map;->clear()V

    return-object p1
.end method

.method final synthetic zzm([B)Ljava/lang/Void;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgge;->zzc()Lcom/google/android/gms/internal/ads/zzarn;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzarn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zze:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v2, 0x4e86

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(I)Lcom/google/android/gms/internal/ads/zzgjb;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjb;->zza()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzf:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzarp; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzarl; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zza(Lcom/google/android/gms/internal/ads/zzarn;[B)Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzj:Lcom/google/android/gms/internal/ads/zzgga;

    .line 6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzc()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzarp; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzarl; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 7
    :try_start_4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzb(Ljava/lang/Throwable;)V

    .line 8
    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    :goto_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzb(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfi;

    const/4 v2, 0x2

    .line 10
    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzgfi;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzc()V

    .line 12
    throw p1
.end method

.method final synthetic zzn(Ljava/util/Map;Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzd:Lcom/google/android/gms/internal/ads/zzghy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghy;->zzb()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzggb;->zzh(Ljava/util/Map;)V

    const-string v0, "f"

    const-string v1, "q"

    .line 3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ctx"

    .line 4
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final synthetic zzo(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzd:Lcom/google/android/gms/internal/ads/zzghy;

    invoke-virtual {p5, p2, p3}, Lcom/google/android/gms/internal/ads/zzghy;->zzc(Landroid/content/Context;Landroid/view/View;)Ljava/util/Map;

    move-result-object p5

    invoke-interface {p1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzggb;->zzh(Ljava/util/Map;)V

    const-string p5, "f"

    const-string v0, "v"

    .line 3
    invoke-interface {p1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "ctx"

    .line 4
    invoke-interface {p1, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "view"

    .line 5
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "act"

    .line 6
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "bds"

    const/4 p3, 0x0

    .line 7
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final synthetic zzp(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzggb;->zzd:Lcom/google/android/gms/internal/ads/zzghy;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzghy;->zzd()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzggb;->zzh(Ljava/util/Map;)V

    const-string p4, "f"

    const-string v0, "c"

    .line 3
    invoke-interface {p1, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "ctx"

    .line 4
    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "view"

    .line 5
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "act"

    const/4 p3, 0x0

    .line 6
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "bds"

    .line 7
    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
