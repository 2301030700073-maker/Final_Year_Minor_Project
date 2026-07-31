.class public final Lcom/google/android/gms/internal/ads/zzhti;
.super Lcom/google/android/gms/internal/ads/zzhtg;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhtx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhtg;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhtx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhtx;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhti;->zza:Lcom/google/android/gms/internal/ads/zzhtx;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, p0, :cond_2

    .line 1
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzhti;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhti;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhti;->zza:Lcom/google/android/gms/internal/ads/zzhtx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhti;->zza:Lcom/google/android/gms/internal/ads/zzhtx;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzhtx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhti;->zza:Lcom/google/android/gms/internal/ads/zzhtx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtx;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhtg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhti;->zza:Lcom/google/android/gms/internal/ads/zzhtx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhtx;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhti;->zza:Lcom/google/android/gms/internal/ads/zzhtx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtx;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhti;->zza:Lcom/google/android/gms/internal/ads/zzhtx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhtx;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhtg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhti;->zza:Lcom/google/android/gms/internal/ads/zzhtx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhtx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhtg;

    return-object p1
.end method
