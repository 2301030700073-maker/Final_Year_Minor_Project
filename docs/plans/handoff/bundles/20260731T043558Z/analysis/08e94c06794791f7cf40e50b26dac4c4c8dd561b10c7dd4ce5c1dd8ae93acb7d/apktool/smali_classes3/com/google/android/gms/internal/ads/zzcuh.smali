.class public final Lcom/google/android/gms/internal/ads/zzcuh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcue;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuh;->zza:Lcom/google/android/gms/internal/ads/zzcue;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcue;)Lcom/google/android/gms/internal/ads/zzcuh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcuh;-><init>(Lcom/google/android/gms/internal/ads/zzcue;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzffx;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->zza:Lcom/google/android/gms/internal/ads/zzcue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcue;->zzc()Lcom/google/android/gms/internal/ads/zzffx;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzffx;

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->zza:Lcom/google/android/gms/internal/ads/zzcue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcue;->zzc()Lcom/google/android/gms/internal/ads/zzffx;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzffx;

    return-object v0
.end method
