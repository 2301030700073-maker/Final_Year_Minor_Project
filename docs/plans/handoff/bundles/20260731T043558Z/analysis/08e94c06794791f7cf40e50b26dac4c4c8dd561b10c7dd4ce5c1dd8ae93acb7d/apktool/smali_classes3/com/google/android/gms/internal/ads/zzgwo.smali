.class public final Lcom/google/android/gms/internal/ads/zzgwo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgwe;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-string v0, "invalid keyset"

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvs;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgwf;->zzb()Lcom/google/android/gms/internal/ads/zzhlg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhur;->zzaN()[B

    move-result-object p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvy;->zza()Lcom/google/android/gms/internal/ads/zzhvy;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzhlg;->zze([BLcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhlg;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlg;->zzb()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhlf;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhlf;->zzb()Lcom/google/android/gms/internal/ads/zzhkx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhkx;->zzc()Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhkw;->zza:Lcom/google/android/gms/internal/ads/zzhkw;

    if-eq v3, v4, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhlf;->zzb()Lcom/google/android/gms/internal/ads/zzhkx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhkx;->zzc()Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhkw;->zzb:Lcom/google/android/gms/internal/ads/zzhkw;

    if-eq v3, v4, :cond_0

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhlf;->zzb()Lcom/google/android/gms/internal/ads/zzhkx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhkx;->zzc()Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhkw;->zzc:Lcom/google/android/gms/internal/ads/zzhkw;

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v1, "keyset contains key material of type %s for type url %s"

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhlf;->zzb()Lcom/google/android/gms/internal/ads/zzhkx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhkx;->zzc()Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhkw;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhlf;->zzb()Lcom/google/android/gms/internal/ads/zzhkx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhkx;->zza()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgwe;->zza(Lcom/google/android/gms/internal/ads/zzhlg;)Lcom/google/android/gms/internal/ads/zzgwe;

    move-result-object p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 13
    :catch_0
    :try_start_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :catch_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 14
    :catch_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Parse keyset failed"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
