.class public final Lcom/google/android/gms/internal/ads/zzifk;
.super Lcom/google/android/gms/internal/ads/zzifc;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzifj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzifc;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifk;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzifc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifc;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzifl;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzifl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzifk;->zza:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzifl;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzifj;)V

    return-object v0
.end method
