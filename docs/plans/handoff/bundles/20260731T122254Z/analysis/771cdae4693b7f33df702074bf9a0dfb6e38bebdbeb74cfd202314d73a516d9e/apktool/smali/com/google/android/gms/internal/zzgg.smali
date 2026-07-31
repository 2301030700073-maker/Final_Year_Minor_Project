.class public final Lcom/google/android/gms/internal/zzgg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# static fields
.field private static final zzDJ:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzgg;->zzDJ:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private static zzG(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xffffff

    and-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 36

    move-object/from16 v8, p1

    const/4 v15, 0x0

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v1, p2

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ad_base_url"

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_url"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "ad_size"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "ad_html"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug_dialog"

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v3, "interstitial_timeout"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    :try_start_1
    const-string v3, "interstitial_timeout"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v13

    double-to-long v5, v5

    move-wide v13, v5

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_0
    const-wide/16 v13, -0x1

    :goto_0
    :try_start_2
    const-string v3, "orientation"

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "portrait"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v7, -0x1

    if-eqz v5, :cond_1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzhm;->zzgr()I

    move-result v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    move/from16 v17, v3

    goto :goto_2

    :cond_1
    :try_start_4
    const-string v5, "landscape"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v3, :cond_2

    :try_start_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbx()Lcom/google/android/gms/internal/zzhm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzhm;->zzgq()I

    move-result v3
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_2
    const/16 v17, -0x1

    :goto_2
    :try_start_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    if-nez v3, :cond_4

    :try_start_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "Could not parse the mediation config: Missing required ad_base_url field"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v1, v15}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    return-object v1

    :cond_3
    move-object v3, v1

    move-object v4, v2

    move-object v1, v10

    const/4 v11, -0x1

    const-wide/16 v20, -0x1

    goto :goto_3

    :cond_4
    :try_start_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    if-nez v1, :cond_11

    :try_start_9
    iget-object v1, v8, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    const/4 v11, -0x1

    move-object/from16 v7, v18

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/zzgf;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzzG:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCI:Ljava/lang/String;

    iget-wide v4, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCO:J

    move-wide/from16 v20, v4

    move-object v4, v3

    move-object v3, v2

    :goto_3
    const-string v2, "click_urls"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_5

    move-object v5, v10

    goto :goto_4

    :cond_5
    iget-object v5, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzxF:Ljava/util/List;

    :goto_4
    if-eqz v2, :cond_7

    if-nez v5, :cond_6

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    const-string v2, "impression_urls"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_8

    move-object v6, v10

    goto :goto_6

    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzxG:Ljava/util/List;

    :goto_6
    if-eqz v2, :cond_a

    if-nez v6, :cond_9

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    :cond_9
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v7, v12, :cond_a

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_a
    const-string v2, "manual_impression_urls"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_b

    move-object v7, v10

    goto :goto_8

    :cond_b
    iget-object v7, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCM:Ljava/util/List;

    :goto_8
    if-eqz v2, :cond_d

    if-nez v7, :cond_c

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    :cond_c
    const/4 v12, 0x0

    :goto_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v12, v10, :cond_d

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_d
    move-object v12, v7

    if-eqz v1, :cond_f

    iget v2, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    if-eq v2, v11, :cond_e

    iget v2, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move/from16 v17, v2

    :cond_e
    iget-wide v10, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCJ:J

    const-wide/16 v22, 0x0

    cmp-long v2, v10, v22

    if-lez v2, :cond_f

    iget-wide v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCJ:J

    move-wide v13, v1

    :cond_f
    const-string v1, "active_view"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v1, "ad_is_javascript"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_10

    const-string v1, "ad_passback_url"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v24, v2

    :goto_a
    const-string v1, "mediation"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v1, "custom_render_allowed"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    const-string v1, "native"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v1, "content_url_opted_out"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v27

    const-string v1, "prefetch"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const-string v1, "oauth2_token_status"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v31

    const-string v1, "refresh_interval_milliseconds"

    move-object/from16 v32, v12

    const-wide/16 v11, -0x1

    invoke-virtual {v9, v1, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v29

    const-string v1, "mediation_config_cache_time_milliseconds"

    invoke-virtual {v9, v1, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    new-instance v33, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v9, v8, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCu:Z

    move-object/from16 v1, v33

    move-object v2, v8

    move-wide v7, v13

    move/from16 v34, v9

    move v9, v10

    move-wide v10, v11

    move-object/from16 v12, v32

    move-wide/from16 v13, v29

    move/from16 v15, v17

    move-wide/from16 v17, v20

    move/from16 v20, v23

    move-object/from16 v21, v24

    move/from16 v23, v25

    move/from16 v24, v26

    move/from16 v25, v34

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v31

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZI)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    return-object v33

    :cond_11
    :try_start_a
    const-string v1, "Could not parse the mediation config: Missing required ad_html or ad_url field."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    const/4 v2, 0x0

    :try_start_b
    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    :goto_b
    move-object v1, v0

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse the mediation config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgk;Landroid/location/Location;Lcom/google/android/gms/internal/zzbr;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            "Lcom/google/android/gms/internal/zzgk;",
            "Landroid/location/Location;",
            "Lcom/google/android/gms/internal/zzbr;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "eid"

    const-string v1, ","

    invoke-static {v1, p6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCl:Landroid/os/Bundle;

    if-eqz p6, :cond_1

    const-string p6, "ad_pos"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCl:Landroid/os/Bundle;

    invoke-virtual {p2, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-static {p2, p6}, Lcom/google/android/gms/internal/zzgg;->zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    const-string p6, "format"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzsm:Ljava/lang/String;

    invoke-virtual {p2, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget p6, p6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v0, -0x1

    if-ne p6, v0, :cond_2

    const-string p6, "smart_w"

    const-string v1, "full"

    invoke-virtual {p2, p6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget p6, p6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v1, -0x2

    if-ne p6, v1, :cond_3

    const-string p6, "smart_h"

    const-string v2, "auto"

    invoke-virtual {p2, p6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object p6, p6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzso:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz p6, :cond_8

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzso:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "|"

    invoke-virtual {p6, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v6, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    if-ne v6, v0, :cond_5

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v6, v6

    iget v7, p1, Lcom/google/android/gms/internal/zzgk;->zzCy:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_1

    :cond_5
    iget v6, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    :goto_1
    invoke-virtual {p6, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {p6, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    if-ne v6, v1, :cond_6

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v5, v5

    iget v6, p1, Lcom/google/android/gms/internal/zzgk;->zzCy:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    goto :goto_2

    :cond_6
    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    :goto_2
    invoke-virtual {p6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    const-string v0, "sz"

    invoke-virtual {p2, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCs:I

    if-eqz p6, :cond_9

    const-string p6, "native_version"

    iget v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "native_templates"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqd:Ljava/util/List;

    invoke-virtual {p2, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "native_image_orientation"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqb:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgg;->zzc(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCG:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_9

    const-string p6, "native_custom_templates"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCG:Ljava/util/List;

    invoke-virtual {p2, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string p6, "slotname"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpG:Ljava/lang/String;

    invoke-virtual {p2, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "pn"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCn:Landroid/content/pm/PackageInfo;

    if-eqz p6, :cond_a

    const-string p6, "vc"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCn:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string p6, "ms"

    invoke-virtual {p2, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "seq_num"

    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCp:Ljava/lang/String;

    invoke-virtual {p2, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "session_id"

    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCq:Ljava/lang/String;

    invoke-virtual {p2, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "js"

    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object p6, p6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    invoke-virtual {p2, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzgg;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzgk;)V

    const-string p5, "fdz"

    new-instance p6, Ljava/lang/Integer;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbr;->zzcX()I

    move-result p3

    invoke-direct {p6, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "platform"

    sget-object p5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "submodel"

    sget-object p5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget p3, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 p5, 0x2

    if-lt p3, p5, :cond_b

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsf:Landroid/location/Location;

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsf:Landroid/location/Location;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzgg;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_b
    iget p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    if-lt p3, p5, :cond_c

    const-string p3, "quality_signals"

    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCr:Landroid/os/Bundle;

    invoke-virtual {p2, p3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 p6, 0x4

    if-lt p3, p6, :cond_d

    iget-boolean p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCu:Z

    if-eqz p3, :cond_d

    const-string p3, "forceHttps"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCu:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    if-lt p3, p6, :cond_e

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCt:Landroid/os/Bundle;

    if-eqz p3, :cond_e

    const-string p3, "content_info"

    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCt:Landroid/os/Bundle;

    invoke-virtual {p2, p3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 p6, 0x5

    if-lt p3, p6, :cond_f

    const-string p1, "u_sd"

    iget p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCy:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sh"

    iget p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCx:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sw"

    iget p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCw:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_f
    const-string p3, "u_sd"

    iget p6, p1, Lcom/google/android/gms/internal/zzgk;->zzCy:F

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-virtual {p2, p3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "sh"

    iget p6, p1, Lcom/google/android/gms/internal/zzgk;->zzCx:I

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p2, p3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "sw"

    iget p1, p1, Lcom/google/android/gms/internal/zzgk;->zzCw:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget p1, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 p3, 0x6

    if-lt p1, p3, :cond_12

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCz:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_10

    :try_start_1
    const-string p1, "view_hierarchy"

    new-instance p3, Lorg/json/JSONObject;

    iget-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCz:Ljava/lang/String;

    invoke-direct {p3, p6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    const-string p3, "Problem serializing view hierarchy to JSON"

    invoke-static {p3, p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_4
    sget-object p1, Lcom/google/android/gms/internal/zzbz;->zzun:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCA:Z

    if-eqz p1, :cond_11

    const-string p1, "ga_hid"

    iget p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCB:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ga_cid"

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCC:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string p1, "correlation_id"

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCD:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget p1, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 p3, 0x7

    if-lt p1, p3, :cond_13

    const-string p1, "request_id"

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCE:Ljava/lang/String;

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/zzgg;->zza(Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {p5}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzL(I)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzhl;->zzy(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ad Request JSON: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    :cond_14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbv()Lcom/google/android/gms/internal/zzhl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzhl;->zzy(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Problem serializing ad request to JSON: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Ljava/util/HashMap;Landroid/location/Location;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide v5, 0x416312d000000000L    # 1.0E7

    mul-double v3, v3, v5

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-long v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v4, "radius"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uule"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzhg;->zzgh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "abf"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-string v0, "cust_age"

    sget-object v1, Lcom/google/android/gms/internal/zzgg;->zzDJ:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v0, "extras"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrY:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const-string v0, "cust_gender"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    if-eqz v0, :cond_4

    const-string v0, "kw"

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    if-eq v0, v1, :cond_5

    const-string v0, "tag_for_child_directed_treatment"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsa:Z

    if-eqz v0, :cond_6

    const-string v0, "adtest"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsc:Z

    if-eqz v0, :cond_7

    const-string v0, "d_imp_hdr"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ppid"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsd:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzse:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzse:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzgg;->zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;)V

    :cond_9
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsg:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "url"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsg:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsi:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    const-string v0, "custom_targeting"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsi:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsj:Ljava/util/List;

    if-eqz v0, :cond_c

    const-string v0, "category_exclusions"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsj:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsk:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "request_agent"

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsk:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;",
            ")V"
        }
    .end annotation

    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzth:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "acolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzth:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzG(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bgcolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->backgroundColor:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzG(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzti:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztj:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gradientto"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzti:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzG(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gradientfrom"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztj:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzG(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztk:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bcolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztk:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzG(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "bthick"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztl:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztm:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    const-string v0, "solid"

    goto :goto_0

    :pswitch_1
    const-string v0, "dotted"

    goto :goto_0

    :pswitch_2
    const-string v0, "dashed"

    goto :goto_0

    :pswitch_3
    const-string v0, "none"

    :goto_0
    if-eqz v0, :cond_4

    const-string v2, "btype"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztn:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    const-string v1, "dark"

    goto :goto_1

    :pswitch_5
    const-string v1, "medium"

    goto :goto_1

    :pswitch_6
    const-string v1, "light"

    :goto_1
    if-eqz v1, :cond_5

    const-string v0, "callbuttoncolor"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzto:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "channel"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzto:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztp:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "dcolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztp:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzG(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztq:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "font"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztq:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztr:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "hcolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztr:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzG(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "headersize"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzts:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztt:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "q"

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztt:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzgk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzgk;",
            ")V"
        }
    .end annotation

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEo:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzx(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEp:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzx(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzgk;->zzEq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEq:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEr:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzgk;->zzEs:Z

    if-eqz v0, :cond_1

    const-string v0, "simulator"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEt:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzx(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEu:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgg;->zzx(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEv:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzgk;->zzEw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEw:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/zzgk;->zzEy:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEB:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/zzgk;->zzEC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "active_network_state"

    iget v2, p1, Lcom/google/android/gms/internal/zzgk;->zzEG:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "active_network_metered"

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzgk;->zzEF:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "connectivity"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_charging"

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzgk;->zzEE:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "battery_level"

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzgk;->zzED:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "battery"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pan"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static zzc(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzvD:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "any"

    return-object p0

    :pswitch_0
    const-string p0, "landscape"

    return-object p0

    :pswitch_1
    const-string p0, "portrait"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzx(Z)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
