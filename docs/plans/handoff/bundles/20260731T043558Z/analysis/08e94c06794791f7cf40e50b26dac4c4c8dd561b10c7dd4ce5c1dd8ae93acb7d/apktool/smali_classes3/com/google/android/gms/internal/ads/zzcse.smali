.class public final Lcom/google/android/gms/internal/ads/zzcse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcrn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcrn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcse;->zza:Lcom/google/android/gms/internal/ads/zzcrn;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcrn;)Lcom/google/android/gms/internal/ads/zzcse;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcse;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcse;-><init>(Lcom/google/android/gms/internal/ads/zzcrn;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcgy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zza:Lcom/google/android/gms/internal/ads/zzcrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrn;->zza()Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcse;->zza:Lcom/google/android/gms/internal/ads/zzcrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrn;->zza()Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v0

    return-object v0
.end method
