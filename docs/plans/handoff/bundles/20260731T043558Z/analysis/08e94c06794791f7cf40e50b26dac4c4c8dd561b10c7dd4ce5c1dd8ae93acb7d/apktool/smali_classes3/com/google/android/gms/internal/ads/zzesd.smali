.class public final Lcom/google/android/gms/internal/ads/zzesd;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesd;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzesd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzesd;-><init>(Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzesb;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesd;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcyf;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyf;->zza()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzesb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzesb;-><init>(Lcom/google/android/gms/internal/ads/zzfgn;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzesd;->zza()Lcom/google/android/gms/internal/ads/zzesb;

    move-result-object v0

    return-object v0
.end method
