.class public final Lcom/google/android/gms/internal/ads/zzhsm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhik;


# direct methods
.method public static zzb(Lcom/google/android/gms/internal/ads/zzhii;)Lcom/google/android/gms/internal/ads/zzhik;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhio;->zzb(Lcom/google/android/gms/internal/ads/zzhii;)Lcom/google/android/gms/internal/ads/zzhik;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zzb(Lcom/google/android/gms/internal/ads/zzhii;)Lcom/google/android/gms/internal/ads/zzhik;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhsl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzhsl;-><init>(Lcom/google/android/gms/internal/ads/zzhik;Lcom/google/android/gms/internal/ads/zzhik;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final zza([BI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
