.class final Lcom/google/android/gms/internal/ads/zzgqu;
.super Lcom/google/android/gms/internal/ads/zzgnf;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final transient zza:Lcom/google/android/gms/internal/ads/zzgmv;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgmv;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgnf;-><init>(Ljava/util/Map;)V

    .line 2
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgmv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgqu;->zza:Lcom/google/android/gms/internal/ads/zzgmv;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zzc()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqu;->zza:Lcom/google/android/gms/internal/ads/zzgmv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method final zzh()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnw;->zzi()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final zzl()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgnw;->zzm()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
