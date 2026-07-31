.class public abstract Lcom/google/android/gms/internal/ads/zzfbe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepj;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzcjn;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfbu;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfdm;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Landroid/view/ViewGroup;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzflp;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfgm;

.field private zzj:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcjn;Lcom/google/android/gms/internal/ads/zzfdm;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfgm;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzc:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zza:Lcom/google/android/gms/internal/ads/zzcjn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zze:Lcom/google/android/gms/internal/ads/zzfdm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzd:Lcom/google/android/gms/internal/ads/zzfbu;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzi:Lcom/google/android/gms/internal/ads/zzfgm;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzg:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcjn;->zzx()Lcom/google/android/gms/internal/ads/zzflp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzh:Lcom/google/android/gms/internal/ads/zzflp;

    return-void
.end method

.method private final declared-synchronized zzm(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzcxu;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfbb;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzja:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzg:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcrd;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcxw;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzb:Landroid/content/Context;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcxw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcxw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbb;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzb(Lcom/google/android/gms/internal/ads/zzfgn;)Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxw;->zze()Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzden;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzden;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzd:Lcom/google/android/gms/internal/ads/zzfbu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzc:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzden;->zzd(Lcom/google/android/gms/internal/ads/zzcze;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzden;

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzden;->zzg(Lcom/google/android/gms/internal/ads/zzdgv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzden;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzden;->zzn()Lcom/google/android/gms/internal/ads/zzdeo;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfbe;->zzc(Lcom/google/android/gms/internal/ads/zzcrd;Lcom/google/android/gms/internal/ads/zzcxx;Lcom/google/android/gms/internal/ads/zzdeo;)Lcom/google/android/gms/internal/ads/zzcxu;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzd:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbu;->zzn(Lcom/google/android/gms/internal/ads/zzfbu;)Lcom/google/android/gms/internal/ads/zzfbu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzden;

    .line 11
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzden;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzc:Ljava/util/concurrent/Executor;

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzden;->zzc(Lcom/google/android/gms/internal/ads/zzcyr;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzden;

    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzden;->zzi(Lcom/google/android/gms/internal/ads/zzdan;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzden;

    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzden;->zzj(Lcom/google/android/gms/ads/internal/overlay/zzr;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzden;

    .line 15
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzden;->zzk(Lcom/google/android/gms/internal/ads/zzdbf;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzden;

    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzden;->zzd(Lcom/google/android/gms/internal/ads/zzcze;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzden;

    .line 17
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzden;->zzg(Lcom/google/android/gms/internal/ads/zzdgv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzden;

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzden;->zzl(Lcom/google/android/gms/internal/ads/zzfdj;)Lcom/google/android/gms/internal/ads/zzden;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzg:Landroid/view/ViewGroup;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrd;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcrd;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcxw;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzb:Landroid/content/Context;

    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcxw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcxw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbb;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzb(Lcom/google/android/gms/internal/ads/zzfgn;)Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxw;->zze()Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzden;->zzn()Lcom/google/android/gms/internal/ads/zzdeo;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfbe;->zzc(Lcom/google/android/gms/internal/ads/zzcrd;Lcom/google/android/gms/internal/ads/zzcxx;Lcom/google/android/gms/internal/ads/zzdeo;)Lcom/google/android/gms/internal/ads/zzcxu;

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


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzepi;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzm;->zzb()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgs;->zzd:Lcom/google/android/gms/internal/ads/zzbge;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbeu;->zzmi:Lcom/google/android/gms/internal/ads/zzbel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzmj:Lcom/google/android/gms/internal/ads/zzbel;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_2

    if-nez p3, :cond_3

    :cond_2
    const-string p3, "loadAd must be called on the main UI thread."

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 8
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for app open ad."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzc:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbd;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzfbd;-><init>(Lcom/google/android/gms/internal/ads/zzfbe;)V

    .line 10
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_5

    monitor-exit p0

    return v1

    .line 11
    :cond_5
    :try_start_2
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgn;->zzc:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zze:Lcom/google/android/gms/internal/ads/zzfdm;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfdm;->zzd()Ljava/lang/Object;

    move-result-object p3

    .line 12
    check-cast p3, Lcom/google/android/gms/internal/ads/zzcqq;

    if-eqz p3, :cond_6

    .line 13
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcqq;->zzd()Lcom/google/android/gms/internal/ads/zzflm;

    move-result-object p3

    .line 14
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzflm;->zzi(I)Lcom/google/android/gms/internal/ads/zzflm;

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 15
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzflm;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflm;

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 16
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzflm;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzflm;

    move-object v4, p3

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzb:Landroid/content/Context;

    .line 17
    iget-boolean v5, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {p3, v5}, Lcom/google/android/gms/internal/ads/zzfhk;->zzb(Landroid/content/Context;Z)V

    .line 18
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbeu;->zzjT:Lcom/google/android/gms/internal/ads/zzbel;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v6

    .line 18
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zza:Lcom/google/android/gms/internal/ads/zzcjn;

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcjn;->zzw()Lcom/google/android/gms/internal/ads/zzdyo;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzdyo;->zzc(Z)V

    :cond_7
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/util/Pair;

    new-instance v6, Landroid/util/Pair;

    .line 21
    sget-object v7, Lcom/google/android/gms/internal/ads/zzduq;->zza:Lcom/google/android/gms/internal/ads/zzduq;

    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v1

    new-instance v1, Landroid/util/Pair;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzduq;->zzb:Lcom/google/android/gms/internal/ads/zzduq;

    .line 23
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzduq;->zza()Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v0

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdus;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzi:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 26
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzfgm;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzd()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzfgm;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 28
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/zzfgm;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 29
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgm;

    .line 30
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfgm;->zzz()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfll;->zzg(Lcom/google/android/gms/internal/ads/zzfgn;)I

    move-result v1

    .line 31
    invoke-static {p3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzfbb;-><init>([B)V

    iput-object p2, v6, Lcom/google/android/gms/internal/ads/zzfbb;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zze:Lcom/google/android/gms/internal/ads/zzfdm;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfdn;

    invoke-direct {p2, v6, v3}, Lcom/google/android/gms/internal/ads/zzfdn;-><init>(Lcom/google/android/gms/internal/ads/zzfdk;Lcom/google/android/gms/internal/ads/zzbxj;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfbc;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfbc;-><init>(Lcom/google/android/gms/internal/ads/zzfbe;)V

    .line 32
    invoke-interface {p1, p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzfdm;->zzc(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfba;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p4

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfba;-><init>(Lcom/google/android/gms/internal/ads/zzfbe;Lcom/google/android/gms/internal/ads/zzepi;Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzflc;Lcom/google/android/gms/internal/ads/zzfbb;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzc(Lcom/google/android/gms/internal/ads/zzcrd;Lcom/google/android/gms/internal/ads/zzcxx;Lcom/google/android/gms/internal/ads/zzdeo;)Lcom/google/android/gms/internal/ads/zzcxu;
.end method

.method public final zzd(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzi:Lcom/google/android/gms/internal/ads/zzfgm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzp(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfgm;

    return-void
.end method

.method final synthetic zze()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzd:Lcom/google/android/gms/internal/ads/zzfbu;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfhp;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbu;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzcxu;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfbe;->zzm(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzcxu;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzg(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzcxu;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfbe;->zzm(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzcxu;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzh()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzc:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzfbu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzd:Lcom/google/android/gms/internal/ads/zzfbu;

    return-object v0
.end method

.method final synthetic zzj()Lcom/google/android/gms/internal/ads/zzfdm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zze:Lcom/google/android/gms/internal/ads/zzfdm;

    return-object v0
.end method

.method final synthetic zzk()Lcom/google/android/gms/internal/ads/zzflp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzh:Lcom/google/android/gms/internal/ads/zzflp;

    return-object v0
.end method

.method final synthetic zzl(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbe;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
