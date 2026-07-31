.class public final Lcom/google/android/gms/internal/ads/zzfon;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/ads/internal/ClientApi;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfhj;

.field private final zzf:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfon;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/google/android/gms/ads/internal/ClientApi;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/ClientApi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzf:Lcom/google/android/gms/common/util/Clock;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfon;->zze:Lcom/google/android/gms/internal/ads/zzfhj;

    return-void
.end method

.method private static zzc()Lcom/google/android/gms/internal/ads/zzfnq;
    .locals 10

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/zzfnq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzD:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzE:Lcom/google/android/gms/internal/ads/zzbel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfnq;-><init>(JDJD)V

    return-object v9
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;)Lcom/google/android/gms/internal/ads/zzfom;
    .locals 11

    .line 1
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdFormat;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfon;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfon;->zze:Lcom/google/android/gms/internal/ads/zzfhj;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzf:Lcom/google/android/gms/common/util/Clock;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfnp;

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v8

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzfnp;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfnq;Lcom/google/android/gms/common/util/Clock;)V

    return-object v10

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfon;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfon;->zze:Lcom/google/android/gms/internal/ads/zzfhj;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzf:Lcom/google/android/gms/common/util/Clock;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfoq;

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v8

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzfoq;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfnq;Lcom/google/android/gms/common/util/Clock;)V

    return-object v10

    .line 2
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfon;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfon;->zze:Lcom/google/android/gms/internal/ads/zzfhj;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfon;->zzf:Lcom/google/android/gms/common/util/Clock;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfns;

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v8

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzfns;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfnq;Lcom/google/android/gms/common/util/Clock;)V

    return-object v10
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;)Lcom/google/android/gms/internal/ads/zzfom;
    .locals 13

    move-object v0, p0

    move-object v7, p2

    .line 1
    iget v1, v7, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    invoke-static {v1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 3
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfon;->zza:Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfon;->zze:Lcom/google/android/gms/internal/ads/zzfhj;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzf:Lcom/google/android/gms/common/util/Clock;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzfnp;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v10

    move-object v1, v12

    move-object v2, p1

    move-object v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzfnp;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfnq;Lcom/google/android/gms/common/util/Clock;)V

    return-object v12

    :cond_2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfon;->zza:Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfon;->zze:Lcom/google/android/gms/internal/ads/zzfhj;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzf:Lcom/google/android/gms/common/util/Clock;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzfoq;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v10

    move-object v1, v12

    move-object v2, p1

    move-object v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzfoq;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfnq;Lcom/google/android/gms/common/util/Clock;)V

    return-object v12

    .line 2
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfon;->zza:Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfon;->zze:Lcom/google/android/gms/internal/ads/zzfhj;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzfon;->zzf:Lcom/google/android/gms/common/util/Clock;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzfns;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Lcom/google/android/gms/internal/ads/zzfnq;

    move-result-object v10

    move-object v1, v12

    move-object v2, p1

    move-object v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzfns;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfnq;Lcom/google/android/gms/common/util/Clock;)V

    return-object v12
.end method
