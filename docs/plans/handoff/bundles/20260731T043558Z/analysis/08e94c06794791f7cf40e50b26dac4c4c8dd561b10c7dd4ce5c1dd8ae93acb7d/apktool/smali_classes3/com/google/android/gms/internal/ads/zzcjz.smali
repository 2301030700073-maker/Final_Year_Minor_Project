.class public final Lcom/google/android/gms/internal/ads/zzcjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcjp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcjp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zza:Lcom/google/android/gms/internal/ads/zzcjp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcjp;)Lcom/google/android/gms/internal/ads/zzcjz;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcjz;-><init>(Lcom/google/android/gms/internal/ads/zzcjp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zza:Lcom/google/android/gms/internal/ads/zzcjp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjp;->zzg()Lcom/google/android/gms/ads/internal/zzk;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/ads/internal/zzk;

    return-object v0
.end method
