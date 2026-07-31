.class public abstract Lcom/google/android/gms/internal/ads/zzfou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzfov;Lcom/google/android/gms/internal/ads/zzfow;)Lcom/google/android/gms/internal/ads/zzfou;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqs;->zza()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoy;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfoy;-><init>(Lcom/google/android/gms/internal/ads/zzfov;Lcom/google/android/gms/internal/ads/zzfow;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza()V
.end method

.method public abstract zzb(Landroid/view/View;)V
.end method

.method public abstract zzc()V
.end method

.method public abstract zzd(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfpb;Ljava/lang/String;)V
.end method
