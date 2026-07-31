.class public final Lcom/google/android/gms/internal/ads/zzdkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdkm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdkm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkw;->zza:Lcom/google/android/gms/internal/ads/zzdkm;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzdkw;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdkw;-><init>(Lcom/google/android/gms/internal/ads/zzdkm;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkw;->zza:Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkm;->zzb()Lcom/google/android/gms/internal/ads/zzbzt;

    move-result-object v0

    return-object v0
.end method
