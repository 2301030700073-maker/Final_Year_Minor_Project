.class public final Lcom/google/android/gms/internal/ads/zzfct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfdm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfdm;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfiy;

.field private final zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzf:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfdm;Lcom/google/android/gms/internal/ads/zzfdm;Lcom/google/android/gms/internal/ads/zzfiy;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfct;->zza:Lcom/google/android/gms/internal/ads/zzfdm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfct;->zzb:Lcom/google/android/gms/internal/ads/zzfdm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfct;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfct;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfct;->zzf:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfdn;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfil;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfct;->zze:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfil;->zzc:Lcom/google/android/gms/internal/ads/zzcto;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcxv;->zzc()Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzfil;->zzc:Lcom/google/android/gms/internal/ads/zzcto;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcto;->zzp()Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfil;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcxv;->zzc()Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzfdj;->zzu(Lcom/google/android/gms/internal/ads/zzfdj;)V

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfil;->zzc:Lcom/google/android/gms/internal/ads/zzcto;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcxv;->zza()Lcom/google/android/gms/internal/ads/zzcus;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfil;->zzb:Lcom/google/android/gms/internal/ads/zzfgf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcus;->zzh(Lcom/google/android/gms/internal/ads/zzfgf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfct;->zza:Lcom/google/android/gms/internal/ads/zzfdm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfil;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 6
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcxv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfdd;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzfdd;->zzb(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzcxv;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfct;->zze:Lcom/google/android/gms/internal/ads/zzcxv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfdn;->zzb:Lcom/google/android/gms/internal/ads/zzfdk;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/zzfdl;->zza(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzcxu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfcu;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzfct;->zzd:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfcu;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzcxu;->zzi(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzcxu;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcxu;->zzh()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzcxv;

    .line 4
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcxv;->zzb()Lcom/google/android/gms/internal/ads/zzfgn;

    .line 5
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcxv;->zzb()Lcom/google/android/gms/internal/ads/zzfgn;

    .line 6
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcxv;->zzb()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcxv;->zzb()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v1

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzfgn;->zzg:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzfgn;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzfct;->zzf:Ljava/util/concurrent/Executor;

    new-instance v16, Lcom/google/android/gms/internal/ads/zzfcs;

    const/4 v15, 0x0

    move-object/from16 v8, v16

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move-object v13, v4

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzfcs;-><init>(Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/internal/ads/zzfim;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfct;->zzb:Lcom/google/android/gms/internal/ads/zzfdm;

    .line 9
    move-object v2, v6

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcxv;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfcz;

    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzfcz;->zza(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfcr;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v0, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfcr;-><init>(Lcom/google/android/gms/internal/ads/zzfct;Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfcs;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)V

    .line 11
    invoke-static {v8, v9, v0}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgua;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzfct;->zze:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfct;->zza:Lcom/google/android/gms/internal/ads/zzfdm;

    .line 7
    move-object v2, v6

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcxv;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfdd;

    invoke-virtual {v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzfdd;->zzb(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const/4 p3, 0x0

    .line 1
    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxv;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfct;->zzb(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfct;->zza()Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfcs;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzfcy;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    if-eqz p5, :cond_2

    .line 1
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfcs;->zza:Lcom/google/android/gms/internal/ads/zzfdl;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzfcs;->zzb:Lcom/google/android/gms/internal/ads/zzfdn;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfcs;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzfcs;->zzd:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzfcs;->zze:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfcs;->zzf:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v7, p5, Lcom/google/android/gms/internal/ads/zzfcy;->zza:Lcom/google/android/gms/internal/ads/zzfim;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfcs;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfcs;-><init>(Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/internal/ads/zzfim;)V

    iget-object v0, p5, Lcom/google/android/gms/internal/ads/zzfcy;->zzc:Lcom/google/android/gms/internal/ads/zzfil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfct;->zze:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfct;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfiy;->zza(Lcom/google/android/gms/internal/ads/zzfiw;)V

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfct;->zzg(Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfdn;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfct;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfiy;->zzb(Lcom/google/android/gms/internal/ads/zzfiw;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfct;->zze:Lcom/google/android/gms/internal/ads/zzcxv;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfcq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfcq;-><init>(Lcom/google/android/gms/internal/ads/zzfct;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfct;->zzf:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfiy;->zza(Lcom/google/android/gms/internal/ads/zzfiw;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfdn;->zzb:Lcom/google/android/gms/internal/ads/zzfdk;

    iget-object p2, p5, Lcom/google/android/gms/internal/ads/zzfcy;->zzb:Lcom/google/android/gms/internal/ads/zzbxj;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzfdn;

    .line 6
    invoke-direct {p5, p1, p2}, Lcom/google/android/gms/internal/ads/zzfdn;-><init>(Lcom/google/android/gms/internal/ads/zzfdk;Lcom/google/android/gms/internal/ads/zzbxj;)V

    move-object p1, p5

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfct;->zza:Lcom/google/android/gms/internal/ads/zzfdm;

    .line 7
    move-object p5, p4

    check-cast p5, Lcom/google/android/gms/internal/ads/zzcxv;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfdd;

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfdd;->zzb(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfct;->zze:Lcom/google/android/gms/internal/ads/zzcxv;

    :goto_0
    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzfiu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfiu;->zza:Lcom/google/android/gms/internal/ads/zzfil;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Lcom/google/android/gms/internal/ads/zzfiw;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfcs;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzb;->zzs()Lcom/google/android/gms/internal/ads/zzbdz$zzb$zzc;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzb$zza;->zzs()Lcom/google/android/gms/internal/ads/zzbdz$zzb$zza$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbdz$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbdz$zzb$zzd;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbdz$zzb$zza$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbdz$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzbdz$zzb$zza$zza;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzb$zze;->zzs()Lcom/google/android/gms/internal/ads/zzbdz$zzb$zze;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbdz$zzb$zza$zza;->zzg(Lcom/google/android/gms/internal/ads/zzbdz$zzb$zze;)Lcom/google/android/gms/internal/ads/zzbdz$zzb$zza$zza;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbdz$zzb$zzc;->zzh(Lcom/google/android/gms/internal/ads/zzbdz$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbdz$zzb$zzc;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbdz$zzb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfil;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcxv;->zza()Lcom/google/android/gms/internal/ads/zzcus;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcus;->zzd()Lcom/google/android/gms/internal/ads/zzded;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzded;->zzl(Lcom/google/android/gms/internal/ads/zzbdz$zzb;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcs;->zzb:Lcom/google/android/gms/internal/ads/zzfdn;

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfct;->zzg(Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzfdn;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdzv;

    const/4 v0, 0x1

    const-string v1, "Empty prefetch"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzv;-><init>(ILjava/lang/String;)V

    throw p1
.end method
