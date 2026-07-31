.class public final Lcom/google/android/gms/internal/ads/zzgvp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzgwf;)Lcom/google/android/gms/internal/ads/zzgwe;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgwf;->zzb()Lcom/google/android/gms/internal/ads/zzhlg;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgwe;->zza(Lcom/google/android/gms/internal/ads/zzhlg;)Lcom/google/android/gms/internal/ads/zzgwe;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgwe;Lcom/google/android/gms/internal/ads/zzgvo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzb()Lcom/google/android/gms/internal/ads/zzhlg;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgvo;->zza(Lcom/google/android/gms/internal/ads/zzhlg;)V

    return-void
.end method
