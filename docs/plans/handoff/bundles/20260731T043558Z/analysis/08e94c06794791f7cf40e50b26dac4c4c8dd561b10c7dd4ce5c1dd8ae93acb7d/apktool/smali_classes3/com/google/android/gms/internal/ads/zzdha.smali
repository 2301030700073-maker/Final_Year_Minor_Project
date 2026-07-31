.class public final Lcom/google/android/gms/internal/ads/zzdha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdha;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzdha;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdha;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdha;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdha;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcuf;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuf;->zza()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdha;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfng;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdgz;-><init>(Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzfng;)V

    return-object v2
.end method
