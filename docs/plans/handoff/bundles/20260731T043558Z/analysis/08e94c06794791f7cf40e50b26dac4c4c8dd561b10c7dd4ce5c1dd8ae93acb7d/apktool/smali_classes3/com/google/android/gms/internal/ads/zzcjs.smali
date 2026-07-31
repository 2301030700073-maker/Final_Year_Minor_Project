.class public final Lcom/google/android/gms/internal/ads/zzcjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcjp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcjp;)Lcom/google/android/gms/internal/ads/zzcjs;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcjs;-><init>(Lcom/google/android/gms/internal/ads/zzcjp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcbj;

    return-object v0
.end method
