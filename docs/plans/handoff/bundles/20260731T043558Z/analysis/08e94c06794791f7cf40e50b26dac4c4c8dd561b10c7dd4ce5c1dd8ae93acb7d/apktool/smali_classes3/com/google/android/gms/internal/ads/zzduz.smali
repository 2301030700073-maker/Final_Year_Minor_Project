.class public final Lcom/google/android/gms/internal/ads/zzduz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzduz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzduy;->zza:Lcom/google/android/gms/internal/ads/zzduz;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkm;->zza:Lcom/google/android/gms/internal/ads/zzfkm;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfkm;->zzd:Lcom/google/android/gms/internal/ads/zzfkm;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdvk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkm;Lcom/google/android/gms/internal/ads/zzfkm;)V

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdvk;

    return-object v0
.end method
