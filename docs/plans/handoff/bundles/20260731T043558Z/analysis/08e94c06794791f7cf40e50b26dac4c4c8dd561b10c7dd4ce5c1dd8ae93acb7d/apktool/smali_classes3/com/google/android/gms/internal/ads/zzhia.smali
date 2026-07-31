.class public final Lcom/google/android/gms/internal/ads/zzhia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhgk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhgk;)Lcom/google/android/gms/internal/ads/zzhgs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdc;->zza()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhhz;->zza(Lcom/google/android/gms/internal/ads/zzhgk;Ljava/security/Provider;)Lcom/google/android/gms/internal/ads/zzhgs;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhia;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhia;-><init>(Lcom/google/android/gms/internal/ads/zzhgk;)V

    return-object v0

    .line 2
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot use AES-CMAC in FIPS-mode."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
