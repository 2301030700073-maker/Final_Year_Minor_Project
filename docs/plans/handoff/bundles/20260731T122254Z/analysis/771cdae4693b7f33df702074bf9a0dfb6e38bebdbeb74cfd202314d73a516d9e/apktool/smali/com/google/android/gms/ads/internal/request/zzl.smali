.class public Lcom/google/android/gms/ads/internal/request/zzl;
.super Lcom/google/android/gms/internal/zzhh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzl$zza;,
        Lcom/google/android/gms/ads/internal/request/zzl$zzb;,
        Lcom/google/android/gms/ads/internal/request/zzl$zzc;
    }
.end annotation


# static fields
.field static final zzDf:J

.field private static zzDg:Z

.field private static zzDh:Lcom/google/android/gms/internal/zzdt;

.field private static zzDi:Lcom/google/android/gms/internal/zzdh;

.field private static zzDj:Lcom/google/android/gms/internal/zzdl;

.field private static zzDk:Lcom/google/android/gms/internal/zzdg;

.field private static final zzoW:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzBr:Ljava/lang/Object;

.field private final zzCd:Lcom/google/android/gms/ads/internal/request/zza$zza;

.field private final zzCe:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

.field private zzDl:Lcom/google/android/gms/internal/zzdt$zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDf:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzoW:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDg:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDh:Lcom/google/android/gms/internal/zzdt;

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDi:Lcom/google/android/gms/internal/zzdh;

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDj:Lcom/google/android/gms/internal/zzdl;

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDk:Lcom/google/android/gms/internal/zzdg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/ads/internal/request/zza$zza;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhh;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzl;->zzBr:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzl;->zzCd:Lcom/google/android/gms/ads/internal/request/zza$zza;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzl;->zzCe:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    sget-object p3, Lcom/google/android/gms/ads/internal/request/zzl;->zzoW:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDg:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzdl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdl;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDj:Lcom/google/android/gms/internal/zzdl;

    new-instance v0, Lcom/google/android/gms/internal/zzdh;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzdh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDi:Lcom/google/android/gms/internal/zzdh;

    new-instance p1, Lcom/google/android/gms/ads/internal/request/zzl$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/request/zzl$zzc;-><init>()V

    sput-object p1, Lcom/google/android/gms/ads/internal/request/zzl;->zzDk:Lcom/google/android/gms/internal/zzdg;

    new-instance p1, Lcom/google/android/gms/internal/zzdt;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzl;->zzCe:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    sget-object p2, Lcom/google/android/gms/internal/zzbz;->zztD:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/ads/internal/request/zzl$zzb;

    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/request/zzl$zzb;-><init>()V

    new-instance v5, Lcom/google/android/gms/ads/internal/request/zzl$zza;

    invoke-direct {v5}, Lcom/google/android/gms/ads/internal/request/zzl$zza;-><init>()V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzdt$zzb;Lcom/google/android/gms/internal/zzdt$zzb;)V

    sput-object p1, Lcom/google/android/gms/ads/internal/request/zzl;->zzDh:Lcom/google/android/gms/internal/zzdt;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/google/android/gms/ads/internal/request/zzl;->zzDg:Z

    :cond_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzl;)Lcom/google/android/gms/ads/internal/request/zza$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/request/zzl;->zzCd:Lcom/google/android/gms/ads/internal/request/zza$zza;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzl;Lcom/google/android/gms/internal/zzdt$zzd;)Lcom/google/android/gms/internal/zzdt$zzd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDl:Lcom/google/android/gms/internal/zzdt$zzd;

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string v2, "sdk_less_network_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbB()Lcom/google/android/gms/internal/zzgl;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/zzl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzgl;->zzC(Landroid/content/Context;)Lcom/google/android/gms/internal/zzgk;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/gms/internal/zzbr;

    sget-object v3, Lcom/google/android/gms/internal/zzbz;->zztD:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/zzbr;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/zzgg;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgk;Landroid/location/Location;Lcom/google/android/gms/internal/zzbr;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Cannot get advertising id info"

    invoke-static {v4, v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v2

    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "request_id"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "network_id"

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "request_param"

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_2

    const-string p1, "adid"

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lat"

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/zzhl;->zzy(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    return-object v2
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/request/zzl;)Lcom/google/android/gms/internal/zzdt$zzd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDl:Lcom/google/android/gms/internal/zzdt$zzd;

    return-object p0
.end method

.method protected static zzc(Lcom/google/android/gms/internal/zzbb;)V
    .locals 2

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzl;->zzDj:Lcom/google/android/gms/internal/zzdl;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzbb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzl;->zzDi:Lcom/google/android/gms/internal/zzdh;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzbb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzl;->zzDk:Lcom/google/android/gms/internal/zzdg;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzbb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    return-void
.end method

.method protected static zzd(Lcom/google/android/gms/internal/zzbb;)V
    .locals 2

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzl;->zzDj:Lcom/google/android/gms/internal/zzdl;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzbb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzl;->zzDi:Lcom/google/android/gms/internal/zzdh;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzbb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/ads/internal/request/zzl;->zzDk:Lcom/google/android/gms/internal/zzdg;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzbb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    return-void
.end method

.method private zzf(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 10

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/request/zzl;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {p1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzlb;->elapsedRealtime()J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/ads/internal/request/zzl;->zzDj:Lcom/google/android/gms/internal/zzdl;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/zzdl;->zzU(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/ads/internal/util/client/zza;->zzGF:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/ads/internal/request/zzl$2;

    invoke-direct {v7, p0, v1, v0}, Lcom/google/android/gms/ads/internal/request/zzl$2;-><init>(Lcom/google/android/gms/ads/internal/request/zzl;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDf:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzlb;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v3

    sub-long v3, v0, v8

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v3, v4, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    new-instance p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzgg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :cond_2
    return-object p1

    :catch_0
    move-exception p1

    new-instance p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {p1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    return-object p1

    :catch_1
    move-exception p1

    new-instance p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    return-object p1

    :catch_2
    move-exception p1

    new-instance p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    return-object p1
.end method

.method static synthetic zzfA()Lcom/google/android/gms/internal/zzdt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDh:Lcom/google/android/gms/internal/zzdt;

    return-object v0
.end method

.method static synthetic zzfz()Lcom/google/android/gms/internal/zzdl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/request/zzl;->zzDj:Lcom/google/android/gms/internal/zzdl;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzl;->zzBr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/ads/internal/util/client/zza;->zzGF:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzl$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/request/zzl$3;-><init>(Lcom/google/android/gms/ads/internal/request/zzl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzdP()V
    .locals 12

    const-string v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzl;->zzCe:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v1}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/request/zzl;->zzf(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlb;->elapsedRealtime()J

    move-result-wide v7

    new-instance v0, Lcom/google/android/gms/internal/zzha$zza;

    iget v6, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    iget-wide v9, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCO:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/zzha$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/util/client/zza;->zzGF:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzl$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/request/zzl$1;-><init>(Lcom/google/android/gms/ads/internal/request/zzl;Lcom/google/android/gms/internal/zzha$zza;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
