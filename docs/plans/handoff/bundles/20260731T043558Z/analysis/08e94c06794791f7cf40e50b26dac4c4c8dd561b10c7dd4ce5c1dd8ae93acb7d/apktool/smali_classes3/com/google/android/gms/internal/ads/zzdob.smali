.class public final Lcom/google/android/gms/internal/ads/zzdob;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdnu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdnu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdob;->zza:Lcom/google/android/gms/internal/ads/zzdnu;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdnu;)Lcom/google/android/gms/internal/ads/zzdob;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdob;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>(Lcom/google/android/gms/internal/ads/zzdnu;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbry;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob;->zza:Lcom/google/android/gms/internal/ads/zzdnu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnu;->zza()Lcom/google/android/gms/internal/ads/zzbry;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob;->zza:Lcom/google/android/gms/internal/ads/zzdnu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnu;->zza()Lcom/google/android/gms/internal/ads/zzbry;

    move-result-object v0

    return-object v0
.end method
