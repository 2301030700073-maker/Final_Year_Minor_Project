.class public final Lcom/google/android/gms/internal/ads/zzdjx;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjx;->zza:Lcom/google/android/gms/internal/ads/zzdju;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdjx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdjx;-><init>(Lcom/google/android/gms/internal/ads/zzdju;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdma;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdju;->zza()Lcom/google/android/gms/internal/ads/zzdma;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzifp;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdma;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdma;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjx;->zza:Lcom/google/android/gms/internal/ads/zzdju;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzd(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdma;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjx;->zza:Lcom/google/android/gms/internal/ads/zzdju;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdjx;->zzd(Lcom/google/android/gms/internal/ads/zzdju;)Lcom/google/android/gms/internal/ads/zzdma;

    move-result-object v0

    return-object v0
.end method
