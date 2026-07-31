.class public final Lcom/google/android/gms/internal/ads/zzflp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final zza:Ljava/lang/Object;

.field public static zzb:Ljava/lang/Boolean;

.field private static final zzc:Ljava/lang/Object;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzflt;

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdsv;

.field private final zzk:Ljava/util/List;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzcjk;

.field private zzm:Z

.field private final zzn:Lcom/google/android/gms/internal/ads/zzbxr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzflp;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzflp;->zzc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzflp;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdsv;Lcom/google/android/gms/internal/ads/zzeef;Lcom/google/android/gms/internal/ads/zzbxr;Lcom/google/android/gms/internal/ads/zzcjk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflw;->zzb()Lcom/google/android/gms/internal/ads/zzflt;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzg:Lcom/google/android/gms/internal/ads/zzflt;

    const-string p4, ""

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzh:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzm:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzj:Lcom/google/android/gms/internal/ads/zzdsv;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzn:Lcom/google/android/gms/internal/ads/zzbxr;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzl:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeu;->zzjJ:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzk()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzk:Ljava/util/List;

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpe;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzk:Ljava/util/List;

    return-void
.end method

.method public static zza()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzflp;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzflp;->zzb:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgn;->zzb:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzflp;->zzb:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgn;->zza:Lcom/google/android/gms/internal/ads/zzbge;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzflp;->zzb:Ljava/lang/Boolean;

    .line 2
    :cond_2
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzflp;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflp;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzflp;->zzc:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzflp;->zzg:Lcom/google/android/gms/internal/ads/zzflt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflt;->zza()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    monitor-exit v2

    return-void

    .line 4
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzflp;->zzg:Lcom/google/android/gms/internal/ads/zzflt;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzflw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhur;->zzaN()[B

    move-result-object v8

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflt;->zzc()Lcom/google/android/gms/internal/ads/zzflt;

    .line 7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeec;

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzjD:Lcom/google/android/gms/internal/ads/zzbel;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "application/x-protobuf"

    const/4 v10, 0x0

    const v6, 0xea60

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeec;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzflp;->zze:Landroid/content/Context;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzflp;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v13, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzflp;->zzn:Lcom/google/android/gms/internal/ads/zzbxr;

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeee;

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzeee;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxr;ILjava/lang/String;)V

    .line 12
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzeee;->zzb(Lcom/google/android/gms/internal/ads/zzeec;)Lcom/google/android/gms/internal/ads/zzeed;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 4
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzdzv;

    if-eqz v2, :cond_3

    .line 13
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdzv;->zza()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string v2, "CuiMonitor.sendCuiPing"

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzcbj;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 4
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzflf;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcbv;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzflo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzflo;-><init>(Lcom/google/android/gms/internal/ads/zzflp;Lcom/google/android/gms/internal/ads/zzflf;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgus;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzflf;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzflp;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzm:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzm:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflp;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_3

    .line 4
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zze:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzh:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v2

    const-string v3, "CuiMonitor.gettingAppIdFromManifest"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzcbj;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflp;->zze:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzi:I

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzjE:Lcom/google/android/gms/internal/ads/zzbel;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeu;->zzmS:Lcom/google/android/gms/internal/ads/zzbel;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcbv;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v7, v1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, p0

    move-wide v5, v7

    .line 12
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 13
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcbv;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v2

    move-object v2, p0

    move-wide v3, v5

    .line 14
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zzjK:Lcom/google/android/gms/internal/ads/zzbel;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzl:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcjk;->zza()V

    .line 18
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflp;->zza()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    if-eqz p1, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzflp;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzg:Lcom/google/android/gms/internal/ads/zzflt;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflt;->zza()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzjF:Lcom/google/android/gms/internal/ads/zzbel;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 23
    monitor-exit v0

    return-void

    .line 24
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfls;->zza()Lcom/google/android/gms/internal/ads/zzflq;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzm()I

    move-result v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzv(I)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzb()Z

    move-result v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zza(Z)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zza()J

    move-result-wide v3

    .line 27
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzflq;->zzb(J)Lcom/google/android/gms/internal/ads/zzflq;

    const/4 v3, 0x3

    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzw(I)Lcom/google/android/gms/internal/ads/zzflq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 29
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzh:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzg(I)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzo()I

    move-result v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzx(I)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzc()I

    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzi(I)Lcom/google/android/gms/internal/ads/zzflq;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzi:I

    int-to-long v3, v3

    .line 35
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzflq;->zzj(J)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzn()I

    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzy(I)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zze()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzj:Lcom/google/android/gms/internal/ads/zzdsv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdsv;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzg()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzh()Lcom/google/android/gms/internal/ads/zzflr;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzs(Lcom/google/android/gms/internal/ads/zzflr;)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzk()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzi()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzj()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflf;->zzl()J

    move-result-wide v3

    .line 47
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzflq;->zzc(J)Lcom/google/android/gms/internal/ads/zzflq;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeu;->zzjJ:Lcom/google/android/gms/internal/ads/zzbel;

    .line 48
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzk:Ljava/util/List;

    .line 50
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzflq;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzflq;

    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeu;->zzjK:Lcom/google/android/gms/internal/ads/zzbel;

    .line 51
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflp;->zzl:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzd()Lcom/google/android/gms/internal/ads/zziag;

    move-result-object v3

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzc()Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_7

    .line 55
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzflq;->zzt(Lcom/google/android/gms/internal/ads/zziag;)Lcom/google/android/gms/internal/ads/zzflq;

    :cond_7
    if-eqz p1, :cond_8

    .line 56
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzflq;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflq;

    .line 57
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflv;->zza()Lcom/google/android/gms/internal/ads/zzflu;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzflu;->zza(Lcom/google/android/gms/internal/ads/zzflq;)Lcom/google/android/gms/internal/ads/zzflu;

    .line 58
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzflt;->zzb(Lcom/google/android/gms/internal/ads/zzflu;)Lcom/google/android/gms/internal/ads/zzflt;

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_9
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
