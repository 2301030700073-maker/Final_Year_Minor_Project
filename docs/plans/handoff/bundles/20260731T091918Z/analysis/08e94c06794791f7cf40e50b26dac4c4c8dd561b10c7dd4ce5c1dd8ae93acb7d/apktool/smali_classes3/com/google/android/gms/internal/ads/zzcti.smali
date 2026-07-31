.class public final Lcom/google/android/gms/internal/ads/zzcti;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcti;->zza:Lcom/google/android/gms/internal/ads/zzctg;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzctg;)Lcom/google/android/gms/internal/ads/zzcti;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcti;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcti;-><init>(Lcom/google/android/gms/internal/ads/zzctg;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcti;->zza:Lcom/google/android/gms/internal/ads/zzctg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctg;->zzc()Lcom/google/android/gms/internal/ads/zzddu;

    move-result-object v0

    return-object v0
.end method
