.class public final Lcom/google/android/gms/internal/zzgf;
.super Lcom/google/android/gms/ads/internal/request/zzi$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# static fields
.field private static zzDv:Lcom/google/android/gms/internal/zzgf;

.field private static final zzoW:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzDw:Lcom/google/android/gms/internal/zzge;

.field private final zzDx:Lcom/google/android/gms/internal/zzbr;

.field private final zzqC:Lcom/google/android/gms/internal/zzdt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzgf;->zzoW:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbr;Lcom/google/android/gms/internal/zzge;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/request/zzi$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgf;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgf;->zzDw:Lcom/google/android/gms/internal/zzge;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgf;->zzDx:Lcom/google/android/gms/internal/zzbr;

    new-instance p3, Lcom/google/android/gms/internal/zzdt;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    move-object v1, p1

    new-instance v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 p1, 0x1

    const v0, 0x738638

    invoke-direct {v2, v0, v0, p1}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbr;->zzcW()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzgf$5;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzgf$5;-><init>(Lcom/google/android/gms/internal/zzgf;)V

    new-instance v5, Lcom/google/android/gms/internal/zzdt$zzc;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzdt$zzc;-><init>()V

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzdt$zzb;Lcom/google/android/gms/internal/zzdt$zzb;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgf;->zzqC:Lcom/google/android/gms/internal/zzdt;

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/internal/zzbr;Lcom/google/android/gms/internal/zzge;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const-string v1, "Starting ad request from service."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/zzbz;->zzw(Landroid/content/Context;)V

    new-instance v12, Lcom/google/android/gms/internal/zzce;

    const-string v1, "load_ad"

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/zzce;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzce;->zzdo()Lcom/google/android/gms/internal/zzcd;

    move-result-object v13

    iget-object v1, v10, Lcom/google/android/gms/internal/zzge;->zzDs:Lcom/google/android/gms/internal/zzdu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzdu;->init()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbB()Lcom/google/android/gms/internal/zzgl;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/zzgl;->zzC(Landroid/content/Context;)Lcom/google/android/gms/internal/zzgk;

    move-result-object v2

    iget v1, v2, Lcom/google/android/gms/internal/zzgk;->zzEy:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string v1, "Device is offline."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    return-object v1

    :cond_0
    iget v1, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v8, 0x7

    if-lt v1, v8, :cond_1

    iget-object v1, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCE:Ljava/lang/String;

    :goto_0
    move-object v14, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    new-instance v15, Lcom/google/android/gms/internal/zzgh;

    iget-object v1, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v15, v14, v1}, Lcom/google/android/gms/internal/zzgh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string v3, "_ad"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v9, v11, v1}, Lcom/google/android/gms/internal/zzgg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, v10, Lcom/google/android/gms/internal/zzge;->zzDs:Lcom/google/android/gms/internal/zzdu;

    const-wide/16 v3, 0xfa

    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/internal/zzdu;->zzc(J)Landroid/location/Location;

    move-result-object v3

    iget-object v1, v10, Lcom/google/android/gms/internal/zzge;->zzDt:Lcom/google/android/gms/internal/zzfa;

    iget-object v4, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCn:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v9, v4}, Lcom/google/android/gms/internal/zzfa;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v1, v10, Lcom/google/android/gms/internal/zzge;->zzDr:Lcom/google/android/gms/internal/zzbu;

    invoke-interface {v1, v11}, Lcom/google/android/gms/internal/zzbu;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Ljava/util/List;

    move-result-object v7

    iget-object v1, v10, Lcom/google/android/gms/internal/zzge;->zzDu:Lcom/google/android/gms/internal/zzgz;

    iget-object v4, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCo:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/zzgz;->zzar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v11

    move-object/from16 v4, p2

    move-object/from16 v5, v16

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/zzgg;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgk;Landroid/location/Location;Lcom/google/android/gms/internal/zzbr;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    iget v2, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    if-ge v2, v8, :cond_3

    :try_start_0
    const-string v2, "request_id"

    invoke-virtual {v1, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_3
    :goto_2
    const/4 v14, 0x0

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v1, v14}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    return-object v1

    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "arc"

    aput-object v2, v1, v14

    invoke-virtual {v12, v13, v1}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/internal/zzcd;[Ljava/lang/String;)Z

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzce;->zzdo()Lcom/google/android/gms/internal/zzcd;

    move-result-object v6

    sget-object v1, Lcom/google/android/gms/internal/zzbz;->zztE:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzgf$1;

    move-object v2, v5

    move-object/from16 v3, p1

    move-object v4, v15

    move-object v8, v5

    move-object v5, v12

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzgf$1;-><init>(Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzce;Lcom/google/android/gms/internal/zzcd;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v17, v13

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    sget-object v8, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzgf$2;

    move-object v1, v5

    move-object v2, v9

    move-object v3, v11

    move-object v4, v15

    move-object v14, v5

    move-object v5, v12

    move-object/from16 v17, v13

    const/4 v9, 0x1

    move-object v13, v8

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzgf$2;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzce;Lcom/google/android/gms/internal/zzcd;Ljava/lang/String;Lcom/google/android/gms/internal/zzbr;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    :try_start_1
    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzgh;->zzfE()Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/zzgj;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_6

    :try_start_2
    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v2, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzgf$3;

    invoke-direct {v3, v15}, Lcom/google/android/gms/internal/zzgf$3;-><init>(Lcom/google/android/gms/internal/zzgh;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :cond_6
    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzgj;->getErrorCode()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_7

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzgj;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v2, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzgf$3;

    invoke-direct {v3, v15}, Lcom/google/android/gms/internal/zzgf$3;-><init>(Lcom/google/android/gms/internal/zzgh;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :cond_7
    :try_start_4
    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzce;->zzds()Lcom/google/android/gms/internal/zzcd;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzce;->zzds()Lcom/google/android/gms/internal/zzcd;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "rur"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v12, v1, v2}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/internal/zzcd;[Ljava/lang/String;)Z

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzgj;->zzfI()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, v10, Lcom/google/android/gms/internal/zzge;->zzDq:Lcom/google/android/gms/internal/zzgw;

    iget-object v2, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCn:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzgw;->zzaq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    move-object v5, v1

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzce;->zzdo()Lcom/google/android/gms/internal/zzcd;

    move-result-object v8

    iget-object v1, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzgj;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object v1, v11

    move-object/from16 v9, p0

    const/4 v13, 0x1

    move-object v2, v9

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/zzgf;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCW:I

    if-ne v2, v13, :cond_a

    iget-object v2, v10, Lcom/google/android/gms/internal/zzge;->zzDt:Lcom/google/android/gms/internal/zzfa;

    iget-object v3, v11, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCn:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v9, v3}, Lcom/google/android/gms/internal/zzfa;->clearToken(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "ufe"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v12, v8, v2}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/internal/zzcd;[Ljava/lang/String;)Z

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "tts"

    aput-object v3, v2, v4

    move-object/from16 v3, v17

    invoke-virtual {v12, v3, v2}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/internal/zzcd;[Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/android/gms/internal/zzhg;->zzfY()Lcom/google/android/gms/internal/zzcb;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzhg;->zzfY()Lcom/google/android/gms/internal/zzcb;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/zzcb;->zza(Lcom/google/android/gms/internal/zzce;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_b
    sget-object v2, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzgf$3;

    invoke-direct {v3, v15}, Lcom/google/android/gms/internal/zzgf$3;-><init>(Lcom/google/android/gms/internal/zzgh;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v2, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzgf$3;

    invoke-direct {v3, v15}, Lcom/google/android/gms/internal/zzgf$3;-><init>(Lcom/google/android/gms/internal/zzgh;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :goto_4
    sget-object v2, Lcom/google/android/gms/internal/zzhl;->zzGk:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzgf$3;

    invoke-direct {v3, v15}, Lcom/google/android/gms/internal/zzgf$3;-><init>(Lcom/google/android/gms/internal/zzgh;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v1
.end method

.method public static zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 17

    move-object/from16 v1, p3

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/zzgi;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzgi;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdRequestServiceImpl: Sending request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v8

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual {v8, v9, v10, v1, v7}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "x-afma-drt-cookie"

    move-object/from16 v11, p4

    invoke-virtual {v7, v8, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object/from16 v11, p4

    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bearer "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "Authorization"

    invoke-virtual {v7, v13, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object/from16 v12, p5

    :goto_2
    const/4 v8, 0x1

    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/zzgj;->zzfH()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/zzgj;->zzfH()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v15, v14

    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v15, Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v15, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v15, v14}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    :cond_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v14

    const/16 v15, 0xc8

    const/16 v1, 0x12c

    if-lt v8, v15, :cond_3

    if-ge v8, v1, :cond_3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object v3

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/zzhl;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v14, v3, v8}, Lcom/google/android/gms/internal/zzgf;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v2, v1, v14, v3}, Lcom/google/android/gms/internal/zzgi;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzgi;->zzj(J)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    invoke-static {v3, v14, v15, v8}, Lcom/google/android/gms/internal/zzgf;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v8, v1, :cond_6

    const/16 v1, 0x190

    if-ge v8, v1, :cond_6

    const-string v1, "Location"

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "No location header to follow redirect."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :cond_4
    :try_start_5
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    add-int/2addr v6, v1

    const/4 v1, 0x5

    if-le v6, v1, :cond_5

    const-string v1, "Too many redirects."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v1

    :cond_5
    :try_start_7
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/zzgi;->zzi(Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error HTTP response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    return-object v1
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbr;Lcom/google/android/gms/internal/zzge;)Lcom/google/android/gms/internal/zzgf;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzgf;->zzoW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzgf;->zzDv:Lcom/google/android/gms/internal/zzgf;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzgf;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzgf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbr;Lcom/google/android/gms/internal/zzge;)V

    sput-object v1, Lcom/google/android/gms/internal/zzgf;->zzDv:Lcom/google/android/gms/internal/zzgf;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zzgf;->zzDv:Lcom/google/android/gms/internal/zzgf;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzce;Lcom/google/android/gms/internal/zzcd;)Lcom/google/android/gms/internal/zzie$zza;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzgf$4;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/zzgf$4;-><init>(Lcom/google/android/gms/internal/zzce;Lcom/google/android/gms/internal/zzcd;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzL(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http Response: {\n  URL:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  Headers:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "  Body:"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0x186a0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p0, p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit16 v0, p0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    move p0, v0

    goto :goto_1

    :cond_2
    const-string p0, "    null"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  Response Code:\n    "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzce;Lcom/google/android/gms/internal/zzcd;)Lcom/google/android/gms/internal/zzie$zza;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzgf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzce;Lcom/google/android/gms/internal/zzcd;)Lcom/google/android/gms/internal/zzie$zza;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzj;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzby()Lcom/google/android/gms/internal/zzhc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhc;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    new-instance v0, Lcom/google/android/gms/internal/zzgf$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzgf$6;-><init>(Lcom/google/android/gms/internal/zzgf;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgf$6;->zzgi()Ljava/util/concurrent/Future;

    return-void
.end method

.method public zze(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzhg;->zze(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgf;->zzqC:Lcom/google/android/gms/internal/zzdt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgf;->zzDx:Lcom/google/android/gms/internal/zzbr;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgf;->zzDw:Lcom/google/android/gms/internal/zzge;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/internal/zzbr;Lcom/google/android/gms/internal/zzge;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object p1

    return-object p1
.end method
