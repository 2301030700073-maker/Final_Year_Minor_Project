.class public final Lcom/google/android/gms/internal/ads/zzdnx;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zza:Lcom/google/android/gms/internal/ads/zzdnu;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdnu;)Lcom/google/android/gms/internal/ads/zzdnx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnx;-><init>(Lcom/google/android/gms/internal/ads/zzdnu;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zza:Lcom/google/android/gms/internal/ads/zzdnu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnu;->zzb()Lcom/google/android/gms/internal/ads/zzbrv;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbrv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnx;->zza:Lcom/google/android/gms/internal/ads/zzdnu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnu;->zzb()Lcom/google/android/gms/internal/ads/zzbrv;

    move-result-object v0

    return-object v0
.end method
