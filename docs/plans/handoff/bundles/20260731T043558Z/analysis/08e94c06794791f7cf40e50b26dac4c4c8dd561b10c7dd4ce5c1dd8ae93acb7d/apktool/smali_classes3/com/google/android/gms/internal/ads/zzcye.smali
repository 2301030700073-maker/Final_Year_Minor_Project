.class public final Lcom/google/android/gms/internal/ads/zzcye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcxx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcxx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcye;->zza:Lcom/google/android/gms/internal/ads/zzcxx;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzcye;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcye;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcye;-><init>(Lcom/google/android/gms/internal/ads/zzcxx;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfgg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcye;->zza:Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxx;->zzc()Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcye;->zza:Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxx;->zzc()Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object v0

    return-object v0
.end method
