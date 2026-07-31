.class public Lcom/google/android/gms/internal/ads/zzgpk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field zza:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpk;->zza:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgon;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgon;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpk;->zza:Ljava/util/Map;

    :cond_0
    return-object v0
.end method
