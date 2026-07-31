.class public Lcom/google/android/gms/internal/zzx;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzx;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzb$zza;
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/google/android/gms/internal/zzi;->zzA:Ljava/util/Map;

    const-string v5, "Date"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/google/android/gms/internal/zzx;->zzg(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    :goto_0
    const-string v5, "Cache-Control"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x0

    if-eqz v5, :cond_8

    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    :goto_1
    array-length v10, v5

    if-ge v11, v10, :cond_7

    aget-object v10, v5, v11

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v6, "no-cache"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "no-store"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    const-string v6, "max-age="

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x8

    :try_start_0
    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v12, v6

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    const-string v6, "stale-while-revalidate="

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x17

    :try_start_1
    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v15, v6

    goto :goto_2

    :cond_3
    const-string v6, "must-revalidate"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "proxy-revalidate"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const/4 v14, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v1, 0x0

    return-object v1

    :cond_7
    const/16 v17, 0x1

    goto :goto_4

    :cond_8
    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    :goto_4
    const-string v5, "Expires"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-static {v5}, Lcom/google/android/gms/internal/zzx;->zzg(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_5

    :cond_9
    const-wide/16 v6, 0x0

    :goto_5
    const-string v5, "Last-Modified"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_a

    invoke-static {v5}, Lcom/google/android/gms/internal/zzx;->zzg(Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_6

    :cond_a
    const-wide/16 v10, 0x0

    :goto_6
    const-string v5, "ETag"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v17, :cond_c

    const-wide/16 v6, 0x3e8

    mul-long v12, v12, v6

    add-long v17, v2, v12

    if-eqz v14, :cond_b

    move-wide/from16 v6, v17

    goto :goto_7

    :cond_b
    mul-long v15, v15, v6

    const/4 v2, 0x0

    add-long v2, v17, v15

    move-wide v6, v2

    :goto_7
    move-wide v2, v6

    move-wide/from16 v6, v17

    goto :goto_8

    :cond_c
    const-wide/16 v17, 0x0

    cmp-long v12, v8, v17

    if-lez v12, :cond_d

    cmp-long v12, v6, v8

    if-ltz v12, :cond_d

    sub-long v12, v6, v8

    add-long v6, v2, v12

    move-wide v2, v6

    goto :goto_8

    :cond_d
    move-wide/from16 v2, v17

    move-wide v6, v2

    :goto_8
    new-instance v12, Lcom/google/android/gms/internal/zzb$zza;

    invoke-direct {v12}, Lcom/google/android/gms/internal/zzb$zza;-><init>()V

    iget-object v1, v1, Lcom/google/android/gms/internal/zzi;->data:[B

    iput-object v1, v12, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    iput-object v5, v12, Lcom/google/android/gms/internal/zzb$zza;->zzb:Ljava/lang/String;

    iput-wide v6, v12, Lcom/google/android/gms/internal/zzb$zza;->zzf:J

    iput-wide v2, v12, Lcom/google/android/gms/internal/zzb$zza;->zze:J

    iput-wide v8, v12, Lcom/google/android/gms/internal/zzb$zza;->zzc:J

    iput-wide v10, v12, Lcom/google/android/gms/internal/zzb$zza;->zzd:J

    iput-object v4, v12, Lcom/google/android/gms/internal/zzb$zza;->zzg:Ljava/util/Map;

    return-object v12
.end method

.method public static zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object p0, v2, v0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static zzg(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-wide/16 v0, 0x0

    return-wide v0
.end method
