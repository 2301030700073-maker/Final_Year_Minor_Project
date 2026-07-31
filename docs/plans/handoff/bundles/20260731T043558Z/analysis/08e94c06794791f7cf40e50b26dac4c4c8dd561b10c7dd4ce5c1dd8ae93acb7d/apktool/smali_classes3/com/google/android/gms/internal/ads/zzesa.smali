.class public final Lcom/google/android/gms/internal/ads/zzesa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesa;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzesa;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzesa;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzery;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgus;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesa;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcjv;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcjv;->zza()Landroid/content/Context;

    move-result-object v1

    .line 2
    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzery;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzery;-><init>(Lcom/google/android/gms/internal/ads/zzgus;Landroid/content/Context;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzesa;->zza()Lcom/google/android/gms/internal/ads/zzery;

    move-result-object v0

    return-object v0
.end method
