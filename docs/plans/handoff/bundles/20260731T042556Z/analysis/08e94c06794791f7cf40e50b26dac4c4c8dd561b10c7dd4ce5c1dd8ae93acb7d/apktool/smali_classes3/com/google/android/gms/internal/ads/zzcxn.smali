.class public final Lcom/google/android/gms/internal/ads/zzcxn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfmg;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfgf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzffu;

.field private final zze:Lcom/google/android/gms/common/util/Clock;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzg:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzh:Z

.field private zzi:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzdvi;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzb:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Lcom/google/android/gms/internal/ads/zzfmg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zza:Lcom/google/android/gms/internal/ads/zzfmg;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzi:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzc:Lcom/google/android/gms/internal/ads/zzfgf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzd:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zze:Lcom/google/android/gms/common/util/Clock;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzf:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private final zzn()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzf:Lcom/google/android/gms/internal/ads/zzdvi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzc:Lcom/google/android/gms/internal/ads/zzfgf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfge;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffx;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zza:Lcom/google/android/gms/internal/ads/zzfmg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfmh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhur;->zzaN()[B

    move-result-object v3

    const/4 v4, 0x1

    .line 2
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbeu;->zznS:Lcom/google/android/gms/internal/ads/zzbel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdvi;->zza()Lcom/google/android/gms/internal/ads/zzdvh;

    move-result-object v1

    const-string v4, "action"

    const-string v5, "pclma"

    .line 6
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzdvh;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    const-string v4, "pclmd"

    .line 7
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzdvh;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    const-string v3, "gqi"

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdvh;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzf()V

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzo(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzi:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzh:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zza:Lcom/google/android/gms/internal/ads/zzfmg;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflb;->zza()Lcom/google/android/gms/internal/ads/zzfla;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfla;->zzb(I)Lcom/google/android/gms/internal/ads/zzfla;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zze:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfla;->zza(J)Lcom/google/android/gms/internal/ads/zzfla;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzflb;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfmg;->zza(Lcom/google/android/gms/internal/ads/zzflb;)Lcom/google/android/gms/internal/ads/zzfmg;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzn()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzi:Z

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    .line 1
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zzdA()V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzo(I)V

    return-void
.end method

.method public final zzdB()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzo(I)V

    return-void
.end method

.method public final zzdC()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzo(I)V

    return-void
.end method

.method public final zzdD()V
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzo(I)V

    return-void
.end method

.method public final zzdE()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzo(I)V

    return-void
.end method

.method public final zzdX()V
    .locals 0

    return-void
.end method

.method public final zzdY(I)V
    .locals 0

    return-void
.end method

.method public final zzdt()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzo(I)V

    return-void
.end method

.method public final zzdu()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzo(I)V

    return-void
.end method

.method public final zzdv()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzo(I)V

    return-void
.end method

.method public final zzh()V
    .locals 0

    return-void
.end method

.method public final zzl()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzd:Lcom/google/android/gms/internal/ads/zzffu;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzffu;->zzaE:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzh:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zza:Lcom/google/android/gms/internal/ads/zzfmg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zze:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfmg;->zzb(J)Lcom/google/android/gms/internal/ads/zzfmg;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzh:Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcxm;-><init>(Lcom/google/android/gms/internal/ads/zzcxn;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzd:Lcom/google/android/gms/internal/ads/zzffu;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzffu;->zzaE:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 1
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final synthetic zzm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzi:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcxn;->zzi:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcxn;->zzn()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
