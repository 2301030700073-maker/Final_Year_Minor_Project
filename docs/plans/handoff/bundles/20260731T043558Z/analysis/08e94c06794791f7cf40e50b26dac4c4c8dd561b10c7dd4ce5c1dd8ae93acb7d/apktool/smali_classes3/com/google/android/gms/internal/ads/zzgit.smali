.class public final Lcom/google/android/gms/internal/ads/zzgit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzgit;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgit;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgit;-><init>(Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgit;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfxa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgis;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgis;-><init>(Lcom/google/android/gms/internal/ads/zzfxa;)V

    return-object v1
.end method
