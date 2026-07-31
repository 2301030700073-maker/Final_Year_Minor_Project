.class public final Lcom/google/android/gms/internal/ads/zzdjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdju;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdju;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zza:Lcom/google/android/gms/internal/ads/zzdju;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdjv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdjv;-><init>(Lcom/google/android/gms/internal/ads/zzdju;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zza:Lcom/google/android/gms/internal/ads/zzdju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdju;->zzb()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjv;->zza:Lcom/google/android/gms/internal/ads/zzdju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdju;->zzb()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    return-object v0
.end method
