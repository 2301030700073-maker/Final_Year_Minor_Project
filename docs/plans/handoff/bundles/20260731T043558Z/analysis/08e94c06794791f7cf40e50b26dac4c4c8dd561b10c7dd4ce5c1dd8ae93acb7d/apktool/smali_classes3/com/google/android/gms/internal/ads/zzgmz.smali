.class public final Lcom/google/android/gms/internal/ads/zzgmz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzgmv;)Lcom/google/android/gms/internal/ads/zzgmv;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgmy;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgmw;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmw;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgmw;-><init>(Lcom/google/android/gms/internal/ads/zzgmv;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmy;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgmy;-><init>(Lcom/google/android/gms/internal/ads/zzgmv;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method
