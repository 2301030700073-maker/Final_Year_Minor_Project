.class public final Lcom/google/android/gms/internal/ads/zzech;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzech;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzech;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzech;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzech;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzech;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzecg;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzech;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzifo;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifo;->zzd()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v1

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgus;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzech;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdbt;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdbt;->zza()Lcom/google/android/gms/internal/ads/zzdbs;

    move-result-object v2

    .line 1
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdbs;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzecg;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzecg;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzdbs;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzech;->zza()Lcom/google/android/gms/internal/ads/zzecg;

    move-result-object v0

    return-object v0
.end method
