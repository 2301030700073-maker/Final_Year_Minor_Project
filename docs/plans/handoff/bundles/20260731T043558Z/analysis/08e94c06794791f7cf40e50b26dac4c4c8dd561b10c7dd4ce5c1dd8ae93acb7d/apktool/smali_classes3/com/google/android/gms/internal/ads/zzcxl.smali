.class public final Lcom/google/android/gms/internal/ads/zzcxl;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzcxl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcxl;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxl;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcuf;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcuf;->zza()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object v1

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzffu;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbvn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbvn;-><init>()V

    .line 3
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbvn;

    .line 1
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbvn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcxk;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcxk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzbvn;)V

    return-object v3
.end method
