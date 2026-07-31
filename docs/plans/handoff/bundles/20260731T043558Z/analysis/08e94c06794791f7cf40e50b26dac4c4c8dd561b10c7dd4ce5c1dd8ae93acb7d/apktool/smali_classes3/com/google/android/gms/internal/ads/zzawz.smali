.class public final Lcom/google/android/gms/internal/ads/zzawz;
.super Lcom/google/android/gms/internal/ads/zzawy;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawx;)V

    return-void
.end method

.method public static zzt(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzate;)Lcom/google/android/gms/internal/ads/zzawz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzawx;-><init>(Lcom/google/android/gms/internal/ads/zzate;)V

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawx;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzawz;

    .line 3
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzawz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawx;)V

    return-object p1
.end method
