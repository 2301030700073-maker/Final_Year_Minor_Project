.class public final Lcom/google/android/gms/internal/ads/zzctl;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctl;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzctl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzctl;-><init>(Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctl;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcsb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsb;->zza()Lcom/google/android/gms/internal/ads/zzcac;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcac;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzctk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzctk;-><init>(Lcom/google/android/gms/internal/ads/zzcac;)V

    return-object v1
.end method
