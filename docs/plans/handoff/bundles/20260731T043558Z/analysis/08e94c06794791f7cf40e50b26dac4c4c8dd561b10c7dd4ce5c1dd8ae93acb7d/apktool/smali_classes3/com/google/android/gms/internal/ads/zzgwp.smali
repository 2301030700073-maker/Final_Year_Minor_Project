.class public final Lcom/google/android/gms/internal/ads/zzgwp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzgwj;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zza()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzk(Lcom/google/android/gms/internal/ads/zzgwj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhgb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhfx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhur;->zzaN()[B

    move-result-object p0

    return-object p0
.end method

.method public static zzb([B)Lcom/google/android/gms/internal/ads/zzgwj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvy;->zza()Lcom/google/android/gms/internal/ads/zzhvy;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhla;->zzd([BLcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhla;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhfb;->zza()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhfx;->zzb(Lcom/google/android/gms/internal/ads/zzhla;)Lcom/google/android/gms/internal/ads/zzhfx;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzi(Lcom/google/android/gms/internal/ads/zzhgb;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhej;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhej;-><init>(Lcom/google/android/gms/internal/ads/zzhfx;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhfb;->zzj(Lcom/google/android/gms/internal/ads/zzhgb;)Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failed to parse proto"

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
