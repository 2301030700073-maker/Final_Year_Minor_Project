.class public final Lcom/google/android/gms/internal/ads/zzeea;
.super Lcom/google/android/gms/internal/ads/zzbww;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeei;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcnr;

.field private final zze:Ljava/util/ArrayDeque;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzflp;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbxr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzbxr;Lcom/google/android/gms/internal/ads/zzcnr;Lcom/google/android/gms/internal/ads/zzeei;Ljava/util/ArrayDeque;Lcom/google/android/gms/internal/ads/zzeef;Lcom/google/android/gms/internal/ads/zzflp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbww;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbeu;->zza(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeea;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzg:Lcom/google/android/gms/internal/ads/zzbxr;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzc:Lcom/google/android/gms/internal/ads/zzeei;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzd:Lcom/google/android/gms/internal/ads/zzcnr;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeea;->zze:Ljava/util/ArrayDeque;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzf:Lcom/google/android/gms/internal/ads/zzflp;

    return-void
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzezc;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedo;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzedo;-><init>(Lcom/google/android/gms/internal/ads/zzezc;Lcom/google/android/gms/internal/ads/zzbxj;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzedp;->zza:Lcom/google/android/gms/internal/ads/zzedp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkm;->zze:Lcom/google/android/gms/internal/ads/zzfkm;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zza:Landroid/os/Bundle;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzc(Lcom/google/android/gms/internal/ads/zzgtq;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfkj;->zzb(Lcom/google/android/gms/internal/ads/zzfjx;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p0

    return-object p0
.end method

.method private static zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzbqp;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbqm;->zza:Lcom/google/android/gms/internal/ads/zzbqj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzedu;->zza:Lcom/google/android/gms/internal/ads/zzedu;

    .line 2
    const-string v2, "AFMA_getAdDictionary"

    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbqp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbqh;)Lcom/google/android/gms/internal/ads/zzbqf;

    move-result-object p2

    .line 3
    invoke-static {p0, p4}, Lcom/google/android/gms/internal/ads/zzfll;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflc;)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkm;->zzg:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 5
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfkj;->zzc(Lcom/google/android/gms/internal/ads/zzgtq;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p0

    .line 6
    invoke-static {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfll;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)V

    return-object p0
.end method

.method private final zzo(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbxb;Lcom/google/android/gms/internal/ads/zzbxj;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeds;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeds;-><init>(Lcom/google/android/gms/internal/ads/zzeea;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcbv;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedl;

    .line 3
    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzedl;-><init>(Lcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzbxb;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcbv;->zzg:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final declared-synchronized zzp()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhb;->zzb:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeea;->zze:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized zzq(Lcom/google/android/gms/internal/ads/zzedv;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeea;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeea;->zze:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
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

.method private final declared-synchronized zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzedv;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeea;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzedv;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzedv;->zzc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbqg;

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzeea;->zza:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeea;->zzf:Lcom/google/android/gms/internal/ads/zzflp;

    invoke-virtual {v2, v9, v3, v4}, Lcom/google/android/gms/internal/ads/zzbqg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzflp;)Lcom/google/android/gms/internal/ads/zzbqp;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeea;->zzd:Lcom/google/android/gms/internal/ads/zzcnr;

    move/from16 v7, p2

    .line 3
    invoke-interface {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzcnr;->zzy(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/android/gms/internal/ads/zzezc;

    move-result-object v10

    sget-object v3, Lcom/google/android/gms/internal/ads/zzedx;->zzd:Lcom/google/android/gms/internal/ads/zzbqi;

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbqm;->zzb:Lcom/google/android/gms/internal/ads/zzbqh;

    .line 5
    const-string v5, "google.afma.response.normalize"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzbqp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbqh;)Lcom/google/android/gms/internal/ads/zzbqf;

    move-result-object v11

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhb;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbxj;->zzj:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Request contained a PoolKey but split request is disabled."

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbxj;->zzh:Ljava/lang/String;

    .line 10
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzeea;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzedv;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v3, "Request contained a PoolKey but no matching parameters were found."

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move-object v12, v4

    if-nez v12, :cond_2

    const/16 v3, 0x9

    .line 12
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v3

    goto :goto_1

    .line 48
    :cond_2
    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzedv;->zzd:Lcom/google/android/gms/internal/ads/zzflc;

    :goto_1
    move-object v13, v3

    .line 13
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzezc;->zzf()Lcom/google/android/gms/internal/ads/zzflm;

    move-result-object v14

    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbxj;->zza:Landroid/os/Bundle;

    const-string v4, "ad_types"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzflm;->zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzflm;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzeeh;

    .line 15
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbxj;->zzg:Ljava/lang/String;

    invoke-direct {v15, v3, v14, v13}, Lcom/google/android/gms/internal/ads/zzeeh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)V

    .line 16
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbxj;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzeea;->zzg:Lcom/google/android/gms/internal/ads/zzbxr;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzeee;

    const/16 v16, 0x0

    move-object v3, v8

    move-object v4, v9

    move/from16 v7, p2

    move-object v0, v8

    move-object/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzeee;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxr;ILjava/lang/String;)V

    .line 17
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzezc;->zze()Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object v3

    const/16 v4, 0xb

    .line 18
    invoke-static {v9, v4}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v12, :cond_3

    .line 19
    invoke-static {v1, v3, v10}, Lcom/google/android/gms/internal/ads/zzeea;->zzm(Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzezc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v10

    .line 20
    invoke-static {v10, v3, v2, v14, v13}, Lcom/google/android/gms/internal/ads/zzeea;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzbqp;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 21
    invoke-static {v9, v5}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v5

    .line 22
    sget-object v9, Lcom/google/android/gms/internal/ads/zzfkm;->zzi:Lcom/google/android/gms/internal/ads/zzfkm;

    new-array v12, v8, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v2, v12, v7

    aput-object v10, v12, v6

    .line 23
    invoke-virtual {v3, v9, v12}, Lcom/google/android/gms/internal/ads/zzfkk;->zzb(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkb;

    move-result-object v9

    new-instance v12, Lcom/google/android/gms/internal/ads/zzedt;

    invoke-direct {v12, v2, v1, v10}, Lcom/google/android/gms/internal/ads/zzedt;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 24
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/zzfkb;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v9

    .line 25
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/zzfkj;->zzb(Lcom/google/android/gms/internal/ads/zzfjx;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v9

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfll;->zzc(Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/android/gms/internal/ads/zzfjx;

    move-result-object v12

    .line 26
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/zzfkj;->zzb(Lcom/google/android/gms/internal/ads/zzfjx;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v9

    .line 27
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzb(Lcom/google/android/gms/internal/ads/zzfjx;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object v0

    .line 29
    invoke-static {v0, v14, v5}, Lcom/google/android/gms/internal/ads/zzfll;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)V

    .line 30
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzfll;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflc;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfkm;->zzk:Lcom/google/android/gms/internal/ads/zzfkm;

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v10, v9, v7

    aput-object v2, v9, v6

    aput-object v0, v9, v8

    .line 31
    invoke-virtual {v3, v5, v9}, Lcom/google/android/gms/internal/ads/zzfkk;->zzb(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkb;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzedm;

    invoke-direct {v5, v1, v0, v10, v2}, Lcom/google/android/gms/internal/ads/zzedm;-><init>(Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 32
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfkb;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfkj;->zzc(Lcom/google/android/gms/internal/ads/zzgtq;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object v0

    goto :goto_2

    .line 49
    :cond_3
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzedv;->zza:Lcom/google/android/gms/internal/ads/zzbxl;

    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzedv;->zzb:Lorg/json/JSONObject;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzeeg;

    invoke-direct {v10, v2, v1}, Lcom/google/android/gms/internal/ads/zzeeg;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbxl;)V

    .line 35
    invoke-static {v9, v5}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v1

    .line 36
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfkm;->zzi:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 37
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzfkj;->zzb(Lcom/google/android/gms/internal/ads/zzfjx;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfll;->zzc(Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/android/gms/internal/ads/zzfjx;

    move-result-object v5

    .line 39
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfkj;->zzb(Lcom/google/android/gms/internal/ads/zzfjx;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzb(Lcom/google/android/gms/internal/ads/zzfjx;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object v0

    .line 42
    invoke-static {v0, v14, v1}, Lcom/google/android/gms/internal/ads/zzfll;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)V

    .line 43
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 44
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzfll;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflc;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfkm;->zzk:Lcom/google/android/gms/internal/ads/zzfkm;

    new-array v5, v8, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v0, v5, v7

    aput-object v1, v5, v6

    .line 45
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzfkk;->zzb(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkb;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzedn;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzedn;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 46
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfkb;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfkj;->zzc(Lcom/google/android/gms/internal/ads/zzgtq;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object v0

    .line 49
    :goto_2
    invoke-static {v0, v14, v4}, Lcom/google/android/gms/internal/ads/zzfll;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhb;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbxj;->zzi:Lcom/google/android/gms/internal/ads/zzfij;

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfij;->zzc:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfij;->zzd:I

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeea;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzf:Lcom/google/android/gms/internal/ads/zzflp;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbqg;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzbqg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzflp;)Lcom/google/android/gms/internal/ads/zzbqp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzd:Lcom/google/android/gms/internal/ads/zzcnr;

    .line 8
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcnr;->zzy(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/android/gms/internal/ads/zzezc;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzezc;->zze()Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object v2

    .line 10
    invoke-static {p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzeea;->zzm(Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzezc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzezc;->zzf()Lcom/google/android/gms/internal/ads/zzflm;

    move-result-object p2

    const/16 v3, 0x9

    .line 12
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v8

    .line 13
    invoke-static {v6, v2, v1, p2, v8}, Lcom/google/android/gms/internal/ads/zzeea;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzbqp;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfkm;->zzz:Lcom/google/android/gms/internal/ads/zzfkm;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    .line 15
    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/ads/zzfkk;->zzb(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkb;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedq;

    move-object v3, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzedq;-><init>(Lcom/google/android/gms/internal/ads/zzeea;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzflc;)V

    .line 16
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfkb;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhb;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedk;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzedk;-><init>(Lcom/google/android/gms/internal/ads/zzeea;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeea;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzedv;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "URL to be removed not found for cache key: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzbxb;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzcv:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbxj;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzduq;->zzg:Lcom/google/android/gms/internal/ads/zzduq;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzeea;->zzb(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzeea;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbxb;Lcom/google/android/gms/internal/ads/zzbxj;)V

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgu;->zzg:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzc:Lcom/google/android/gms/internal/ads/zzeei;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzedz;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzedz;-><init>(Lcom/google/android/gms/internal/ads/zzeei;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-interface {v0, p2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzbxb;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzcv:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbxj;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzduq;->zzg:Lcom/google/android/gms/internal/ads/zzduq;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzeea;->zzk(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzeea;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbxb;Lcom/google/android/gms/internal/ads/zzbxj;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzbxb;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzeea;->zzc(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzeea;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbxb;Lcom/google/android/gms/internal/ads/zzbxj;)V

    return-void
.end method

.method public final zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxb;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeea;->zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzeea;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbxb;Lcom/google/android/gms/internal/ads/zzbxj;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzoQ:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v8, "Unexpected preconnect response: "

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzoR:Lcom/google/android/gms/internal/ads/zzbel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x2c

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzglr;->zzc(C)Lcom/google/android/gms/internal/ads/zzglr;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgms;->zza(Lcom/google/android/gms/internal/ads/zzglr;)Lcom/google/android/gms/internal/ads/zzgms;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgms;->zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    const-string v3, "AdRequestServiceImpl: Preconnecting"

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzeea;->zza:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzeea;->zzg:Lcom/google/android/gms/internal/ads/zzbxr;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzeee;

    const-string v7, "HEAD"

    move-object v2, v15

    move-object v3, v10

    move-object/from16 v4, p1

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzeee;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxr;ILjava/lang/String;)V

    new-instance v13, Ljava/util/HashMap;

    .line 11
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "User-Agent"

    .line 13
    invoke-virtual {v13, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeec;

    const/4 v4, 0x0

    new-array v14, v4, [B

    const-string v4, ""

    const/16 v16, 0x0

    const/16 v12, 0x7530

    move-object v10, v2

    move-object v5, v15

    move-object v15, v4

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzeec;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    .line 14
    :try_start_0
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzeee;->zzb(Lcom/google/android/gms/internal/ads/zzeec;)Lcom/google/android/gms/internal/ads/zzeed;

    move-result-object v2

    .line 15
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeed;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzeed;->zza:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzeed;->zza:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 17
    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzbwt;Lcom/google/android/gms/internal/ads/zzbxc;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhj;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, ""

    .line 2
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbxc;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbwt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    const-string p2, "Service can\'t call client"

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzd:Lcom/google/android/gms/internal/ads/zzcnr;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcnr;->zzF()Lcom/google/android/gms/internal/ads/zzcaz;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbwt;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzedj;

    .line 7
    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzedj;-><init>(Lcom/google/android/gms/internal/ads/zzeea;Lcom/google/android/gms/internal/ads/zzbxc;Lcom/google/android/gms/internal/ads/zzbwt;)V

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcbv;->zzg:Lcom/google/android/gms/internal/ads/zzgus;

    .line 7
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbqg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeea;->zza:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzf:Lcom/google/android/gms/internal/ads/zzflp;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbqg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzflp;)Lcom/google/android/gms/internal/ads/zzbqp;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhh;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzd:Lcom/google/android/gms/internal/ads/zzcnr;

    .line 5
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcnr;->zzy(Lcom/google/android/gms/internal/ads/zzbxj;I)Lcom/google/android/gms/internal/ads/zzezc;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzezc;->zzd()Lcom/google/android/gms/internal/ads/zzeyd;

    move-result-object v2

    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbqm;->zza:Lcom/google/android/gms/internal/ads/zzbqj;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbqm;->zzb:Lcom/google/android/gms/internal/ads/zzbqh;

    .line 8
    const-string v5, "google.afma.request.getSignals"

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzbqp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbqh;)Lcom/google/android/gms/internal/ads/zzbqf;

    move-result-object v0

    const/16 v3, 0x16

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v1

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzezc;->zze()Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object v3

    .line 11
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfkm;->zzl:Lcom/google/android/gms/internal/ads/zzfkm;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzbxj;->zza:Landroid/os/Bundle;

    .line 12
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfll;->zzc(Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/android/gms/internal/ads/zzfjx;

    move-result-object v4

    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfkj;->zzb(Lcom/google/android/gms/internal/ads/zzfjx;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzedr;

    invoke-direct {v4, v2, p1}, Lcom/google/android/gms/internal/ads/zzedr;-><init>(Lcom/google/android/gms/internal/ads/zzeyd;Lcom/google/android/gms/internal/ads/zzbxj;)V

    .line 14
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfkj;->zzc(Lcom/google/android/gms/internal/ads/zzgtq;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfkm;->zzm:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 15
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzfkj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzc(Lcom/google/android/gms/internal/ads/zzgtq;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p1

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzezc;->zzf()Lcom/google/android/gms/internal/ads/zzflm;

    move-result-object p2

    const-string v0, "ad_types"

    .line 19
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzflm;->zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzflm;

    const-string v0, "extras"

    .line 20
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzflm;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzflm;

    .line 21
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfll;->zze(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;)V

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbgu;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzc:Lcom/google/android/gms/internal/ads/zzeei;

    .line 23
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzedy;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzedy;-><init>(Lcom/google/android/gms/internal/ads/zzeei;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeea;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-interface {p1, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-object p1
.end method

.method final synthetic zzl(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzflc;)Ljava/io/InputStream;
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbxl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxl;->zzi()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/json/JSONObject;

    .line 3
    iget-object v4, p3, Lcom/google/android/gms/internal/ads/zzbxj;->zzh:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzedv;

    .line 4
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbxl;

    move-object v1, p2

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzedv;-><init>(Lcom/google/android/gms/internal/ads/zzbxl;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzflc;)V

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzeea;->zzq(Lcom/google/android/gms/internal/ads/zzedv;)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 6
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method
