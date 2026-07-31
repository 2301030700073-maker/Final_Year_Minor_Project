.class public final Lcom/google/android/gms/internal/ads/zzdio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdia;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdia;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdio;->zza:Lcom/google/android/gms/internal/ads/zzdia;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdio;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdia;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzdio;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdio;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdio;-><init>(Lcom/google/android/gms/internal/ads/zzdia;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdio;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdio;->zza:Lcom/google/android/gms/internal/ads/zzdia;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdia;->zze(Lcom/google/android/gms/internal/ads/zzcxf;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifp;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    return-object v0
.end method
