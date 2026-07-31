.class public final Lcom/google/android/gms/internal/ads/zzdiy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdia;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zza:Lcom/google/android/gms/internal/ads/zzdia;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdia;)Lcom/google/android/gms/internal/ads/zzdiy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdiy;-><init>(Lcom/google/android/gms/internal/ads/zzdia;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcgy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zza:Lcom/google/android/gms/internal/ads/zzdia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdia;->zzb()Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiy;->zza:Lcom/google/android/gms/internal/ads/zzdia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdia;->zzb()Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v0

    return-object v0
.end method
