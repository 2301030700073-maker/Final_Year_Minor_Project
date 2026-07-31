.class public final Lcom/google/android/gms/internal/ads/zzcth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzctg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzctg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcth;->zza:Lcom/google/android/gms/internal/ads/zzctg;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzctg;)Lcom/google/android/gms/internal/ads/zzcth;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcth;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcth;-><init>(Lcom/google/android/gms/internal/ads/zzctg;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcth;->zza:Lcom/google/android/gms/internal/ads/zzctg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctg;->zzb()Lcom/google/android/gms/internal/ads/zzdgn;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdgn;

    return-object v0
.end method
